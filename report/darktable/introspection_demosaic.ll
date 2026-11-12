Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 136
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 156
begin_hunk_0_@process:bb.a

bb.jm:                                            ; preds = %bb.jl, %.split.i496.1
  %.21074.i.1 = phi nsz float [ %i.cij, %bb.jl ], [ %.us-phi.i, %.split.i496.1 ] ; 2 uses
  %.21071.i.1 = phi i8 [ %i.cik, %bb.jl ], [ %.us-phi1301.i, %.split.i496.1 ] ; 2 uses
  %i.cil = load i8, ptr %i.cgf, align 1, !tbaa !133
  %i.cim = icmp eq i8 %i.cil, %i.cdv
  br i1 %i.cim, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  %i.cin = load float, ptr %i.cgi, align 4, !tbaa !12
  %i.cio = fadd reassoc nsz arcp contract afn float %i.cin, %.21074.i.1
  %i.cip = add nuw nsw i8 %.21071.i.1, 1
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.jm
  %.21074.1.i.1 = phi nsz float [ %i.cio, %bb.jn ], [ %.21074.i.1, %bb.jm ] ; 2 uses
  %.21071.1.i.1 = phi i8 [ %i.cip, %bb.jn ], [ %.21071.i.1, %bb.jm ] ; 2 uses
  %i.ciq = load i8, ptr %i.cgj, align 1, !tbaa !133
  %i.cir = icmp eq i8 %i.ciq, %i.cdv
  br i1 %i.cir, label %.split1300.us.sink.split.i.1, label %.split1300.us.i.1

.split.us.i.1:                                    ; preds = %.split1300.us.i
  %i.cis = load i8, ptr %i.cgk, align 1, !tbaa !133
  %i.cit = icmp eq i8 %i.cis, %i.cdv
  br i1 %i.cit, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %.split.us.i.1
  %i.ciu = load float, ptr %i.cgn, align 4, !tbaa !12
  %i.civ = fadd reassoc nsz arcp contract afn float %i.ciu, %.us-phi.i
  %i.ciw = add nuw nsw i8 %.us-phi1301.i, 1
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %.split.us.i.1
  %.21074.us.i.1 = phi nsz float [ %i.civ, %bb.jp ], [ %.us-phi.i, %.split.us.i.1 ] ; 2 uses
  %.21071.us.i.1 = phi i8 [ %i.ciw, %bb.jp ], [ %.us-phi1301.i, %.split.us.i.1 ] ; 2 uses
  %i.cix = load i8, ptr %i.cgo, align 1, !tbaa !133
  %i.ciy = icmp eq i8 %i.cix, %i.cdv
  br i1 %i.ciy, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %bb.jq
  %i.ciz = load float, ptr %i.cgr, align 4, !tbaa !12
  %i.cja = fadd reassoc nsz arcp contract afn float %i.ciz, %.21074.us.i.1
  %i.cjb = add nuw nsw i8 %.21071.us.i.1, 1
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq
  %.21074.us.1.i.1 = phi nsz float [ %i.cja, %bb.jr ], [ %.21074.us.i.1, %bb.jq ] ; 2 uses
  %.21071.us.1.i.1 = phi i8 [ %i.cjb, %bb.jr ], [ %.21071.us.i.1, %bb.jq ] ; 2 uses
  %i.cjc = load i8, ptr %i.cgs, align 1, !tbaa !133
  %i.cjd = icmp eq i8 %i.cjc, %i.cdv
  br i1 %i.cjd, label %.split1300.us.sink.split.i.1, label %.split1300.us.i.1

.split1300.us.sink.split.i.1:                     ; preds = %bb.js, %bb.jo
  %.pn1557 = phi i32 [ %i.ccs, %bb.jo ], [ %i.ccx, %bb.js ]
  %.21074.1.sink.i.1 = phi float [ %.21074.1.i.1, %bb.jo ], [ %.21074.us.1.i.1, %bb.js ]
  %.21071.1.sink.i.1 = phi i8 [ %.21071.1.i.1, %bb.jo ], [ %.21071.us.1.i.1, %bb.js ]
  %.sink2129.i.1 = add nsw i32 %.pn1557, %.2131.i
  %i.cje = sext i32 %.sink2129.i.1 to i64
  %i.cjf = getelementptr inbounds [4 x i8], ptr %i.awz, i64 %i.cje
  %i.cjg = load float, ptr %i.cjf, align 4, !tbaa !12
  %i.cjh = fadd reassoc nsz arcp contract afn float %i.cjg, %.21074.1.sink.i.1
  %i.cji = add nuw nsw i8 %.21071.1.sink.i.1, 1
  br label %.split1300.us.i.1

.split1300.us.i.1:                                ; preds = %.split1300.us.sink.split.i.1, %bb.js, %bb.jo
  %.us-phi.i.1 = phi float [ %.21074.us.1.i.1, %bb.js ], [ %.21074.1.i.1, %bb.jo ], [ %i.cjh, %.split1300.us.sink.split.i.1 ] ; 4 uses
  %.us-phi1301.i.1 = phi i8 [ %.21071.us.1.i.1, %bb.js ], [ %.21071.1.i.1, %bb.jo ], [ %i.cji, %.split1300.us.sink.split.i.1 ] ; 4 uses
  br i1 %.not1140.i.2, label %.split.us.i.2, label %.split.i496.2

.split.i496.2:                                    ; preds = %.split1300.us.i.1
  %i.cjj = load i8, ptr %i.cgt, align 1, !tbaa !133
  %i.cjk = icmp eq i8 %i.cjj, %i.cdv
  br i1 %i.cjk, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %.split.i496.2
  %i.cjl = load float, ptr %i.cgw, align 4, !tbaa !12
  %i.cjm = fadd reassoc nsz arcp contract afn float %i.cjl, %.us-phi.i.1
  %i.cjn = add nuw nsw i8 %.us-phi1301.i.1, 1
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %.split.i496.2
  %.21074.i.2 = phi nsz float [ %i.cjm, %bb.jt ], [ %.us-phi.i.1, %.split.i496.2 ] ; 2 uses
  %.21071.i.2 = phi i8 [ %i.cjn, %bb.jt ], [ %.us-phi1301.i.1, %.split.i496.2 ] ; 2 uses
  %i.cjo = load i8, ptr %i.cgx, align 1, !tbaa !133
  %i.cjp = icmp eq i8 %i.cjo, %i.cdv
  br i1 %i.cjp, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %bb.ju
  %i.cjq = load float, ptr %i.cha, align 4, !tbaa !12
  %i.cjr = fadd reassoc nsz arcp contract afn float %i.cjq, %.21074.i.2
  %i.cjs = add nuw nsw i8 %.21071.i.2, 1
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %bb.ju
  %.21074.1.i.2 = phi nsz float [ %i.cjr, %bb.jv ], [ %.21074.i.2, %bb.ju ] ; 2 uses
  %.21071.1.i.2 = phi i8 [ %i.cjs, %bb.jv ], [ %.21071.i.2, %bb.ju ] ; 2 uses
  %i.cjt = load i8, ptr %i.chb, align 1, !tbaa !133
  %i.cju = icmp eq i8 %i.cjt, %i.cdv
  br i1 %i.cju, label %.split1300.us.sink.split.i.2, label %.split1300.us.i.2

.split.us.i.2:                                    ; preds = %.split1300.us.i.1
  %i.cjv = load i8, ptr %i.chc, align 1, !tbaa !133
  %i.cjw = icmp eq i8 %i.cjv, %i.cdv
  br i1 %i.cjw, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %.split.us.i.2
  %i.cjx = load float, ptr %i.chf, align 4, !tbaa !12
  %i.cjy = fadd reassoc nsz arcp contract afn float %i.cjx, %.us-phi.i.1
  %i.cjz = add nuw nsw i8 %.us-phi1301.i.1, 1
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jx, %.split.us.i.2
  %.21074.us.i.2 = phi nsz float [ %i.cjy, %bb.jx ], [ %.us-phi.i.1, %.split.us.i.2 ] ; 2 uses
  %.21071.us.i.2 = phi i8 [ %i.cjz, %bb.jx ], [ %.us-phi1301.i.1, %.split.us.i.2 ] ; 2 uses
  %i.cka = load i8, ptr %i.chg, align 1, !tbaa !133
  %i.ckb = icmp eq i8 %i.cka, %i.cdv
  br i1 %i.ckb, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %bb.jy
  %i.ckc = load float, ptr %i.chj, align 4, !tbaa !12
  %i.ckd = fadd reassoc nsz arcp contract afn float %i.ckc, %.21074.us.i.2
  %i.cke = add nuw nsw i8 %.21071.us.i.2, 1
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %bb.jy
  %.21074.us.1.i.2 = phi nsz float [ %i.ckd, %bb.jz ], [ %.21074.us.i.2, %bb.jy ] ; 2 uses
  %.21071.us.1.i.2 = phi i8 [ %i.cke, %bb.jz ], [ %.21071.us.i.2, %bb.jy ] ; 2 uses
  %i.ckf = load i8, ptr %i.chk, align 1, !tbaa !133
  %i.ckg = icmp eq i8 %i.ckf, %i.cdv
  br i1 %i.ckg, label %.split1300.us.sink.split.i.2, label %.split1300.us.i.2

.split1300.us.sink.split.i.2:                     ; preds = %bb.ka, %bb.jw
  %.pn1558 = phi i32 [ %i.cde, %bb.jw ], [ %i.cdk, %bb.ka ]
  %.21074.1.sink.i.2 = phi float [ %.21074.1.i.2, %bb.jw ], [ %.21074.us.1.i.2, %bb.ka ]
  %.21071.1.sink.i.2 = phi i8 [ %.21071.1.i.2, %bb.jw ], [ %.21071.us.1.i.2, %bb.ka ]
  %.sink2129.i.2 = add nsw i32 %.pn1558, %.2131.i
  %i.ckh = sext i32 %.sink2129.i.2 to i64
  %i.cki = getelementptr inbounds [4 x i8], ptr %i.awz, i64 %i.ckh
  %i.ckj = load float, ptr %i.cki, align 4, !tbaa !12
  %i.ckk = fadd reassoc nsz arcp contract afn float %i.ckj, %.21074.1.sink.i.2
  %i.ckl = add nuw nsw i8 %.21071.1.sink.i.2, 1
  br label %.split1300.us.i.2

.split1300.us.i.2:                                ; preds = %.split1300.us.sink.split.i.2, %bb.ka, %bb.jw
  %.us-phi.i.2 = phi float [ %.21074.us.1.i.2, %bb.ka ], [ %.21074.1.i.2, %bb.jw ], [ %i.ckk, %.split1300.us.sink.split.i.2 ]
  %.us-phi1301.i.2 = phi i8 [ %.21071.us.1.i.2, %bb.ka ], [ %.21071.1.i.2, %bb.jw ], [ %i.ckl, %.split1300.us.sink.split.i.2 ]
  %i.ckm = uitofp nneg i8 %.us-phi1301.i.2 to float
  %i.ckn = fdiv reassoc nsz arcp contract afn float %.us-phi.i.2, %i.ckm ; 2 uses
  store float %i.ckn, ptr %i.cel, align 4, !tbaa !12
  store float %i.ckn, ptr %gep1311.i, align 4, !tbaa !12
  br label %bb.kf

bb.kb:                                            ; preds = %.split.i496
  %i.cko = load float, ptr %i.cfm, align 4, !tbaa !12
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %.split.i496
  %.21074.i = phi nsz float [ %i.cko, %bb.kb ], [ 0.000000e+00, %.split.i496 ] ; 2 uses
  %.21071.i = phi i8 [ 1, %bb.kb ], [ 0, %.split.i496 ] ; 2 uses
  %i.ckp = load i8, ptr %i.cfn, align 1, !tbaa !133
  %i.ckq = icmp eq i8 %i.ckp, %i.cdv
  br i1 %i.ckq, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  %i.ckr = load float, ptr %i.cfq, align 4, !tbaa !12
  %i.cks = fadd reassoc nsz arcp contract afn float %i.ckr, %.21074.i
  %i.ckt = add nuw nsw i8 %.21071.i, 1
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %bb.kc
  %.21074.1.i = phi nsz float [ %i.cks, %bb.kd ], [ %.21074.i, %bb.kc ] ; 2 uses
  %.21071.1.i = phi i8 [ %i.ckt, %bb.kd ], [ %.21071.i, %bb.kc ] ; 2 uses
  %i.cku = load i8, ptr %i.cfr, align 1, !tbaa !133
  %i.ckv = icmp eq i8 %i.cku, %i.cdv
  br i1 %i.ckv, label %.split1300.us.sink.split.i, label %.split1300.us.i

bb.kf:                                            ; preds = %.split1300.us.i.2, %bb.jg, %bb.je
  %indvars.iv.next1571.i = add nuw nsw i64 %indvars.iv1570.i, 1 ; 2 uses
  %exitcond1573.not.i = icmp eq i64 %indvars.iv.next1571.i, 3
  br i1 %exitcond1573.not.i, label %.loopexit1256.i, label %bb.jd

.loopexit1256.i:                                  ; preds = %bb.kf, %bb.jb
  %indvars.iv.next1581.i.pre-phi = phi i64 [ %.pre1267, %bb.jb ], [ %i.ceu, %bb.kf ] ; 2 uses
  %i.ckw = icmp slt i64 %indvars.iv.next1581.i.pre-phi, %i.cbi
  br i1 %i.ckw, label %bb.iv, label %._crit_edge.i495

.lr.ph1325.i:                                     ; preds = %.preheader1268.i
  %i.ckx = add nuw nsw i64 %indvars.iv1578.i, 3   ; 2 uses
  %i.cky = add nsw i32 %i.cbg, -3                 ; 2 uses
  %i.ckz = sext i32 %i.cky to i64
  %i.cla = icmp slt i64 %i.ckx, %i.ckz
  %i.clb = add nsw i32 %i.cbg, -4
  br i1 %i.cla, label %.lr.ph.us.preheader.i, label %._crit_edge1343.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph1325.i
  %i.clc = trunc nsw i64 %i.ckx to i32            ; 2 uses
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.backedge, %.lr.ph.us.preheader.i
  %.010521320.us.i = phi i32 [ %i.clc, %.lr.ph.us.preheader.i ], [ %.010521320.us.i.be, %.lr.ph.us.i.backedge ] ; 8 uses
  %.010541319.us.i = phi float [ 0.000000e+00, %.lr.ph.us.preheader.i ], [ %.010541319.us.i.be, %.lr.ph.us.i.backedge ] ; 4 uses
  %.010581318.us.i = phi float [ f0x7F7FFFFF, %.lr.ph.us.preheader.i ], [ %.010581318.us.i.be, %.lr.ph.us.i.backedge ] ; 3 uses
  %.110641317.us.i = phi i32 [ %i.bzp, %.lr.ph.us.preheader.i ], [ %.110641317.us.i.be, %.lr.ph.us.i.backedge ] ; 9 uses
  %i.cld = add nsw i32 %.110641317.us.i, 600      ; 2 uses
  %i.cle = add nsw i32 %.010521320.us.i, 600      ; 2 uses
  %i.clf = srem i32 %i.cld, 6
  %i.clg = sext i32 %i.clf to i64
  %i.clh = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.clg
  %i.cli = srem i32 %i.cle, 6
  %i.clj = sext i32 %i.cli to i64
  %i.clk = getelementptr inbounds i8, ptr %i.clh, i64 %i.clj
  %i.cll = load i8, ptr %i.clk, align 1, !tbaa !133
  %i.clm = icmp eq i8 %i.cll, 1
  br i1 %i.clm, label %bb.kk, label %bb.kg

bb.kg:                                            ; preds = %.lr.ph.us.i
  %i.cln = fcmp reassoc nsz arcp contract afn oeq float %.010541319.us.i, 0.000000e+00
  %i.clo = sext i32 %.110641317.us.i to i64       ; 2 uses
  %i.clp = sub nsw i64 %i.clo, %indvars.iv1583.i  ; 3 uses
  br i1 %i.cln, label %.loopexit1255.us.loopexit.i, label %..loopexit1255.us_crit_edge.i

..loopexit1255.us_crit_edge.i:                    ; preds = %bb.kg
  %.pre2042.i = sext i32 %.010521320.us.i to i64
  %.pre2044.i = sub nsw i64 %.pre2042.i, %indvars.iv1578.i
  br label %.loopexit1255.us.i

.loopexit1255.us.loopexit.i:                      ; preds = %bb.kg
  %i.clq = getelementptr inbounds [1464 x i8], ptr %i.bml, i64 %i.clp
  %i.clr = sext i32 %.010521320.us.i to i64
  %i.cls = sub nsw i64 %i.clr, %indvars.iv1578.i  ; 2 uses
  %i.clt = getelementptr inbounds [12 x i8], ptr %i.clq, i64 %i.cls ; 6 uses
  %i.clu = srem i32 %i.cld, 3
  %i.clv = sext i32 %i.clu to i64
  %i.clw = getelementptr inbounds [48 x i8], ptr %i.h, i64 %i.clv
  %i.clx = srem i32 %i.cle, 3
  %i.cly = sext i32 %i.clx to i64
  %i.clz = getelementptr inbounds [16 x i8], ptr %i.clw, i64 %i.cly ; 6 uses
  %i.cma = load i16, ptr %i.clz, align 16, !tbaa !474
  %i.cmb = sext i16 %i.cma to i64
  %i.cmc = getelementptr inbounds [12 x i8], ptr %i.clt, i64 %i.cmb
  %i.cmd = getelementptr inbounds nuw i8, ptr %i.cmc, i64 4
  %i.cme = load float, ptr %i.cmd, align 4, !tbaa !12 ; 4 uses
  %i.cmf = fcmp reassoc nsz arcp contract afn ogt float %.010581318.us.i, %i.cme
  %spec.select1145.us.i = select nsz i1 %i.cmf, float %i.cme, float %.010581318.us.i ; 2 uses
  %i.cmg = fcmp reassoc nsz arcp contract afn olt float %.010541319.us.i, %i.cme
  %.21056.us.i = select nsz i1 %i.cmg, float %i.cme, float %.010541319.us.i ; 2 uses
  %i.cmh = getelementptr inbounds nuw i8, ptr %i.clz, i64 2
  %i.cmi = load i16, ptr %i.cmh, align 2, !tbaa !474
  %i.cmj = sext i16 %i.cmi to i64
  %i.cmk = getelementptr inbounds [12 x i8], ptr %i.clt, i64 %i.cmj
  %i.cml = getelementptr inbounds nuw i8, ptr %i.cmk, i64 4
  %i.cmm = load float, ptr %i.cml, align 4, !tbaa !12 ; 4 uses
  %i.cmn = fcmp reassoc nsz arcp contract afn ogt float %spec.select1145.us.i, %i.cmm
  %spec.select1145.us.1.i = select nsz i1 %i.cmn, float %i.cmm, float %spec.select1145.us.i ; 2 uses
  %i.cmo = fcmp reassoc nsz arcp contract afn olt float %.21056.us.i, %i.cmm
  %.21056.us.1.i = select nsz i1 %i.cmo, float %i.cmm, float %.21056.us.i ; 2 uses
  %i.cmp = getelementptr inbounds nuw i8, ptr %i.clz, i64 4
  %i.cmq = load i16, ptr %i.cmp, align 4, !tbaa !474
  %i.cmr = sext i16 %i.cmq to i64
  %i.cms = getelementptr inbounds [12 x i8], ptr %i.clt, i64 %i.cmr
  %i.cmt = getelementptr inbounds nuw i8, ptr %i.cms, i64 4
  %i.cmu = load float, ptr %i.cmt, align 4, !tbaa !12 ; 4 uses
  %i.cmv = fcmp reassoc nsz arcp contract afn ogt float %spec.select1145.us.1.i, %i.cmu
  %spec.select1145.us.2.i = select nsz i1 %i.cmv, float %i.cmu, float %spec.select1145.us.1.i ; 2 uses
  %i.cmw = fcmp reassoc nsz arcp contract afn olt float %.21056.us.1.i, %i.cmu
  %.21056.us.2.i = select nsz i1 %i.cmw, float %i.cmu, float %.21056.us.1.i ; 2 uses
  %i.cmx = getelementptr inbounds nuw i8, ptr %i.clz, i64 6
  %i.cmy = load i16, ptr %i.cmx, align 2, !tbaa !474
  %i.cmz = sext i16 %i.cmy to i64
  %i.cna = getelementptr inbounds [12 x i8], ptr %i.clt, i64 %i.cmz
  %i.cnb = getelementptr inbounds nuw i8, ptr %i.cna, i64 4
  %i.cnc = load float, ptr %i.cnb, align 4, !tbaa !12 ; 4 uses
  %i.cnd = fcmp reassoc nsz arcp contract afn ogt float %spec.select1145.us.2.i, %i.cnc
  %spec.select1145.us.3.i = select nsz i1 %i.cnd, float %i.cnc, float %spec.select1145.us.2.i ; 2 uses
  %i.cne = fcmp reassoc nsz arcp contract afn olt float %.21056.us.2.i, %i.cnc
  %.21056.us.3.i = select nsz i1 %i.cne, float %i.cnc, float %.21056.us.2.i ; 2 uses
  %i.cnf = getelementptr inbounds nuw i8, ptr %i.clz, i64 8
  %i.cng = load i16, ptr %i.cnf, align 8, !tbaa !474
  %i.cnh = sext i16 %i.cng to i64
  %i.cni = getelementptr inbounds [12 x i8], ptr %i.clt, i64 %i.cnh
  %i.cnj = getelementptr inbounds nuw i8, ptr %i.cni, i64 4
  %i.cnk = load float, ptr %i.cnj, align 4, !tbaa !12 ; 4 uses
  %i.cnl = fcmp reassoc nsz arcp contract afn ogt float %spec.select1145.us.3.i, %i.cnk
  %spec.select1145.us.4.i = select nsz i1 %i.cnl, float %i.cnk, float %spec.select1145.us.3.i ; 2 uses
  %i.cnm = fcmp reassoc nsz arcp contract afn olt float %.21056.us.3.i, %i.cnk
  %.21056.us.4.i = select nsz i1 %i.cnm, float %i.cnk, float %.21056.us.3.i ; 2 uses
  %i.cnn = getelementptr inbounds nuw i8, ptr %i.clz, i64 10
  %i.cno = load i16, ptr %i.cnn, align 2, !tbaa !474
  %i.cnp = sext i16 %i.cno to i64
  %i.cnq = getelementptr inbounds [12 x i8], ptr %i.clt, i64 %i.cnp
  %i.cnr = getelementptr inbounds nuw i8, ptr %i.cnq, i64 4
  %i.cns = load float, ptr %i.cnr, align 4, !tbaa !12 ; 4 uses
  %i.cnt = fcmp reassoc nsz arcp contract afn ogt float %spec.select1145.us.4.i, %i.cns
  %spec.select1145.us.5.i = select nsz i1 %i.cnt, float %i.cns, float %spec.select1145.us.4.i
  %i.cnu = fcmp reassoc nsz arcp contract afn olt float %.21056.us.4.i, %i.cns
  %.21056.us.5.i = select nsz i1 %i.cnu, float %i.cns, float %.21056.us.4.i
  br label %.loopexit1255.us.i

.loopexit1255.us.i:                               ; preds = %.loopexit1255.us.loopexit.i, %..loopexit1255.us_crit_edge.i
  %.pre-phi2045.i = phi i64 [ %.pre2044.i, %..loopexit1255.us_crit_edge.i ], [ %i.cls, %.loopexit1255.us.loopexit.i ] ; 2 uses
  %.31061.us.i = phi nsz float [ %.010581318.us.i, %..loopexit1255.us_crit_edge.i ], [ %spec.select1145.us.5.i, %.loopexit1255.us.loopexit.i ] ; 4 uses
  %.31057.us.i = phi nsz float [ %.010541319.us.i, %..loopexit1255.us_crit_edge.i ], [ %.21056.us.5.i, %.loopexit1255.us.loopexit.i ] ; 4 uses
  %i.cnv = getelementptr inbounds [488 x i8], ptr %i.bwl, i64 %i.clp
  %i.cnw = getelementptr inbounds [4 x i8], ptr %i.cnv, i64 %.pre-phi2045.i
  store float %.31061.us.i, ptr %i.cnw, align 4, !tbaa !12
  %i.cnx = getelementptr inbounds [488 x i8], ptr %i.bwn, i64 %i.clp
  %i.cny = getelementptr inbounds [4 x i8], ptr %i.cnx, i64 %.pre-phi2045.i
  store float %.31057.us.i, ptr %i.cny, align 4, !tbaa !12
  %i.cnz = sub nsw i32 %.110641317.us.i, %i.bnh
  %i.coa = srem i32 %i.cnz, 3
  switch i32 %i.coa, label %bb.kk [
    i32 1, label %bb.ki
    i32 2, label %bb.kh
  ]

bb.kh:                                            ; preds = %.loopexit1255.us.i
  %i.cob = add nsw i32 %.010521320.us.i, 2        ; 2 uses
  %i.coc = icmp slt i32 %i.cob, %i.clb
  %i.cod = icmp slt i64 %i.byn, %i.clo
  %or.cond1146.us.i = select i1 %i.coc, i1 %i.cod, i1 false
  %i.coe = sext i1 %or.cond1146.us.i to i32
  %spec.select1154.us.i = add nsw i32 %.110641317.us.i, %i.coe
  br label %bb.kk

bb.ki:                                            ; preds = %.loopexit1255.us.i
  %i.cof = icmp slt i32 %.110641317.us.i, %i.byr
  br i1 %i.cof, label %bb.kj, label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  %i.cog = add nsw i32 %.110641317.us.i, 1
  %i.coh = add nsw i32 %.010521320.us.i, -1
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %bb.ki, %bb.kh, %.loopexit1255.us.i, %.lr.ph.us.i
  %.21065.us.i = phi i32 [ %spec.select1154.us.i, %bb.kh ], [ %.110641317.us.i, %.loopexit1255.us.i ], [ %i.cog, %bb.kj ], [ %.110641317.us.i, %bb.ki ], [ %.110641317.us.i, %.lr.ph.us.i ] ; 2 uses
  %.41062.us.i = phi nsz float [ f0x7F7FFFFF, %bb.kh ], [ %.31061.us.i, %.loopexit1255.us.i ], [ %.31061.us.i, %bb.kj ], [ %.31061.us.i, %bb.ki ], [ f0x7F7FFFFF, %.lr.ph.us.i ]
  %.4.us.i = phi nsz float [ 0.000000e+00, %bb.kh ], [ %.31057.us.i, %.loopexit1255.us.i ], [ %.31057.us.i, %bb.kj ], [ %.31057.us.i, %bb.ki ], [ 0.000000e+00, %.lr.ph.us.i ]
  %.11053.us.i = phi i32 [ %i.cob, %bb.kh ], [ %.010521320.us.i, %.loopexit1255.us.i ], [ %i.coh, %bb.kj ], [ %.010521320.us.i, %bb.ki ], [ %.010521320.us.i, %.lr.ph.us.i ]
  %i.coi = add nsw i32 %.11053.us.i, 1            ; 2 uses
  %i.coj = icmp slt i32 %i.coi, %i.cky
  br i1 %i.coj, label %.lr.ph.us.i.backedge, label %._crit_edge1322.us.i

.lr.ph.us.i.backedge:                             ; preds = %bb.kk, %._crit_edge1322.us.i
  %.010521320.us.i.be = phi i32 [ %i.coi, %bb.kk ], [ %i.clc, %._crit_edge1322.us.i ]
  %.010541319.us.i.be = phi float [ %.4.us.i, %bb.kk ], [ 0.000000e+00, %._crit_edge1322.us.i ]
  %.010581318.us.i.be = phi float [ %.41062.us.i, %bb.kk ], [ f0x7F7FFFFF, %._crit_edge1322.us.i ]
  %.110641317.us.i.be = phi i32 [ %.21065.us.i, %bb.kk ], [ %i.cok, %._crit_edge1322.us.i ]
  br label %.lr.ph.us.i

._crit_edge1322.us.i:                             ; preds = %bb.kk
  %i.cok = add nsw i32 %.21065.us.i, 1            ; 2 uses
  %i.col = icmp slt i32 %i.cok, %i.byo
  br i1 %i.col, label %.lr.ph.us.i.backedge, label %.lr.ph.i

._crit_edge1343.split.i:                          ; preds = %._crit_edge1340.i, %.lr.ph1325.i, %.preheader1268.i
  br i1 %i.byz, label %.lr.ph1362.i, label %._crit_edge1363.split.i

.lr.ph1362.i:                                     ; preds = %._crit_edge1343.split.i
  %i.com = sub i64 %indvars.iv1578.i, %i.bwx
  %i.con = trunc i64 %i.com to i32
  %i.coo = add i32 %i.con, 8                      ; 2 uses
  %i.cop = srem i32 %i.coo, 3
  %i.coq = add i32 %i.coo, %i.bwt
  %i.cor = sub i32 %i.coq, %i.cop                 ; 2 uses
  %i.cos = add nsw i32 %i.cbg, -6                 ; 2 uses
  %i.cot = icmp slt i32 %i.cor, %i.cos
  br i1 %i.cot, label %.lr.ph1358.preheader.i, label %._crit_edge1363.split.i

.lr.ph1358.preheader.i:                           ; preds = %.lr.ph1362.i
  %i.cou = sext i32 %i.cor to i64
  %i.cov = sext i32 %i.cos to i64
  br label %.lr.ph1358.i

.lr.ph.i:                                         ; preds = %._crit_edge1322.us.i, %._crit_edge1340.i
  %indvars.iv1610.i = phi i64 [ %indvars.iv.next1611.i, %._crit_edge1340.i ], [ %indvars.iv1608.i, %._crit_edge1322.us.i ] ; 4 uses
  %i.cow = trunc i64 %indvars.iv1610.i to i32
  %i.cox = add i32 %i.cow, 600                    ; 2 uses
  %i.coy = srem i32 %i.cox, 6
  %i.coz = sext i32 %i.coy to i64
  %i.cpa = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.coz
  %i.cpb = sub nsw i64 %indvars.iv1610.i, %indvars.iv1583.i ; 3 uses
  %i.cpc = getelementptr [1464 x i8], ptr %i.bml, i64 %i.cpb
  %i.cpd = srem i32 %i.cox, 3
  %i.cpe = sext i32 %i.cpd to i64
  %i.cpf = getelementptr inbounds [48 x i8], ptr %i.h, i64 %i.cpe
  %i.cpg = getelementptr inbounds [488 x i8], ptr %i.bwl, i64 %i.cpb
  %i.cph = sub nsw i64 %indvars.iv1610.i, %i.bww
  %i.cpi = trunc nsw i64 %i.cph to i32
  %i.cpj = srem i32 %i.cpi, 3
  %.not1134.i = icmp eq i32 %i.cpj, 0             ; 2 uses
  %i.cpk = zext i1 %.not1134.i to i32             ; 2 uses
  %i.cpl = getelementptr inbounds [488 x i8], ptr %i.bwn, i64 %i.cpb
  %i.cpm = zext i1 %.not1134.i to i64
  %i.cpn = xor i32 %i.cpk, 1
  %i.cpo = zext nneg i32 %i.cpn to i64
  %i.cpp = xor i32 %i.cpk, 3
  %i.cpq = zext nneg i32 %i.cpp to i64
  br label %bb.kl

._crit_edge1340.i:                                ; preds = %.loopexit1254.i
  %indvars.iv.next1611.i = add nsw i64 %indvars.iv1610.i, 1 ; 2 uses
  %exitcond1194.not = icmp eq i64 %indvars.iv.next1611.i, %i.byh
  br i1 %exitcond1194.not, label %._crit_edge1343.split.i, label %.lr.ph.i

bb.kl:                                            ; preds = %.loopexit1254.i, %.lr.ph.i
  %indvars.iv1605.i = phi i64 [ %indvars.iv1603.i, %.lr.ph.i ], [ %indvars.iv.next1606.i, %.loopexit1254.i ] ; 3 uses
  %i.cpr = trunc i64 %indvars.iv1605.i to i32
  %i.cps = add i32 %i.cpr, 600                    ; 2 uses
  %i.cpt = srem i32 %i.cps, 6
  %i.cpu = sext i32 %i.cpt to i64
  %i.cpv = getelementptr inbounds i8, ptr %i.cpa, i64 %i.cpu
  %i.cpw = load i8, ptr %i.cpv, align 1, !tbaa !133 ; 2 uses
  %i.cpx = icmp eq i8 %i.cpw, 1
  br i1 %i.cpx, label %.loopexit1254.i, label %.preheader1253.i

.preheader1253.i:                                 ; preds = %bb.kl
  %i.cpy = sub nsw i64 %indvars.iv1605.i, %indvars.iv1578.i ; 3 uses
  %i.cpz = getelementptr [12 x i8], ptr %i.cpc, i64 %i.cpy ; 15 uses
  %i.cqa = srem i32 %i.cps, 3
  %i.cqb = sext i32 %i.cqa to i64
  %i.cqc = getelementptr inbounds [16 x i8], ptr %i.cpf, i64 %i.cqb ; 6 uses
  %i.cqd = getelementptr inbounds nuw i8, ptr %i.cqc, i64 2
  %i.cqe = load i16, ptr %i.cqd, align 2, !tbaa !474 ; 2 uses
  %i.cqf = sext i16 %i.cqe to i64
  %i.cqg = getelementptr inbounds [12 x i8], ptr %i.cpz, i64 %i.cqf
  %i.cqh = getelementptr inbounds nuw i8, ptr %i.cqg, i64 4
  %i.cqi = load float, ptr %i.cqh, align 4, !tbaa !12
  %i.cqj = load i16, ptr %i.cqc, align 16, !tbaa !474 ; 2 uses
  %i.cqk = sext i16 %i.cqj to i64
  %i.cql = getelementptr inbounds [12 x i8], ptr %i.cpz, i64 %i.cqk
  %i.cqm = getelementptr inbounds nuw i8, ptr %i.cql, i64 4
  %i.cqn = load float, ptr %i.cqm, align 4, !tbaa !12
  %i.cqo = fadd reassoc nsz arcp contract afn float %i.cqn, %i.cqi
  %i.cqp = fmul reassoc nsz arcp contract afn float %i.cqo, f0x3F2E0000
  %i.cqq = sext i16 %i.cqe to i32
  %i.cqr = shl nsw i32 %i.cqq, 1
  %i.cqs = sext i32 %i.cqr to i64
  %i.cqt = getelementptr inbounds [12 x i8], ptr %i.cpz, i64 %i.cqs
  %i.cqu = getelementptr inbounds nuw i8, ptr %i.cqt, i64 4
  %i.cqv = load float, ptr %i.cqu, align 4, !tbaa !12
  %i.cqw = sext i16 %i.cqj to i32
  %i.cqx = shl nsw i32 %i.cqw, 1
  %i.cqy = sext i32 %i.cqx to i64
  %i.cqz = getelementptr inbounds [12 x i8], ptr %i.cpz, i64 %i.cqy
  %i.cra = getelementptr inbounds nuw i8, ptr %i.cqz, i64 4
  %i.crb = load float, ptr %i.cra, align 4, !tbaa !12
end_hunk_0
begin_hunk_1_@process:bb.a
  %bc.merge.rdx3093 = phi float [ %i.ggn, %vec.epilog.iter.check3086 ], [ %.09031087.us.i, %vector.main.loop.iter.check3042 ]
  %i.ggo = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx3092, i64 0
  %i.ggp = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx3093, i64 0
  %broadcast.splatinsert3095 = insertelement <4 x i32> poison, i32 %i.gcw, i64 0
  %broadcast.splat3096 = shufflevector <4 x i32> %broadcast.splatinsert3095, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3103 = insertelement <4 x i64> poison, i64 %bc.resume.val3091, i64 0
  %broadcast.splat3104 = shufflevector <4 x i64> %broadcast.splatinsert3103, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction3105 = add nsw <4 x i64> %broadcast.splat3104, <i64 0, i64 1, i64 2, i64 3>
  %i.ggq = trunc i64 %bc.resume.val3091 to i32
  %broadcast.splatinsert3106 = insertelement <4 x i32> poison, i32 %i.ggq, i64 0
  %broadcast.splat3107 = shufflevector <4 x i32> %broadcast.splatinsert3106, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction3108 = add <4 x i32> %broadcast.splat3107, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body3109

vec.epilog.vector.body3109:                       ; preds = %vec.epilog.vector.body3109, %vec.epilog.ph3089
  %index3110 = phi i64 [ %vec.epilog.resume.val3090, %vec.epilog.ph3089 ], [ %index.next3119, %vec.epilog.vector.body3109 ]
  %vec.ind3111 = phi <4 x i64> [ %induction3105, %vec.epilog.ph3089 ], [ %vec.ind.next3120, %vec.epilog.vector.body3109 ] ; 2 uses
  %vec.phi3112 = phi <4 x i8> [ %i.ggo, %vec.epilog.ph3089 ], [ %predphi3118, %vec.epilog.vector.body3109 ]
  %vec.phi3113 = phi <4 x float> [ %i.ggp, %vec.epilog.ph3089 ], [ %predphi3117, %vec.epilog.vector.body3109 ] ; 2 uses
  %vec.ind3114 = phi <4 x i32> [ %induction3108, %vec.epilog.ph3089 ], [ %vec.ind.next3121, %vec.epilog.vector.body3109 ] ; 3 uses
  %i.ggr = icmp slt <4 x i64> %vec.ind3111, %broadcast.splat3098
  %i.ggs = sub <4 x i32> %broadcast.splat3100, %vec.ind3114
  %i.ggt = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %vec.ind3114, i1 true)
  %i.ggu = select <4 x i1> %i.ggr, <4 x i32> %i.ggt, <4 x i32> %i.ggs ; 2 uses
  %i.ggv = add nsw <4 x i32> %i.ggu, splat (i32 600)
  %i.ggw = srem <4 x i32> %i.ggv, splat (i32 6)
  %i.ggx = sext <4 x i32> %i.ggw to <4 x i64>     ; 4 uses
  %i.ggy = extractelement <4 x i64> %i.ggx, i64 0
  %i.ggz = getelementptr inbounds i8, ptr %i.gcv, i64 %i.ggy
  %i.gha = extractelement <4 x i64> %i.ggx, i64 1
  %i.ghb = getelementptr inbounds i8, ptr %i.gcv, i64 %i.gha
  %i.ghc = extractelement <4 x i64> %i.ggx, i64 2
  %i.ghd = getelementptr inbounds i8, ptr %i.gcv, i64 %i.ghc
  %i.ghe = extractelement <4 x i64> %i.ggx, i64 3
  %i.ghf = getelementptr inbounds i8, ptr %i.gcv, i64 %i.ghe
  %i.ghg = load i8, ptr %i.ggz, align 1, !tbaa !133
  %i.ghh = load i8, ptr %i.ghb, align 1, !tbaa !133
  %i.ghi = load i8, ptr %i.ghd, align 1, !tbaa !133
  %i.ghj = load i8, ptr %i.ghf, align 1, !tbaa !133
  %i.ghk = insertelement <4 x i8> poison, i8 %i.ghg, i64 0
  %i.ghl = insertelement <4 x i8> %i.ghk, i8 %i.ghh, i64 1
  %i.ghm = insertelement <4 x i8> %i.ghl, i8 %i.ghi, i64 2
  %i.ghn = insertelement <4 x i8> %i.ghm, i8 %i.ghj, i64 3
  %i.gho = icmp eq <4 x i8> %i.ghn, %broadcast.splat3102 ; 3 uses
  %i.ghp = add nsw <4 x i32> %i.ggu, %broadcast.splat3096
  %i.ghq = sext <4 x i32> %i.ghp to <4 x i64>
  %wide.gep3115 = getelementptr inbounds [4 x i8], ptr %i.awz, <4 x i64> %i.ghq
  %wide.masked.gather3116 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep3115, <4 x i1> %i.gho, <4 x float> poison), !tbaa !12
  %i.ghr = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %wide.masked.gather3116, <4 x float> zeroinitializer)
  %i.ghs = fadd reassoc nsz arcp contract afn <4 x float> %i.ghr, %vec.phi3113
  %predphi3117 = select nsz <4 x i1> %i.gho, <4 x float> %i.ghs, <4 x float> %vec.phi3113 ; 2 uses
  %i.ght = zext <4 x i1> %i.gho to <4 x i8>
  %predphi3118 = add <4 x i8> %vec.phi3112, %i.ght ; 2 uses
  %index.next3119 = add nuw i64 %index3110, 4     ; 2 uses
  %vec.ind.next3120 = add nsw <4 x i64> %vec.ind3111, splat (i64 4)
  %vec.ind.next3121 = add <4 x i32> %vec.ind3114, splat (i32 4)
  %i.ghu = icmp eq i64 %index.next3119, %n.vec3094
  br i1 %i.ghu, label %vec.epilog.middle.block3122, label %vec.epilog.vector.body3109, !llvm.loop !227

vec.epilog.middle.block3122:                      ; preds = %vec.epilog.vector.body3109
  %i.ghv = call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %predphi3118) ; 2 uses
  %i.ghw = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %predphi3117) ; 2 uses
  br i1 %cmp.n3123, label %.split1085.us1261.i, label %vec.epilog.scalar.ph3087.preheader

vec.epilog.scalar.ph3087.preheader:               ; preds = %iter.check3085, %vec.epilog.iter.check3086, %vec.epilog.middle.block3122
  %indvars.iv1183.ph = phi i64 [ %i.fvn, %iter.check3085 ], [ %i.fwo, %vec.epilog.iter.check3086 ], [ %i.fwp, %vec.epilog.middle.block3122 ]
  %.19011082.us.us.i.ph = phi i8 [ %.09001088.us.i, %iter.check3085 ], [ %i.ggm, %vec.epilog.iter.check3086 ], [ %i.ghv, %vec.epilog.middle.block3122 ]
  %.19041081.us.us.i.ph = phi float [ %.09031087.us.i, %iter.check3085 ], [ %i.ggn, %vec.epilog.iter.check3086 ], [ %i.ghw, %vec.epilog.middle.block3122 ]
  br label %vec.epilog.scalar.ph3087

vec.epilog.scalar.ph3087:                         ; preds = %vec.epilog.scalar.ph3087.preheader, %bb.lv
  %indvars.iv1183 = phi i64 [ %indvars.iv.next1184, %bb.lv ], [ %indvars.iv1183.ph, %vec.epilog.scalar.ph3087.preheader ] ; 4 uses
  %.19011082.us.us.i = phi i8 [ %.2902.us.us.i, %bb.lv ], [ %.19011082.us.us.i.ph, %vec.epilog.scalar.ph3087.preheader ] ; 2 uses
  %.19041081.us.us.i = phi float [ %.2905.us.us.i, %bb.lv ], [ %.19041081.us.us.i.ph, %vec.epilog.scalar.ph3087.preheader ] ; 2 uses
  %.not979.us.us.i = icmp slt i64 %indvars.iv1183, %i.aoa
  %i.ghx = trunc nsw i64 %indvars.iv1183 to i32   ; 2 uses
  %i.ghy = sub i32 %i.apm, %i.ghx
  %i.ghz = tail call i32 @llvm.abs.i32(i32 %i.ghx, i1 true)
  %i.gia = select i1 %.not979.us.us.i, i32 %i.ghz, i32 %i.ghy ; 2 uses
  %i.gib = add nsw i32 %i.gia, 600
  %i.gic = srem i32 %i.gib, 6
  %i.gid = sext i32 %i.gic to i64
  %i.gie = getelementptr inbounds i8, ptr %i.gcv, i64 %i.gid
  %i.gif = load i8, ptr %i.gie, align 1, !tbaa !133
  %i.gig = icmp eq i8 %i.gif, %i.fvx
  br i1 %i.gig, label %bb.lu, label %bb.lv

bb.lu:                                            ; preds = %vec.epilog.scalar.ph3087
  %i.gih = add nsw i32 %i.gia, %i.gcw
  %i.gii = sext i32 %i.gih to i64
  %i.gij = getelementptr inbounds [4 x i8], ptr %i.awz, i64 %i.gii
  %i.gik = load float, ptr %i.gij, align 4, !tbaa !12
  %i.gil = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.gik, float 0.000000e+00)
  %i.gim = fadd reassoc nsz arcp contract afn float %i.gil, %.19041081.us.us.i
  %i.gin = add i8 %.19011082.us.us.i, 1
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %vec.epilog.scalar.ph3087
  %.2905.us.us.i = phi nsz float [ %i.gim, %bb.lu ], [ %.19041081.us.us.i, %vec.epilog.scalar.ph3087 ] ; 2 uses
  %.2902.us.us.i = phi i8 [ %i.gin, %bb.lu ], [ %.19011082.us.us.i, %vec.epilog.scalar.ph3087 ] ; 2 uses
  %indvars.iv.next1184 = add nsw i64 %indvars.iv1183, 1
  %.not977.us.us.i = icmp slt i64 %indvars.iv1338.i, %indvars.iv1183
  br i1 %.not977.us.us.i, label %.split1085.us1261.i, label %vec.epilog.scalar.ph3087, !llvm.loop !228

.split1085.us1261.i:                              ; preds = %bb.lt, %bb.lv, %middle.block3168, %vec.epilog.middle.block3209, %middle.block3081, %vec.epilog.middle.block3122
  %.us-phi.us.i = phi float [ %.2905.us.us.i, %bb.lv ], [ %i.ghw, %vec.epilog.middle.block3122 ], [ %i.ggn, %middle.block3081 ], [ %i.gbz, %vec.epilog.middle.block3209 ], [ %i.gaq, %middle.block3168 ], [ %.2905.us1258.i, %bb.lt ] ; 2 uses
  %.us-phi1086.us.i = phi i8 [ %.2902.us.us.i, %bb.lv ], [ %i.ghv, %vec.epilog.middle.block3122 ], [ %i.ggm, %middle.block3081 ], [ %i.gby, %vec.epilog.middle.block3209 ], [ %i.gap, %middle.block3168 ], [ %.2902.us1259.i, %bb.lt ] ; 2 uses
  %indvars.iv.next1190 = add nsw i64 %indvars.iv1189, 1
  %.not976.us.i = icmp slt i64 %indvars.iv1343.i, %indvars.iv1189
  br i1 %.not976.us.i, label %bb.lw, label %.preheader.i522

bb.lw:                                            ; preds = %.split1085.us1261.i
  %i.gio = uitofp i8 %.us-phi1086.us.i to float
  %i.gip = fdiv reassoc nsz arcp contract afn float %.us-phi.us.i, %i.gio
  store float %i.gip, ptr %i.fwb, align 4, !tbaa !12
  br label %bb.ly

bb.lx:                                            ; preds = %bb.lr
  %i.giq = load float, ptr %i.fwj, align 4, !tbaa !12
  %i.gir = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.giq, float 0.000000e+00)
  store float %i.gir, ptr %i.fwb, align 4, !tbaa !12
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %bb.lw, %bb.lq
  %indvars.iv.next1329.i = add nuw nsw i64 %indvars.iv1328.i, 1 ; 2 uses
  %exitcond1331.not.i = icmp eq i64 %indvars.iv.next1329.i, 3
  br i1 %exitcond1331.not.i, label %.loopexit1051.us.i, label %bb.lp

bb.lz:                                            ; preds = %bb.ln
  %gep.i523 = getelementptr [4 x i8], ptr %invariant.gep.i520, i64 %indvars.iv1338.i ; 3 uses
  %i.gis = icmp eq i8 %i.fvx, 0
  br i1 %i.gis, label %.thread.i525, label %bb.ma

.thread.i525:                                     ; preds = %bb.lz
  %i.git = load float, ptr %gep.i523, align 4, !tbaa !12
  %i.giu = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.git, float 0.000000e+00)
  store float %i.giu, ptr %i.fvp, align 4, !tbaa !12
  br label %.thread1661.i

bb.ma:                                            ; preds = %bb.lz
  store float 0.000000e+00, ptr %i.fvp, align 4, !tbaa !12
  %i.giv = icmp eq i8 %i.fvx, 1
  br i1 %i.giv, label %bb.mb, label %bb.mc

bb.mb:                                            ; preds = %bb.ma
  %i.giw = load float, ptr %gep.i523, align 4, !tbaa !12
  %i.gix = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.giw, float 0.000000e+00)
  br label %.thread1661.i

.thread1661.i:                                    ; preds = %bb.mb, %.thread.i525
  %.ph.i524 = phi float [ 0.000000e+00, %.thread.i525 ], [ %i.gix, %bb.mb ]
  %i.giy = getelementptr inbounds nuw i8, ptr %i.fvp, i64 4
  store float %.ph.i524, ptr %i.giy, align 4, !tbaa !12
  br label %.loopexit1051.us.loopexit.i

bb.mc:                                            ; preds = %bb.ma
  %i.giz = getelementptr inbounds nuw i8, ptr %i.fvp, i64 4
  store float 0.000000e+00, ptr %i.giz, align 4, !tbaa !12
  %i.gja = icmp eq i8 %i.fvx, 2
  br i1 %i.gja, label %bb.md, label %.loopexit1051.us.loopexit.i

bb.md:                                            ; preds = %bb.mc
  %i.gjb = load float, ptr %gep.i523, align 4, !tbaa !12
  %i.gjc = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.gjb, float 0.000000e+00)
  br label %.loopexit1051.us.loopexit.i

.loopexit1051.us.loopexit.i:                      ; preds = %bb.md, %bb.mc, %.thread1661.i
  %i.gjd = phi float [ %i.gjc, %bb.md ], [ 0.000000e+00, %bb.mc ], [ 0.000000e+00, %.thread1661.i ]
  %i.gje = getelementptr inbounds nuw i8, ptr %i.fvp, i64 8
  store float %i.gjd, ptr %i.gje, align 4, !tbaa !12
  br label %.loopexit1051.us.i

.loopexit1051.us.i:                               ; preds = %bb.ly, %.loopexit1051.us.loopexit.i
  %indvars.iv.next1339.i = add nsw i64 %indvars.iv1338.i, 1 ; 2 uses
  %i.gjf = icmp slt i64 %indvars.iv.next1339.i, %i.fup
  %indvars.iv.next1180 = add i32 %indvars.iv1179, 1
  %indvar.next3038 = add i64 %indvar3037, 1
  br i1 %i.gjf, label %bb.ln, label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %.loopexit1051.us.i
  %indvars.iv.next1344.i = add nsw i64 %indvars.iv1343.i, 1 ; 2 uses
  %i.gjg = icmp slt i64 %indvars.iv.next1344.i, %i.fto
  %indvars.iv.next1188 = add i32 %indvars.iv1187, 1
  br i1 %i.gjg, label %.preheader1056.us.i, label %.preheader1061.us.i

.preheader1061.us.i:                              ; preds = %._crit_edge.us.i, %bb.lm
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.fpv, ptr noundef nonnull %i.foj, i64 noundef 44652) #27
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.fpw, ptr noundef nonnull %i.foj, i64 noundef 44652) #27
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.fpx, ptr noundef nonnull %i.foj, i64 noundef 44652) #27
  br i1 %i.fso, label %.lr.ph1106.us.i, label %.preheader1059.us.i

.lr.ph1106.us.i:                                  ; preds = %.preheader1061.us.i
  %i.gjh = add nsw i32 %indvars.iv1336.i, 3       ; 3 uses
  %i.gji = add nsw i32 %i.fun, -3                 ; 3 uses
  %i.gjj = icmp slt i32 %i.gjh, %i.gji
  %i.gjk = add nsw i32 %i.fun, -4
  br i1 %i.gjj, label %.lr.ph.us.us.i, label %.preheader1059.us.i

.lr.ph.us.us.i:                                   ; preds = %.lr.ph1106.us.i, %.lr.ph.us.us.i.backedge
  %.08831101.us.us.i = phi i32 [ %.08831101.us.us.i.be, %.lr.ph.us.us.i.backedge ], [ %i.gjh, %.lr.ph1106.us.i ] ; 8 uses
  %.08851100.us.us.i = phi float [ %.08851100.us.us.i.be, %.lr.ph.us.us.i.backedge ], [ 0.000000e+00, %.lr.ph1106.us.i ] ; 4 uses
  %.08891099.us.us.i = phi float [ %.08891099.us.us.i.be, %.lr.ph.us.us.i.backedge ], [ f0x7F7FFFFF, %.lr.ph1106.us.i ] ; 3 uses
  %.18951098.us.us.i = phi i32 [ %.18951098.us.us.i.be, %.lr.ph.us.us.i.backedge ], [ %i.fsm, %.lr.ph1106.us.i ] ; 10 uses
  %i.gjl = add nsw i32 %.18951098.us.us.i, 600    ; 2 uses
  %i.gjm = add nsw i32 %.08831101.us.us.i, 600    ; 2 uses
  %i.gjn = srem i32 %i.gjl, 6
  %i.gjo = sext i32 %i.gjn to i64
  %i.gjp = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.gjo
  %i.gjq = srem i32 %i.gjm, 6
  %i.gjr = sext i32 %i.gjq to i64
  %i.gjs = getelementptr inbounds i8, ptr %i.gjp, i64 %i.gjr
  %i.gjt = load i8, ptr %i.gjs, align 1, !tbaa !133
  %i.gju = icmp eq i8 %i.gjt, 1
  br i1 %i.gju, label %bb.mi, label %bb.me

bb.me:                                            ; preds = %.lr.ph.us.us.i
  %i.gjv = fcmp reassoc nsz arcp contract afn oeq float %.08851100.us.us.i, 0.000000e+00
  %i.gjw = sub nsw i32 %.18951098.us.us.i, %indvars.iv1341.i
  %i.gjx = sext i32 %i.gjw to i64                 ; 3 uses
  br i1 %i.gjv, label %.loopexit1049.us.us.loopexit.i, label %..loopexit1049.us.us_crit_edge.i

..loopexit1049.us.us_crit_edge.i:                 ; preds = %bb.me
  %.pre1617.i = sub nsw i32 %.08831101.us.us.i, %indvars.iv1336.i
  %.pre1619.i = sext i32 %.pre1617.i to i64
  br label %.loopexit1049.us.us.i

.loopexit1049.us.us.loopexit.i:                   ; preds = %bb.me
  %i.gjy = getelementptr inbounds [1464 x i8], ptr %i.foj, i64 %i.gjx
  %i.gjz = sub nsw i32 %.08831101.us.us.i, %indvars.iv1336.i
  %i.gka = sext i32 %i.gjz to i64                 ; 2 uses
  %i.gkb = getelementptr inbounds [12 x i8], ptr %i.gjy, i64 %i.gka ; 6 uses
  %i.gkc = srem i32 %i.gjl, 3
  %i.gkd = sext i32 %i.gkc to i64
  %i.gke = getelementptr inbounds [48 x i8], ptr %i.e, i64 %i.gkd
  %i.gkf = srem i32 %i.gjm, 3
  %i.gkg = sext i32 %i.gkf to i64
  %i.gkh = getelementptr inbounds [16 x i8], ptr %i.gke, i64 %i.gkg ; 6 uses
  %i.gki = load i16, ptr %i.gkh, align 16, !tbaa !474
  %i.gkj = sext i16 %i.gki to i64
  %i.gkk = getelementptr inbounds [12 x i8], ptr %i.gkb, i64 %i.gkj
  %i.gkl = getelementptr inbounds nuw i8, ptr %i.gkk, i64 4
  %i.gkm = load float, ptr %i.gkl, align 4, !tbaa !12 ; 4 uses
  %i.gkn = fcmp reassoc nsz arcp contract afn ogt float %.08891099.us.us.i, %i.gkm
  %spec.select.us.us.i = select nsz i1 %i.gkn, float %i.gkm, float %.08891099.us.us.i ; 2 uses
  %i.gko = fcmp reassoc nsz arcp contract afn olt float %.08851100.us.us.i, %i.gkm
  %.2887.us.us.i = select nsz i1 %i.gko, float %i.gkm, float %.08851100.us.us.i ; 2 uses
  %i.gkp = getelementptr inbounds nuw i8, ptr %i.gkh, i64 2
  %i.gkq = load i16, ptr %i.gkp, align 2, !tbaa !474
  %i.gkr = sext i16 %i.gkq to i64
  %i.gks = getelementptr inbounds [12 x i8], ptr %i.gkb, i64 %i.gkr
  %i.gkt = getelementptr inbounds nuw i8, ptr %i.gks, i64 4
  %i.gku = load float, ptr %i.gkt, align 4, !tbaa !12 ; 4 uses
  %i.gkv = fcmp reassoc nsz arcp contract afn ogt float %spec.select.us.us.i, %i.gku
  %spec.select.us.us.1.i = select nsz i1 %i.gkv, float %i.gku, float %spec.select.us.us.i ; 2 uses
  %i.gkw = fcmp reassoc nsz arcp contract afn olt float %.2887.us.us.i, %i.gku
  %.2887.us.us.1.i = select nsz i1 %i.gkw, float %i.gku, float %.2887.us.us.i ; 2 uses
  %i.gkx = getelementptr inbounds nuw i8, ptr %i.gkh, i64 4
  %i.gky = load i16, ptr %i.gkx, align 4, !tbaa !474
  %i.gkz = sext i16 %i.gky to i64
  %i.gla = getelementptr inbounds [12 x i8], ptr %i.gkb, i64 %i.gkz
  %i.glb = getelementptr inbounds nuw i8, ptr %i.gla, i64 4
  %i.glc = load float, ptr %i.glb, align 4, !tbaa !12 ; 4 uses
  %i.gld = fcmp reassoc nsz arcp contract afn ogt float %spec.select.us.us.1.i, %i.glc
  %spec.select.us.us.2.i = select nsz i1 %i.gld, float %i.glc, float %spec.select.us.us.1.i ; 2 uses
  %i.gle = fcmp reassoc nsz arcp contract afn olt float %.2887.us.us.1.i, %i.glc
  %.2887.us.us.2.i = select nsz i1 %i.gle, float %i.glc, float %.2887.us.us.1.i ; 2 uses
  %i.glf = getelementptr inbounds nuw i8, ptr %i.gkh, i64 6
  %i.glg = load i16, ptr %i.glf, align 2, !tbaa !474
  %i.glh = sext i16 %i.glg to i64
  %i.gli = getelementptr inbounds [12 x i8], ptr %i.gkb, i64 %i.glh
  %i.glj = getelementptr inbounds nuw i8, ptr %i.gli, i64 4
  %i.glk = load float, ptr %i.glj, align 4, !tbaa !12 ; 4 uses
  %i.gll = fcmp reassoc nsz arcp contract afn ogt float %spec.select.us.us.2.i, %i.glk
  %spec.select.us.us.3.i = select nsz i1 %i.gll, float %i.glk, float %spec.select.us.us.2.i ; 2 uses
  %i.glm = fcmp reassoc nsz arcp contract afn olt float %.2887.us.us.2.i, %i.glk
  %.2887.us.us.3.i = select nsz i1 %i.glm, float %i.glk, float %.2887.us.us.2.i ; 2 uses
  %i.gln = getelementptr inbounds nuw i8, ptr %i.gkh, i64 8
  %i.glo = load i16, ptr %i.gln, align 8, !tbaa !474
  %i.glp = sext i16 %i.glo to i64
  %i.glq = getelementptr inbounds [12 x i8], ptr %i.gkb, i64 %i.glp
  %i.glr = getelementptr inbounds nuw i8, ptr %i.glq, i64 4
  %i.gls = load float, ptr %i.glr, align 4, !tbaa !12 ; 4 uses
  %i.glt = fcmp reassoc nsz arcp contract afn ogt float %spec.select.us.us.3.i, %i.gls
  %spec.select.us.us.4.i = select nsz i1 %i.glt, float %i.gls, float %spec.select.us.us.3.i ; 2 uses
  %i.glu = fcmp reassoc nsz arcp contract afn olt float %.2887.us.us.3.i, %i.gls
  %.2887.us.us.4.i = select nsz i1 %i.glu, float %i.gls, float %.2887.us.us.3.i ; 2 uses
  %i.glv = getelementptr inbounds nuw i8, ptr %i.gkh, i64 10
  %i.glw = load i16, ptr %i.glv, align 2, !tbaa !474
  %i.glx = sext i16 %i.glw to i64
  %i.gly = getelementptr inbounds [12 x i8], ptr %i.gkb, i64 %i.glx
  %i.glz = getelementptr inbounds nuw i8, ptr %i.gly, i64 4
  %i.gma = load float, ptr %i.glz, align 4, !tbaa !12 ; 4 uses
  %i.gmb = fcmp reassoc nsz arcp contract afn ogt float %spec.select.us.us.4.i, %i.gma
  %spec.select.us.us.5.i = select nsz i1 %i.gmb, float %i.gma, float %spec.select.us.us.4.i
  %i.gmc = fcmp reassoc nsz arcp contract afn olt float %.2887.us.us.4.i, %i.gma
  %.2887.us.us.5.i = select nsz i1 %i.gmc, float %i.gma, float %.2887.us.us.4.i
  br label %.loopexit1049.us.us.i

.loopexit1049.us.us.i:                            ; preds = %.loopexit1049.us.us.loopexit.i, %..loopexit1049.us.us_crit_edge.i
  %.pre-phi1620.i = phi i64 [ %.pre1619.i, %..loopexit1049.us.us_crit_edge.i ], [ %i.gka, %.loopexit1049.us.us.loopexit.i ] ; 2 uses
  %.3892.us.us.i = phi nsz float [ %.08891099.us.us.i, %..loopexit1049.us.us_crit_edge.i ], [ %spec.select.us.us.5.i, %.loopexit1049.us.us.loopexit.i ] ; 4 uses
  %.3888.us.us.i = phi nsz float [ %.08851100.us.us.i, %..loopexit1049.us.us_crit_edge.i ], [ %.2887.us.us.5.i, %.loopexit1049.us.us.loopexit.i ] ; 4 uses
  %i.gmd = getelementptr inbounds [488 x i8], ptr %i.fpi, i64 %i.gjx
  %i.gme = getelementptr inbounds [4 x i8], ptr %i.gmd, i64 %.pre-phi1620.i
  store float %.3892.us.us.i, ptr %i.gme, align 4, !tbaa !12
  %i.gmf = getelementptr inbounds [488 x i8], ptr %i.fpk, i64 %i.gjx
  %i.gmg = getelementptr inbounds [4 x i8], ptr %i.gmf, i64 %.pre-phi1620.i
  store float %.3888.us.us.i, ptr %i.gmg, align 4, !tbaa !12
  %i.gmh = sub nsw i32 %.18951098.us.us.i, %i.fpp
  %i.gmi = srem i32 %i.gmh, 3
  switch i32 %i.gmi, label %bb.mi [
    i32 1, label %bb.mg
    i32 2, label %bb.mf
  ]

bb.mf:                                            ; preds = %.loopexit1049.us.us.i
  %i.gmj = add nsw i32 %.08831101.us.us.i, 2      ; 2 uses
  %i.gmk = icmp slt i32 %i.gmj, %i.gjk
  %i.gml = icmp sgt i32 %.18951098.us.us.i, %i.fsm
  %or.cond982.us.us.i = select i1 %i.gmk, i1 %i.gml, i1 false
  %i.gmm = sext i1 %or.cond982.us.us.i to i32
  %spec.select988.us.us.i = add nsw i32 %.18951098.us.us.i, %i.gmm
  br label %bb.mi

bb.mg:                                            ; preds = %.loopexit1049.us.us.i
  %i.gmn = icmp slt i32 %.18951098.us.us.i, %i.fsp
  br i1 %i.gmn, label %bb.mh, label %bb.mi

bb.mh:                                            ; preds = %bb.mg
  %i.gmo = add nsw i32 %.18951098.us.us.i, 1
  %i.gmp = add nsw i32 %.08831101.us.us.i, -1
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mh, %bb.mg, %bb.mf, %.loopexit1049.us.us.i, %.lr.ph.us.us.i
  %.2896.us.us.i = phi i32 [ %spec.select988.us.us.i, %bb.mf ], [ %.18951098.us.us.i, %.loopexit1049.us.us.i ], [ %i.gmo, %bb.mh ], [ %.18951098.us.us.i, %bb.mg ], [ %.18951098.us.us.i, %.lr.ph.us.us.i ] ; 2 uses
  %.4893.us.us.i = phi nsz float [ f0x7F7FFFFF, %bb.mf ], [ %.3892.us.us.i, %.loopexit1049.us.us.i ], [ %.3892.us.us.i, %bb.mh ], [ %.3892.us.us.i, %bb.mg ], [ f0x7F7FFFFF, %.lr.ph.us.us.i ]
  %.4.us.us.i = phi nsz float [ 0.000000e+00, %bb.mf ], [ %.3888.us.us.i, %.loopexit1049.us.us.i ], [ %.3888.us.us.i, %bb.mh ], [ %.3888.us.us.i, %bb.mg ], [ 0.000000e+00, %.lr.ph.us.us.i ]
  %.1884.us.us.i = phi i32 [ %i.gmj, %bb.mf ], [ %.08831101.us.us.i, %.loopexit1049.us.us.i ], [ %i.gmp, %bb.mh ], [ %.08831101.us.us.i, %bb.mg ], [ %.08831101.us.us.i, %.lr.ph.us.us.i ]
  %i.gmq = add nsw i32 %.1884.us.us.i, 1          ; 2 uses
  %i.gmr = icmp slt i32 %i.gmq, %i.gji
  br i1 %i.gmr, label %.lr.ph.us.us.i.backedge, label %._crit_edge1103.us.us.i

.lr.ph.us.us.i.backedge:                          ; preds = %bb.mi, %._crit_edge1103.us.us.i
  %.08831101.us.us.i.be = phi i32 [ %i.gmq, %bb.mi ], [ %i.gjh, %._crit_edge1103.us.us.i ]
  %.08851100.us.us.i.be = phi float [ %.4.us.us.i, %bb.mi ], [ 0.000000e+00, %._crit_edge1103.us.us.i ]
  %.08891099.us.us.i.be = phi float [ %.4893.us.us.i, %bb.mi ], [ f0x7F7FFFFF, %._crit_edge1103.us.us.i ]
  %.18951098.us.us.i.be = phi i32 [ %.2896.us.us.i, %bb.mi ], [ %i.gms, %._crit_edge1103.us.us.i ]
  br label %.lr.ph.us.us.i

._crit_edge1103.us.us.i:                          ; preds = %bb.mi
  %i.gms = add nsw i32 %.2896.us.us.i, 1          ; 2 uses
  %i.gmt = icmp slt i32 %i.gms, %i.fsn
  br i1 %i.gmt, label %.lr.ph.us.us.i.backedge, label %.lr.ph.us1267.preheader.i

.lr.ph.us1267.preheader.i:                        ; preds = %._crit_edge1103.us.us.i
  %i.gmu = sext i32 %i.gji to i64
  br label %.lr.ph.us1267.i

.lr.ph.us1267.i:                                  ; preds = %._crit_edge1119.us.i, %.lr.ph.us1267.preheader.i
  %indvars.iv1368.i = phi i64 [ %i.fsi, %.lr.ph.us1267.preheader.i ], [ %indvars.iv.next1369.i, %._crit_edge1119.us.i ] ; 4 uses
  %i.gmv = trunc i64 %indvars.iv1368.i to i32
  %i.gmw = add i32 %i.gmv, 600                    ; 2 uses
  %i.gmx = srem i32 %i.gmw, 6
  %i.gmy = sext i32 %i.gmx to i64
  %i.gmz = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.gmy
  %i.gna = sub nsw i64 %indvars.iv1368.i, %i.fsj  ; 3 uses
  %i.gnb = getelementptr [1464 x i8], ptr %i.foj, i64 %i.gna
  %i.gnc = srem i32 %i.gmw, 3
  %i.gnd = sext i32 %i.gnc to i64
  %i.gne = getelementptr inbounds [48 x i8], ptr %i.e, i64 %i.gnd
  %i.gnf = getelementptr inbounds [488 x i8], ptr %i.fpi, i64 %i.gna
  %i.gng = sub nsw i64 %indvars.iv1368.i, %i.fpt
  %i.gnh = trunc nsw i64 %i.gng to i32
  %i.gni = srem i32 %i.gnh, 3
  %.not972.us.i = icmp eq i32 %i.gni, 0           ; 2 uses
  %i.gnj = zext i1 %.not972.us.i to i32           ; 2 uses
  %i.gnk = getelementptr inbounds [488 x i8], ptr %i.fpk, i64 %i.gna
  %i.gnl = zext i1 %.not972.us.i to i64
  %i.gnm = xor i32 %i.gnj, 1
  %i.gnn = zext nneg i32 %i.gnm to i64
  %i.gno = xor i32 %i.gnj, 3
  %i.gnp = zext nneg i32 %i.gno to i64
  br label %bb.mj

bb.mj:                                            ; preds = %.loopexit1048.us.i, %.lr.ph.us1267.i
  %indvars.iv1363.i = phi i64 [ %indvars.iv.next1364.i, %.loopexit1048.us.i ], [ %i.fuk, %.lr.ph.us1267.i ] ; 3 uses
  %i.gnq = trunc i64 %indvars.iv1363.i to i32
  %i.gnr = add i32 %i.gnq, 600                    ; 2 uses
  %i.gns = srem i32 %i.gnr, 6
  %i.gnt = sext i32 %i.gns to i64
  %i.gnu = getelementptr inbounds i8, ptr %i.gmz, i64 %i.gnt
  %i.gnv = load i8, ptr %i.gnu, align 1, !tbaa !133 ; 2 uses
  %i.gnw = icmp eq i8 %i.gnv, 1
  br i1 %i.gnw, label %.loopexit1048.us.i, label %.preheader1047.us.i

.preheader1047.us.i:                              ; preds = %bb.mj
  %i.gnx = sub nsw i64 %indvars.iv1363.i, %i.ful  ; 3 uses
  %i.gny = getelementptr [12 x i8], ptr %i.gnb, i64 %i.gnx ; 15 uses
  %i.gnz = srem i32 %i.gnr, 3
  %i.goa = sext i32 %i.gnz to i64
  %i.gob = getelementptr inbounds [16 x i8], ptr %i.gne, i64 %i.goa ; 6 uses
  %i.goc = getelementptr inbounds nuw i8, ptr %i.gob, i64 2
  %i.god = load i16, ptr %i.goc, align 2, !tbaa !474 ; 2 uses
  %i.goe = sext i16 %i.god to i64
  %i.gof = getelementptr inbounds [12 x i8], ptr %i.gny, i64 %i.goe
  %i.gog = getelementptr inbounds nuw i8, ptr %i.gof, i64 4
  %i.goh = load float, ptr %i.gog, align 4, !tbaa !12
  %i.goi = load i16, ptr %i.gob, align 16, !tbaa !474 ; 2 uses
  %i.goj = sext i16 %i.goi to i64
  %i.gok = getelementptr inbounds [12 x i8], ptr %i.gny, i64 %i.goj
  %i.gol = getelementptr inbounds nuw i8, ptr %i.gok, i64 4
  %i.gom = load float, ptr %i.gol, align 4, !tbaa !12
  %i.gon = fadd reassoc nsz arcp contract afn float %i.gom, %i.goh
  %i.goo = fmul reassoc nsz arcp contract afn float %i.gon, f0x3F2E0000
  %i.gop = sext i16 %i.god to i32
  %i.goq = shl nsw i32 %i.gop, 1
  %i.gor = sext i32 %i.goq to i64
  %i.gos = getelementptr inbounds [12 x i8], ptr %i.gny, i64 %i.gor
  %i.got = getelementptr inbounds nuw i8, ptr %i.gos, i64 4
  %i.gou = load float, ptr %i.got, align 4, !tbaa !12
  %i.gov = sext i16 %i.goi to i32
  %i.gow = shl nsw i32 %i.gov, 1
  %i.gox = sext i32 %i.gow to i64
  %i.goy = getelementptr inbounds [12 x i8], ptr %i.gny, i64 %i.gox
  %i.goz = getelementptr inbounds nuw i8, ptr %i.goy, i64 4
  %i.gpa = load float, ptr %i.goz, align 4, !tbaa !12
  %i.gpb = fadd reassoc nsz arcp contract afn float %i.gpa, %i.gou
  %i.gpc = fmul reassoc nsz arcp contract afn float %i.gpb, f0x3E380000
  %i.gpd = fsub reassoc nsz arcp contract afn float %i.goo, %i.gpc ; 3 uses
  %i.gpe = getelementptr inbounds nuw i8, ptr %i.gob, i64 6
  %i.gpf = load i16, ptr %i.gpe, align 2, !tbaa !474
  %i.gpg = sext i16 %i.gpf to i64
  %i.gph = getelementptr inbounds [12 x i8], ptr %i.gny, i64 %i.gpg
  %i.gpi = getelementptr inbounds nuw i8, ptr %i.gph, i64 4
  %i.gpj = load float, ptr %i.gpi, align 4, !tbaa !12
  %i.gpk = fmul reassoc nsz arcp contract afn float %i.gpj, f0x3F5F0000
  %i.gpl = getelementptr inbounds nuw i8, ptr %i.gob, i64 4
  %i.gpm = load i16, ptr %i.gpl, align 4, !tbaa !474
  %i.gpn = sext i16 %i.gpm to i64                 ; 2 uses
  %i.gpo = getelementptr inbounds [12 x i8], ptr %i.gny, i64 %i.gpn
  %i.gpp = getelementptr inbounds nuw i8, ptr %i.gpo, i64 4
  %i.gpq = load float, ptr %i.gpp, align 4, !tbaa !12
  %i.gpr = fmul reassoc nsz arcp contract afn float %i.gpq, 1.300000e-01
  %i.gps = fadd reassoc nsz arcp contract afn float %i.gpr, %i.gpk
  %i.gpt = zext i8 %i.gnv to i64                  ; 2 uses
  %i.gpu = getelementptr [4 x i8], ptr %i.gny, i64 %i.gpt ; 5 uses
end_hunk_1
