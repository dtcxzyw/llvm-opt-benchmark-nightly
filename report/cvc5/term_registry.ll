Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/term_registry?download=true
inline.NumInlined: 2985
inline.NumDeleted: 1053
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4cvc58internal6theory7strings12TermRegistry14removeProxyEqsENS0_12NodeTemplateILb1EEERSt6vectorIS5_SaIS5_EE:bb.a
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bj = load ptr, ptr %5, align 8, !tbaa !30
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = and i64 %i.bl, 1023
  %i.bn = icmp eq i64 %i.bm, 5
  br i1 %i.bn, label %.preheader, label %.critedge49

.preheader:                                       ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 704
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.v:                                             ; preds = %bb.br, %bb.bq, %bb.bl, %.critedge49
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.w:                                             ; preds = %.preheader, %bb.bj
  %.not145 = phi i1 [ true, %.preheader ], [ false, %bb.bj ]
  %.020141 = phi i64 [ 0, %.preheader ], [ 1, %bb.bj ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !774)
  %i.bu = load ptr, ptr %5, align 8, !tbaa !30, !noalias !774 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !774
  %i.bx = trunc i64 %i.bw to i32
  %i.by = and i32 %i.bx, 1023                     ; 2 uses
  %i.bz = icmp eq i32 %i.by, 1023
  %i.ca = select i1 %i.bz, i32 -1, i32 %i.by
  %i.cb = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ca)
          to label %.noexc54 unwind label %bb.bb

.noexc54:                                         ; preds = %bb.w
  %i.cc = icmp eq i32 %i.cb, 2
  %i.cd = zext i1 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.020141
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cd
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !28, !noalias !774 ; 5 uses
  store ptr %i.ch, ptr %7, align 8, !tbaa !30, !alias.scope !774
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !774 ; 3 uses
  %i.cj = lshr i64 %i.ci, 40
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = and i32 %i.ck, 1048575                  ; 3 uses
  %i.cm = icmp samesign ult i32 %i.cl, 1048574
  br i1 %i.cm, label %bb.x, label %bb.y, !prof !129

bb.x:                                             ; preds = %.noexc54
  %i.cn = add nuw nsw i32 %i.cl, 1
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.co, 40
  %i.cq = and i64 %i.ci, -1152920405095219201
  %i.cr = or i64 %i.cp, %i.cq
  store i64 %i.cr, ptr %i.ch, align 8, !noalias !774
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

bb.y:                                             ; preds = %.noexc54
  %i.cs = icmp eq i32 %i.cl, 1048574
  br i1 %i.cs, label %bb.z, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, !prof !128

bb.z:                                             ; preds = %bb.y
  %i.ct = or i64 %i.ci, 1152920405095219200
  store i64 %i.ct, ptr %i.ch, align 8, !noalias !774
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit unwind label %bb.bb

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit:  ; preds = %bb.y, %bb.x, %bb.z
  %i.cu = load i64, ptr %i.bo, align 8, !tbaa !371
  %.not.not.i.i.i = icmp eq i64 %i.cu, 0
  br i1 %.not.not.i.i.i, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.cv = load ptr, ptr %7, align 8               ; 3 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.br, %bb.aa ], [ %.sroa.06.0.i.i.i, %bb.ac ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !338 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !30
  %i.cy = icmp eq ptr %i.cv, %i.cx
  br i1 %i.cy, label %_ZNKSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS0_7context11CDOhash_mapIS3_S3_St4hashIS3_EEES7_St8equal_toIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit.i, label %bb.ab, !llvm.loop !9

bb.ad:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.cz = invoke noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc57 unwind label %bb.bc  ; 3 uses

.noexc57:                                         ; preds = %bb.ad
  %i.da = load i64, ptr %i.bq, align 8, !tbaa !111 ; 2 uses
  %i.db = urem i64 %i.cz, %i.da                   ; 2 uses
  %i.dc = load ptr, ptr %i.bp, align 8, !tbaa !110
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.db
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !340 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.de, null
  %.pre = load ptr, ptr %7, align 8               ; 7 uses
  br i1 %.not.i.i.i.i.i, label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit, label %bb.ae

bb.ae:                                            ; preds = %.noexc57
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !338 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !342
  %i.dj = icmp eq i64 %i.cz, %i.di
  %i.dk = load ptr, ptr %i.dg, align 8
  %i.dl = icmp eq ptr %.pre, %i.dk
  %i.dm = select i1 %i.dj, i1 %i.dl, i1 false
  br i1 %i.dm, label %_ZNKSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS0_7context11CDOhash_mapIS3_S3_St4hashIS3_EEES7_St8equal_toIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit.i, label %.lr.ph.i.i.i.i.i

bb.af:                                            ; preds = %bb.ag
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.do = icmp eq i64 %i.cz, %i.du
  %i.dp = load ptr, ptr %i.dn, align 8
  %i.dq = icmp eq ptr %.pre, %i.dp
  %i.dr = select i1 %i.do, i1 %i.dq, i1 false
  br i1 %i.dr, label %_ZNKSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS0_7context11CDOhash_mapIS3_S3_St4hashIS3_EEES7_St8equal_toIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !10

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ae, %bb.af
  %.020.i.i.i.i.i = phi ptr [ %i.ds, %bb.af ], [ %i.df, %bb.ae ]
  %i.ds = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !338 ; 5 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not18.i.i.i.i.i, label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !342 ; 2 uses
  %i.dv = urem i64 %i.du, %i.da
  %.not19.i.i.i.i.i = icmp eq i64 %i.dv, %i.db
  br i1 %.not19.i.i.i.i.i, label %bb.af, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !10

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.ag
  br label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit, !llvm.loop !10

_ZNKSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS0_7context11CDOhash_mapIS3_S3_St4hashIS3_EEES7_St8equal_toIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit.i: ; preds = %bb.af, %bb.ac, %bb.ae
  %i.dw = phi ptr [ %i.cv, %bb.ac ], [ %.pre, %bb.ae ], [ %.pre, %bb.af ]
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.ac ], [ %i.df, %bb.ae ], [ %i.ds, %bb.af ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !373
  %i.dz = icmp eq ptr %i.dy, null
  br label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit

_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.ab, %.noexc57, %..loopexit_crit_edge21.i.i.i.i.i, %_ZNKSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS0_7context11CDOhash_mapIS3_S3_St4hashIS3_EEES7_St8equal_toIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit.i
  %i.ea = phi ptr [ %i.dw, %_ZNKSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS0_7context11CDOhash_mapIS3_S3_St4hashIS3_EEES7_St8equal_toIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit.i ], [ %.pre, %..loopexit_crit_edge21.i.i.i.i.i ], [ %i.cv, %bb.ab ], [ %.pre, %.noexc57 ], [ %.pre, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.sroa.04.0.i = phi i1 [ %i.dz, %_ZNKSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS0_7context11CDOhash_mapIS3_S3_St4hashIS3_EEES7_St8equal_toIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit.i ], [ true, %..loopexit_crit_edge21.i.i.i.i.i ], [ true, %bb.ab ], [ true, %.noexc57 ], [ true, %.lr.ph.i.i.i.i.i ]
  %i.eb = load i64, ptr %i.ea, align 8            ; 3 uses
  %i.ec = and i64 %i.eb, 1152920405095219200
  %.not.i.i58 = icmp eq i64 %i.ec, 1152920405095219200
  br i1 %.not.i.i58, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit59, label %bb.ah, !prof !128

bb.ah:                                            ; preds = %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit
  %i.ed = add i64 %i.eb, 1152920405095219200
  %i.ee = and i64 %i.ed, 1152920405095219200      ; 2 uses
  %i.ef = and i64 %i.eb, -1152920405095219201
  %i.eg = or disjoint i64 %i.ee, %i.ef
  store i64 %i.eg, ptr %i.ea, align 8
  %i.eh = icmp eq i64 %i.ee, 0
  br i1 %i.eh, label %bb.ai, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit59, !prof !128

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ea)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit59 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit59: ; preds = %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.sroa.04.0.i, label %bb.bj, label %bb.ak

bb.ak:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit59
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !775)
  %i.ek = load ptr, ptr %5, align 8, !tbaa !30, !noalias !775 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i64, ptr %i.el, align 8, !noalias !775
  %i.en = trunc i64 %i.em to i32
  %i.eo = and i32 %i.en, 1023                     ; 2 uses
  %i.ep = icmp eq i32 %i.eo, 1023
  %i.eq = select i1 %i.ep, i32 -1, i32 %i.eo
  %i.er = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.eq)
          to label %.noexc61 unwind label %bb.be

.noexc61:                                         ; preds = %bb.ak
  %i.es = icmp eq i32 %i.er, 2
  %i.et = zext i1 %i.es to i64
  %reass.sub144 = sub nsw i64 %i.et, %.020141
  %spec.select.i.i60 = add nsw i64 %reass.sub144, 1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %10 = and i64 %spec.select.i.i60, 4294967295
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %10
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !28, !noalias !775 ; 5 uses
  store ptr %i.ew, ptr %9, align 8, !tbaa !30, !alias.scope !775
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !775 ; 3 uses
  %i.ey = lshr i64 %i.ex, 40
  %i.ez = trunc nuw nsw i64 %i.ey to i32
  %i.fa = and i32 %i.ez, 1048575                  ; 3 uses
  %i.fb = icmp samesign ult i32 %i.fa, 1048574
  br i1 %i.fb, label %bb.al, label %bb.am, !prof !129

bb.al:                                            ; preds = %.noexc61
  %i.fc = add nuw nsw i32 %i.fa, 1
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = shl nuw nsw i64 %i.fd, 40
  %i.ff = and i64 %i.ex, -1152920405095219201
  %i.fg = or i64 %i.fe, %i.ff
  store i64 %i.fg, ptr %i.ew, align 8, !noalias !775
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit63

bb.am:                                            ; preds = %.noexc61
  %i.fh = icmp eq i32 %i.fa, 1048574
  br i1 %i.fh, label %bb.an, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit63, !prof !128

bb.an:                                            ; preds = %bb.am
  %i.fi = or i64 %i.ex, 1152920405095219200
  store i64 %i.fi, ptr %i.ew, align 8, !noalias !775
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ew)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit63 unwind label %bb.be

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit63: ; preds = %bb.am, %bb.al, %bb.an
  invoke void @_ZNK4cvc58internal6theory7strings12TermRegistry19getProxyVariableForENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %8, ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef nonnull align 8 %9)
          to label %bb.ao unwind label %bb.bf

bb.ao:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit63
  %i.fj = load ptr, ptr %5, align 8, !tbaa !30, !noalias !776 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !noalias !776
  %i.fm = trunc i64 %i.fl to i32
  %i.fn = and i32 %i.fm, 1023                     ; 2 uses
  %i.fo = icmp eq i32 %i.fn, 1023
  %i.fp = select i1 %i.fo, i32 -1, i32 %i.fn
  %i.fq = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.fp)
          to label %.noexc65 unwind label %bb.bg

.noexc65:                                         ; preds = %bb.ao
  %i.fr = icmp eq i32 %i.fq, 2
  %i.fs = zext i1 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.020141
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fs
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !28, !noalias !776 ; 8 uses
  %i.fx = load i64, ptr %i.fw, align 8, !noalias !776 ; 4 uses
  %i.fy = lshr i64 %i.fx, 40
  %i.fz = trunc nuw nsw i64 %i.fy to i32
  %i.ga = and i32 %i.fz, 1048575                  ; 3 uses
  %i.gb = icmp samesign ult i32 %i.ga, 1048574
  br i1 %i.gb, label %bb.ap, label %bb.aq, !prof !129

bb.ap:                                            ; preds = %.noexc65
  %i.gc = add nuw nsw i32 %i.ga, 1
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = shl nuw nsw i64 %i.gd, 40
  %i.gf = and i64 %i.fx, -1152920405095219201
  %i.gg = or i64 %i.ge, %i.gf                     ; 2 uses
  store i64 %i.gg, ptr %i.fw, align 8, !noalias !776
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit67

bb.aq:                                            ; preds = %.noexc65
  %i.gh = icmp eq i32 %i.ga, 1048574
  br i1 %i.gh, label %bb.ar, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit67, !prof !128

bb.ar:                                            ; preds = %bb.aq
  %i.gi = or i64 %i.fx, 1152920405095219200
  store i64 %i.gi, ptr %i.fw, align 8, !noalias !776
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fw)
          to label %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit67_crit_edge unwind label %bb.bg

._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit67_crit_edge: ; preds = %bb.ar
  %.pre151 = load i64, ptr %i.fw, align 8
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit67

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit67: ; preds = %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit67_crit_edge, %bb.aq, %bb.ap
  %i.gj = phi i64 [ %.pre151, %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit67_crit_edge ], [ %i.fx, %bb.aq ], [ %i.gg, %bb.ap ] ; 3 uses
  %i.gk = load ptr, ptr %8, align 8, !tbaa !30    ; 4 uses
  %i.gl = icmp eq ptr %i.gk, %i.fw
  %i.gm = and i64 %i.gj, 1152920405095219200
  %.not.i.i68 = icmp eq i64 %i.gm, 1152920405095219200
  br i1 %.not.i.i68, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit69, label %bb.as, !prof !128

bb.as:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit67
  %i.gn = add i64 %i.gj, 1152920405095219200
  %i.go = and i64 %i.gn, 1152920405095219200      ; 2 uses
  %i.gp = and i64 %i.gj, -1152920405095219201
  %i.gq = or disjoint i64 %i.go, %i.gp
  store i64 %i.gq, ptr %i.fw, align 8
  %i.gr = icmp eq i64 %i.go, 0
  br i1 %i.gr, label %bb.at, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit69, !prof !128

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit69 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gs = landingpad { ptr, i32 }
          catch ptr null
  %i.gt = extractvalue { ptr, i32 } %i.gs, 0
  call void @__clang_call_terminate(ptr %i.gt) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit69: ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit67, %bb.as, %bb.at
  %i.gu = load i64, ptr %i.gk, align 8            ; 3 uses
  %i.gv = and i64 %i.gu, 1152920405095219200
  %.not.i.i70 = icmp eq i64 %i.gv, 1152920405095219200
  br i1 %.not.i.i70, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit71, label %bb.av, !prof !128

bb.av:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit69
  %i.gw = add i64 %i.gu, 1152920405095219200
  %i.gx = and i64 %i.gw, 1152920405095219200      ; 2 uses
  %i.gy = and i64 %i.gu, -1152920405095219201
  %i.gz = or disjoint i64 %i.gx, %i.gy
  store i64 %i.gz, ptr %i.gk, align 8
  %i.ha = icmp eq i64 %i.gx, 0
  br i1 %i.ha, label %bb.aw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit71, !prof !128

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gk)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit71 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  call void @__clang_call_terminate(ptr %i.hc) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit71: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit69, %bb.av, %bb.aw
  %i.hd = load ptr, ptr %9, align 8, !tbaa !30    ; 3 uses
  %i.he = load i64, ptr %i.hd, align 8            ; 3 uses
  %i.hf = and i64 %i.he, 1152920405095219200
  %.not.i.i72 = icmp eq i64 %i.hf, 1152920405095219200
  br i1 %.not.i.i72, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit73, label %bb.ay, !prof !128

bb.ay:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit71
  %i.hg = add i64 %i.he, 1152920405095219200
  %i.hh = and i64 %i.hg, 1152920405095219200      ; 2 uses
  %i.hi = and i64 %i.he, -1152920405095219201
  %i.hj = or disjoint i64 %i.hh, %i.hi
  store i64 %i.hj, ptr %i.hd, align 8
  %i.hk = icmp eq i64 %i.hh, 0
  br i1 %i.hk, label %bb.az, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit73, !prof !128

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hd)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit73 unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hl = landingpad { ptr, i32 }
          catch ptr null
  %i.hm = extractvalue { ptr, i32 } %i.hl, 0
  call void @__clang_call_terminate(ptr %i.hm) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit73: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit71, %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %i.gl, label %.critedge, label %bb.bj

bb.bb:                                            ; preds = %bb.z, %bb.w
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ad
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn.pn = phi { ptr, i32 } [ %i.ho, %bb.bc ], [ %i.hn, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.bv

bb.be:                                            ; preds = %bb.an, %bb.ak
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bf:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit63
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %bb.ar, %bb.ao
  %i.hr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn35 = phi { ptr, i32 } [ %i.hr, %bb.bg ], [ %i.hq, %bb.bf ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #25
end_hunk_0
