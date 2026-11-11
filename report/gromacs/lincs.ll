Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/lincs?download=true
inline.NumInlined: 2108
inline.NumDeleted: 793
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN3gmx9set_lincsERK22InteractionDefinitionsiNS_8ArrayRefIKfEEfbPK12gmx_domdec_tPNS_5LincsE:bb.a
  %i.ajl = load ptr, ptr %i.aji, align 8, !tbaa !110 ; 2 uses
  %i.ajm = ptrtoint ptr %i.ajk to i64
  %i.ajn = ptrtoint ptr %i.ajl to i64
  %i.ajo = sub i64 %i.ajm, %i.ajn
  %i.ajp = ashr exact i64 %i.ajo, 2               ; 3 uses
  %i.ajq = icmp ult i64 %i.ajp, %.pre-phi371
  br i1 %i.ajq, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit225
  %i.ajr = sub nuw nsw i64 %.pre-phi371, %i.ajp
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aji, i64 noundef %i.ajr)
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit229 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.el:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit225
  %i.ajs = icmp ugt i64 %i.ajp, %.pre-phi371
  br i1 %i.ajs, label %bb.em, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit229

bb.em:                                            ; preds = %bb.el
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %i.ajl, i64 %.pre-phi371 ; 2 uses
  %.not.i.i226 = icmp eq ptr %i.ajk, %i.ajt
  br i1 %.not.i.i226, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit229, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i227

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i227:     ; preds = %bb.em
  store ptr %i.ajt, ptr %i.ajj, align 8, !tbaa !131
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit229

_ZNSt6vectorIfSaIfEE6resizeEm.exit229:            ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i227, %bb.em, %bb.el, %bb.ek
  %i.aju = invoke { ptr, ptr } @_Z26dd_constraints_nlocalatomsPK12gmx_domdec_t(ptr noundef %6)
          to label %bb.en unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.en:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit229
  %i.ajv = extractvalue { ptr, ptr } %i.aju, 0    ; 10 uses
  %i.ajw = extractvalue { ptr, ptr } %i.aju, 1
  %i.ajx = icmp eq ptr %i.ajv, %i.ajw
  %i.ajy = load ptr, ptr %i.d, align 8, !tbaa !94 ; 8 uses
  br i1 %i.ajx, label %bb.ep, label %.preheader

.preheader:                                       ; preds = %bb.en
  br i1 %i.ma, label %.lr.ph308, label %_ZNSt6vectorIiSaIiEE5clearEv.exit232

.lr.ph308:                                        ; preds = %.preheader
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 320
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajy, i64 40
  %i.akb = load ptr, ptr %i.aka, align 8, !tbaa !24 ; 9 uses
  %i.akc = load ptr, ptr %i.ajz, align 8, !tbaa !24 ; 9 uses
  %wide.trip.count334 = zext nneg i32 %i.cd to i64 ; 2 uses
  %xtraiter564 = and i64 %wide.trip.count334, 7   ; 3 uses
  %i.akd = add nsw i32 %i.cd, -1
  %i.ake = icmp ult i32 %i.akd, 7
  br i1 %i.ake, label %.epil.preheader563, label %.lr.ph308.new

.lr.ph308.new:                                    ; preds = %.lr.ph308
  %unroll_iter568 = and i64 %wide.trip.count334, 1073741816
  br label %bb.eo

bb.eo:                                            ; preds = %bb.eo, %.lr.ph308.new
  %indvars.iv331 = phi i64 [ 0, %.lr.ph308.new ], [ %indvars.iv.next332.7, %bb.eo ] ; 10 uses
  %niter569 = phi i64 [ 0, %.lr.ph308.new ], [ %niter569.next.7, %bb.eo ]
  %i.akf = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %indvars.iv331
  %i.akg = load i32, ptr %i.akf, align 4, !tbaa !25
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %indvars.iv331
  %i.aki = load i32, ptr %i.akh, align 4, !tbaa !25
  %i.akj = sext i32 %i.aki to i64
  %i.akk = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.akj
  store i32 %i.akg, ptr %i.akk, align 4, !tbaa !25
  %indvars.iv.next332 = or disjoint i64 %indvars.iv331, 1 ; 2 uses
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %indvars.iv.next332
  %i.akm = load i32, ptr %i.akl, align 4, !tbaa !25
  %i.akn = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %indvars.iv.next332
  %i.ako = load i32, ptr %i.akn, align 4, !tbaa !25
  %i.akp = sext i32 %i.ako to i64
  %i.akq = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.akp
  store i32 %i.akm, ptr %i.akq, align 4, !tbaa !25
  %indvars.iv.next332.1 = or disjoint i64 %indvars.iv331, 2 ; 2 uses
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %indvars.iv.next332.1
  %i.aks = load i32, ptr %i.akr, align 4, !tbaa !25
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %indvars.iv.next332.1
  %i.aku = load i32, ptr %i.akt, align 4, !tbaa !25
  %i.akv = sext i32 %i.aku to i64
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.akv
  store i32 %i.aks, ptr %i.akw, align 4, !tbaa !25
  %indvars.iv.next332.2 = or disjoint i64 %indvars.iv331, 3 ; 2 uses
  %i.akx = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %indvars.iv.next332.2
  %i.aky = load i32, ptr %i.akx, align 4, !tbaa !25
  %i.akz = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %indvars.iv.next332.2
  %i.ala = load i32, ptr %i.akz, align 4, !tbaa !25
  %i.alb = sext i32 %i.ala to i64
  %i.alc = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.alb
  store i32 %i.aky, ptr %i.alc, align 4, !tbaa !25
  %indvars.iv.next332.3 = or disjoint i64 %indvars.iv331, 4 ; 2 uses
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %indvars.iv.next332.3
  %i.ale = load i32, ptr %i.ald, align 4, !tbaa !25
  %i.alf = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %indvars.iv.next332.3
  %i.alg = load i32, ptr %i.alf, align 4, !tbaa !25
  %i.alh = sext i32 %i.alg to i64
  %i.ali = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.alh
  store i32 %i.ale, ptr %i.ali, align 4, !tbaa !25
  %indvars.iv.next332.4 = or disjoint i64 %indvars.iv331, 5 ; 2 uses
  %i.alj = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %indvars.iv.next332.4
  %i.alk = load i32, ptr %i.alj, align 4, !tbaa !25
  %i.all = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %indvars.iv.next332.4
  %i.alm = load i32, ptr %i.all, align 4, !tbaa !25
  %i.aln = sext i32 %i.alm to i64
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.aln
  store i32 %i.alk, ptr %i.alo, align 4, !tbaa !25
  %indvars.iv.next332.5 = or disjoint i64 %indvars.iv331, 6 ; 2 uses
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %indvars.iv.next332.5
  %i.alq = load i32, ptr %i.alp, align 4, !tbaa !25
  %i.alr = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %indvars.iv.next332.5
  %i.als = load i32, ptr %i.alr, align 4, !tbaa !25
  %i.alt = sext i32 %i.als to i64
  %i.alu = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.alt
  store i32 %i.alq, ptr %i.alu, align 4, !tbaa !25
  %indvars.iv.next332.6 = or disjoint i64 %indvars.iv331, 7 ; 2 uses
  %i.alv = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %indvars.iv.next332.6
  %i.alw = load i32, ptr %i.alv, align 4, !tbaa !25
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %indvars.iv.next332.6
  %i.aly = load i32, ptr %i.alx, align 4, !tbaa !25
  %i.alz = sext i32 %i.aly to i64
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.alz
  store i32 %i.alw, ptr %i.ama, align 4, !tbaa !25
  %indvars.iv.next332.7 = add nuw nsw i64 %indvars.iv331, 8 ; 2 uses
  %niter569.next.7 = add i64 %niter569, 8         ; 2 uses
  %niter569.ncmp.7 = icmp eq i64 %niter569.next.7, %unroll_iter568
  br i1 %niter569.ncmp.7, label %_ZNSt6vectorIiSaIiEE5clearEv.exit232.loopexit.unr-lcssa, label %bb.eo, !llvm.loop !319

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %bb.bv, %bb.eb, %bb.ee, %bb.eh, %bb.ek, %bb.fi, %bb.ex, %bb.eu, %_ZNSt6vectorIfSaIfEE6resizeEm.exit229
  %lpad.loopexit.split-lp530 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ep:                                            ; preds = %bb.en
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ajy, i64 320
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !24 ; 2 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %i.ajy, i64 328 ; 2 uses
  %i.ame = load ptr, ptr %i.amd, align 8, !tbaa !23
  %.not.i.i230 = icmp eq ptr %i.ame, %i.amc
  br i1 %.not.i.i230, label %_ZNSt6vectorIiSaIiEE5clearEv.exit232, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i231

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i231:     ; preds = %bb.ep
  store ptr %i.amc, ptr %i.amd, align 8, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit232

_ZNSt6vectorIiSaIiEE5clearEv.exit232.loopexit.unr-lcssa: ; preds = %bb.eo
  %lcmp.mod566.not = icmp eq i64 %xtraiter564, 0
  br i1 %lcmp.mod566.not, label %_ZNSt6vectorIiSaIiEE5clearEv.exit232, label %.epil.preheader563

.epil.preheader563:                               ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit232.loopexit.unr-lcssa, %.lr.ph308
  %indvars.iv331.epil.init = phi i64 [ 0, %.lr.ph308 ], [ %indvars.iv.next332.7, %_ZNSt6vectorIiSaIiEE5clearEv.exit232.loopexit.unr-lcssa ]
  %lcmp.mod567 = icmp ne i64 %xtraiter564, 0
  call void @llvm.assume(i1 %lcmp.mod567)
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eq, %.epil.preheader563
  %indvars.iv331.epil = phi i64 [ %indvars.iv331.epil.init, %.epil.preheader563 ], [ %indvars.iv.next332.epil, %bb.eq ] ; 3 uses
  %epil.iter565 = phi i64 [ 0, %.epil.preheader563 ], [ %epil.iter565.next, %bb.eq ]
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %indvars.iv331.epil
  %i.amg = load i32, ptr %i.amf, align 4, !tbaa !25
  %i.amh = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %indvars.iv331.epil
  %i.ami = load i32, ptr %i.amh, align 4, !tbaa !25
  %i.amj = sext i32 %i.ami to i64
  %i.amk = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.amj
  store i32 %i.amg, ptr %i.amk, align 4, !tbaa !25
  %indvars.iv.next332.epil = add nuw nsw i64 %indvars.iv331.epil, 1
  %epil.iter565.next = add i64 %epil.iter565, 1   ; 2 uses
  %epil.iter565.cmp.not = icmp eq i64 %epil.iter565.next, %xtraiter564
  br i1 %epil.iter565.cmp.not, label %_ZNSt6vectorIiSaIiEE5clearEv.exit232, label %bb.eq, !llvm.loop !320

_ZNSt6vectorIiSaIiEE5clearEv.exit232:             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit232.loopexit.unr-lcssa, %bb.eq, %.preheader, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i231, %bb.ep
  %i.aml = load ptr, ptr @debug, align 8, !tbaa !90 ; 2 uses
  %.not135 = icmp eq ptr %i.aml, null
  br i1 %.not135, label %bb.es, label %bb.er

bb.er:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit232
  %i.amm = getelementptr inbounds nuw i8, ptr %i.ajy, i64 24
  %i.amn = load i32, ptr %i.amm, align 8, !tbaa !115
  %i.amo = getelementptr inbounds nuw i8, ptr %i.ajy, i64 28
  %i.amp = load i32, ptr %i.amo, align 4, !tbaa !116
  %i.amq = getelementptr inbounds nuw i8, ptr %i.ajy, i64 32
  %i.amr = load i32, ptr %i.amq, align 8, !tbaa !117
  %i.ams = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aml, ptr noundef nonnull @.str.15, i32 noundef %i.amn, i32 noundef %i.amp, i32 noundef %i.amr) #19 ; 0 uses
  %.pre364 = load ptr, ptr %i.d, align 8, !tbaa !94
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %_ZNSt6vectorIiSaIiEE5clearEv.exit232
  %i.amt = phi ptr [ %.pre364, %bb.er ], [ %i.ajy, %_ZNSt6vectorIiSaIiEE5clearEv.exit232 ] ; 7 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 344 ; 2 uses
  %i.amv = load i32, ptr %i.amu, align 8, !tbaa !91
  %i.amw = icmp sgt i32 %i.amv, 1
  br i1 %i.amw, label %bb.et, label %bb.fp

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.amt, ptr %i.a, align 8, !tbaa !94
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amt, i64 376 ; 3 uses
  %i.amy = sext i32 %1 to i64                     ; 4 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amt, i64 384 ; 3 uses
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !132 ; 4 uses
  %i.anb = load ptr, ptr %i.amx, align 8, !tbaa !113 ; 5 uses
  %i.anc = ptrtoint ptr %i.ana to i64
  %i.and = ptrtoint ptr %i.anb to i64
  %i.ane = sub i64 %i.anc, %i.and
  %i.anf = ashr exact i64 %i.ane, 4               ; 3 uses
  %i.ang = icmp ult i64 %i.anf, %i.amy
  br i1 %i.ang, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.anh = sub nuw nsw i64 %i.amy, %i.anf
  invoke void @_ZNSt6vectorISt5arrayImLm2EESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.amx, i64 noundef %i.anh)
          to label %.noexc238 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc238:                                        ; preds = %bb.eu
  %.pre.i = load ptr, ptr %i.amx, align 8, !tbaa !113
  %.pre127.i = load ptr, ptr %i.amz, align 8, !tbaa !132
  br label %_ZNSt6vectorISt5arrayImLm2EESaIS1_EE6resizeEm.exit.i

bb.ev:                                            ; preds = %bb.et
  %i.ani = icmp ugt i64 %i.anf, %i.amy
  br i1 %i.ani, label %bb.ew, label %_ZNSt6vectorISt5arrayImLm2EESaIS1_EE6resizeEm.exit.i

bb.ew:                                            ; preds = %bb.ev
  %i.anj = getelementptr inbounds nuw [16 x i8], ptr %i.anb, i64 %i.amy ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ana, %i.anj
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt5arrayImLm2EESaIS1_EE6resizeEm.exit.i, label %_ZSt8_DestroyIPSt5arrayImLm2EES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt5arrayImLm2EES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.ew
  store ptr %i.anj, ptr %i.amz, align 8, !tbaa !132
  br label %_ZNSt6vectorISt5arrayImLm2EESaIS1_EE6resizeEm.exit.i

_ZNSt6vectorISt5arrayImLm2EESaIS1_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPSt5arrayImLm2EES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.ew, %bb.ev, %.noexc238
  %i.ank = phi ptr [ %.pre127.i, %.noexc238 ], [ %i.ana, %bb.ev ], [ %i.ana, %bb.ew ], [ %i.anj, %_ZSt8_DestroyIPSt5arrayImLm2EES1_EvT_S3_RSaIT0_E.exit.i.i.i ] ; 2 uses
  %i.anl = phi ptr [ %.pre.i, %.noexc238 ], [ %i.anb, %bb.ev ], [ %i.anb, %bb.ew ], [ %i.anb, %_ZSt8_DestroyIPSt5arrayImLm2EES1_EvT_S3_RSaIT0_E.exit.i.i.i ] ; 5 uses
  %.pre-phi.i.pre-phi = ptrtoint ptr %i.anl to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr %i.anl, ptr %8, align 8, !tbaa !349
  %i.anm = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ann = ptrtoint ptr %i.ank to i64             ; 2 uses
  %i.ano = sub i64 %i.ann, %.pre-phi.i.pre-phi
  %i.anp = getelementptr inbounds nuw i8, ptr %i.anl, i64 %i.ano
  store ptr %i.anp, ptr %i.anm, align 8, !tbaa !349
  %.not7782.i = icmp eq ptr %i.anl, %i.ank
  br i1 %.not7782.i, label %._crit_edge.i234, label %.lr.ph.preheader.i233

.lr.ph.preheader.i233:                            ; preds = %_ZNSt6vectorISt5arrayImLm2EESaIS1_EE6resizeEm.exit.i
  %11 = add i64 %i.ann, -16
  %12 = sub i64 %11, %.pre-phi.i.pre-phi
  %i.anq = and i64 %12, -16
  %13 = add i64 %i.anq, 16
  call void @llvm.memset.p0.i64(ptr align 8 %i.anl, i8 0, i64 %13, i1 false)
  br label %._crit_edge.i234

._crit_edge.i234:                                 ; preds = %.lr.ph.preheader.i233, %_ZNSt6vectorISt5arrayImLm2EESaIS1_EE6resizeEm.exit.i
  %i.anr = load i32, ptr %i.amu, align 8, !tbaa !91 ; 4 uses
  %i.ans = icmp sgt i32 %i.anr, 128
  br i1 %i.ans, label %bb.ex, label %.preheader81.i

.preheader81.i:                                   ; preds = %._crit_edge.i234
  %i.ant = icmp sgt i32 %i.anr, 0
  br i1 %i.ant, label %.lr.ph89.i, label %._crit_edge90.i

.lr.ph89.i:                                       ; preds = %.preheader81.i
  %i.anu = getelementptr inbounds nuw i8, ptr %i.amt, i64 352
  %.val56.i = load ptr, ptr %i.anu, align 8, !tbaa !97
  %i.anv = getelementptr inbounds nuw i8, ptr %i.amt, i64 112
  %wide.trip.count115.i = zext nneg i32 %i.anr to i64
  br label %bb.fa

bb.ex:                                            ; preds = %._crit_edge.i234
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(60) @.str.18, i8 noundef zeroext 2)
          to label %.noexc239 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc239:                                        ; preds = %bb.ex
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 1687, ptr noundef nonnull @.str.19, i32 noundef 128) #39
          to label %bb.ey unwind label %bb.ez

bb.ey:                                            ; preds = %.noexc239
  unreachable

bb.ez:                                            ; preds = %.noexc239
  %i.anw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %.body

._crit_edge90.i:                                  ; preds = %._crit_edge87.i, %.preheader81.i
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.h, i32 %i.anr)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 2, ptr nonnull @_ZN3gmxL18lincs_thread_setupEPNS_5LincsEi.omp_outlined, ptr nonnull %i.a, ptr nonnull %8)
  %i.anx = load ptr, ptr %i.a, align 8, !tbaa !94 ; 4 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 400
  %i.anz = load i8, ptr %i.any, align 8, !tbaa !92, !range !16, !noundef !17
  %i.aoa = trunc nuw i8 %i.anz to i1
  br i1 %i.aoa, label %bb.fb, label %_ZN3gmxL18lincs_thread_setupEPNS_5LincsEi.exit

bb.fa:                                            ; preds = %._crit_edge87.i, %.lr.ph89.i
  %indvars.iv112.i = phi i64 [ 0, %.lr.ph89.i ], [ %indvars.iv.next113.i, %._crit_edge87.i ] ; 4 uses
  %i.aob = getelementptr inbounds nuw [176 x i8], ptr %.val56.i, i64 %indvars.iv112.i ; 2 uses
  %i.aoc = load i32, ptr %i.aob, align 8, !tbaa !119 ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aob, i64 4
  %i.aoe = load i32, ptr %i.aod, align 4, !tbaa !120 ; 2 uses
  %i.aof = icmp slt i32 %i.aoc, %i.aoe
  br i1 %i.aof, label %.lr.ph86.i, label %._crit_edge87.i

.lr.ph86.i:                                       ; preds = %bb.fa
  %.val60.i = load ptr, ptr %i.anv, align 8, !tbaa !124 ; 3 uses
  %i.aog = and i64 %indvars.iv112.i, 63
  %i.aoh = shl nuw i64 1, %i.aog                  ; 6 uses
  %i.aoi = lshr i64 %indvars.iv112.i, 6
  %i.aoj = and i64 %i.aoi, 67108863               ; 6 uses
  %i.aok = sext i32 %i.aoc to i64                 ; 5 uses
  %wide.trip.count.i = sext i32 %i.aoe to i64     ; 3 uses
  %i.aol = sub nsw i64 %wide.trip.count.i, %i.aok
  %xtraiter570 = and i64 %i.aol, 1
  %lcmp.mod571.not = icmp eq i64 %xtraiter570, 0
  br i1 %lcmp.mod571.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph86.i
  %i.aom = getelementptr inbounds nuw [8 x i8], ptr %.val60.i, i64 %i.aok ; 2 uses
  %i.aon = load i32, ptr %i.aom, align 4, !tbaa !128
  %i.aoo = sext i32 %i.aon to i64
  %i.aop = load i64, ptr %8, align 8
  %i.aoq = inttoptr i64 %i.aop to ptr
  %i.aor = getelementptr inbounds [16 x i8], ptr %i.aoq, i64 %i.aoo
  %i.aos = getelementptr inbounds nuw [8 x i8], ptr %i.aor, i64 %i.aoj ; 2 uses
  %i.aot = load i64, ptr %i.aos, align 8, !tbaa !134
  %i.aou = or i64 %i.aot, %i.aoh
  store i64 %i.aou, ptr %i.aos, align 8, !tbaa !134
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aom, i64 4
  %i.aow = load i32, ptr %i.aov, align 4, !tbaa !129
  %i.aox = sext i32 %i.aow to i64
  %i.aoy = load i64, ptr %8, align 8
  %i.aoz = inttoptr i64 %i.aoy to ptr
  %i.apa = getelementptr inbounds [16 x i8], ptr %i.aoz, i64 %i.aox
  %i.apb = getelementptr inbounds nuw [8 x i8], ptr %i.apa, i64 %i.aoj ; 2 uses
  %i.apc = load i64, ptr %i.apb, align 8, !tbaa !134
  %i.apd = or i64 %i.apc, %i.aoh
  store i64 %i.apd, ptr %i.apb, align 8, !tbaa !134
  %indvars.iv.next.i.prol = add nsw i64 %i.aok, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph86.i
  %indvars.iv.i.unr = phi i64 [ %i.aok, %.lr.ph86.i ], [ %indvars.iv.next.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.ape = add nsw i64 %wide.trip.count.i, -1
  %i.apf = icmp eq i64 %i.ape, %i.aok
  br i1 %i.apf, label %._crit_edge87.i, label %.lr.ph86.i.new

._crit_edge87.i:                                  ; preds = %.prol.loopexit, %.lr.ph86.i.new, %bb.fa
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1 ; 2 uses
  %exitcond116.not.i = icmp eq i64 %indvars.iv.next113.i, %wide.trip.count115.i
  br i1 %exitcond116.not.i, label %._crit_edge90.i, label %bb.fa, !llvm.loop !321

.lr.ph86.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph86.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph86.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 3 uses
  %i.apg = getelementptr inbounds nuw [8 x i8], ptr %.val60.i, i64 %indvars.iv.i ; 2 uses
  %i.aph = load i32, ptr %i.apg, align 4, !tbaa !128
  %i.api = sext i32 %i.aph to i64
  %i.apj = load i64, ptr %8, align 8
  %i.apk = inttoptr i64 %i.apj to ptr
  %i.apl = getelementptr inbounds [16 x i8], ptr %i.apk, i64 %i.api
  %i.apm = getelementptr inbounds nuw [8 x i8], ptr %i.apl, i64 %i.aoj ; 2 uses
  %i.apn = load i64, ptr %i.apm, align 8, !tbaa !134
  %i.apo = or i64 %i.apn, %i.aoh
  store i64 %i.apo, ptr %i.apm, align 8, !tbaa !134
  %i.app = getelementptr inbounds nuw i8, ptr %i.apg, i64 4
  %i.apq = load i32, ptr %i.app, align 4, !tbaa !129
  %i.apr = sext i32 %i.apq to i64
  %i.aps = load i64, ptr %8, align 8
  %i.apt = inttoptr i64 %i.aps to ptr
  %i.apu = getelementptr inbounds [16 x i8], ptr %i.apt, i64 %i.apr
  %i.apv = getelementptr inbounds nuw [8 x i8], ptr %i.apu, i64 %i.aoj ; 2 uses
  %i.apw = load i64, ptr %i.apv, align 8, !tbaa !134
  %i.apx = or i64 %i.apw, %i.aoh
  store i64 %i.apx, ptr %i.apv, align 8, !tbaa !134
  %i.apy = getelementptr [8 x i8], ptr %.val60.i, i64 %indvars.iv.i ; 2 uses
  %i.apz = getelementptr i8, ptr %i.apy, i64 8
  %i.aqa = load i32, ptr %i.apz, align 4, !tbaa !128
  %i.aqb = sext i32 %i.aqa to i64
  %i.aqc = load i64, ptr %8, align 8
  %i.aqd = inttoptr i64 %i.aqc to ptr
  %i.aqe = getelementptr inbounds [16 x i8], ptr %i.aqd, i64 %i.aqb
  %i.aqf = getelementptr inbounds nuw [8 x i8], ptr %i.aqe, i64 %i.aoj ; 2 uses
  %i.aqg = load i64, ptr %i.aqf, align 8, !tbaa !134
  %i.aqh = or i64 %i.aqg, %i.aoh
  store i64 %i.aqh, ptr %i.aqf, align 8, !tbaa !134
  %i.aqi = getelementptr i8, ptr %i.apy, i64 12
  %i.aqj = load i32, ptr %i.aqi, align 4, !tbaa !129
  %i.aqk = sext i32 %i.aqj to i64
  %i.aql = load i64, ptr %8, align 8
  %i.aqm = inttoptr i64 %i.aql to ptr
  %i.aqn = getelementptr inbounds [16 x i8], ptr %i.aqm, i64 %i.aqk
  %i.aqo = getelementptr inbounds nuw [8 x i8], ptr %i.aqn, i64 %i.aoj ; 2 uses
  %i.aqp = load i64, ptr %i.aqo, align 8, !tbaa !134
  %i.aqq = or i64 %i.aqp, %i.aoh
  store i64 %i.aqq, ptr %i.aqo, align 8, !tbaa !134
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge87.i, label %.lr.ph86.i.new, !llvm.loop !322

bb.fb:                                            ; preds = %._crit_edge90.i
  %.sroa.0.0.copyload.i62.i = load ptr, ptr %8, align 8 ; 3 uses
  %.sroa.0.0.copyload.i63.i = load ptr, ptr %i.anm, align 8 ; 2 uses
  %.not7891.i = icmp eq ptr %.sroa.0.0.copyload.i62.i, %.sroa.0.0.copyload.i63.i
  br i1 %.not7891.i, label %.preheader.i235, label %.lr.ph94.preheader.i

.lr.ph94.preheader.i:                             ; preds = %bb.fb
  %.sroa.0.0.copyload.i63117.i = ptrtoaddr ptr %.sroa.0.0.copyload.i63.i to i64
  %.sroa.0.0.copyload.i62118.i = ptrtoaddr ptr %.sroa.0.0.copyload.i62.i to i64
  %reass.sub310 = sub i64 %.sroa.0.0.copyload.i63117.i, %.sroa.0.0.copyload.i62118.i
  %i.aqr = and i64 %reass.sub310, -16
  call void @llvm.memset.p0.i64(ptr align 8 %.sroa.0.0.copyload.i62.i, i8 0, i64 %i.aqr, i1 false)
  br label %.preheader.i235

.preheader.i235:                                  ; preds = %.lr.ph94.preheader.i, %bb.fb
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.anx, i64 344
  %i.aqt = load i32, ptr %i.aqs, align 8, !tbaa !91 ; 3 uses
  %i.aqu = icmp sgt i32 %i.aqt, 0
  br i1 %i.aqu, label %.lr.ph101.i, label %._crit_edge102.i

.lr.ph101.i:                                      ; preds = %.preheader.i235
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.anx, i64 352
  %.val55.i = load ptr, ptr %i.aqv, align 8, !tbaa !97
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.anx, i64 112
  %wide.trip.count122.i = zext nneg i32 %i.aqt to i64
  br label %bb.fc

._crit_edge102.i:                                 ; preds = %._crit_edge99.i, %.preheader.i235
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.h, i32 %i.aqt)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 2, ptr nonnull @_ZN3gmxL18lincs_thread_setupEPNS_5LincsEi.omp_outlined.20, ptr nonnull %i.a, ptr nonnull %8)
  %i.aqx = load ptr, ptr %i.a, align 8, !tbaa !94 ; 4 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqx, i64 352
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqx, i64 344
  %i.ara = load i32, ptr %i.aqz, align 8, !tbaa !91 ; 2 uses
  %i.arb = sext i32 %i.ara to i64
  %.val54.i = load ptr, ptr %i.aqy, align 8, !tbaa !97
  %i.arc = getelementptr inbounds nuw [176 x i8], ptr %.val54.i, i64 %i.arb ; 3 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aqx, i64 402
  store i8 0, ptr %i.ard, align 2, !tbaa !135
  %i.are = getelementptr inbounds nuw i8, ptr %i.arc, i64 64 ; 4 uses
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !24 ; 2 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arc, i64 72 ; 6 uses
  %i.arh = load ptr, ptr %i.arg, align 8, !tbaa !23
  %.not.i.i64.i = icmp eq ptr %i.arh, %i.arf
  br i1 %.not.i.i64.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %._crit_edge102.i
  store ptr %i.arf, ptr %i.arg, align 8, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
end_hunk_0
begin_hunk_1_@_ZN3gmx9set_lincsERK22InteractionDefinitionsiNS_8ArrayRefIKfEEfbPK12gmx_domdec_tPNS_5LincsE:bb.a
  %i.atc = load ptr, ptr %i.are, align 8, !tbaa !24 ; 4 uses
  %i.atd = ptrtoint ptr %i.asz to i64
  %i.ate = ptrtoint ptr %i.atc to i64             ; 2 uses
  %i.atf = sub i64 %i.atd, %i.ate                 ; 5 uses
  %i.atg = icmp eq i64 %i.atf, 9223372036854775804
  br i1 %i.atg, label %bb.fi, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.fi:                                            ; preds = %bb.fh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #39
          to label %.noexc240 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc240:                                        ; preds = %bb.fi
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.fh
  %i.ath = ashr exact i64 %i.atf, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ath, i64 1)
  %i.ati = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ath ; 2 uses
  %i.atj = icmp ult i64 %i.ati, %i.ath
  %i.atk = call i64 @llvm.umin.i64(i64 %i.ati, i64 2305843009213693951)
  %i.atl = select i1 %i.atj, i64 2305843009213693951, i64 %i.atk ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.atl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.atm = shl nuw nsw i64 %i.atl, 2
  %i.atn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.atm) #37
          to label %.noexc241 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc241:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ato = getelementptr inbounds i8, ptr %i.atn, i64 %i.atf ; 2 uses
  store i32 %i.asx, ptr %i.ato, align 4, !tbaa !25
  %i.atp = icmp sgt i64 %i.atf, 0
  br i1 %i.atp, label %bb.fj, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.fj:                                            ; preds = %.noexc241
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.atn, ptr align 4 %i.atc, i64 %i.atf, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.fj, %.noexc241
  %i.atq = getelementptr inbounds nuw i8, ptr %i.ato, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.atc, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.fk

bb.fk:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.atr = load ptr, ptr %i.arj, align 8, !tbaa !100
  %i.ats = ptrtoint ptr %i.atr to i64
  %i.att = sub i64 %i.ats, %i.ate
  call void @_ZdlPvm(ptr noundef nonnull %i.atc, i64 noundef %i.att) #40
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.fk, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.atn, ptr %i.are, align 8, !tbaa !24
  store ptr %i.atq, ptr %i.arg, align 8, !tbaa !23
  %i.atu = getelementptr inbounds nuw [4 x i8], ptr %i.atn, i64 %i.atl
  store ptr %i.atu, ptr %i.arj, align 8, !tbaa !100
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

bb.fl:                                            ; preds = %.lr.ph106.i
  %i.atv = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atv, i64 402
  store i8 1, ptr %i.atw, align 2, !tbaa !135
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i:        ; preds = %bb.fl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.fg
  %i.atx = getelementptr inbounds nuw i8, ptr %.sroa.066.0104.i, i64 4 ; 2 uses
  %.not79.i = icmp eq ptr %i.atx, %i.asv
  br i1 %.not79.i, label %._crit_edge107.i, label %.lr.ph106.i

bb.fm:                                            ; preds = %._crit_edge107.i
  %i.aty = getelementptr inbounds nuw i8, ptr %i.asr, i64 64
  %i.atz = getelementptr inbounds nuw i8, ptr %i.asr, i64 72
  %i.aua = load ptr, ptr %i.atz, align 8, !tbaa !23
  %i.aub = load ptr, ptr %i.aty, align 8, !tbaa !24
  %i.auc = ptrtoint ptr %i.aua to i64
  %i.aud = ptrtoint ptr %i.aub to i64
  %i.aue = sub i64 %i.auc, %i.aud
  %i.auf = ashr exact i64 %i.aue, 2
  %i.aug = getelementptr inbounds nuw i8, ptr %i.asr, i64 88
  %i.auh = getelementptr inbounds nuw i8, ptr %i.asr, i64 96
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !23
  %i.auj = load ptr, ptr %i.aug, align 8, !tbaa !24
  %i.auk = ptrtoint ptr %i.aui to i64
  %i.aul = ptrtoint ptr %i.auj to i64
  %i.aum = sub i64 %i.auk, %i.aul
  %i.aun = ashr exact i64 %i.aum, 2
  %i.auo = trunc nuw nsw i64 %indvars.iv124.i to i32
  %i.aup = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.asw, ptr noundef nonnull @.str.21, i32 noundef %i.auo, i64 noundef %i.auf, i64 noundef %i.aun) #19 ; 0 uses
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %._crit_edge107.i
  %indvars.iv.next125.i = add nuw nsw i64 %indvars.iv124.i, 1 ; 2 uses
  %i.auq = load ptr, ptr %i.a, align 8, !tbaa !94 ; 2 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %i.auq, i64 344
  %i.aus = load i32, ptr %i.aur, align 8, !tbaa !91
  %i.aut = sext i32 %i.aus to i64
  %i.auu = icmp slt i64 %indvars.iv.next125.i, %i.aut
  br i1 %i.auu, label %bb.fe, label %._crit_edge110.i, !llvm.loop !324

bb.fo:                                            ; preds = %._crit_edge110.i
  %i.auv = load ptr, ptr %i.arg, align 8, !tbaa !23
  %i.auw = load ptr, ptr %i.are, align 8, !tbaa !24
  %i.aux = ptrtoint ptr %i.auv to i64
  %i.auy = ptrtoint ptr %i.auw to i64
  %i.auz = sub i64 %i.aux, %i.auy
  %i.ava = ashr exact i64 %i.auz, 2
  %i.avb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aso, ptr noundef nonnull @.str.22, i64 noundef %i.ava) #19 ; 0 uses
  br label %_ZN3gmxL18lincs_thread_setupEPNS_5LincsEi.exit

_ZN3gmxL18lincs_thread_setupEPNS_5LincsEi.exit:   ; preds = %._crit_edge90.i, %._crit_edge110.i, %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre366 = load ptr, ptr %i.d, align 8, !tbaa !94
  br label %bb.fp

bb.fp:                                            ; preds = %bb.es, %_ZN3gmxL18lincs_thread_setupEPNS_5LincsEi.exit
  %i.avc = phi ptr [ %i.amt, %bb.es ], [ %.pre366, %_ZN3gmxL18lincs_thread_setupEPNS_5LincsEi.exit ]
  %i.avd = ptrtoint ptr %3 to i64
  %i.ave = ptrtoint ptr %2 to i64
  %i.avf = sub i64 %i.avd, %i.ave
  %i.avg = getelementptr inbounds nuw i8, ptr %2, i64 %i.avf
  call fastcc void @_ZN3gmxL16set_lincs_matrixEPNS_5LincsENS_8ArrayRefIKfEEf(ptr noundef %i.avc, ptr %2, ptr %i.avg, float noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  %i.avh = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.avi = load ptr, ptr %i.avh, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i242 = icmp eq ptr %i.avi, null
  br i1 %.not.i.i.i.i242, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.avj = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.avk = load ptr, ptr %i.avj, align 8, !tbaa !100
  %i.avl = ptrtoint ptr %i.avk to i64
  %i.avm = ptrtoint ptr %i.avi to i64
  %i.avn = sub i64 %i.avl, %i.avm
  call void @_ZdlPvm(ptr noundef nonnull %i.avi, i64 noundef %i.avn) #40
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.fq, %bb.fp
  %i.avo = load ptr, ptr %10, align 8, !tbaa !24  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.avo, null
  br i1 %.not.i.i.i1.i, label %_ZN3gmx11ListOfListsIiED2Ev.exit, label %bb.fr

bb.fr:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.avp = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.avq = load ptr, ptr %i.avp, align 8, !tbaa !100
  %i.avr = ptrtoint ptr %i.avq to i64
  %i.avs = ptrtoint ptr %i.avo to i64
  %i.avt = sub i64 %i.avr, %i.avs
  call void @_ZdlPvm(ptr noundef nonnull %i.avo, i64 noundef %i.avt) #40
  br label %_ZN3gmx11ListOfListsIiED2Ev.exit

_ZN3gmx11ListOfListsIiED2Ev.exit:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %bb.fs

bb.fs:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit162, %_ZN3gmx11ListOfListsIiED2Ev.exit
  ret void

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ez
  %.pn = phi { ptr, i32 } [ %i.anw, %bb.ez ], [ %lpad.loopexit.split-lp530, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br label %bb.ft

bb.ft:                                            ; preds = %bb.bt, %.body
  %.pn138.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.lt, %bb.bt ]
  call void @_ZN3gmx11ListOfListsIiED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  resume { ptr, i32 } %.pn138.pn.pn
}

declare void @_Z23dd_get_constraint_rangeRK12gmx_domdec_tPiS2_(ptr noundef nonnull align 8 dereferenceable(1097), ptr noundef, ptr noundef) local_unnamed_addr #9

declare noundef i32 @_Z15dd_numHomeAtomsRK12gmx_domdec_t(ptr noundef nonnull align 8 dereferenceable(1097)) local_unnamed_addr #9

declare void @_ZN3gmx11make_at2conEiRKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEENS_8ArrayRefIK9t_iparamsEENS_27FlexibleConstraintTreatmentE(ptr dead_on_unwind writable sret(%"class.gmx::ListOfLists") align 8, i32 noundef, ptr noundef nonnull align 8 dereferenceable(2280), ptr, ptr, i32 noundef) local_unnamed_addr #9

declare noundef i32 @_ZN3gmx27flexibleConstraintTreatmentEb(i1 noundef zeroext) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_23AlignedAllocationPolicyEEEE17resizeWithPaddingEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::BasicVector", align 8  ; 5 uses
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_ZN3gmx6detail17computePaddedSizeINS_11BasicVectorIfEEEEll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i64 %1, 1
  %i.c = add nsw i64 %1, 15
  %i.d = sdiv i64 %i.c, 16
  %i.e = shl nsw i64 %i.d, 4
  %.sroa.speculated.i = tail call i64 @llvm.smax.i64(i64 %i.b, i64 %i.e)
  br label %_ZN3gmx6detail17computePaddedSizeINS_11BasicVectorIfEEEEll.exit

_ZN3gmx6detail17computePaddedSizeINS_11BasicVectorIfEEEEll.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %.sroa.speculated.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  tail call void @_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.0.i)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !136  ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !112    ; 5 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 12                  ; 3 uses
  %i.m = icmp ugt i64 %1, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN3gmx6detail17computePaddedSizeINS_11BasicVectorIfEEEEll.exit
  %i.n = sub nuw i64 %1, %i.l
  tail call void @_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n)
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !350
  %.pre5 = load ptr, ptr %0, align 8, !tbaa !112
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE6resizeEm.exit

bb.d:                                             ; preds = %_ZN3gmx6detail17computePaddedSizeINS_11BasicVectorIfEEEEll.exit
  %i.o = icmp ult i64 %1, %i.l
  br i1 %i.o, label %bb.e, label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %1 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, %i.p
  br i1 %.not.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE6resizeEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.p, ptr %i.f, align 8, !tbaa !136
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE6resizeEm.exit

_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE6resizeEm.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.q = phi ptr [ %.pre5, %bb.c ], [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ %i.h, %bb.f ] ; 2 uses
  %i.r = phi ptr [ %.pre, %bb.c ], [ %i.g, %bb.d ], [ %i.g, %bb.e ], [ %i.p, %bb.f ]
  %.pre-phi = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %.pre-phi                  ; 2 uses
  %.neg.i = sdiv exact i64 %i.t, -12
  %i.u = add i64 %.neg.i, %.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !126
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float 0.000000e+00, ptr %i.v, align 8, !tbaa !126
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 %i.t
  call void @_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S6_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.w, i64 noundef %i.u, ptr noundef nonnull align 4 dereferenceable(12) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.x = load ptr, ptr %0, align 8, !tbaa !350
  %i.y = getelementptr inbounds [12 x i8], ptr %i.x, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.y, ptr %i.z, align 8, !tbaa !350
  ret void
}

declare noundef i32 @_Z24countFlexibleConstraintsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEENS_8ArrayRefIK9t_iparamsEE(ptr noundef nonnull align 8 dereferenceable(2280), ptr, ptr) local_unnamed_addr #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN3gmx9set_lincsERK22InteractionDefinitionsiNS_8ArrayRefIKfEEfbPK12gmx_domdec_tPNS_5LincsE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %4) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !94
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 344
  %i.g = load i32, ptr %i.f, align 8, !tbaa !91   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.i, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.j = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !25
  %i.l = call i32 @llvm.smin.i32(i32 %i.k, i32 %i.i) ; 2 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !25
  %i.m = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not30 = icmp sgt i32 %i.m, %i.l
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = sext i32 %i.m to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN3gmxL18set_matrix_indicesEPNS_5LincsERKN12_GLOBAL__N_14TaskERKNS_11ListOfListsIiEEb.exit
  %indvars.iv = phi i64 [ %i.o, %.lr.ph ], [ %indvars.iv.next, %_ZN3gmxL18set_matrix_indicesEPNS_5LincsERKN12_GLOBAL__N_14TaskERKNS_11ListOfListsIiEEb.exit ] ; 3 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !94     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 352
  %.val = load ptr, ptr %i.q, align 8, !tbaa !97
  %i.r = getelementptr inbounds nuw [176 x i8], ptr %.val, i64 %indvars.iv ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !78
  %i.u = icmp sgt i32 %i.t, 0
  %.pre36 = load i32, ptr %i.r, align 8, !tbaa !119 ; 5 uses
  br i1 %i.u, label %bb.d, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit27

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !120
  %i.y = sub nsw i32 %i.x, %.pre36
  %i.z = sext i32 %i.y to i64                     ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !23 ; 2 uses
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !24  ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2                 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, %i.z
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = sub nuw nsw i64 %i.z, %i.ag
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef %i.ai)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge:    ; preds = %bb.e
  %.pre = load i32, ptr %i.w, align 4, !tbaa !120
  %.pre34 = load i32, ptr %i.r, align 8, !tbaa !119 ; 2 uses
  %.pre37 = sub nsw i32 %.pre, %.pre34
  %.pre38 = sext i32 %.pre37 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.f:                                             ; preds = %bb.d
  %i.aj = icmp ugt i64 %i.ag, %i.z
  br i1 %i.aj, label %bb.g, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.z ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, %i.ak
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.g
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.g, %bb.f
  %.pre-phi39 = phi i64 [ %.pre38, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.z, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.z, %bb.g ], [ %i.z, %bb.f ] ; 4 uses
  %i.al = phi i32 [ %.pre34, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %.pre36, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %.pre36, %bb.g ], [ %.pre36, %bb.f ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !23 ; 2 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !24 ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 2                 ; 3 uses
  %i.au = icmp ult i64 %i.at, %.pre-phi39
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.av = sub nuw nsw i64 %.pre-phi39, %i.at
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %i.av)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit27_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorIiSaIiEE6resizeEm.exit27_crit_edge:  ; preds = %bb.h
  %.pre35 = load i32, ptr %i.r, align 8, !tbaa !119
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit27

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.aw = icmp ugt i64 %i.at, %.pre-phi39
  br i1 %i.aw, label %bb.j, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit27

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.pre-phi39 ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.ao, %i.ax
  br i1 %.not.i.i24, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit27, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i25

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i25:      ; preds = %bb.j
  store ptr %i.ax, ptr %i.an, align 8, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit27

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc28, %bb.u, %bb.h, %bb.e
  %lpad.loopexit.split-lp57 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.ay = extractvalue { ptr, i32 } %lpad.loopexit.split-lp57, 0 ; 2 uses
  %i.az = extractvalue { ptr, i32 } %lpad.loopexit.split-lp57, 1
  %i.ba = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #19
  %i.bb = icmp eq i32 %i.az, %i.ba
  br i1 %i.bb, label %bb.k, label %bb.x

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bc = call ptr @__cxa_begin_catch(ptr %i.ay) #19
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.bc) #39
          to label %bb.l unwind label %bb.w

bb.l:                                             ; preds = %bb.k
  unreachable

_ZNSt6vectorIiSaIiEE6resizeEm.exit27:             ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit27_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i25, %bb.j, %bb.i, %bb.c
  %i.bd = phi i32 [ %.pre35, %._ZNSt6vectorIiSaIiEE6resizeEm.exit27_crit_edge ], [ %i.al, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i25 ], [ %i.al, %bb.j ], [ %i.al, %bb.i ], [ %.pre36, %bb.c ] ; 2 uses
  %i.be = load i8, ptr %4, align 1, !tbaa !125, !range !16, !noundef !17
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !120
  %i.bi = icmp slt i32 %i.bd, %i.bh
  br i1 %i.bi, label %.lr.ph77.i, label %_ZN3gmxL18set_matrix_indicesEPNS_5LincsERKN12_GLOBAL__N_14TaskERKNS_11ListOfListsIiEEb.exit

.lr.ph77.i:                                       ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit27
  %i.bj = load ptr, ptr %2, align 8, !tbaa !94    ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 184
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 40 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 208 ; 3 uses
  %i.bo = sext i32 %i.bd to i64
  br label %bb.m

bb.m:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i, %.lr.ph77.i
  %indvars.iv.i = phi i64 [ %i.bo, %.lr.ph77.i ], [ %indvars.iv.next.i, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i ] ; 5 uses
  %.val49.i = load ptr, ptr %i.bk, align 8, !tbaa !124
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.val49.i, i64 %indvars.iv.i ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !128
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !129
  %i.bt = load ptr, ptr %i.bl, align 8, !tbaa !24
  %i.bu = getelementptr [4 x i8], ptr %i.bt, i64 %indvars.iv.i ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !25 ; 2 uses
  %i.bw = sext i32 %i.bq to i64
  %i.bx = load ptr, ptr %i.n, align 8, !tbaa !24  ; 4 uses
  %i.by = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.bz = getelementptr [4 x i8], ptr %i.by, i64 %i.bw ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !25 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bz, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !25 ; 2 uses
  %i.cd = sext i32 %i.cc to i64
end_hunk_1
