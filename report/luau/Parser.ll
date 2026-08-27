Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Parser?download=true
inline.NumInlined: 5872
inline.NumDeleted: 2424
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZN4Luau6Parser8parseForEv:bb.a
  br i1 %cmp.n256, label %.loopexit, label %.lr.ph.i.i105.preheader258

.lr.ph.i.i105.preheader258:                       ; preds = %vector.memcheck244, %.lr.ph.i.i105.preheader, %middle.block255
  %.010.i.i106.ph = phi i64 [ 0, %vector.memcheck244 ], [ 0, %.lr.ph.i.i105.preheader ], [ %n.vec249, %middle.block255 ] ; 3 uses
  %xtraiter265 = and i64 %i.oa, 3                 ; 2 uses
  %lcmp.mod266.not = icmp eq i64 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %.lr.ph.i.i105.prol.loopexit, label %.lr.ph.i.i105.prol

.lr.ph.i.i105.prol:                               ; preds = %.lr.ph.i.i105.preheader258, %.lr.ph.i.i105.prol
  %.010.i.i106.prol = phi i64 [ %i.ow, %.lr.ph.i.i105.prol ], [ %.010.i.i106.ph, %.lr.ph.i.i105.preheader258 ] ; 3 uses
  %prol.iter267 = phi i64 [ %prol.iter267.next, %.lr.ph.i.i105.prol ], [ 0, %.lr.ph.i.i105.preheader258 ]
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %.010.i.i106.prol
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %.010.i.i106.prol
  %i.ov = load i64, ptr %i.ou, align 4
  store i64 %i.ov, ptr %i.ot, align 4
  %i.ow = add nuw i64 %.010.i.i106.prol, 1        ; 2 uses
  %prol.iter267.next = add i64 %prol.iter267, 1   ; 2 uses
  %prol.iter267.cmp.not = icmp eq i64 %prol.iter267.next, %xtraiter265
  br i1 %prol.iter267.cmp.not, label %.lr.ph.i.i105.prol.loopexit, label %.lr.ph.i.i105.prol, !llvm.loop !437

.lr.ph.i.i105.prol.loopexit:                      ; preds = %.lr.ph.i.i105.prol, %.lr.ph.i.i105.preheader258
  %.010.i.i106.unr = phi i64 [ %.010.i.i106.ph, %.lr.ph.i.i105.preheader258 ], [ %i.ow, %.lr.ph.i.i105.prol ]
  %i.ox = sub i64 %.010.i.i106.ph, %i.oa
  %i.oy = icmp ugt i64 %i.ox, -4
  br i1 %i.oy, label %.loopexit, label %.lr.ph.i.i105

.lr.ph.i.i105:                                    ; preds = %.lr.ph.i.i105.prol.loopexit, %.lr.ph.i.i105
  %.010.i.i106 = phi i64 [ %i.po, %.lr.ph.i.i105 ], [ %.010.i.i106.unr, %.lr.ph.i.i105.prol.loopexit ] ; 6 uses
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %.010.i.i106
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %.010.i.i106
  %i.pb = load i64, ptr %i.pa, align 4
  store i64 %i.pb, ptr %i.oz, align 4
  %i.pc = add nuw i64 %.010.i.i106, 1             ; 2 uses
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.pc
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %i.pc
  %i.pf = load i64, ptr %i.pe, align 4
  store i64 %i.pf, ptr %i.pd, align 4
  %i.pg = add nuw i64 %.010.i.i106, 2             ; 2 uses
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.pg
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %i.pg
  %i.pj = load i64, ptr %i.pi, align 4
  store i64 %i.pj, ptr %i.ph, align 4
  %i.pk = add nuw i64 %.010.i.i106, 3             ; 2 uses
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.pk
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %i.pk
  %i.pn = load i64, ptr %i.pm, align 4
  store i64 %i.pn, ptr %i.pl, align 4
  %i.po = add nuw i64 %.010.i.i106, 4             ; 2 uses
  %exitcond.not.i.i107.3 = icmp eq i64 %i.po, %i.oa
  br i1 %exitcond.not.i.i107.3, label %.loopexit, label %.lr.ph.i.i105, !llvm.loop !438

.loopexit:                                        ; preds = %.lr.ph.i.i105.prol.loopexit, %.lr.ph.i.i105, %middle.block255, %bb.bm
  %i.pp = phi ptr [ null, %bb.bm ], [ %i.oj, %middle.block255 ], [ %i.oj, %.lr.ph.i.i105 ], [ %i.oj, %.lr.ph.i.i105.prol.loopexit ]
  store ptr %i.pp, ptr %18, align 8
  %i.pq = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.oa, ptr %i.pq, align 8
  %i.pr = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.nw, i64 noundef 56)
          to label %.noexc113 unwind label %bb.bt ; 2 uses

.noexc113:                                        ; preds = %.loopexit
  %.sroa.0.0.copyload.i112 = load ptr, ptr %6, align 8, !tbaa !439
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !19
  invoke void @_ZN4Luau12CstStatForInC1ENS_8AstArrayINS_8PositionEEES3_S3_(ptr noundef nonnull align 8 dereferenceable(56) %i.pr, ptr %i.ny, i64 %i.nz, ptr %.sroa.0.0.copyload.i112, i64 %.sroa.2.0.copyload.i, ptr noundef nonnull byval(%"struct.Luau::AstArray.192") align 8 %18)
          to label %_ZN4Luau9Allocator5allocINS_12CstStatForInEJNS_8AstArrayINS_8PositionEEERS5_S5_EEEPT_DpOT0_.exit unwind label %bb.bt

_ZN4Luau9Allocator5allocINS_12CstStatForInEJNS_8AstArrayINS_8PositionEEERS5_S5_EEEPT_DpOT0_.exit: ; preds = %.noexc113
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store ptr %i.nt, ptr %i.b, align 8, !tbaa !394
  %i.pt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ps, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.bn unwind label %bb.bu

bb.bn:                                            ; preds = %_ZN4Luau9Allocator5allocINS_12CstStatForInEJNS_8AstArrayINS_8PositionEEERS5_S5_EEEPT_DpOT0_.exit
  store ptr %i.pr, ptr %i.pt, align 8, !tbaa !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %bb.bw

.loopexit160:                                     ; preds = %bb.bj
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.au
  %lpad.loopexit161 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.bg, %bb.ar, %._crit_edge
  %lpad.loopexit.split-lp162 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.bo:                                            ; preds = %_ZN4Luau6Parser13restoreLocalsEj.exit92
  %i.pu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %.loopexit.split-lp

bb.bp:                                            ; preds = %.lr.ph.preheader.i.i
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %.noexc102, %.loopexit158, %.lr.ph.preheader.i.i95
  %i.pw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn30 = phi { ptr, i32 } [ %i.pw, %bb.bq ], [ %i.pv, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %.loopexit.split-lp

bb.bs:                                            ; preds = %bb.bl
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.bt:                                            ; preds = %.noexc113, %.loopexit, %.lr.ph.preheader.i.i104
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bu:                                            ; preds = %_ZN4Luau9Allocator5allocINS_12CstStatForInEJNS_8AstArrayINS_8PositionEEERS5_S5_EEEPT_DpOT0_.exit
  %i.pz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn32 = phi { ptr, i32 } [ %i.pz, %bb.bu ], [ %i.py, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %.loopexit.split-lp

bb.bw:                                            ; preds = %bb.bn, %_ZN4Luau9Allocator5allocINS_12AstStatForInEJNS_8LocationENS_8AstArrayIPNS_8AstLocalEEENS4_IPNS_7AstExprEEERPNS_12AstStatBlockERbRS3_SE_SF_EEEPT_DpOT0_.exit
  %i.qa = load ptr, ptr %i.gj, align 8, !tbaa !224
  %i.qb = getelementptr inbounds i8, ptr %i.qa, i64 %i.gp ; 2 uses
  %i.qc = load ptr, ptr %i.gk, align 8, !tbaa !224
  %.not.i.i.i115 = icmp eq ptr %i.qb, %i.qc
  br i1 %.not.i.i.i115, label %_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit, label %_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i116

_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i116: ; preds = %bb.bw
  store ptr %i.qb, ptr %i.gk, align 8, !tbaa !98
  br label %_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit

_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit:    ; preds = %bb.bw, %_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %i.qd = load ptr, ptr %12, align 8, !tbaa !435, !nonnull !53, !align !374 ; 2 uses
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !439
  %i.qf = load i64, ptr %i.fh, align 8, !tbaa !423
  %i.qg = getelementptr inbounds [8 x i8], ptr %i.qe, i64 %i.qf ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qd, i64 8 ; 2 uses
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !439
  %.not.i.i.i117 = icmp eq ptr %i.qg, %i.qi
  br i1 %.not.i.i.i117, label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit, label %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit
  store ptr %i.qg, ptr %i.qh, align 8, !tbaa !422
  br label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit

_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit:     ; preds = %_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit, %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.qj = load ptr, ptr %11, align 8, !tbaa !431, !nonnull !53, !align !374 ; 2 uses
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !440
  %i.ql = load i64, ptr %i.ex, align 8, !tbaa !417
  %i.qm = getelementptr inbounds [8 x i8], ptr %i.qk, i64 %i.ql ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qj, i64 8 ; 2 uses
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !440
  %.not.i.i.i118 = icmp eq ptr %i.qm, %i.qo
  br i1 %.not.i.i.i118, label %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit, label %_ZSt8_DestroyIPPN4Luau7AstExprES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPPN4Luau7AstExprES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit
  store ptr %i.qm, ptr %i.qn, align 8, !tbaa !341
  br label %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit

_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit:     ; preds = %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit, %_ZSt8_DestroyIPPN4Luau7AstExprES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.qp = load ptr, ptr %5, align 8, !tbaa !426, !nonnull !53, !align !374 ; 2 uses
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !441
  %i.qr = load i64, ptr %i.dg, align 8, !tbaa !408
  %i.qs = getelementptr inbounds [48 x i8], ptr %i.qq, i64 %i.qr ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qp, i64 8 ; 2 uses
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !441
  %.not.i.i.i119 = icmp eq ptr %i.qs, %i.qu
  br i1 %.not.i.i.i119, label %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit, label %_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit
  store ptr %i.qs, ptr %i.qt, align 8, !tbaa !342
  br label %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit

_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit: ; preds = %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit, %_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.ca

.loopexit.split-lp:                               ; preds = %.loopexit160, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit164, %.loopexit.split-lp165, %bb.bs, %bb.bv, %bb.br, %bb.bo
  %.pn38 = phi { ptr, i32 } [ %i.px, %bb.bs ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp165 ], [ %i.pu, %bb.bo ], [ %.pn30, %bb.br ], [ %.pn32, %bb.bv ], [ %lpad.loopexit166, %.loopexit164 ], [ %lpad.loopexit, %.loopexit160 ], [ %lpad.loopexit161, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp162, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.qv = load ptr, ptr %i.gj, align 8, !tbaa !224
  %i.qw = getelementptr inbounds i8, ptr %i.qv, i64 %i.gp ; 2 uses
  %i.qx = load ptr, ptr %i.gk, align 8, !tbaa !224
  %.not.i.i.i120 = icmp eq ptr %i.qw, %i.qx
  br i1 %.not.i.i.i120, label %_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit122, label %_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i121

_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i121: ; preds = %.loopexit.split-lp
  store ptr %i.qw, ptr %i.gk, align 8, !tbaa !98
  br label %_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit122

_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit122: ; preds = %_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i121, %.loopexit.split-lp, %bb.ax
  %.pn38.pn = phi { ptr, i32 } [ %i.hy, %bb.ax ], [ %.pn38, %.loopexit.split-lp ], [ %.pn38, %_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i121 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.bx

bb.bx:                                            ; preds = %_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit122, %bb.aw
  %.pn38.pn.pn = phi { ptr, i32 } [ %.pn38.pn, %_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit122 ], [ %i.hx, %bb.aw ]
  %i.qy = load ptr, ptr %12, align 8, !tbaa !435, !nonnull !53, !align !374 ; 2 uses
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !439
  %i.ra = load i64, ptr %i.fh, align 8, !tbaa !423
  %i.rb = getelementptr inbounds [8 x i8], ptr %i.qz, i64 %i.ra ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qy, i64 8 ; 2 uses
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !439
  %.not.i.i.i123 = icmp eq ptr %i.rb, %i.rd
  br i1 %.not.i.i.i123, label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit125, label %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i124

_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i124: ; preds = %bb.bx
  store ptr %i.rb, ptr %i.rc, align 8, !tbaa !422
  br label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit125

_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit125:  ; preds = %bb.bx, %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.re = load ptr, ptr %11, align 8, !tbaa !431, !nonnull !53, !align !374 ; 2 uses
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !440
  %i.rg = load i64, ptr %i.ex, align 8, !tbaa !417
  %i.rh = getelementptr inbounds [8 x i8], ptr %i.rf, i64 %i.rg ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.re, i64 8 ; 2 uses
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !440
  %.not.i.i.i126 = icmp eq ptr %i.rh, %i.rj
  br i1 %.not.i.i.i126, label %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit128, label %_ZSt8_DestroyIPPN4Luau7AstExprES2_EvT_S4_RSaIT0_E.exit.i.i.i.i127

_ZSt8_DestroyIPPN4Luau7AstExprES2_EvT_S4_RSaIT0_E.exit.i.i.i.i127: ; preds = %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit125
  store ptr %i.rh, ptr %i.ri, align 8, !tbaa !341
  br label %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit128

_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit128:  ; preds = %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit125, %_ZSt8_DestroyIPPN4Luau7AstExprES2_EvT_S4_RSaIT0_E.exit.i.i.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.by

bb.by:                                            ; preds = %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit128, %bb.av
  %.pn38.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn, %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit128 ], [ %i.hw, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.ak, %bb.ag, %bb.ad
  %.pn38.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn, %bb.by ], [ %.pn, %bb.ag ], [ %i.et, %bb.ak ], [ %i.eq, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.rk = load ptr, ptr %5, align 8, !tbaa !426, !nonnull !53, !align !374 ; 2 uses
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !441
  %i.rm = load i64, ptr %i.dg, align 8, !tbaa !408
  %i.rn = getelementptr inbounds [48 x i8], ptr %i.rl, i64 %i.rm ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rk, i64 8 ; 2 uses
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !441
  %.not.i.i.i129 = icmp eq ptr %i.rn, %i.rp
  br i1 %.not.i.i.i129, label %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit131, label %_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i130

_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i130: ; preds = %bb.bz
  store ptr %i.rn, ptr %i.ro, align 8, !tbaa !342
  br label %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit131

_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit131: ; preds = %bb.bz, %_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  resume { ptr, i32 } %.pn38.pn.pn.pn.pn

bb.ca:                                            ; preds = %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit, %bb.s
  %.028 = phi ptr [ %i.cw, %bb.s ], [ %i.nt, %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  ret ptr %.028
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser11parseRepeatEv(ptr noundef nonnull align 8 dereferenceable(1232) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Luau::Parser::MatchLexeme", align 4 ; 5 uses
  %2 = alloca %"struct.Luau::Location", align 8   ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132
  %.sroa.07.0.copyload = load i64, ptr %i.c, align 4 ; 2 uses
  %.sroa.06.0.copyload = load i32, ptr %i.b, align 8, !tbaa !229
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !98
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !101
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !403
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !404
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !404
  %i.q = tail call noundef ptr @_ZN4Luau6Parser17parseBlockNoScopeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0) ; 2 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !403
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !404
  %i.u = add i32 %i.t, -1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !404
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  store i32 %.sroa.06.0.copyload, ptr %1, align 4, !tbaa !327
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i64 %.sroa.07.0.copyload, ptr %i.v, align 4
  %i.w = call noundef zeroext i1 @_ZN4Luau6Parser24expectMatchEndAndConsumeENS_6Lexeme4TypeERKNS0_11MatchLexemeE(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 310, ptr noundef nonnull align 4 dereferenceable(12) %1) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.x = zext i1 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i8 %i.x, ptr %i.y, align 8, !tbaa !400
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aa = load i64, ptr %i.z, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ %i.aa, %bb.b ], [ -1, %bb.a ]
  %i.ab = tail call noundef ptr @_ZN4Luau6Parser9parseExprEj(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 0) ; 2 uses
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !98  ; 2 uses
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !101 ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3                 ; 3 uses
  %i.ai = and i64 %i.k, 4294967295                ; 6 uses
  %i.aj = icmp ugt i64 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %bb.g

._crit_edge.loopexit.i:                           ; preds = %bb.g
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !98 ; 2 uses
  %.pre9.i = load ptr, ptr %i.d, align 8, !tbaa !101 ; 2 uses
  %.pre10.i = ptrtoint ptr %.pre.i to i64
  %.pre11.i = ptrtoint ptr %.pre9.i to i64
  %.pre13.i = sub i64 %.pre10.i, %.pre11.i
  %.pre15.i = ashr exact i64 %.pre13.i, 3
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.c
  %.pre-phi16.i = phi i64 [ %.pre15.i, %._crit_edge.loopexit.i ], [ %i.ah, %bb.c ] ; 3 uses
  %i.al = phi ptr [ %.pre9.i, %._crit_edge.loopexit.i ], [ %i.ad, %bb.c ]
  %i.am = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.ac, %bb.c ]
  %i.an = icmp ult i64 %.pre-phi16.i, %i.ai
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ao = sub nuw nsw i64 %i.ai, %.pre-phi16.i
  tail call void @_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.ao)
  br label %_ZN4Luau6Parser13restoreLocalsEj.exit

bb.e:                                             ; preds = %._crit_edge.i
  %i.ap = icmp ugt i64 %.pre-phi16.i, %i.ai
  br i1 %i.ap, label %bb.f, label %_ZN4Luau6Parser13restoreLocalsEj.exit

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ai ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.aq
  br i1 %.not.i.i.i, label %_ZN4Luau6Parser13restoreLocalsEj.exit, label %_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.f
  store ptr %i.aq, ptr %i.e, align 8, !tbaa !98
  br label %_ZN4Luau6Parser13restoreLocalsEj.exit

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.08.i = phi i64 [ %i.ah, %.lr.ph.i ], [ %i.ar, %bb.g ]
  %i.ar = add i64 %.08.i, -1                      ; 3 uses
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !101
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !103 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !105
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEixERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.au)
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !103
  %i.ay = icmp ugt i64 %i.ar, %i.ai
  br i1 %i.ay, label %bb.g, label %._crit_edge.loopexit.i, !llvm.loop !109

_ZN4Luau6Parser13restoreLocalsEj.exit:            ; preds = %bb.d, %bb.e, %bb.f, %_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !373, !nonnull !53, !align !374
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store i64 %.sroa.07.0.copyload, ptr %2, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
end_hunk_0
begin_hunk_1_@_ZN4Luau6Parser10parseLocalENS_8LocationENS_8PositionERKNS_8AstArrayIPNS_7AstAttrEEEbPNS_10TempVectorIPNS_11CstAttrListEEE:bb.a

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn = phi { ptr, i32 } [ %i.mg, %bb.ar ], [ %i.mf, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  br label %bb.bc

bb.at:                                            ; preds = %bb.an
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.au:                                            ; preds = %.noexc76, %.loopexit, %.lr.ph.preheader.i.i65
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %_ZN4Luau9Allocator5allocINS_12CstStatLocalEJNS_8AstArrayINS_8PositionEEERS5_S5_EEEPT_DpOT0_.exit
  %i.mj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn29 = phi { ptr, i32 } [ %i.mj, %bb.av ], [ %i.mi, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #34
  br label %bb.bc

bb.ax:                                            ; preds = %bb.ap, %_ZN4Luau9Allocator5allocINS_12AstStatLocalEJNS_8LocationENS_8AstArrayIPNS_8AstLocalEEENS4_IPNS_7AstExprEEERSt8optionalIS3_ERbEEEPT_DpOT0_.exit
  br i1 %5, label %bb.ay, label %_ZN4Luau14isEnoughValuesERNS_10TempVectorIPNS_7AstExprEEEm.exit.thread

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.fl, label %_ZN4Luau14isEnoughValuesERNS_10TempVectorIPNS_7AstExprEEEm.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mk = load ptr, ptr %17, align 8, !tbaa !431, !nonnull !53, !align !374
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !440
  %i.mn = getelementptr inbounds i8, ptr %i.mm, i64 -8
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !30
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !32 ; 2 uses
  %i.mr = load i32, ptr @_ZN4Luau7AstRttiINS_11AstExprCallEE5valueE, align 4, !tbaa !9
  %i.ms = icmp eq i32 %i.mq, %i.mr
  %i.mt = load i32, ptr @_ZN4Luau7AstRttiINS_14AstExprVarargsEE5valueE, align 4
  %.not9.i = icmp eq i32 %i.mq, %i.mt
  %or.cond.i = select i1 %i.ms, i1 true, i1 %.not9.i
  %i.mu = icmp eq i64 %i.fk, %.sroa.12.0.lcssa
  %or.cond135 = or i1 %or.cond.i, %i.mu
  br i1 %or.cond135, label %_ZN4Luau14isEnoughValuesERNS_10TempVectorIPNS_7AstExprEEEm.exit.thread, label %bb.ba

_ZN4Luau14isEnoughValuesERNS_10TempVectorIPNS_7AstExprEEEm.exit: ; preds = %bb.ay
  br i1 %i.hc, label %_ZN4Luau14isEnoughValuesERNS_10TempVectorIPNS_7AstExprEEEm.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZN4Luau14isEnoughValuesERNS_10TempVectorIPNS_7AstExprEEEm.exit
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  invoke void (ptr, ptr, ptr, ...) @_ZN4Luau6Parser6reportERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.mv, ptr noundef nonnull @.str.179)
          to label %_ZN4Luau14isEnoughValuesERNS_10TempVectorIPNS_7AstExprEEEm.exit.thread unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

_ZN4Luau14isEnoughValuesERNS_10TempVectorIPNS_7AstExprEEEm.exit.thread: ; preds = %bb.az, %bb.ba, %_ZN4Luau14isEnoughValuesERNS_10TempVectorIPNS_7AstExprEEEm.exit, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  %i.mx = load ptr, ptr %18, align 8, !tbaa !435, !nonnull !53, !align !374 ; 2 uses
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !439
  %i.mz = load i64, ptr %i.es, align 8, !tbaa !423
  %i.na = getelementptr inbounds [8 x i8], ptr %i.my, i64 %i.mz ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mx, i64 8 ; 2 uses
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !439
  %.not.i.i.i = icmp eq ptr %i.na, %i.nc
  br i1 %.not.i.i.i, label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit, label %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZN4Luau14isEnoughValuesERNS_10TempVectorIPNS_7AstExprEEEm.exit.thread
  store ptr %i.na, ptr %i.nb, align 8, !tbaa !422
  br label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit

_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit:     ; preds = %_ZN4Luau14isEnoughValuesERNS_10TempVectorIPNS_7AstExprEEEm.exit.thread, %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  %i.nd = load ptr, ptr %17, align 8, !tbaa !431, !nonnull !53, !align !374 ; 2 uses
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !440
  %i.nf = load i64, ptr %i.ei, align 8, !tbaa !417
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.ne, i64 %i.nf ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 8 ; 2 uses
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !440
  %.not.i.i.i78 = icmp eq ptr %i.ng, %i.ni
  br i1 %.not.i.i.i78, label %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit, label %_ZSt8_DestroyIPPN4Luau7AstExprES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPPN4Luau7AstExprES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit
  store ptr %i.ng, ptr %i.nh, align 8, !tbaa !341
  br label %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit

_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit:     ; preds = %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit, %_ZSt8_DestroyIPPN4Luau7AstExprES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  %i.nj = load ptr, ptr %i.ea, align 8, !tbaa !224
  %i.nk = getelementptr inbounds i8, ptr %i.nj, i64 %i.eg ; 2 uses
  %i.nl = load ptr, ptr %i.eb, align 8, !tbaa !224
  %.not.i.i.i79 = icmp eq ptr %i.nk, %i.nl
  br i1 %.not.i.i.i79, label %_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit, label %_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit
  store ptr %i.nk, ptr %i.eb, align 8, !tbaa !98
  br label %_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit

_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit:    ; preds = %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit, %_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  %i.nm = load ptr, ptr %13, align 8, !tbaa !426, !nonnull !53, !align !374 ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !441
  %i.no = load i64, ptr %i.di, align 8, !tbaa !408
  %i.np = getelementptr inbounds [48 x i8], ptr %i.nn, i64 %i.no ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nm, i64 8 ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !441
  %.not.i.i.i80 = icmp eq ptr %i.np, %i.nr
  br i1 %.not.i.i.i80, label %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit, label %_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit
  store ptr %i.np, ptr %i.nq, align 8, !tbaa !342
  br label %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit

_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit: ; preds = %_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit, %_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.bd

bb.bc:                                            ; preds = %.loopexit138, %.loopexit.split-lp, %bb.as, %bb.bb, %bb.aw, %bb.at, %bb.aa
  %.pn34 = phi { ptr, i32 } [ %i.mh, %bb.at ], [ %i.fh, %bb.aa ], [ %i.mw, %bb.bb ], [ %.pn, %bb.as ], [ %.pn29, %bb.aw ], [ %lpad.loopexit, %.loopexit138 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  %i.ns = load ptr, ptr %18, align 8, !tbaa !435, !nonnull !53, !align !374 ; 2 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !439
  %i.nu = load i64, ptr %i.es, align 8, !tbaa !423
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.nt, i64 %i.nu ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ns, i64 8 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !439
  %.not.i.i.i81 = icmp eq ptr %i.nv, %i.nx
  br i1 %.not.i.i.i81, label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit83, label %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i82

_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i82: ; preds = %bb.bc
  store ptr %i.nv, ptr %i.nw, align 8, !tbaa !422
  br label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit83

_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit83:   ; preds = %bb.bc, %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  %i.ny = load ptr, ptr %17, align 8, !tbaa !431, !nonnull !53, !align !374 ; 2 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !440
  %i.oa = load i64, ptr %i.ei, align 8, !tbaa !417
  %i.ob = getelementptr inbounds [8 x i8], ptr %i.nz, i64 %i.oa ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ny, i64 8 ; 2 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !440
  %.not.i.i.i84 = icmp eq ptr %i.ob, %i.od
  br i1 %.not.i.i.i84, label %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit86, label %_ZSt8_DestroyIPPN4Luau7AstExprES2_EvT_S4_RSaIT0_E.exit.i.i.i.i85

_ZSt8_DestroyIPPN4Luau7AstExprES2_EvT_S4_RSaIT0_E.exit.i.i.i.i85: ; preds = %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit83
  store ptr %i.ob, ptr %i.oc, align 8, !tbaa !341
  br label %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit86

_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit86:   ; preds = %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit83, %_ZSt8_DestroyIPPN4Luau7AstExprES2_EvT_S4_RSaIT0_E.exit.i.i.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  %i.oe = load ptr, ptr %i.ea, align 8, !tbaa !224
  %i.of = getelementptr inbounds i8, ptr %i.oe, i64 %i.eg ; 2 uses
  %i.og = load ptr, ptr %i.eb, align 8, !tbaa !224
  %.not.i.i.i87 = icmp eq ptr %i.of, %i.og
  br i1 %.not.i.i.i87, label %_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit89, label %_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i88

_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i88: ; preds = %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit86
  store ptr %i.of, ptr %i.eb, align 8, !tbaa !98
  br label %_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit89

_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit89:  ; preds = %_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i88, %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit86, %bb.x, %bb.u
  %.pn34.pn = phi { ptr, i32 } [ %i.dv, %bb.x ], [ %i.du, %bb.u ], [ %.pn34, %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit86 ], [ %.pn34, %_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  %i.oh = load ptr, ptr %13, align 8, !tbaa !426, !nonnull !53, !align !374 ; 2 uses
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !441
  %i.oj = load i64, ptr %i.di, align 8, !tbaa !408
  %i.ok = getelementptr inbounds [48 x i8], ptr %i.oi, i64 %i.oj ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 8 ; 2 uses
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !441
  %.not.i.i.i90 = icmp eq ptr %i.ok, %i.om
  br i1 %.not.i.i.i90, label %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit92, label %_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i91

_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i91: ; preds = %_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit89
  store ptr %i.ok, ptr %i.ol, align 8, !tbaa !342
  br label %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit92

_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit92: ; preds = %_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit89, %_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.be

bb.bd:                                            ; preds = %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.m
  %.026 = phi ptr [ %i.al, %bb.m ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ke, %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit ]
  ret ptr %.026

bb.be:                                            ; preds = %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %.pn37 = phi { ptr, i32 } [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn34.pn, %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit92 ]
  resume { ptr, i32 } %.pn37
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser11parseReturnEv(ptr noundef nonnull align 8 dereferenceable(1232) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Luau::TempVector.197", align 8 ; 10 uses
  %2 = alloca %"class.Luau::TempVector.198", align 8 ; 10 uses
  %3 = alloca %"struct.Luau::Location", align 16  ; 8 uses
  %4 = alloca %"struct.Luau::AstArray", align 8   ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %.sroa.0.0.copyload.a = load <2 x i64>, ptr %i.c, align 4
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 4
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !415
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !341
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !184
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  store i64 %i.l, ptr %i.e, align 8, !tbaa !417
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8, !tbaa !419
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !420
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !422
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !119
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  store i64 %i.v, ptr %i.o, align 8, !tbaa !423
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i64 0, ptr %i.w, align 8, !tbaa !425
  %i.x = load i32, ptr %i.b, align 8, !tbaa !110
  switch i32 %i.x, label %bb.b [
    i32 0, label %.thread
    i32 294, label %.thread
    i32 295, label %.thread
    i32 296, label %.thread
    i32 310, label %.thread
    i32 59, label %.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = load i8, ptr %i.y, align 8, !tbaa !393, !range !52, !noundef !53
  %i.aa = trunc nuw i8 %i.z to i1
  %. = select i1 %i.aa, ptr %2, ptr null
  invoke void @_ZN4Luau6Parser13parseExprListERNS_10TempVectorIPNS_7AstExprEEEPNS1_INS_8PositionEEE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %.)
          to label %_ZN4Luau6Parser11blockFollowERKNS_6LexemeE.exit.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZN4Luau6Parser11blockFollowERKNS_6LexemeE.exit.thread: ; preds = %bb.b
  %.pre = load i64, ptr %i.m, align 8, !tbaa !419 ; 11 uses
  %i.ac = icmp eq i64 %.pre, 0
  br i1 %i.ac, label %.thread, label %.lr.ph.preheader.i.i

.thread:                                          ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %_ZN4Luau6Parser11blockFollowERKNS_6LexemeE.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !373, !nonnull !53, !align !374
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store <2 x i64> %.sroa.0.0.copyload.a, ptr %3, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  br label %.loopexit31

.lr.ph.preheader.i.i:                             ; preds = %_ZN4Luau6Parser11blockFollowERKNS_6LexemeE.exit.thread
  %i.af = load ptr, ptr %1, align 8, !tbaa !431, !nonnull !53, !align !374 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !440
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !30
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !373, !nonnull !53, !align !374 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store i64 %.sroa.0.0.copyload, ptr %3, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.4.0.copyload, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.an = load i64, ptr %i.e, align 8, !tbaa !417 ; 2 uses
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !184 ; 2 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64
  %i.aq = getelementptr [8 x i8], ptr %i.ao, i64 %i.an ; 6 uses
  %i.ar = shl i64 %.pre, 3
  %i.as = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 noundef %i.ar)
          to label %.lr.ph.i.i.preheader unwind label %bb.f ; 10 uses

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i
  %min.iters.check = icmp ult i64 %.pre, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.at = ptrtoaddr ptr %i.as to i64
  %i.au = shl i64 %i.an, 3
  %i.av = add i64 %i.au, %i.ap
  %i.aw = sub i64 %i.av, %i.at
  %diff.check = icmp ugt i64 %i.aw, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.pre, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !30
  %wide.load40 = load <2 x ptr>, ptr %i.az, align 8, !tbaa !30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x ptr> %wide.load, ptr %i.ax, align 8, !tbaa !30
  store <2 x ptr> %wide.load40, ptr %i.ba, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !471

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre, %n.vec
  br i1 %cmp.n, label %.loopexit31, label %.lr.ph.i.i.preheader56

.lr.ph.i.i.preheader56:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.pre, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader56, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi i64 [ %i.bf, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader56 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader56 ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.010.i.i.prol
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.010.i.i.prol
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !30
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !30
  %i.bf = add nuw i64 %.010.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !472

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader56
  %.010.i.i.unr = phi i64 [ %.010.i.i.ph, %.lr.ph.i.i.preheader56 ], [ %i.bf, %.lr.ph.i.i.prol ]
  %i.bg = sub i64 %.010.i.i.ph, %.pre
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %.loopexit31, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.bx, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.010.i.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.010.i.i
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !30
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !30
  %i.bl = add nuw i64 %.010.i.i, 1                ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bl
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !30
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !30
  %i.bp = add nuw i64 %.010.i.i, 2                ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bp
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !30
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !30
  %i.bt = add nuw i64 %.010.i.i, 3                ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bt
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !30
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !30
  %i.bx = add nuw i64 %.010.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bx, %.pre
  br i1 %exitcond.not.i.i.3, label %.loopexit31, label %.lr.ph.i.i, !llvm.loop !473

.loopexit31:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %.thread
  %5 = phi i64 [ 0, %.thread ], [ %.pre, %middle.block ], [ %.pre, %.lr.ph.i.i ], [ %.pre, %.lr.ph.i.i.prol.loopexit ]
  %i.by = phi ptr [ %i.ae, %.thread ], [ %i.al, %middle.block ], [ %i.al, %.lr.ph.i.i ], [ %i.al, %.lr.ph.i.i.prol.loopexit ]
  %i.bz = phi ptr [ %i.ad, %.thread ], [ %i.ak, %middle.block ], [ %i.ak, %.lr.ph.i.i ], [ %i.ak, %.lr.ph.i.i.prol.loopexit ]
  %i.ca = phi ptr [ null, %.thread ], [ %i.as, %middle.block ], [ %i.as, %.lr.ph.i.i ], [ %i.as, %.lr.ph.i.i.prol.loopexit ]
  store ptr %i.ca, ptr %4, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %5, ptr %i.cb, align 8
  %i.cc = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 noundef 48)
          to label %.noexc12 unwind label %bb.f   ; 4 uses

.noexc12:                                         ; preds = %.loopexit31
  invoke void @_ZN4Luau13AstStatReturnC1ERKNS_8LocationERKNS_8AstArrayIPNS_7AstExprEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.cc, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN4Luau9Allocator5allocINS_13AstStatReturnEJNS_8LocationENS_8AstArrayIPNS_7AstExprEEEEEEPT_DpOT0_.exit unwind label %bb.f

_ZN4Luau9Allocator5allocINS_13AstStatReturnEJNS_8LocationENS_8AstArrayIPNS_7AstExprEEEEEEPT_DpOT0_.exit: ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !393, !range !52, !noundef !53
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZN4Luau9Allocator5allocINS_13AstStatReturnEJNS_8LocationENS_8AstArrayIPNS_7AstExprEEEEEEPT_DpOT0_.exit
  %i.cg = load ptr, ptr %i.bz, align 8, !tbaa !373, !nonnull !53, !align !374 ; 2 uses
  %i.ch = load i64, ptr %i.w, align 8, !tbaa !425 ; 9 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %.loopexit, label %.lr.ph.preheader.i.i14

.lr.ph.preheader.i.i14:                           ; preds = %bb.d
  %i.cj = load ptr, ptr %2, align 8, !tbaa !435, !nonnull !53, !align !374
  %i.ck = load i64, ptr %i.o, align 8, !tbaa !423 ; 2 uses
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !119 ; 2 uses
  %i.cm = ptrtoaddr ptr %i.cl to i64
  %i.cn = getelementptr [8 x i8], ptr %i.cl, i64 %i.ck ; 6 uses
  %i.co = shl i64 %i.ch, 3
  %i.cp = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i64 noundef %i.co)
          to label %.lr.ph.i.i15.preheader unwind label %bb.g ; 10 uses

.lr.ph.i.i15.preheader:                           ; preds = %.lr.ph.preheader.i.i14
  %min.iters.check44 = icmp ult i64 %i.ch, 14
  br i1 %min.iters.check44, label %.lr.ph.i.i15.preheader55, label %vector.memcheck41

vector.memcheck41:                                ; preds = %.lr.ph.i.i15.preheader
  %i.cq = ptrtoaddr ptr %i.cp to i64
  %i.cr = shl i64 %i.ck, 3
  %i.cs = add i64 %i.cr, %i.cm
  %i.ct = sub i64 %i.cs, %i.cq
  %diff.check42 = icmp ugt i64 %i.ct, -32
  br i1 %diff.check42, label %.lr.ph.i.i15.preheader55, label %vector.ph45

vector.ph45:                                      ; preds = %vector.memcheck41
  %n.vec46 = and i64 %i.ch, -4                    ; 3 uses
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next51, %vector.body47 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %index48 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %index48 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load49 = load <2 x i64>, ptr %i.cv, align 4
  %wide.load50 = load <2 x i64>, ptr %i.cw, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store <2 x i64> %wide.load49, ptr %i.cu, align 4
  store <2 x i64> %wide.load50, ptr %i.cx, align 4
  %index.next51 = add nuw i64 %index48, 4         ; 2 uses
  %i.cy = icmp eq i64 %index.next51, %n.vec46
  br i1 %i.cy, label %middle.block52, label %vector.body47, !llvm.loop !474

middle.block52:                                   ; preds = %vector.body47
  %cmp.n53 = icmp eq i64 %i.ch, %n.vec46
  br i1 %cmp.n53, label %.loopexit, label %.lr.ph.i.i15.preheader55

.lr.ph.i.i15.preheader55:                         ; preds = %vector.memcheck41, %.lr.ph.i.i15.preheader, %middle.block52
  %.010.i.i16.ph = phi i64 [ 0, %vector.memcheck41 ], [ 0, %.lr.ph.i.i15.preheader ], [ %n.vec46, %middle.block52 ] ; 3 uses
  %xtraiter57 = and i64 %i.ch, 3                  ; 2 uses
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod58.not, label %.lr.ph.i.i15.prol.loopexit, label %.lr.ph.i.i15.prol

.lr.ph.i.i15.prol:                                ; preds = %.lr.ph.i.i15.preheader55, %.lr.ph.i.i15.prol
  %.010.i.i16.prol = phi i64 [ %i.dc, %.lr.ph.i.i15.prol ], [ %.010.i.i16.ph, %.lr.ph.i.i15.preheader55 ] ; 3 uses
  %prol.iter59 = phi i64 [ %prol.iter59.next, %.lr.ph.i.i15.prol ], [ 0, %.lr.ph.i.i15.preheader55 ]
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.010.i.i16.prol
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.010.i.i16.prol
  %i.db = load i64, ptr %i.da, align 4
  store i64 %i.db, ptr %i.cz, align 4
  %i.dc = add nuw i64 %.010.i.i16.prol, 1         ; 2 uses
  %prol.iter59.next = add i64 %prol.iter59, 1     ; 2 uses
  %prol.iter59.cmp.not = icmp eq i64 %prol.iter59.next, %xtraiter57
  br i1 %prol.iter59.cmp.not, label %.lr.ph.i.i15.prol.loopexit, label %.lr.ph.i.i15.prol, !llvm.loop !475

.lr.ph.i.i15.prol.loopexit:                       ; preds = %.lr.ph.i.i15.prol, %.lr.ph.i.i15.preheader55
  %.010.i.i16.unr = phi i64 [ %.010.i.i16.ph, %.lr.ph.i.i15.preheader55 ], [ %i.dc, %.lr.ph.i.i15.prol ]
  %i.dd = sub i64 %.010.i.i16.ph, %i.ch
  %i.de = icmp ugt i64 %i.dd, -4
  br i1 %i.de, label %.loopexit, label %.lr.ph.i.i15

.lr.ph.i.i15:                                     ; preds = %.lr.ph.i.i15.prol.loopexit, %.lr.ph.i.i15
  %.010.i.i16 = phi i64 [ %i.du, %.lr.ph.i.i15 ], [ %.010.i.i16.unr, %.lr.ph.i.i15.prol.loopexit ] ; 6 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.010.i.i16
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.010.i.i16
  %i.dh = load i64, ptr %i.dg, align 4
  store i64 %i.dh, ptr %i.df, align 4
  %i.di = add nuw i64 %.010.i.i16, 1              ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.di
  %i.dl = load i64, ptr %i.dk, align 4
  store i64 %i.dl, ptr %i.dj, align 4
  %i.dm = add nuw i64 %.010.i.i16, 2              ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dm
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.dm
  %i.dp = load i64, ptr %i.do, align 4
  store i64 %i.dp, ptr %i.dn, align 4
  %i.dq = add nuw i64 %.010.i.i16, 3              ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dq
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.dq
  %i.dt = load i64, ptr %i.ds, align 4
  store i64 %i.dt, ptr %i.dr, align 4
  %i.du = add nuw i64 %.010.i.i16, 4              ; 2 uses
  %exitcond.not.i.i17.3 = icmp eq i64 %i.du, %i.ch
  br i1 %exitcond.not.i.i17.3, label %.loopexit, label %.lr.ph.i.i15, !llvm.loop !476

.loopexit:                                        ; preds = %.lr.ph.i.i15.prol.loopexit, %.lr.ph.i.i15, %middle.block52, %bb.d
  %i.dv = phi ptr [ null, %bb.d ], [ %i.cp, %middle.block52 ], [ %i.cp, %.lr.ph.i.i15 ], [ %i.cp, %.lr.ph.i.i15.prol.loopexit ]
  %i.dw = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i64 noundef 24)
          to label %.noexc21 unwind label %bb.g   ; 2 uses

.noexc21:                                         ; preds = %.loopexit
  invoke void @_ZN4Luau13CstStatReturnC1ENS_8AstArrayINS_8PositionEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr %i.dv, i64 %i.ch)
          to label %_ZN4Luau9Allocator5allocINS_13CstStatReturnEJNS_8AstArrayINS_8PositionEEEEEEPT_DpOT0_.exit unwind label %bb.g

_ZN4Luau9Allocator5allocINS_13CstStatReturnEJNS_8AstArrayINS_8PositionEEEEEEPT_DpOT0_.exit: ; preds = %.noexc21
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store ptr %i.cc, ptr %i.a, align 8, !tbaa !394
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.dx, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZN4Luau9Allocator5allocINS_13CstStatReturnEJNS_8AstArrayINS_8PositionEEEEEEPT_DpOT0_.exit
  store ptr %i.dw, ptr %i.dy, align 8, !tbaa !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.i

bb.f:                                             ; preds = %.noexc12, %.loopexit31, %.lr.ph.preheader.i.i
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.p

bb.g:                                             ; preds = %.noexc21, %.loopexit, %.lr.ph.preheader.i.i14
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.h:                                             ; preds = %_ZN4Luau9Allocator5allocINS_13CstStatReturnEJNS_8AstArrayINS_8PositionEEEEEEPT_DpOT0_.exit
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.p

bb.i:                                             ; preds = %bb.e, %_ZN4Luau9Allocator5allocINS_13AstStatReturnEJNS_8LocationENS_8AstArrayIPNS_7AstExprEEEEEEPT_DpOT0_.exit
  %i.ec = load i8, ptr @_ZN5FFlag21LuauExportValueSyntaxE, align 8, !tbaa !385, !range !52, !noundef !53
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !329
  %i.eh = load ptr, ptr %i.ee, align 8, !tbaa !214
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = icmp eq i64 %i.ek, 8
  br i1 %i.el, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.en = load i64, ptr %i.em, align 8, !tbaa !477
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  invoke void (ptr, ptr, ptr, ...) @_ZN4Luau6Parser6reportERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.ep, ptr noundef nonnull @.str.180)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i8 1, ptr %i.er, align 8, !tbaa !328
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j, %bb.i
  %i.es = load ptr, ptr %2, align 8, !tbaa !435, !nonnull !53, !align !374 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !439
  %i.eu = load i64, ptr %i.o, align 8, !tbaa !423
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.eu ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !439
  %.not.i.i.i = icmp eq ptr %i.ev, %i.ex
  br i1 %.not.i.i.i, label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit, label %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

end_hunk_1
begin_hunk_2_@_ZN4Luau6Parser16parseDeclarationERKNS_8LocationERKNS_8AstArrayIPNS_7AstAttrEEE:bb.a
  %lcmp.mod1029.not = icmp eq i64 %xtraiter1028, 0
  br i1 %lcmp.mod1029.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader974, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi i64 [ %i.fu, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader974 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader974 ]
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.010.i.i.prol
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.010.i.i.prol
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !344
  store ptr %i.ft, ptr %i.fr, align 8, !tbaa !344
  %i.fu = add nuw i64 %.010.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1028
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !597

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader974
  %.010.i.i.unr = phi i64 [ %.010.i.i.ph, %.lr.ph.i.i.preheader974 ], [ %i.fu, %.lr.ph.i.i.prol ]
  %i.fv = sub i64 %.010.i.i.ph, %.sroa.12375.0.lcssa
  %i.fw = icmp ugt i64 %i.fv, -4
  br i1 %i.fw, label %.lr.ph.preheader.i.i129, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.gm, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.010.i.i
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.010.i.i
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !344
  store ptr %i.fz, ptr %i.fx, align 8, !tbaa !344
  %i.ga = add nuw i64 %.010.i.i, 1                ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.ga
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.ga
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !344
  store ptr %i.gd, ptr %i.gb, align 8, !tbaa !344
  %i.ge = add nuw i64 %.010.i.i, 2                ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.ge
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.ge
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !344
  store ptr %i.gh, ptr %i.gf, align 8, !tbaa !344
  %i.gi = add nuw i64 %.010.i.i, 3                ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.gi
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.gi
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !344
  store ptr %i.gl, ptr %i.gj, align 8, !tbaa !344
  %i.gm = add nuw i64 %.010.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.gm, %.sroa.12375.0.lcssa
  br i1 %exitcond.not.i.i.3, label %.lr.ph.preheader.i.i129, label %.lr.ph.i.i, !llvm.loop !598

.lr.ph.preheader.i.i129:                          ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block
  store ptr %i.fh, ptr %23, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %.sroa.12375.0.lcssa, ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr %.0392646, ptr %i.go, align 8, !tbaa !593
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #34
  %i.gp = load ptr, ptr %i.br, align 8, !tbaa !135
  %i.gq = getelementptr i8, ptr %i.gp, i64 %i.bx  ; 3 uses
  %i.gr = load ptr, ptr %i.ew, align 8, !tbaa !373, !nonnull !53, !align !374
  %i.gs = mul i64 %.sroa.12375.0.lcssa, 24
  %i.gt = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i64 noundef %i.gs)
          to label %.lr.ph.i.i130.preheader unwind label %bb.aq ; 5 uses

.lr.ph.i.i130.preheader:                          ; preds = %.lr.ph.preheader.i.i129
  %xtraiter1030 = and i64 %.sroa.12375.0.lcssa, 1
  %i.gu = icmp eq i64 %.sroa.12375.0.lcssa, 1
  br i1 %i.gu, label %.lr.ph.i.i130.epil.preheader, label %.lr.ph.i.i130.preheader.new

.lr.ph.i.i130.preheader.new:                      ; preds = %.lr.ph.i.i130.preheader
  %unroll_iter1033 = and i64 %.sroa.12375.0.lcssa, -2
  br label %.lr.ph.i.i130

.lr.ph.i.i130:                                    ; preds = %.lr.ph.i.i130, %.lr.ph.i.i130.preheader.new
  %.010.i.i131 = phi i64 [ 0, %.lr.ph.i.i130.preheader.new ], [ %i.ha, %.lr.ph.i.i130 ] ; 4 uses
  %niter1034 = phi i64 [ 0, %.lr.ph.i.i130.preheader.new ], [ %niter1034.next.1, %.lr.ph.i.i130 ]
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %.010.i.i131
  %i.gw = getelementptr inbounds nuw [24 x i8], ptr %i.gq, i64 %.010.i.i131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gv, ptr noundef nonnull align 8 dereferenceable(24) %i.gw, i64 24, i1 false)
  %i.gx = or disjoint i64 %.010.i.i131, 1         ; 2 uses
  %i.gy = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %i.gx
  %i.gz = getelementptr inbounds nuw [24 x i8], ptr %i.gq, i64 %i.gx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gy, ptr noundef nonnull align 8 dereferenceable(24) %i.gz, i64 24, i1 false)
  %i.ha = add nuw i64 %.010.i.i131, 2             ; 2 uses
  %niter1034.next.1 = add i64 %niter1034, 2       ; 2 uses
  %niter1034.ncmp.1 = icmp eq i64 %niter1034.next.1, %unroll_iter1033
  br i1 %niter1034.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i130, !llvm.loop !599

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i130
  %lcmp.mod1031.not = icmp eq i64 %xtraiter1030, 0
  br i1 %lcmp.mod1031.not, label %.loopexit, label %.lr.ph.i.i130.epil.preheader

.lr.ph.i.i130.epil.preheader:                     ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i130.preheader
  %.010.i.i131.epil.init = phi i64 [ 0, %.lr.ph.i.i130.preheader ], [ %i.ha, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1032 = trunc i64 %.sroa.12375.0.lcssa to i1
  call void @llvm.assume(i1 %lcmp.mod1032)
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %.010.i.i131.epil.init
  %i.hc = getelementptr inbounds nuw [24 x i8], ptr %i.gq, i64 %.010.i.i131.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, ptr noundef nonnull align 8 dereferenceable(24) %i.hc, i64 24, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i130.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.loopexit426.thread
  %i.hd = phi ptr [ null, %.loopexit426.thread ], [ %i.gt, %.loopexit.loopexit.unr-lcssa ], [ %i.gt, %.lr.ph.i.i130.epil.preheader ]
  store ptr %i.hd, ptr %24, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %.sroa.12375.0.lcssa, ptr %i.he, align 8
  %i.hf = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ex, i64 noundef 176)
          to label %.noexc136 unwind label %bb.aq ; 2 uses

.noexc136:                                        ; preds = %.loopexit
  invoke void @_ZN4Luau22AstStatDeclareFunctionC1ERKNS_8LocationERKNS_8AstArrayIPNS_7AstAttrEEERKNS_7AstNameES3_RKNS4_IPNS_14AstGenericTypeEEERKNS4_IPNS_18AstGenericTypePackEEERKNS_11AstTypeListERKNS4_ISt4pairISA_S1_EEEbS3_PNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(176) %i.hf, ptr noundef nonnull align 4 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(16) %i.fa, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(16) %24, i1 noundef zeroext %.0391648, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull %.0385)
          to label %_ZN4Luau9Allocator5allocINS_22AstStatDeclareFunctionEJNS_8LocationERKNS_8AstArrayIPNS_7AstAttrEEERNS_7AstNameERS3_RNS4_IPNS_14AstGenericTypeEEERNS4_IPNS_18AstGenericTypePackEEENS_11AstTypeListENS4_ISt4pairISA_S3_EEERbSC_RPNS_11AstTypePackEEEEPT_DpOT0_.exit unwind label %bb.aq

_ZN4Luau9Allocator5allocINS_22AstStatDeclareFunctionEJNS_8LocationERKNS_8AstArrayIPNS_7AstAttrEEERNS_7AstNameERS3_RNS4_IPNS_14AstGenericTypeEEERNS4_IPNS_18AstGenericTypePackEEENS_11AstTypeListENS4_ISt4pairISA_S3_EEERbSC_RPNS_11AstTypePackEEEEPT_DpOT0_.exit: ; preds = %.noexc136
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #34
  br label %bb.as

bb.ap:                                            ; preds = %.lr.ph.preheader.i.i
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %.noexc136, %.loopexit, %.lr.ph.preheader.i.i129
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #34
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn102 = phi { ptr, i32 } [ %i.hh, %bb.aq ], [ %i.hg, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #34
  br label %bb.at

bb.as:                                            ; preds = %.thread, %_ZN4Luau9Allocator5allocINS_22AstStatDeclareFunctionEJNS_8LocationERKNS_8AstArrayIPNS_7AstAttrEEERNS_7AstNameERS3_RNS4_IPNS_14AstGenericTypeEEERNS4_IPNS_18AstGenericTypePackEEENS_11AstTypeListENS4_ISt4pairISA_S3_EEERbSC_RPNS_11AstTypePackEEEEPT_DpOT0_.exit, %bb.am
  %.166 = phi ptr [ %i.hf, %_ZN4Luau9Allocator5allocINS_22AstStatDeclareFunctionEJNS_8LocationERKNS_8AstArrayIPNS_7AstAttrEEERNS_7AstNameERS3_RNS4_IPNS_14AstGenericTypeEEERNS4_IPNS_18AstGenericTypePackEEENS_11AstTypeListENS4_ISt4pairISA_S3_EEERbSC_RPNS_11AstTypePackEEEEPT_DpOT0_.exit ], [ %i.eu, %bb.am ], [ %i.cl, %.thread ]
  %i.hi = load ptr, ptr %i.br, align 8, !tbaa !600
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 %i.bx ; 2 uses
  %i.hk = load ptr, ptr %i.bs, align 8, !tbaa !600
  %.not.i.i.i = icmp eq ptr %i.hj, %i.hk
  br i1 %.not.i.i.i, label %_ZN4Luau10TempVectorISt4pairINS_7AstNameENS_8LocationEEED2Ev.exit, label %_ZSt8_DestroyIPSt4pairIN4Luau7AstNameENS1_8LocationEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt4pairIN4Luau7AstNameENS1_8LocationEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.as
  store ptr %i.hj, ptr %i.bs, align 8, !tbaa !584
  br label %_ZN4Luau10TempVectorISt4pairINS_7AstNameENS_8LocationEEED2Ev.exit

_ZN4Luau10TempVectorISt4pairINS_7AstNameENS_8LocationEEED2Ev.exit: ; preds = %bb.as, %_ZSt8_DestroyIPSt4pairIN4Luau7AstNameENS1_8LocationEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i
  %i.hl = load ptr, ptr %i.bk, align 8, !tbaa !601
  %i.hm = getelementptr inbounds i8, ptr %i.hl, i64 %i.bq ; 2 uses
  %i.hn = load ptr, ptr %i.bl, align 8, !tbaa !601
  %.not.i.i.i138 = icmp eq ptr %i.hm, %i.hn
  br i1 %.not.i.i.i138, label %_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit, label %_ZSt8_DestroyIPPN4Luau7AstTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPPN4Luau7AstTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZN4Luau10TempVectorISt4pairINS_7AstNameENS_8LocationEEED2Ev.exit
  store ptr %i.hm, ptr %i.bl, align 8, !tbaa !583
  br label %_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit

_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit:     ; preds = %_ZN4Luau10TempVectorISt4pairINS_7AstNameENS_8LocationEEED2Ev.exit, %_ZSt8_DestroyIPPN4Luau7AstTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %i.ho = load ptr, ptr %12, align 8, !tbaa !426, !nonnull !53, !align !374 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !441
  %i.hq = load i64, ptr %i.ag, align 8, !tbaa !408
  %i.hr = getelementptr inbounds [48 x i8], ptr %i.hp, i64 %i.hq ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !441
  %.not.i.i.i139 = icmp eq ptr %i.hr, %i.ht
  br i1 %.not.i.i.i139, label %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit, label %_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit
  store ptr %i.hr, ptr %i.hs, align 8, !tbaa !342
  br label %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit

_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit: ; preds = %_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit, %_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.ez

bb.at:                                            ; preds = %.loopexit427, %.loopexit.split-lp, %bb.x, %bb.ak, %bb.ar, %bb.an
  %.pn104.pn = phi { ptr, i32 } [ %i.ev, %bb.an ], [ %.pn102, %bb.ar ], [ %lpad.phi432, %bb.ak ], [ %i.cm, %bb.x ], [ %lpad.loopexit, %.loopexit427 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.hu = load ptr, ptr %i.br, align 8, !tbaa !600
  %i.hv = getelementptr inbounds i8, ptr %i.hu, i64 %i.bx ; 2 uses
  %i.hw = load ptr, ptr %i.bs, align 8, !tbaa !600
  %.not.i.i.i140 = icmp eq ptr %i.hv, %i.hw
  br i1 %.not.i.i.i140, label %_ZN4Luau10TempVectorISt4pairINS_7AstNameENS_8LocationEEED2Ev.exit142, label %_ZSt8_DestroyIPSt4pairIN4Luau7AstNameENS1_8LocationEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i141

_ZSt8_DestroyIPSt4pairIN4Luau7AstNameENS1_8LocationEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i141: ; preds = %bb.at
  store ptr %i.hv, ptr %i.bs, align 8, !tbaa !584
  br label %_ZN4Luau10TempVectorISt4pairINS_7AstNameENS_8LocationEEED2Ev.exit142

_ZN4Luau10TempVectorISt4pairINS_7AstNameENS_8LocationEEED2Ev.exit142: ; preds = %bb.at, %_ZSt8_DestroyIPSt4pairIN4Luau7AstNameENS1_8LocationEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i141
  %i.hx = load ptr, ptr %i.bk, align 8, !tbaa !601
  %i.hy = getelementptr inbounds i8, ptr %i.hx, i64 %i.bq ; 2 uses
  %i.hz = load ptr, ptr %i.bl, align 8, !tbaa !601
  %.not.i.i.i143 = icmp eq ptr %i.hy, %i.hz
  br i1 %.not.i.i.i143, label %_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit145, label %_ZSt8_DestroyIPPN4Luau7AstTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i.i144

_ZSt8_DestroyIPPN4Luau7AstTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i.i144: ; preds = %_ZN4Luau10TempVectorISt4pairINS_7AstNameENS_8LocationEEED2Ev.exit142
  store ptr %i.hy, ptr %i.bl, align 8, !tbaa !583
  br label %_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit145

_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit145:  ; preds = %bb.m, %bb.n, %_ZSt8_DestroyIPPN4Luau7AstTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i.i144, %_ZN4Luau10TempVectorISt4pairINS_7AstNameENS_8LocationEEED2Ev.exit142, %bb.t, %bb.s
  %.pn104.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn104.pn, %_ZSt8_DestroyIPPN4Luau7AstTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i.i144 ], [ %i.ar, %bb.n ], [ %i.aq, %bb.m ], [ %i.bi, %bb.s ], [ %i.bj, %bb.t ], [ %.pn104.pn, %_ZN4Luau10TempVectorISt4pairINS_7AstNameENS_8LocationEEED2Ev.exit142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %i.ia = load ptr, ptr %12, align 8, !tbaa !426, !nonnull !53, !align !374 ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !441
  %i.ic = load i64, ptr %i.ag, align 8, !tbaa !408
  %i.id = getelementptr inbounds [48 x i8], ptr %i.ib, i64 %i.ic ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !441
  %.not.i.i.i146 = icmp eq ptr %i.id, %i.if
  br i1 %.not.i.i.i146, label %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit148, label %_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i147

_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i147: ; preds = %_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit145
  store ptr %i.id, ptr %i.ie, align 8, !tbaa !342
  br label %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit148

_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit148: ; preds = %_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit145, %_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.fa

bb.au:                                            ; preds = %bb.f
  %i.ig = load i8, ptr @_ZN5FFlag40LuauDisallowExternClassInTypeDefinitionsE, align 8, !tbaa !385, !range !52, !noundef !53
  %i.ih = trunc nuw i8 %i.ig to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #34
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 9 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !22 ; 7 uses
  %.not.i149 = icmp eq ptr %i.ij, null            ; 2 uses
  br i1 %i.ih, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  br i1 %.not.i149, label %_ZNK4Luau7AstNameeqEPKc.exit.thread, label %.split

.split:                                           ; preds = %bb.av
  %i.ik = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ij, ptr noundef nonnull dereferenceable(7) @.str.226) #40
  %i.il = icmp eq i32 %i.ik, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #34
  br i1 %i.il, label %_ZNK4Luau7AstNameeqEPKc.exit155, label %bb.es

bb.aw:                                            ; preds = %bb.au
  br i1 %.not.i149, label %_ZNK4Luau7AstNameeqEPKc.exit.thread, label %_ZNK4Luau7AstNameeqEPKc.exit151

_ZNK4Luau7AstNameeqEPKc.exit151:                  ; preds = %bb.aw
  %i.im = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ij, ptr noundef nonnull dereferenceable(6) @.str.153) #40
  %i.in = icmp eq i32 %i.im, 0
  br i1 %i.in, label %bb.ax, label %_ZNK4Luau7AstNameeqEPKc.exit

bb.ax:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit151
  %i.io = load i8, ptr @_ZN5FFlag41LuauAllowGlobalDeclarationToBeCalledClassE, align 8, !tbaa !385, !range !52, !noundef !53
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %bb.ay, label %.thread652

.thread652:                                       ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #34
  br label %_ZNK4Luau7AstNameeqEPKc.exit155

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN4Luau5Lexer9lookaheadEv(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Lexeme") align 8 %25, ptr noundef nonnull align 8 dereferenceable(120) %i.r)
  %i.iq = load i32, ptr %25, align 8, !tbaa !110
  %.not75 = icmp eq i32 %i.iq, 58
  %.pre582.pre = load ptr, ptr %i.ii, align 8, !tbaa !22 ; 4 uses
  br i1 %.not75, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %.not.i152 = icmp eq ptr %.pre582.pre, null
  br i1 %.not.i152, label %_ZNK4Luau7AstNameeqEPKc.exit.thread, label %_ZNK4Luau7AstNameeqEPKc.exit

_ZNK4Luau7AstNameeqEPKc.exit.thread:              ; preds = %bb.av, %bb.az, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #34
  br label %bb.es

_ZNK4Luau7AstNameeqEPKc.exit:                     ; preds = %_ZNK4Luau7AstNameeqEPKc.exit151, %bb.az
  %i.ir = phi ptr [ %.pre582.pre, %bb.az ], [ %i.ij, %_ZNK4Luau7AstNameeqEPKc.exit151 ] ; 3 uses
  %i.is = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ir, ptr noundef nonnull dereferenceable(7) @.str.226) #40
  %i.it = icmp eq i32 %i.is, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #34
  br i1 %i.it, label %_ZNK4Luau7AstNameeqEPKc.exit155, label %bb.es

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #34
  %.not.i154 = icmp eq ptr %.pre582.pre, null
  br i1 %.not.i154, label %_ZNK4Luau7AstNameeqEPKc.exit155.thread, label %_ZNK4Luau7AstNameeqEPKc.exit155

_ZNK4Luau7AstNameeqEPKc.exit155:                  ; preds = %_ZNK4Luau7AstNameeqEPKc.exit, %.split, %.thread652, %bb.ba
  %i.iu = phi ptr [ %i.ij, %.thread652 ], [ %.pre582.pre, %bb.ba ], [ %i.ir, %_ZNK4Luau7AstNameeqEPKc.exit ], [ %i.ij, %.split ]
  %i.iv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.iu, ptr noundef nonnull dereferenceable(7) @.str.226) #40
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %bb.bb, label %_ZNK4Luau7AstNameeqEPKc.exit155.thread

bb.bb:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit155
  %i.ix = load i8, ptr @_ZN5FFlag40LuauDisallowExternClassInTypeDefinitionsE, align 8, !tbaa !385, !range !52, !noundef !53
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.iy = load ptr, ptr %i.ii, align 8, !tbaa !22 ; 3 uses
  %.not.i156 = icmp eq ptr %i.iy, null
  br i1 %.not.i156, label %_ZNK4Luau7AstNameneEPKc.exit.thread, label %_ZNK4Luau7AstNameneEPKc.exit

_ZNK4Luau7AstNameneEPKc.exit:                     ; preds = %bb.bb
  %i.iz = trunc nuw i8 %i.ix to i1
  %.038 = xor i1 %i.iz, true
  %i.ja = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.iy, ptr noundef nonnull dereferenceable(5) @.str.152) #40
  %.not = icmp eq i32 %i.ja, 0
  br i1 %.not, label %_ZNK4Luau7AstNameeqEPKc.exit155.thread, label %_ZNK4Luau7AstNameneEPKc.exit.thread

_ZNK4Luau7AstNameneEPKc.exit.thread:              ; preds = %bb.bb, %_ZNK4Luau7AstNameneEPKc.exit
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 132
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  %i.jc = call noundef ptr (ptr, ptr, ptr, ptr, ptr, ...) @_ZN4Luau6Parser15reportStatErrorERKNS_8LocationERKNS_8AstArrayIPNS_7AstExprEEERKNS4_IPNS_7AstStatEEEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.jb, ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull @.str.227, ptr noundef %i.iy)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #34
  br label %bb.ez

_ZNK4Luau7AstNameeqEPKc.exit155.thread:           ; preds = %bb.ba, %_ZNK4Luau7AstNameneEPKc.exit, %_ZNK4Luau7AstNameeqEPKc.exit155
  %.1 = phi i1 [ %.038, %_ZNK4Luau7AstNameneEPKc.exit ], [ false, %_ZNK4Luau7AstNameeqEPKc.exit155 ], [ false, %bb.ba ]
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 11 uses
  %.sroa.0348.0.copyload = load i64, ptr %i.jd, align 4
  %.sroa.5349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !602)
  %i.je = load i32, ptr %.phi.trans.insert, align 8, !tbaa !110, !noalias !605
  %.not.i.i157 = icmp eq i32 %i.je, 281
  br i1 %.not.i.i157, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit155.thread
  %i.jf = load ptr, ptr %i.ii, align 8, !tbaa !22, !noalias !605
  %i.jg = ptrtoint ptr %i.jf to i64
  %.sroa.4.0..sroa_idx.i161 = getelementptr inbounds nuw i8, ptr %28, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i161, ptr noundef nonnull align 4 dereferenceable(16) %i.jd, i64 16, i1 false)
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0), !noalias !605
  br label %_ZN4Luau6Parser9parseNameEPKc.exit162

bb.bd:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit155.thread
  call void @_ZN4Luau6Parser15reportNameErrorEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull @.str.181), !noalias !605
  %.sroa.0.0.copyload.i158 = load i64, ptr %i.jd, align 4, !noalias !602 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !45, !noalias !602
  %i.jj = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 %.sroa.0.0.copyload.i158, ptr %i.jj, align 8, !alias.scope !602
  %.sroa.5.0..sroa_idx3.i159 = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i64 %.sroa.0.0.copyload.i158, ptr %.sroa.5.0..sroa_idx3.i159, align 8, !alias.scope !602
  br label %_ZN4Luau6Parser9parseNameEPKc.exit162

_ZN4Luau6Parser9parseNameEPKc.exit162:            ; preds = %bb.bc, %bb.bd
  %.sink.i160 = phi i64 [ %i.jg, %bb.bc ], [ %i.ji, %bb.bd ]
  store i64 %.sink.i160, ptr %28, align 8, !tbaa !45, !alias.scope !602
  %i.jk = load ptr, ptr %i.ii, align 8, !tbaa !22 ; 2 uses
  %.not.i163 = icmp eq ptr %i.jk, null
  br i1 %.not.i163, label %_ZNK4Luau7AstNameeqEPKc.exit164.thread, label %_ZNK4Luau7AstNameeqEPKc.exit164

_ZNK4Luau7AstNameeqEPKc.exit164:                  ; preds = %_ZN4Luau6Parser9parseNameEPKc.exit162
  %i.jl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jk, ptr noundef nonnull dereferenceable(8) @.str.206) #40
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %bb.be, label %_ZNK4Luau7AstNameeqEPKc.exit164.thread

bb.be:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit164
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.jn = load i32, ptr %.phi.trans.insert, align 8, !tbaa !110, !noalias !608
  %.not.i.i165 = icmp eq i32 %i.jn, 281
  br i1 %.not.i.i165, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.jo = load ptr, ptr %i.ii, align 8, !tbaa !22, !noalias !608
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0), !noalias !608
  br label %_ZNK4Luau7AstNameeqEPKc.exit164.thread

bb.bg:                                            ; preds = %bb.be
  call void @_ZN4Luau6Parser15reportNameErrorEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull @.str.228), !noalias !608
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !45, !noalias !613
  %i.jr = inttoptr i64 %i.jq to ptr
  br label %_ZNK4Luau7AstNameeqEPKc.exit164.thread

_ZNK4Luau7AstNameeqEPKc.exit164.thread:           ; preds = %bb.bg, %bb.bf, %_ZN4Luau6Parser9parseNameEPKc.exit162, %_ZNK4Luau7AstNameeqEPKc.exit164
  %.sroa.5345.0 = phi i8 [ 0, %_ZN4Luau6Parser9parseNameEPKc.exit162 ], [ 0, %_ZNK4Luau7AstNameeqEPKc.exit164 ], [ 1, %bb.bf ], [ 1, %bb.bg ]
  %.sroa.0344.0 = phi ptr [ undef, %_ZN4Luau6Parser9parseNameEPKc.exit162 ], [ undef, %_ZNK4Luau7AstNameeqEPKc.exit164 ], [ %i.jo, %bb.bf ], [ %i.jr, %bb.bg ]
  %i.js = load i8, ptr @_ZN5FFlag40LuauDisallowExternClassInTypeDefinitionsE, align 8, !tbaa !385, !range !52, !noundef !53
  %i.jt = trunc nuw i8 %i.js to i1
  %or.cond4 = or i1 %.1, %i.jt
  br i1 %or.cond4, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit164.thread
  %i.ju = load ptr, ptr %i.ii, align 8, !tbaa !22 ; 3 uses
  %.not.i171 = icmp eq ptr %i.ju, null
  br i1 %.not.i171, label %_ZNK4Luau7AstNameneEPKc.exit172.thread, label %_ZNK4Luau7AstNameneEPKc.exit172

_ZNK4Luau7AstNameneEPKc.exit172:                  ; preds = %bb.bh
  %i.jv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ju, ptr noundef nonnull dereferenceable(5) @.str.229) #40
  %.not424 = icmp eq i32 %i.jv, 0
  br i1 %.not424, label %bb.bi, label %_ZNK4Luau7AstNameneEPKc.exit172.thread

_ZNK4Luau7AstNameneEPKc.exit172.thread:           ; preds = %bb.bh, %_ZNK4Luau7AstNameneEPKc.exit172
  call void (ptr, ptr, ptr, ...) @_ZN4Luau6Parser6reportERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.jd, ptr noundef nonnull @.str.230, ptr noundef %i.ju)
  br label %bb.bj

bb.bi:                                            ; preds = %_ZNK4Luau7AstNameneEPKc.exit172
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %bb.bj
end_hunk_2
begin_hunk_3_@_ZN4Luau6Parser17validateAttributeENS_8LocationEPKcRKNS_10TempVectorIPNS_7AstAttrEEERKNS_8AstArrayIPNS_7AstExprEEE:bb.a

bb.v:                                             ; preds = %.lr.ph92
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #34
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.v ], [ %i.bi, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.ab

bb.x:                                             ; preds = %._crit_edge, %_ZNSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit, %bb.i, %bb.k
  %.sroa.464.174 = phi i64 [ 4294967296, %._crit_edge ], [ 4294967296, %_ZNSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit ], [ 0, %bb.i ], [ 0, %bb.k ]
  %.sroa.061.173 = phi i32 [ %.sroa.061.172, %._crit_edge ], [ %.sroa.061.172, %_ZNSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit ], [ %.sroa.061.0, %bb.i ], [ %.sroa.061.0, %bb.k ]
  %i.bn = load i8, ptr %i.b, align 8, !tbaa !49, !range !52, !noundef !53
  %i.bo = trunc nuw i8 %i.bn to i1
  store i8 0, ptr %i.b, align 8, !tbaa !49
  br i1 %i.bo, label %bb.y, label %_ZNSt14_Optional_baseISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEELb0ELb0EED2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !54 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt14_Optional_baseISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEELb0ELb0EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.br = invoke noundef zeroext i1 %i.bq(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 3)
          to label %_ZNSt14_Optional_baseISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEELb0ELb0EED2Ev.exit unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #38
  unreachable

_ZNSt14_Optional_baseISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEELb0ELb0EED2Ev.exit: ; preds = %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %.sroa.061.0.insert.ext = zext i32 %.sroa.061.173 to i64
  %.sroa.061.0.insert.insert = or disjoint i64 %.sroa.464.174, %.sroa.061.0.insert.ext
  ret i64 %.sroa.061.0.insert.insert

bb.ab:                                            ; preds = %bb.w, %bb.m, %bb.j, %bb.g, %bb.d
  %.pn42 = phi { ptr, i32 } [ %i.al, %bb.m ], [ %.pn, %bb.w ], [ %i.w, %bb.j ], [ %i.u, %bb.g ], [ %i.m, %bb.d ]
  call void @_ZNSt14_Optional_baseISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  resume { ptr, i32 } %.pn42
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau6Parser6reportERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2, ...) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @_ZN4Luau6Parser6reportERKNS_8LocationEPKcP13__va_list_tag(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !49, !range !52, !noundef !53
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !49
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt17_Optional_payloadISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEELb0ELb0ELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef 3)
          to label %_ZNSt17_Optional_payloadISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEELb0ELb0ELb0EED2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #38
  unreachable

_ZNSt17_Optional_payloadISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau6Parser13parseAttrListERNS_10TempVectorIPNS_7AstAttrEEEPNS1_IPNS_11CstAttrListEEE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::AstArray", align 8   ; 9 uses
  %4 = alloca %"struct.Luau::Location", align 8   ; 9 uses
  %5 = alloca %"class.Luau::TempVector.198", align 8 ; 10 uses
  %6 = alloca %"struct.Luau::Position", align 8   ; 6 uses
  %7 = alloca %"class.std::tuple.211", align 8    ; 8 uses
  %8 = alloca %"struct.Luau::Location", align 8   ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %"struct.Luau::Location", align 8   ; 6 uses
  %10 = alloca %"struct.Luau::Location", align 8  ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %11 = alloca %"struct.Luau::Parser::MatchLexeme", align 4 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %.sroa.0222.0.copyload = load i32, ptr %i.d, align 8, !tbaa !229
  %.sroa.5223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 6 uses
  %.sroa.5223.0.copyload = load i64, ptr %.sroa.5223.0..sroa_idx, align 4 ; 4 uses
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 9 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !422
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !119
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = load i32, ptr %i.d, align 8, !tbaa !110  ; 2 uses
  %.not = icmp eq i32 %i.l, 93
  br i1 %.not, label %bb.bd, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.8.8..sroa_idx212 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.sroa.2.0..sroa_idx.i108 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.bb
  %i.ac = phi i32 [ %.pre, %bb.bb ], [ %i.l, %.preheader ]
  %.sroa.12.0 = phi i64 [ %.sroa.12.1, %bb.bb ], [ 0, %.preheader ] ; 3 uses
  %.not.i.i = icmp eq i32 %i.ac, 281
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !22, !noalias !753
  %.sroa.5.8.copyload211 = load i64, ptr %.sroa.5223.0..sroa_idx, align 4
  %.sroa.8.8.copyload213 = load i64, ptr %.sroa.8.8..sroa_idx212, align 4
  invoke void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
          to label %._crit_edge290 unwind label %bb.h

._crit_edge290:                                   ; preds = %bb.c
  %.pre291 = load i64, ptr %.sroa.5223.0..sroa_idx, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke void @_ZN4Luau6Parser15reportNameErrorEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull @.str.173)
          to label %.noexc87 unwind label %bb.h

.noexc87:                                         ; preds = %bb.d
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.5223.0..sroa_idx, align 4, !noalias !758 ; 3 uses
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !45, !noalias !758
  %i.af = inttoptr i64 %i.ae to ptr
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge290, %.noexc87
  %i.ag = phi i64 [ %.sroa.0.0.copyload.i, %.noexc87 ], [ %.pre291, %._crit_edge290 ]
  %.sroa.8.0 = phi i64 [ %.sroa.0.0.copyload.i, %.noexc87 ], [ %.sroa.8.8.copyload213, %._crit_edge290 ] ; 2 uses
  %.sroa.5.0 = phi i64 [ %.sroa.0.0.copyload.i, %.noexc87 ], [ %.sroa.5.8.copyload211, %._crit_edge290 ] ; 2 uses
  %.sink.i = phi ptr [ %i.af, %.noexc87 ], [ %i.ad, %._crit_edge290 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store i64 %.sroa.5.0, ptr %4, align 8
  store i64 %.sroa.8.0, ptr %.sroa.8.8..sroa_idx, align 8
  %.sroa.028.0.copyload = load i32, ptr %i.d, align 8, !tbaa !229
  switch i32 %.sroa.028.0.copyload, label %bb.ae [
    i32 40, label %.invoke
    i32 123, label %bb.f
    i32 278, label %bb.f
    i32 279, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e
  br label %.invoke

.invoke:                                          ; preds = %bb.e, %bb.f
  %storemerge = phi i64 [ %i.ag, %bb.e ], [ -1, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  store ptr %i.o, ptr %5, align 8, !tbaa !420
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !422
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !119
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  store i64 %i.am, ptr %i.p, align 8, !tbaa !423
  store i64 0, ptr %i.r, align 8, !tbaa !425
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i64 -1, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.an = load i8, ptr %i.s, align 8, !tbaa !393, !range !52, !noundef !53
  %i.ao = trunc nuw i8 %i.an to i1                ; 2 uses
  %. = select i1 %i.ao, ptr %5, ptr null
  %.339 = select i1 %i.ao, ptr %6, ptr null
  invoke void @_ZN4Luau6Parser13parseCallListEPNS_10TempVectorINS_8PositionEEEPS2_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.211") align 8 %7, ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef %., ptr noundef %.339)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %.invoke
  %i.ap = load ptr, ptr %i.t, align 8, !tbaa !29  ; 2 uses
  %i.aq = load i64, ptr %i.v, align 8, !tbaa !10  ; 2 uses
  %.idx = shl nuw nsw i64 %i.aq, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx
  %.not69271 = icmp eq i64 %i.aq, 0
  br i1 %.not69271, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.o, %bb.g
  %.sroa.08.0.copyload = load i64, ptr %4, align 8
  %.sroa.29.0.copyload = load i64, ptr %.sroa.8.8..sroa_idx, align 8
  %i.as = invoke i64 @_ZN4Luau6Parser17validateAttributeENS_8LocationEPKcRKNS_10TempVectorIPNS_7AstAttrEEERKNS_8AstArrayIPNS_7AstExprEEE(ptr noundef nonnull align 8 dereferenceable(1232) %0, i64 %.sroa.08.0.copyload, i64 %.sroa.29.0.copyload, ptr noundef %.sink.i, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %bb.p unwind label %bb.s       ; 2 uses

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.i:                                             ; preds = %.invoke
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.lr.ph:                                           ; preds = %bb.g, %bb.o
  %.060272 = phi ptr [ %i.az, %bb.o ], [ %i.ap, %bb.g ] ; 2 uses
  %i.av = load ptr, ptr %.060272, align 8, !tbaa !30 ; 2 uses
  %i.aw = invoke noundef zeroext i1 @_ZN4Luau17isConstantLiteralEPKNS_7AstExprE(ptr noundef %i.av)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %.lr.ph
  br i1 %i.aw, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = invoke noundef zeroext i1 @_ZN4Luau14isLiteralTableEPKNS_7AstExprE(ptr noundef %i.av)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  br i1 %i.ax, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void (ptr, ptr, ptr, ...) @_ZN4Luau6Parser6reportERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.u, ptr noundef nonnull @.str.174)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k, %.lr.ph
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %.060272, i64 8 ; 2 uses
  %.not69 = icmp eq ptr %i.az, %i.ar
  br i1 %.not69, label %._crit_edge, label %.lr.ph

bb.p:                                             ; preds = %._crit_edge
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !373, !nonnull !53, !align !374
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.bb = load i64, ptr %4, align 8
  store i64 %i.bb, ptr %8, align 8
  %i.bc = load i64, ptr %i.y, align 8
  store i64 %i.bc, ptr %i.x, align 8
  %i.bd = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 noundef 56)
          to label %.noexc89 unwind label %bb.t   ; 4 uses

.noexc89:                                         ; preds = %bb.p
  %.not232 = icmp samesign ult i64 %i.as, 4294967296
  %.sroa.0204.0.extract.trunc = trunc i64 %i.as to i32
  %.0.i = select i1 %.not232, i32 4, i32 %.sroa.0204.0.extract.trunc
  %.sroa.01.0.copyload.i = load ptr, ptr %i.t, align 8, !tbaa !440
  %.sroa.2.0.copyload.i = load i64, ptr %i.v, align 8, !tbaa !19
  invoke void @_ZN4Luau7AstAttrC1ERKNS_8LocationENS0_4TypeENS_8AstArrayIPNS_7AstExprEEENS_7AstNameE(ptr noundef nonnull align 8 dereferenceable(56) %i.bd, ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %.0.i, ptr %.sroa.01.0.copyload.i, i64 %.sroa.2.0.copyload.i, ptr %.sink.i)
          to label %_ZN4Luau9Allocator5allocINS_7AstAttrEJNS_8LocationENS2_4TypeERNS_8AstArrayIPNS_7AstExprEEENS_7AstNameEEEEPT_DpOT0_.exit unwind label %bb.t

_ZN4Luau9Allocator5allocINS_7AstAttrEJNS_8LocationENS2_4TypeERNS_8AstArrayIPNS_7AstExprEEENS_7AstNameEEEEPT_DpOT0_.exit: ; preds = %.noexc89
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.be = load i8, ptr %i.s, align 8, !tbaa !393, !range !52, !noundef !53
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.q, label %bb.w

bb.q:                                             ; preds = %_ZN4Luau9Allocator5allocINS_7AstAttrEJNS_8LocationENS2_4TypeERNS_8AstArrayIPNS_7AstExprEEENS_7AstNameEEEEPT_DpOT0_.exit
  %i.bg = load ptr, ptr %i.w, align 8, !tbaa !373, !nonnull !53, !align !374 ; 2 uses
  %i.bh = load i64, ptr %i.r, align 8, !tbaa !425 ; 9 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %.loopexit234, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.q
  %i.bj = load ptr, ptr %5, align 8, !tbaa !435, !nonnull !53, !align !374
  %i.bk = load i64, ptr %i.p, align 8, !tbaa !423 ; 2 uses
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !119 ; 2 uses
  %i.bm = ptrtoaddr ptr %i.bl to i64
  %i.bn = getelementptr [8 x i8], ptr %i.bl, i64 %i.bk ; 6 uses
  %i.bo = shl i64 %i.bh, 3
  %i.bp = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 noundef %i.bo)
          to label %.lr.ph.i.i.preheader unwind label %bb.u ; 10 uses

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i
  %min.iters.check366 = icmp ult i64 %i.bh, 6
  br i1 %min.iters.check366, label %.lr.ph.i.i.preheader393, label %vector.memcheck363

vector.memcheck363:                               ; preds = %.lr.ph.i.i.preheader
  %i.bq = ptrtoaddr ptr %i.bp to i64
  %i.br = shl i64 %i.bk, 3
  %i.bs = add i64 %i.br, %i.bm
  %i.bt = sub i64 %i.bs, %i.bq
  %diff.check364 = icmp ugt i64 %i.bt, -32
  br i1 %diff.check364, label %.lr.ph.i.i.preheader393, label %vector.ph367

vector.ph367:                                     ; preds = %vector.memcheck363
  %n.vec368 = and i64 %i.bh, -4                   ; 3 uses
  br label %vector.body369

vector.body369:                                   ; preds = %vector.body369, %vector.ph367
  %index370 = phi i64 [ 0, %vector.ph367 ], [ %index.next373, %vector.body369 ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %index370 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %index370 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %wide.load371 = load <2 x i64>, ptr %i.bv, align 4
  %wide.load372 = load <2 x i64>, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <2 x i64> %wide.load371, ptr %i.bu, align 4
  store <2 x i64> %wide.load372, ptr %i.bx, align 4
  %index.next373 = add nuw i64 %index370, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next373, %n.vec368
  br i1 %i.by, label %middle.block374, label %vector.body369, !llvm.loop !759

middle.block374:                                  ; preds = %vector.body369
  %cmp.n375 = icmp eq i64 %i.bh, %n.vec368
  br i1 %cmp.n375, label %.loopexit234, label %.lr.ph.i.i.preheader393

.lr.ph.i.i.preheader393:                          ; preds = %vector.memcheck363, %.lr.ph.i.i.preheader, %middle.block374
  %.010.i.i.ph = phi i64 [ 0, %vector.memcheck363 ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec368, %middle.block374 ] ; 3 uses
  %xtraiter = and i64 %i.bh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader393, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi i64 [ %i.cc, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader393 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader393 ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.010.i.i.prol
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.010.i.i.prol
  %i.cb = load i64, ptr %i.ca, align 4
  store i64 %i.cb, ptr %i.bz, align 4
  %i.cc = add nuw i64 %.010.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !760

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader393
  %.010.i.i.unr = phi i64 [ %.010.i.i.ph, %.lr.ph.i.i.preheader393 ], [ %i.cc, %.lr.ph.i.i.prol ]
  %i.cd = sub i64 %.010.i.i.ph, %i.bh
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %.loopexit234, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.cu, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.010.i.i
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.010.i.i
  %i.ch = load i64, ptr %i.cg, align 4
  store i64 %i.ch, ptr %i.cf, align 4
  %i.ci = add nuw i64 %.010.i.i, 1                ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.ci
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.ci
  %i.cl = load i64, ptr %i.ck, align 4
  store i64 %i.cl, ptr %i.cj, align 4
  %i.cm = add nuw i64 %.010.i.i, 2                ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.cm
  %i.cp = load i64, ptr %i.co, align 4
  store i64 %i.cp, ptr %i.cn, align 4
  %i.cq = add nuw i64 %.010.i.i, 3                ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.cq
  %i.ct = load i64, ptr %i.cs, align 4
  store i64 %i.ct, ptr %i.cr, align 4
  %i.cu = add nuw i64 %.010.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cu, %i.bh
  br i1 %exitcond.not.i.i.3, label %.loopexit234, label %.lr.ph.i.i, !llvm.loop !761

.loopexit234:                                     ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block374, %bb.q
  %i.cv = phi ptr [ null, %bb.q ], [ %i.bp, %middle.block374 ], [ %i.bp, %.lr.ph.i.i ], [ %i.bp, %.lr.ph.i.i.prol.loopexit ]
end_hunk_3
begin_hunk_4_@_ZN4Luau6Parser17parseFunctionBodyEbRKNS_6LexemeERKNS_7AstNameEPKNS0_4NameERKNS_8AstArrayIPNS_7AstAttrEEEbPNS_10TempVectorIPNS_11CstAttrListEEE:bb.a
  br i1 %i.he, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN4Luau6Parser10parseBlockEv.exit
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %bb.aq

._crit_edge.loopexit.i:                           ; preds = %.noexc75
  %.pre.i = load ptr, ptr %i.du, align 8, !tbaa !98 ; 2 uses
  %.pre9.i = load ptr, ptr %i.dt, align 8, !tbaa !101 ; 2 uses
  %.pre10.i = ptrtoint ptr %.pre.i to i64
  %.pre11.i = ptrtoint ptr %.pre9.i to i64
  %.pre13.i = sub i64 %.pre10.i, %.pre11.i
  %.pre15.i = ashr exact i64 %.pre13.i, 3
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZN4Luau6Parser10parseBlockEv.exit
  %.pre-phi16.i = phi i64 [ %.pre15.i, %._crit_edge.loopexit.i ], [ %i.hc, %_ZN4Luau6Parser10parseBlockEv.exit ] ; 3 uses
  %i.hg = phi ptr [ %.pre9.i, %._crit_edge.loopexit.i ], [ %i.gv, %_ZN4Luau6Parser10parseBlockEv.exit ]
  %i.hh = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.gw, %_ZN4Luau6Parser10parseBlockEv.exit ]
  %i.hi = icmp ult i64 %.pre-phi16.i, %i.hd
  br i1 %i.hi, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %._crit_edge.i
  %i.hj = sub nuw nsw i64 %i.hd, %.pre-phi16.i
  invoke void @_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i64 noundef %i.hj)
          to label %_ZN4Luau6Parser13restoreLocalsEj.exit unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %._crit_edge.i
  %i.hk = icmp ugt i64 %.pre-phi16.i, %i.hd
  br i1 %i.hk, label %bb.ap, label %_ZN4Luau6Parser13restoreLocalsEj.exit

bb.ap:                                            ; preds = %bb.ao
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.hd ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.hh, %i.hl
  br i1 %.not.i.i.i73, label %_ZN4Luau6Parser13restoreLocalsEj.exit, label %_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.ap
  store ptr %i.hl, ptr %i.du, align 8, !tbaa !98
  br label %_ZN4Luau6Parser13restoreLocalsEj.exit

bb.aq:                                            ; preds = %.noexc75, %.lr.ph.i
  %.08.i = phi i64 [ %i.hc, %.lr.ph.i ], [ %i.hm, %.noexc75 ]
  %i.hm = add i64 %.08.i, -1                      ; 3 uses
  %i.hn = load ptr, ptr %i.dt, align 8, !tbaa !101
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.hm
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !103 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !105
  %i.hs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEixERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.hf, ptr noundef nonnull align 8 dereferenceable(8) %i.hp)
          to label %.noexc75 unwind label %.loopexit

.noexc75:                                         ; preds = %bb.aq
  store ptr %i.hr, ptr %i.hs, align 8, !tbaa !103
  %i.ht = icmp ugt i64 %i.hm, %i.hd
  br i1 %i.ht, label %bb.aq, label %._crit_edge.loopexit.i, !llvm.loop !109

_ZN4Luau6Parser13restoreLocalsEj.exit:            ; preds = %_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i, %bb.ap, %bb.ao, %bb.an
  %.sroa.4.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx83, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #34
  %i.hu = load i32, ptr %2, align 8, !tbaa !110
  store i32 %i.hu, ptr %18, align 4, !tbaa !327
  %i.hv = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.hw = load i64, ptr %i.b, align 4
  store i64 %i.hw, ptr %i.hv, align 4
  %i.hx = invoke noundef zeroext i1 @_ZN4Luau6Parser24expectMatchEndAndConsumeENS_6Lexeme4TypeERKNS0_11MatchLexemeE(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 296, ptr noundef nonnull align 4 dereferenceable(12) %18)
          to label %bb.ar unwind label %bb.ax

bb.ar:                                            ; preds = %_ZN4Luau6Parser13restoreLocalsEj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  %i.hy = zext i1 %i.hx to i8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ft, i64 48
  store i8 %i.hy, ptr %i.hz, align 8, !tbaa !400
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !373, !nonnull !53, !align !374
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #34
  %i.ic = load i64, ptr %8, align 8
  store i64 %i.ic, ptr %19, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %.sroa.4.0.copyload, ptr %i.id, align 8
  %i.ie = load ptr, ptr %i.ec, align 8, !tbaa !329
  %i.if = load ptr, ptr %i.eb, align 8, !tbaa !214
  %i.ig = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ib, i64 noundef 192)
          to label %.noexc76 unwind label %bb.ay  ; 3 uses

.noexc76:                                         ; preds = %bb.ar
  %i.ih = ptrtoint ptr %i.ie to i64
  %i.ii = ptrtoint ptr %i.if to i64
  %i.ij = sub i64 %i.ih, %i.ii
  %i.ik = ashr exact i64 %i.ij, 3
  %i.il = load ptr, ptr %17, align 8, !tbaa !103
  %i.im = trunc nuw i8 %.0116169 to i1
  invoke void @_ZN4Luau15AstExprFunctionC1ERKNS_8LocationERKNS_8AstArrayIPNS_7AstAttrEEERKNS4_IPNS_14AstGenericTypeEEERKNS4_IPNS_18AstGenericTypePackEEEPNS_8AstLocalERKNS4_ISL_EEbS3_PNS_12AstStatBlockEmRKNS_7AstNameEPNS_11AstTypePackESV_RKSt8optionalIS1_E(ptr noundef nonnull align 8 dereferenceable(188) %i.ig, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef %i.il, ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i1 noundef zeroext %i.im, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull %i.ft, i64 noundef %i.ik, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %.0.i, ptr noundef %.0117164, ptr noundef nonnull align 4 dereferenceable(20) %15)
          to label %_ZN4Luau9Allocator5allocINS_15AstExprFunctionEJNS_8LocationERKNS_8AstArrayIPNS_7AstAttrEEERNS4_IPNS_14AstGenericTypeEEERNS4_IPNS_18AstGenericTypePackEEERPNS_8AstLocalERNS4_ISJ_EERbRS3_RPNS_12AstStatBlockEmRKNS_7AstNameERPNS_11AstTypePackESX_RSt8optionalIS3_EEEEPT_DpOT0_.exit unwind label %bb.ay

_ZN4Luau9Allocator5allocINS_15AstExprFunctionEJNS_8LocationERKNS_8AstArrayIPNS_7AstAttrEEERNS4_IPNS_14AstGenericTypeEEERNS4_IPNS_18AstGenericTypePackEEERPNS_8AstLocalERNS4_ISJ_EERbRS3_RPNS_12AstStatBlockEmRKNS_7AstNameERPNS_11AstTypePackESX_RSt8optionalIS3_EEEEPT_DpOT0_.exit: ; preds = %.noexc76
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  %i.in = load i8, ptr %i.h, align 8, !tbaa !393, !range !52, !noundef !53
  %i.io = trunc nuw i8 %i.in to i1
  br i1 %i.io, label %bb.as, label %bb.bb

bb.as:                                            ; preds = %_ZN4Luau9Allocator5allocINS_15AstExprFunctionEJNS_8LocationERKNS_8AstArrayIPNS_7AstAttrEEERNS4_IPNS_14AstGenericTypeEEERNS4_IPNS_18AstGenericTypePackEEERPNS_8AstLocalERNS4_ISJ_EERbRS3_RPNS_12AstStatBlockEmRKNS_7AstNameERPNS_11AstTypePackESX_RSt8optionalIS3_EEEEPT_DpOT0_.exit
  %i.ip = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.iq = load i64, ptr %i.b, align 4
  store i64 %i.iq, ptr %i.ip, align 8
  %i.ir = invoke { ptr, i64 } @_ZN4Luau6Parser31extractAnnotationColonPositionsERKNS_10TempVectorINS0_7BindingEEE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.at unwind label %bb.az     ; 2 uses

bb.at:                                            ; preds = %bb.as
  %i.is = extractvalue { ptr, i64 } %i.ir, 0
  %i.it = extractvalue { ptr, i64 } %i.ir, 1
  %i.iu = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  store ptr %i.is, ptr %i.iu, align 8, !tbaa !439
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  store i64 %i.it, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store ptr %i.ig, ptr %i.a, align 8, !tbaa !394
  %i.iw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.iv, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.au unwind label %bb.ba

bb.au:                                            ; preds = %bb.at
  store ptr %i.bj, ptr %i.iw, align 8, !tbaa !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.bb

bb.av:                                            ; preds = %_ZNKSt6vectorIN4Luau6Parser8FunctionESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.ag
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.aw:                                            ; preds = %_ZNSt6vectorIN4Luau6Parser8FunctionESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.aq
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.am
  %lpad.loopexit122 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.an, %bb.aj, %bb.ai
  %lpad.loopexit.split-lp123 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ax:                                            ; preds = %_ZN4Luau6Parser13restoreLocalsEj.exit
  %i.iz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %.loopexit.split-lp

bb.ay:                                            ; preds = %.noexc76, %bb.ar
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  br label %.loopexit.split-lp

bb.az:                                            ; preds = %bb.as
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ba:                                            ; preds = %bb.at
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %.loopexit.split-lp

bb.bb:                                            ; preds = %bb.au, %_ZN4Luau9Allocator5allocINS_15AstExprFunctionEJNS_8LocationERKNS_8AstArrayIPNS_7AstAttrEEERNS4_IPNS_14AstGenericTypeEEERNS4_IPNS_18AstGenericTypePackEEERPNS_8AstLocalERNS4_ISJ_EERbRS3_RPNS_12AstStatBlockEmRKNS_7AstNameERPNS_11AstTypePackESX_RSt8optionalIS3_EEEEPT_DpOT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.jd = load ptr, ptr %11, align 8, !tbaa !426, !nonnull !53, !align !374 ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !441
  %i.jf = load i64, ptr %i.bx, align 8, !tbaa !408
  %i.jg = getelementptr inbounds [48 x i8], ptr %i.je, i64 %i.jf ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !441
  %.not.i.i.i78 = icmp eq ptr %i.jg, %i.ji
  br i1 %.not.i.i.i78, label %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit, label %_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.bb
  store ptr %i.jg, ptr %i.jh, align 8, !tbaa !342
  br label %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit

_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit: ; preds = %bb.bb, %_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.ig, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.0, 1
  ret { ptr, ptr } %.fca.1.insert

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ay, %bb.az, %bb.ba, %bb.ax, %bb.aw
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.iy, %bb.aw ], [ %i.ja, %bb.ay ], [ %i.iz, %bb.ax ], [ %i.jc, %bb.ba ], [ %i.jb, %bb.az ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit122, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp123, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ab, %bb.av, %.loopexit.split-lp, %bb.ac, %bb.t
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cz, %bb.t ], [ %i.dr, %bb.ab ], [ %i.ds, %bb.ac ], [ %.pn.pn.pn.pn, %.loopexit.split-lp ], [ %i.ix, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.bd

bb.bd:                                            ; preds = %bb.n, %bb.q, %bb.bc
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cs, %bb.q ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bc ], [ %i.cn, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.jj = load ptr, ptr %11, align 8, !tbaa !426, !nonnull !53, !align !374 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !441
  %i.jl = load i64, ptr %i.bx, align 8, !tbaa !408
  %i.jm = getelementptr inbounds [48 x i8], ptr %i.jk, i64 %i.jl ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !441
  %.not.i.i.i79 = icmp eq ptr %i.jm, %i.jo
  br i1 %.not.i.i.i79, label %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit81, label %_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i80

_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i80: ; preds = %bb.bd
  store ptr %i.jm, ptr %i.jn, align 8, !tbaa !342
  br label %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit81

_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit81: ; preds = %bb.bd, %_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser17parseTypeFunctionERKNS_8LocationEbNS_8PositionE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2, i64 %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Luau::Lexeme", align 8     ; 5 uses
  %5 = alloca %"class.std::optional.223", align 8 ; 11 uses
  %6 = alloca %"struct.Luau::AstArray.172", align 8 ; 4 uses
  %7 = alloca %"struct.Luau::Location", align 8   ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !tbaa.struct !228
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !799)
  %i.j = load i32, ptr %i.b, align 8, !tbaa !110, !noalias !799
  %.not.i = icmp eq i32 %i.j, 281
  br i1 %.not.i, label %_ZN4Luau6Parser12parseNameOptEPKc.exit.thread, label %_ZNSt8optionalIN4Luau6Parser4NameEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit

_ZN4Luau6Parser12parseNameOptEPKc.exit.thread:    ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22, !noalias !799
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.n = ptrtoint ptr %i.l to i64
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false)
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0), !noalias !799
  store i64 %i.n, ptr %5, align 8, !tbaa !45, !alias.scope !799
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 1, ptr %i.o, align 8, !tbaa !521, !alias.scope !799
  br label %bb.b

_ZNSt8optionalIN4Luau6Parser4NameEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit: ; preds = %bb.a
  tail call void @_ZN4Luau6Parser15reportNameErrorEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull @.str.218), !noalias !799
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.s = load i64, ptr %i.q, align 8, !tbaa !45
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %i.r, i64 16, i1 false)
  store i64 %i.s, ptr %5, align 8
  store i8 1, ptr %i.p, align 8, !tbaa !521
  br label %bb.b

bb.b:                                             ; preds = %_ZN4Luau6Parser12parseNameOptEPKc.exit.thread, %_ZNSt8optionalIN4Luau6Parser4NameEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !203
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1184 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !9
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !724
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !329
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !214
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3
  store i64 %i.ah, ptr %i.y, align 8, !tbaa !724
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.ai = call { ptr, ptr } @_ZN4Luau6Parser17parseFunctionBodyEbRKNS_6LexemeERKNS_7AstNameEPKNS0_4NameERKNS_8AstArrayIPNS_7AstAttrEEEbPNS_10TempVectorIPNS_11CstAttrListEEE(ptr noundef nonnull align 8 dereferenceable(1232) %0, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %6, i1 noundef zeroext false, ptr noundef null)
  %i.aj = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  store i64 %i.z, ptr %i.y, align 8, !tbaa !724
  %i.ak = load ptr, ptr %i.t, align 8, !tbaa !203
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1184 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !9
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !9
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp ugt i64 %i.as, %i.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !373, !nonnull !53, !align !374
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.aw = load i64, ptr %1, align 4
  store i64 %i.aw, ptr %7, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.az = load i64, ptr %i.ay, align 4
  store i64 %i.az, ptr %i.ax, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bb = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 noundef 72) ; 3 uses
  call void @_ZN4Luau19AstStatTypeFunctionC1ERKNS_8LocationERKNS_7AstNameES3_PNS_15AstExprFunctionEbb(ptr noundef nonnull align 8 dereferenceable(66) %i.bb, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(16) %i.ba, ptr noundef %i.aj, i1 noundef zeroext %2, i1 noundef zeroext %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !393, !range !52, !noundef !53
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !373, !nonnull !53, !align !374
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bh = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 noundef 20) ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.bg, align 4
  call void @_ZN4Luau19CstStatTypeFunctionC1ENS_8PositionES1_(ptr noundef nonnull align 4 dereferenceable(20) %i.bh, i64 %3, i64 %.sroa.0.0.copyload.i)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !394
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret ptr %i.bb
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau6Parser12parseNameOptEPKc(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.223") align 8 captures(none) initializes((24, 25)) %0, ptr noundef nonnull align 8 dereferenceable(1232) %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !110
  %.not = icmp eq i32 %i.b, 281
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau6Parser15reportNameErrorEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %1, ptr noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.f = ptrtoint ptr %i.d to i64
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false)
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %1)
  store i64 %i.f, ptr %0, align 8, !tbaa !45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i8 [ 1, %bb.c ], [ 0, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink, ptr %i.g, align 8, !tbaa !521
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau6Parser20parseGenericTypeListEbPNS_8PositionEPNS_8AstArrayIS1_EES2_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair.231") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1232) %1, i1 noundef zeroext %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.Luau::Location", align 4   ; 4 uses
  %7 = alloca %"struct.Luau::Location", align 4   ; 5 uses
  %8 = alloca %"struct.Luau::Lexeme", align 8     ; 5 uses
  %9 = alloca %"struct.Luau::Location", align 4   ; 10 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %10 = alloca %"struct.Luau::Parser::MatchLexeme", align 4 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1016 ; 8 uses
end_hunk_4
begin_hunk_5_@_ZN4Luau6Parser29parseDeclaredExternTypeMethodERKNS_8AstArrayIPNS_7AstAttrEEE:bb.a
.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader238
  %.010.i.i.unr = phi i64 [ %.010.i.i.ph, %.lr.ph.i.i.preheader238 ], [ %i.gk, %.lr.ph.i.i.prol ]
  %i.gl = sub i64 %.010.i.i.ph, %.sroa.13.0.lcssa
  %i.gm = icmp ugt i64 %i.gl, -4
  br i1 %i.gm, label %.lr.ph.preheader.i.i55, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.hc, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.010.i.i
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %.010.i.i
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !344
  store ptr %i.gp, ptr %i.gn, align 8, !tbaa !344
  %i.gq = add nuw i64 %.010.i.i, 1                ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.gq
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.gq
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !344
  store ptr %i.gt, ptr %i.gr, align 8, !tbaa !344
  %i.gu = add nuw i64 %.010.i.i, 2                ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.gu
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.gu
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !344
  store ptr %i.gx, ptr %i.gv, align 8, !tbaa !344
  %i.gy = add nuw i64 %.010.i.i, 3                ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.gy
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.gy
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !344
  store ptr %i.hb, ptr %i.gz, align 8, !tbaa !344
  %i.hc = add nuw i64 %.010.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.hc, %.sroa.13.0.lcssa
  br i1 %exitcond.not.i.i.3, label %.lr.ph.preheader.i.i55, label %.lr.ph.i.i, !llvm.loop !869

.lr.ph.preheader.i.i55:                           ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block
  store ptr %i.fx, ptr %15, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %.sroa.13.0.lcssa, ptr %i.hd, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %.0119180, ptr %i.he, align 8, !tbaa !593
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  %i.hf = load ptr, ptr %i.ax, align 8, !tbaa !123
  %i.hg = getelementptr i8, ptr %i.hf, i64 %i.bd  ; 3 uses
  %i.hh = load ptr, ptr %i.fn, align 8, !tbaa !373, !nonnull !53, !align !374
  %i.hi = shl i64 %.sroa.13.0.lcssa, 5
  %i.hj = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i64 noundef %i.hi)
          to label %.lr.ph.i.i56.preheader unwind label %bb.au ; 5 uses

.lr.ph.i.i56.preheader:                           ; preds = %.lr.ph.preheader.i.i55
  %xtraiter244 = and i64 %.sroa.13.0.lcssa, 1
  %i.hk = icmp eq i64 %.sroa.13.0.lcssa, 1
  br i1 %i.hk, label %.lr.ph.i.i56.epil.preheader, label %.lr.ph.i.i56.preheader.new

.lr.ph.i.i56.preheader.new:                       ; preds = %.lr.ph.i.i56.preheader
  %unroll_iter = and i64 %.sroa.13.0.lcssa, -2
  br label %.lr.ph.i.i56

.lr.ph.i.i56:                                     ; preds = %.lr.ph.i.i56, %.lr.ph.i.i56.preheader.new
  %.010.i.i57 = phi i64 [ 0, %.lr.ph.i.i56.preheader.new ], [ %i.hq, %.lr.ph.i.i56 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i56.preheader.new ], [ %niter.next.1, %.lr.ph.i.i56 ]
  %i.hl = getelementptr inbounds nuw [32 x i8], ptr %i.hj, i64 %.010.i.i57
  %i.hm = getelementptr inbounds nuw [32 x i8], ptr %i.hg, i64 %.010.i.i57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hl, ptr noundef nonnull align 8 dereferenceable(32) %i.hm, i64 32, i1 false)
  %i.hn = or disjoint i64 %.010.i.i57, 1          ; 2 uses
  %i.ho = getelementptr inbounds nuw [32 x i8], ptr %i.hj, i64 %i.hn
  %i.hp = getelementptr inbounds nuw [32 x i8], ptr %i.hg, i64 %i.hn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ho, ptr noundef nonnull align 8 dereferenceable(32) %i.hp, i64 32, i1 false)
  %i.hq = add nuw i64 %.010.i.i57, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i56, !llvm.loop !870

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i56
  %lcmp.mod245.not = icmp eq i64 %xtraiter244, 0
  br i1 %lcmp.mod245.not, label %.loopexit, label %.lr.ph.i.i56.epil.preheader

.lr.ph.i.i56.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i56.preheader
  %.010.i.i57.epil.init = phi i64 [ 0, %.lr.ph.i.i56.preheader ], [ %i.hq, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod246 = trunc i64 %.sroa.13.0.lcssa to i1
  call void @llvm.assume(i1 %lcmp.mod246)
  %i.hr = getelementptr inbounds nuw [32 x i8], ptr %i.hj, i64 %.010.i.i57.epil.init
  %i.hs = getelementptr inbounds nuw [32 x i8], ptr %i.hg, i64 %.010.i.i57.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hr, ptr noundef nonnull align 8 dereferenceable(32) %i.hs, i64 32, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i56.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.loopexit121.thread
  %i.ht = phi ptr [ null, %.loopexit121.thread ], [ %i.hj, %.loopexit.loopexit.unr-lcssa ], [ %i.hj, %.lr.ph.i.i56.epil.preheader ]
  store ptr %i.ht, ptr %16, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %.sroa.13.0.lcssa, ptr %i.hu, align 8
  %i.hv = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, i64 noundef 128)
          to label %.noexc62 unwind label %bb.au  ; 2 uses

.noexc62:                                         ; preds = %.loopexit
  invoke void @_ZN4Luau15AstTypeFunctionC1ERKNS_8LocationERKNS_8AstArrayIPNS_7AstAttrEEERKNS4_IPNS_14AstGenericTypeEEERKNS4_IPNS_18AstGenericTypePackEEERKNS_11AstTypeListERKNS4_ISt8optionalISt4pairINS_7AstNameES1_EEEEPNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(128) %i.hv, ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull %.0116)
          to label %_ZN4Luau9Allocator5allocINS_15AstTypeFunctionEJNS_8LocationERKNS_8AstArrayIPNS_7AstAttrEEERNS4_IPNS_14AstGenericTypeEEERNS4_IPNS_18AstGenericTypePackEEENS_11AstTypeListENS4_ISt8optionalISt4pairINS_7AstNameES3_EEEERPNS_11AstTypePackEEEEPT_DpOT0_.exit unwind label %bb.au

_ZN4Luau9Allocator5allocINS_15AstTypeFunctionEJNS_8LocationERKNS_8AstArrayIPNS_7AstAttrEEERNS4_IPNS_14AstGenericTypeEEERNS4_IPNS_18AstGenericTypePackEEENS_11AstTypeListENS4_ISt8optionalISt4pairINS_7AstNameES3_EEEERPNS_11AstTypePackEEEEPT_DpOT0_.exit: ; preds = %.noexc62
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  store i64 %.sink.i, ptr %0, align 8, !tbaa !45
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6109.0, ptr %i.hw, align 8
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0, ptr %.sroa.10.8..sroa_idx, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.hv, ptr %i.hx, align 8, !tbaa !857
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.hy, align 8, !tbaa !859
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ia = load i64, ptr %3, align 8
  store i64 %i.ia, ptr %i.hz, align 4
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i64 %.sroa.4.0.copyload, ptr %i.ib, align 4
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 3, ptr %i.ic, align 4, !tbaa !860
  br label %bb.aw

bb.at:                                            ; preds = %.lr.ph.preheader.i.i
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %.noexc62, %.loopexit, %.lr.ph.preheader.i.i55
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn = phi { ptr, i32 } [ %i.ie, %bb.au ], [ %i.id, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.ax

bb.aw:                                            ; preds = %_ZN4Luau9Allocator5allocINS_15AstTypeFunctionEJNS_8LocationERKNS_8AstArrayIPNS_7AstAttrEEERNS4_IPNS_14AstGenericTypeEEERNS4_IPNS_18AstGenericTypePackEEENS_11AstTypeListENS4_ISt8optionalISt4pairINS_7AstNameES3_EEEERPNS_11AstTypePackEEEEPT_DpOT0_.exit, %bb.s
  %i.if = load ptr, ptr %i.ax, align 8, !tbaa !871
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 %i.bd ; 2 uses
  %i.ih = load ptr, ptr %i.ay, align 8, !tbaa !871
  %.not.i.i.i = icmp eq ptr %i.ig, %i.ih
  br i1 %.not.i.i.i, label %_ZN4Luau10TempVectorISt8optionalISt4pairINS_7AstNameENS_8LocationEEEED2Ev.exit, label %_ZSt8_DestroyIPSt8optionalISt4pairIN4Luau7AstNameENS2_8LocationEEES6_EvT_S8_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt8optionalISt4pairIN4Luau7AstNameENS2_8LocationEEES6_EvT_S8_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.aw
  store ptr %i.ig, ptr %i.ay, align 8, !tbaa !856
  br label %_ZN4Luau10TempVectorISt8optionalISt4pairINS_7AstNameENS_8LocationEEEED2Ev.exit

_ZN4Luau10TempVectorISt8optionalISt4pairINS_7AstNameENS_8LocationEEEED2Ev.exit: ; preds = %bb.aw, %_ZSt8_DestroyIPSt8optionalISt4pairIN4Luau7AstNameENS2_8LocationEEES6_EvT_S8_RSaIT0_E.exit.i.i.i.i
  %i.ii = load ptr, ptr %i.aq, align 8, !tbaa !601
  %i.ij = getelementptr inbounds i8, ptr %i.ii, i64 %i.aw ; 2 uses
  %i.ik = load ptr, ptr %i.ar, align 8, !tbaa !601
  %.not.i.i.i64 = icmp eq ptr %i.ij, %i.ik
  br i1 %.not.i.i.i64, label %_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit, label %_ZSt8_DestroyIPPN4Luau7AstTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPPN4Luau7AstTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZN4Luau10TempVectorISt8optionalISt4pairINS_7AstNameENS_8LocationEEEED2Ev.exit
  store ptr %i.ij, ptr %i.ar, align 8, !tbaa !583
  br label %_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit

_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit:     ; preds = %_ZN4Luau10TempVectorISt8optionalISt4pairINS_7AstNameENS_8LocationEEEED2Ev.exit, %_ZSt8_DestroyIPPN4Luau7AstTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.il = load ptr, ptr %7, align 8, !tbaa !426, !nonnull !53, !align !374 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !441
  %i.in = load i64, ptr %i.n, align 8, !tbaa !408
  %i.io = getelementptr inbounds [48 x i8], ptr %i.im, i64 %i.in ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 8 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !441
  %.not.i.i.i65 = icmp eq ptr %i.io, %i.iq
  br i1 %.not.i.i.i65, label %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit, label %_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit
  store ptr %i.io, ptr %i.ip, align 8, !tbaa !342
  br label %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit

_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit: ; preds = %_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit, %_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.ax:                                            ; preds = %.loopexit123, %.loopexit.split-lp124, %bb.ah, %bb.aq, %bb.av, %bb.u, %bb.t
  %.pn25 = phi { ptr, i32 } [ %i.ca, %bb.u ], [ %i.bz, %bb.t ], [ %.pn, %bb.av ], [ %lpad.phi, %bb.ah ], [ %lpad.phi132, %bb.aq ], [ %lpad.loopexit125, %.loopexit123 ], [ %lpad.loopexit.split-lp126, %.loopexit.split-lp124 ] ; 2 uses
  %i.ir = load ptr, ptr %i.ax, align 8, !tbaa !871
  %i.is = getelementptr inbounds i8, ptr %i.ir, i64 %i.bd ; 2 uses
  %i.it = load ptr, ptr %i.ay, align 8, !tbaa !871
  %.not.i.i.i66 = icmp eq ptr %i.is, %i.it
  br i1 %.not.i.i.i66, label %_ZN4Luau10TempVectorISt8optionalISt4pairINS_7AstNameENS_8LocationEEEED2Ev.exit68, label %_ZSt8_DestroyIPSt8optionalISt4pairIN4Luau7AstNameENS2_8LocationEEES6_EvT_S8_RSaIT0_E.exit.i.i.i.i67

_ZSt8_DestroyIPSt8optionalISt4pairIN4Luau7AstNameENS2_8LocationEEES6_EvT_S8_RSaIT0_E.exit.i.i.i.i67: ; preds = %bb.ax
  store ptr %i.is, ptr %i.ay, align 8, !tbaa !856
  br label %_ZN4Luau10TempVectorISt8optionalISt4pairINS_7AstNameENS_8LocationEEEED2Ev.exit68

_ZN4Luau10TempVectorISt8optionalISt4pairINS_7AstNameENS_8LocationEEEED2Ev.exit68: ; preds = %bb.ax, %_ZSt8_DestroyIPSt8optionalISt4pairIN4Luau7AstNameENS2_8LocationEEES6_EvT_S8_RSaIT0_E.exit.i.i.i.i67
  %i.iu = load ptr, ptr %i.aq, align 8, !tbaa !601
  %i.iv = getelementptr inbounds i8, ptr %i.iu, i64 %i.aw ; 2 uses
  %i.iw = load ptr, ptr %i.ar, align 8, !tbaa !601
  %.not.i.i.i69 = icmp eq ptr %i.iv, %i.iw
  br i1 %.not.i.i.i69, label %_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit71, label %_ZSt8_DestroyIPPN4Luau7AstTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i.i70

_ZSt8_DestroyIPPN4Luau7AstTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i.i70: ; preds = %_ZN4Luau10TempVectorISt8optionalISt4pairINS_7AstNameENS_8LocationEEEED2Ev.exit68
  store ptr %i.iv, ptr %i.ar, align 8, !tbaa !583
  br label %_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit71

_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit71:   ; preds = %bb.h, %bb.i, %_ZSt8_DestroyIPPN4Luau7AstTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i.i70, %_ZN4Luau10TempVectorISt8optionalISt4pairINS_7AstNameENS_8LocationEEEED2Ev.exit68, %bb.o, %bb.n
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %.pn25, %_ZSt8_DestroyIPPN4Luau7AstTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i.i70 ], [ %i.y, %bb.i ], [ %i.x, %bb.h ], [ %i.ao, %bb.n ], [ %i.ap, %bb.o ], [ %.pn25, %_ZN4Luau10TempVectorISt8optionalISt4pairINS_7AstNameENS_8LocationEEEED2Ev.exit68 ]
  %i.ix = load ptr, ptr %7, align 8, !tbaa !426, !nonnull !53, !align !374 ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !441
  %i.iz = load i64, ptr %i.n, align 8, !tbaa !408
  %i.ja = getelementptr inbounds [48 x i8], ptr %i.iy, i64 %i.iz ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !441
  %.not.i.i.i72 = icmp eq ptr %i.ja, %i.jc
  br i1 %.not.i.i.i72, label %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit74, label %_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i73

_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i73: ; preds = %_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit71
  store ptr %i.ja, ptr %i.jb, align 8, !tbaa !342
  br label %_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit74

_ZN4Luau10TempVectorINS_6Parser7BindingEED2Ev.exit74: ; preds = %_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit71, %_ZSt8_DestroyIPN4Luau6Parser7BindingES2_EvT_S4_RSaIT0_E.exit.i.i.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn25.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser23parseOptionalReturnTypeEPNS_8PositionE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !110
  switch i32 %i.b, label %bb.h [
    i32 58, label %bb.c
    i32 263, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132
  tail call void (ptr, ptr, ptr, ...) @_ZN4Luau6Parser6reportERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull @.str.255)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.e = load i64, ptr %i.d, align 4
  store i64 %i.e, ptr %1, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !236
  %i.h = tail call noundef ptr @_ZN4Luau6Parser15parseReturnTypeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.i = load i32, ptr %i.a, align 8, !tbaa !110
  %i.j = icmp eq i32 %i.i, 44
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 132
  tail call void (ptr, ptr, ptr, ...) @_ZN4Luau6Parser6reportERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull @.str.256)
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 %i.g, ptr %i.f, align 4, !tbaa !236
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.0 = phi ptr [ %i.h, %bb.g ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser15reportTypeErrorERKNS_8LocationERKNS_8AstArrayIPNS_7AstTypeEEEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ...) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.va_start.p0(ptr nonnull %4)
  call void @_ZN4Luau6Parser6reportERKNS_8LocationEPKcP13__va_list_tag(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %3, ptr noundef nonnull %4)
  call void @llvm.va_end.p0(ptr nonnull %4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !373, !nonnull !53, !align !374
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 56
  %i.k = trunc i64 %i.j to i32
  %i.l = add i32 %i.k, -1
  %i.m = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef 56) ; 2 uses
  call void @_ZN4Luau12AstTypeErrorC1ERKNS_8LocationERKNS_8AstArrayIPNS_7AstTypeEEEbj(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false, i32 noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret ptr %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau10TempVectorISt8optionalISt4pairINS_7AstNameENS_8LocationEEEE9push_backERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !872, !nonnull !53, !align !374 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !856  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !126
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !856
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.g, ptr %i.b, align 8, !tbaa !856
  br label %_ZNSt6vectorISt8optionalISt4pairIN4Luau7AstNameENS2_8LocationEEESaIS6_EE9push_backERKS6_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !123  ; 5 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775776
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorISt8optionalISt4pairIN4Luau7AstNameENS2_8LocationEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.328) #37
  unreachable

_ZNKSt6vectorISt8optionalISt4pairIN4Luau7AstNameENS2_8LocationEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 5                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 288230376151711743)
  %i.q = select i1 %i.o, i64 288230376151711743, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 5
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #35 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt8optionalISt4pairIN4Luau7AstNameENS2_8LocationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt8optionalISt4pairIN4Luau7AstNameENS2_8LocationEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i ], [ %i.s, %_ZNKSt6vectorISt8optionalISt4pairIN4Luau7AstNameENS2_8LocationEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.h, %_ZNKSt6vectorISt8optionalISt4pairIN4Luau7AstNameENS2_8LocationEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !alias.scope !875
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt8optionalISt4pairIN4Luau7AstNameENS2_8LocationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !865

_ZNSt6vectorISt8optionalISt4pairIN4Luau7AstNameENS2_8LocationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt8optionalISt4pairIN4Luau7AstNameENS2_8LocationEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorISt8optionalISt4pairIN4Luau7AstNameENS2_8LocationEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.v, %.lr.ph.i.i.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i23.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt8optionalISt4pairIN4Luau7AstNameENS2_8LocationEEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt8optionalISt4pairIN4Luau7AstNameENS2_8LocationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !126
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.z) #36
  br label %_ZNSt6vectorISt8optionalISt4pairIN4Luau7AstNameENS2_8LocationEEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt8optionalISt4pairIN4Luau7AstNameENS2_8LocationEEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt8optionalISt4pairIN4Luau7AstNameENS2_8LocationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.s, ptr %i.a, align 8, !tbaa !123
  store ptr %i.w, ptr %i.b, align 8, !tbaa !856
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.q
  store ptr %i.aa, ptr %i.d, align 8, !tbaa !126
  br label %_ZNSt6vectorISt8optionalISt4pairIN4Luau7AstNameENS2_8LocationEEESaIS6_EE9push_backERKS6_.exit

_ZNSt6vectorISt8optionalISt4pairIN4Luau7AstNameENS2_8LocationEEESaIS6_EE9push_backERKS6_.exit: ; preds = %bb.b, %_ZNSt6vectorISt8optionalISt4pairIN4Luau7AstNameENS2_8LocationEEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !879
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !879
  ret void
}

declare void @_ZN4Luau5Lexer9lookaheadEv(ptr dead_on_unwind writable sret(%"struct.Luau::Lexeme") align 8, ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau6Parser14parseCharArrayEPNS_8AstArrayIcEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.280") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1232) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1160 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = tail call noundef i32 @_ZNK4Luau6Lexeme9getLengthEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1168 ; 5 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.h, ptr noundef %i.d, i64 noundef %i.f) ; 0 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !20   ; 8 uses
  %i.k = load i64, ptr %i.g, align 8, !tbaa !23   ; 4 uses
end_hunk_5
begin_hunk_6_@_ZN4Luau6Parser15parseTypeSuffixEPNS_7AstTypeERKNS_8LocationE:bb.a
  %.not.i.i.i167 = icmp eq ptr %i.qu, %i.qv
  br i1 %.not.i.i.i167, label %_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit, label %_ZSt8_DestroyIPPN4Luau7AstTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPPN4Luau7AstTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit
  store ptr %i.qu, ptr %i.d, align 8, !tbaa !583
  br label %_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit

_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit:     ; preds = %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit, %_ZSt8_DestroyIPPN4Luau7AstTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  ret ptr %.050

bb.cg:                                            ; preds = %.loopexit269, %.loopexit.split-lp270, %.loopexit264, %.loopexit.split-lp265, %.loopexit284, %.loopexit.split-lp285, %.loopexit279, %.loopexit.split-lp280, %.loopexit263, %.loopexit.split-lp, %bb.cb, %bb.cc, %bb.bu, %bb.bv, %bb.al, %bb.ca, %bb.bt, %bb.bo, %bb.bk
  %.pn63.pn = phi { ptr, i32 } [ %i.qn, %bb.ca ], [ %i.jp, %bb.bo ], [ %i.hs, %bb.bk ], [ %i.nd, %bb.bt ], [ %lpad.loopexit.split-lp287, %.loopexit.split-lp285 ], [ %i.ne, %bb.bu ], [ %i.qo, %bb.cb ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn53, %bb.al ], [ %lpad.loopexit.split-lp282, %.loopexit.split-lp280 ], [ %lpad.loopexit.split-lp267, %.loopexit.split-lp265 ], [ %i.nf, %bb.bv ], [ %i.qp, %bb.cc ], [ %lpad.loopexit, %.loopexit263 ], [ %lpad.loopexit281, %.loopexit279 ], [ %lpad.loopexit286, %.loopexit284 ], [ %lpad.loopexit266, %.loopexit264 ], [ %lpad.loopexit271, %.loopexit269 ], [ %lpad.loopexit.split-lp272, %.loopexit.split-lp270 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.h
  %.pn63.pn.pn = phi { ptr, i32 } [ %.pn63.pn, %bb.cg ], [ %i.ai, %bb.h ]
  %i.qw = load ptr, ptr %i.k, align 8, !tbaa !439
  %i.qx = getelementptr inbounds i8, ptr %i.qw, i64 %i.q ; 2 uses
  %i.qy = load ptr, ptr %i.l, align 8, !tbaa !439
  %.not.i.i.i168 = icmp eq ptr %i.qx, %i.qy
  br i1 %.not.i.i.i168, label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit170, label %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i169

_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i169: ; preds = %bb.ch
  store ptr %i.qx, ptr %i.l, align 8, !tbaa !422
  br label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit170

_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit170:  ; preds = %bb.ch, %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i169
  %i.qz = load ptr, ptr %i.c, align 8, !tbaa !601
  %i.ra = getelementptr inbounds i8, ptr %i.qz, i64 %i.i ; 2 uses
  %i.rb = load ptr, ptr %i.d, align 8, !tbaa !601
  %.not.i.i.i171 = icmp eq ptr %i.ra, %i.rb
  br i1 %.not.i.i.i171, label %_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit173, label %_ZSt8_DestroyIPPN4Luau7AstTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i.i172

_ZSt8_DestroyIPPN4Luau7AstTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i.i172: ; preds = %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit170
  store ptr %i.ra, ptr %i.d, align 8, !tbaa !583
  br label %_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit173

_ZN4Luau10TempVectorIPNS_7AstTypeEED2Ev.exit173:  ; preds = %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit170, %_ZSt8_DestroyIPPN4Luau7AstTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i.i172
  resume { ptr, i32 } %.pn63.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser21parseFunctionTypeTailERKNS_6LexemeERKNS_8AstArrayIPNS_7AstAttrEEENS4_IPNS_14AstGenericTypeEEENS4_IPNS_18AstGenericTypePackEEENS4_IPNS_7AstTypeEEENS4_ISt8optionalISt4pairINS_7AstNameENS_8LocationEEEEEPNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4, ptr noundef byval(%"struct.Luau::AstArray.221") align 8 %5, ptr nofree noundef readonly byval(%"struct.Luau::AstArray.255") align 8 captures(none) %6, ptr noundef byval(%"struct.Luau::AstArray.268") align 8 %7, ptr noundef %8) local_unnamed_addr #2 align 2 {
bb.a:
  %9 = alloca %"class.std::optional.182", align 8 ; 4 uses
  %10 = alloca %"struct.Luau::AstArray.302", align 8 ; 4 uses
  %11 = alloca %"struct.Luau::AstArray.220", align 8 ; 3 uses
  %12 = alloca %"struct.Luau::Location", align 8  ; 5 uses
  %13 = alloca %"struct.Luau::AstTypeList", align 8 ; 5 uses
  %14 = alloca %"struct.Luau::Location", align 8  ; 5 uses
  store ptr %3, ptr %11, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %4, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !236
  %i.d = add i32 %i.c, 1                          ; 2 uses
  store i32 %i.d, ptr %i.b, align 4, !tbaa !236
  %i.e = load i32, ptr @_ZN4FInt18LuauRecursionLimitE, align 8, !tbaa !366
  %i.f = icmp ugt i32 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 132
  tail call void (ptr, ptr, ...) @_ZN4Luau10ParseError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull @.str.320, ptr noundef nonnull @.str.257) #37
  unreachable

_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load i32, ptr %i.h, align 8, !tbaa !110  ; 3 uses
  %i.j = icmp eq i32 %i.i, 58
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 132
  tail call void (ptr, ptr, ptr, ...) @_ZN4Luau6Parser6reportERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.l, ptr noundef nonnull @.str.262)
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau5Lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(120) %i.k) ; 0 uses
  br label %_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit

bb.d:                                             ; preds = %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  %i.n = icmp ne i32 %i.i, 263
  %i.o = icmp eq i64 %4, 0
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, 0
  %or.cond5 = select i1 %or.cond, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, 0
  %or.cond8 = select i1 %or.cond5, i1 %i.u, i1 false
  br i1 %or.cond8, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.w = load i64, ptr %i.v, align 4
  store i64 %i.w, ptr %12, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.z = load i64, ptr %i.y, align 8
  store i64 %i.z, ptr %i.x, align 8
  call void (ptr, ptr, ptr, ...) @_ZN4Luau6Parser6reportERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull @.str.263)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !373, !nonnull !53, !align !374
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.ad = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 noundef 120) ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ac, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 0, ptr %i.ae, align 8, !tbaa !398
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @_ZN4Luau16AstTypeReferenceC1ERKNS_8LocationESt8optionalINS_7AstNameEES5_S4_IS1_ES3_bRKNS_8AstArrayINS_13AstTypeOrPackEEEPNS_8AstLocalE(ptr noundef nonnull align 8 dereferenceable(120) %i.ad, ptr noundef nonnull align 4 dereferenceable(16) %i.v, ptr undef, i8 0, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull byval(%"class.std::optional.182") align 8 %9, ptr noundef nonnull align 4 dereferenceable(16) %i.v, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp eq i32 %i.i, 263
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = tail call noundef zeroext i1 @_ZN4Luau6Parser33expectAndConsumeFailWithLookaheadENS_6Lexeme4TypeEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 263, ptr noundef nonnull @.str.264) ; 0 uses
  br label %_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit

_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit: ; preds = %bb.h, %bb.g, %bb.c
  %i.ag = tail call noundef ptr @_ZN4Luau6Parser15parseReturnTypeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !969
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %8, ptr %i.ah, align 8, !tbaa !593
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !373, !nonnull !53, !align !374
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.al = load i64, ptr %i.ak, align 4
  store i64 %i.al, ptr %14, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.ao = load i64, ptr %i.an, align 4
  store i64 %i.ao, ptr %i.am, align 8
  %i.ap = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 noundef 128) ; 2 uses
  call void @_ZN4Luau15AstTypeFunctionC1ERKNS_8LocationERKNS_8AstArrayIPNS_7AstAttrEEERKNS4_IPNS_14AstGenericTypeEEERKNS4_IPNS_18AstGenericTypePackEEERKNS_11AstTypeListERKNS4_ISt8optionalISt4pairINS_7AstNameES1_EEEEPNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(128) %i.ap, ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.i

bb.i:                                             ; preds = %_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit, %bb.e
  %.0 = phi ptr [ %i.ap, %_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit ], [ %i.ad, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local range(i64 0, -4294967292) i64 @_ZN4Luau6Parser20extractStringDetailsEv(ptr noundef nonnull align 8 dereferenceable(1232) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !110
  switch i32 %i.b, label %bb.d [
    i32 279, label %bb.b
    i32 278, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZNK4Luau6Lexeme13getQuoteStyleEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.d = icmp eq i32 %i.c, 1
  %i.e = zext i1 %i.d to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZNK4Luau6Lexeme13getBlockDepthEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw i64 %i.g, 32
  %i.i = or disjoint i64 %i.h, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i64 [ 3, %bb.a ], [ %i.e, %bb.b ], [ %i.i, %bb.c ]
  ret i64 %.0
}

declare noundef i32 @_ZNK4Luau6Lexeme13getQuoteStyleEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef i32 @_ZNK4Luau6Lexeme13getBlockDepthEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser14parseTableTypeEb(ptr noundef nonnull align 8 dereferenceable(1232) %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Luau::Location", align 4   ; 4 uses
  %3 = alloca %"class.std::optional.182", align 8 ; 4 uses
  %4 = alloca %"struct.Luau::AstArray.302", align 8 ; 4 uses
  %5 = alloca %"struct.Luau::Location", align 4   ; 4 uses
  %6 = alloca %"struct.Luau::Location", align 4   ; 4 uses
  %7 = alloca %"struct.Luau::Parser::MatchLexeme", align 4 ; 6 uses
  %.sroa.0364 = alloca %"struct.Luau::Location", align 8 ; 9 uses
  %8 = alloca %"struct.Luau::Lexeme", align 8     ; 6 uses
  %9 = alloca %"struct.Luau::Lexeme", align 8     ; 8 uses
  %10 = alloca %"struct.Luau::Lexeme", align 8    ; 6 uses
  %11 = alloca %"struct.Luau::AstArray.6", align 8 ; 7 uses
  %12 = alloca %"class.std::optional.280", align 8 ; 7 uses
  %13 = alloca %"struct.Luau::Parser::MatchLexeme", align 4 ; 7 uses
  %.sroa.6349 = alloca %"struct.Luau::Location", align 8 ; 6 uses
  %14 = alloca %"struct.Luau::Parser::TableIndexerResult", align 8 ; 5 uses
  %15 = alloca %"class.std::optional.182", align 8 ; 3 uses
  %16 = alloca %"struct.Luau::Parser::TableIndexerResult", align 8 ; 8 uses
  %17 = alloca %"class.std::optional.182", align 8 ; 3 uses
  %18 = alloca %"struct.Luau::Lexeme", align 8    ; 7 uses
  %19 = alloca %"struct.Luau::Location", align 8  ; 7 uses
  %.sroa.6295 = alloca %"struct.Luau::Location", align 8 ; 5 uses
  %.sroa.5290 = alloca %"struct.Luau::Location", align 8 ; 3 uses
  %20 = alloca %"struct.Luau::Location", align 8  ; 6 uses
  %21 = alloca %"struct.Luau::AstArray.303", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 11 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !236
  %i.d = add i32 %i.c, 1                          ; 2 uses
  store i32 %i.d, ptr %i.b, align 4, !tbaa !236
  %i.e = load i32, ptr @_ZN4FInt18LuauRecursionLimitE, align 8, !tbaa !366
  %i.f = icmp ugt i32 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 132
  tail call void (ptr, ptr, ...) @_ZN4Luau10ParseError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull @.str.320, ptr noundef nonnull @.str.257) #37
  unreachable

_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 13 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !970
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !171
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 17 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !971
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !167
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 20 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 11 uses
  %.sroa.0373.0.copyload = load i64, ptr %i.x, align 4 ; 4 uses
  %.sroa.8376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.y = load i32, ptr %i.w, align 8, !tbaa !110  ; 2 uses
  store i32 %i.y, ptr %7, align 4, !tbaa !327
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i64 %.sroa.0373.0.copyload, ptr %i.z, align 4
  %.not.i.i = icmp eq i32 %i.y, 123
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  %i.aa = invoke noundef zeroext i1 @_ZN4Luau6Parser33expectAndConsumeFailWithLookaheadENS_6Lexeme4TypeEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 123, ptr noundef nonnull @.str.259)
          to label %_ZN4Luau6Parser16expectAndConsumeEcPKc.exit unwind label %bb.i ; 0 uses

bb.d:                                             ; preds = %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  invoke void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
          to label %_ZN4Luau6Parser16expectAndConsumeEcPKc.exit unwind label %bb.i

_ZN4Luau6Parser16expectAndConsumeEcPKc.exit:      ; preds = %bb.c, %bb.d
  %i.ab = load i32, ptr %i.w, align 8, !tbaa !110 ; 2 uses
  %.not71622 = icmp eq i32 %i.ab, 125
  br i1 %.not71622, label %.loopexit438.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4Luau6Parser16expectAndConsumeEcPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 9 uses
  %.sroa.10363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.sroa.10363.0..sroa_idx364 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.dn
  %i.ap = phi i32 [ %i.ab, %.lr.ph ], [ %.pre790, %bb.dn ]
  %.sroa.13406.0625 = phi i64 [ 0, %.lr.ph ], [ %.sroa.13406.4, %bb.dn ] ; 7 uses
  %.0412624 = phi ptr [ null, %.lr.ph ], [ %.2414, %bb.dn ] ; 7 uses
  %.sroa.14.0623 = phi i64 [ 0, %.lr.ph ], [ %.sroa.14.5, %bb.dn ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.aq = icmp eq i32 %i.ap, 281
  br i1 %i.aq, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4Luau5Lexer9lookaheadEv(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Lexeme") align 8 %8, ptr noundef nonnull align 8 dereferenceable(120) %i.v)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ar = load i32, ptr %8, align 8, !tbaa !110
  %.not72 = icmp eq i32 %i.ar, 58
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br i1 %.not72, label %_ZNK4Luau7AstNameeqEPKc.exit119.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !22 ; 3 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_ZNK4Luau7AstNameeqEPKc.exit119.thread, label %_ZNK4Luau7AstNameeqEPKc.exit

_ZNK4Luau7AstNameeqEPKc.exit:                     ; preds = %bb.h
  %i.at = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.as, ptr noundef nonnull dereferenceable(5) @.str.235) #40
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit, label %_ZNK4Luau7AstNameeqEPKc.exit119

_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit: ; preds = %_ZNK4Luau7AstNameeqEPKc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0364, ptr noundef nonnull align 4 dereferenceable(16) %i.x, i64 16, i1 false)
  %i.av = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau5Lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(120) %i.v)
          to label %_ZNK4Luau7AstNameeqEPKc.exit119.thread unwind label %bb.j ; 0 uses

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.j:                                             ; preds = %bb.dm, %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit120, %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.k:                                             ; preds = %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.dy

_ZNK4Luau7AstNameeqEPKc.exit119:                  ; preds = %_ZNK4Luau7AstNameeqEPKc.exit
  %i.az = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.as, ptr noundef nonnull dereferenceable(6) @.str.236) #40
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit120, label %_ZNK4Luau7AstNameeqEPKc.exit119.thread

_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit120: ; preds = %_ZNK4Luau7AstNameeqEPKc.exit119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0364, ptr noundef nonnull align 4 dereferenceable(16) %i.x, i64 16, i1 false)
  %i.bb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau5Lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(120) %i.v)
          to label %_ZNK4Luau7AstNameeqEPKc.exit119.thread unwind label %bb.j ; 0 uses

.critedge:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %_ZNK4Luau7AstNameeqEPKc.exit119.thread

_ZNK4Luau7AstNameeqEPKc.exit119.thread:           ; preds = %bb.h, %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit, %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit120, %_ZNK4Luau7AstNameeqEPKc.exit119, %.critedge, %bb.g
  %.sroa.10363.0 = phi i8 [ 0, %bb.g ], [ 1, %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit ], [ 1, %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit120 ], [ 0, %_ZNK4Luau7AstNameeqEPKc.exit119 ], [ 0, %.critedge ], [ 0, %bb.h ] ; 7 uses
  %.041 = phi i32 [ 3, %bb.g ], [ 1, %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit ], [ 2, %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit120 ], [ 3, %_ZNK4Luau7AstNameeqEPKc.exit119 ], [ 3, %.critedge ], [ 3, %bb.h ] ; 7 uses
  %i.bc = load i32, ptr %i.w, align 8, !tbaa !110 ; 4 uses
  %i.bd = icmp eq i32 %i.bc, 91
  br i1 %i.bd, label %bb.l, label %bb.bz

bb.l:                                             ; preds = %_ZNK4Luau7AstNameeqEPKc.exit119.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false), !tbaa.struct !228
  invoke void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.be = load i32, ptr %i.w, align 8, !tbaa !110
  %i.bf = and i32 %i.be, -2
  %switch = icmp eq i32 %i.bf, 278
  br i1 %switch, label %bb.n, label %.critedge2

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4Luau5Lexer9lookaheadEv(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Lexeme") align 8 %10, ptr noundef nonnull align 8 dereferenceable(120) %i.v)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.bg = load i32, ptr %10, align 8, !tbaa !110
  %i.bh = icmp eq i32 %i.bg, 93
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br i1 %i.bh, label %bb.p, label %bb.bf

bb.p:                                             ; preds = %bb.o
  %i.bi = load i8, ptr %i.af, align 8, !tbaa !393, !range !52, !noundef !53
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bk = load i32, ptr %i.w, align 8, !tbaa !110
  switch i32 %i.bk, label %_ZN4Luau6Parser20extractStringDetailsEv.exit [
    i32 279, label %bb.r
    i32 278, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.bl = invoke noundef i32 @_ZNK4Luau6Lexeme13getQuoteStyleEv(ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %.noexc121 unwind label %bb.v

.noexc121:                                        ; preds = %bb.r
  %i.bm = icmp eq i32 %i.bl, 1
  %i.bn = zext i1 %i.bm to i64
  br label %_ZN4Luau6Parser20extractStringDetailsEv.exit

bb.s:                                             ; preds = %bb.q
  %i.bo = invoke noundef i32 @_ZNK4Luau6Lexeme13getBlockDepthEv(ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %.noexc122 unwind label %bb.v

.noexc122:                                        ; preds = %bb.s
  %i.bp = zext i32 %i.bo to i64
  %i.bq = shl nuw i64 %i.bp, 32
  %i.br = or disjoint i64 %i.bq, 2
  br label %_ZN4Luau6Parser20extractStringDetailsEv.exit

_ZN4Luau6Parser20extractStringDetailsEv.exit:     ; preds = %.noexc122, %.noexc121, %bb.q
  %.0.i = phi i64 [ 3, %bb.q ], [ %i.bn, %.noexc121 ], [ %i.br, %.noexc122 ] ; 2 uses
  %.sroa.0358.0.extract.trunc = trunc i64 %.0.i to i32
  %.sroa.5359.0.extract.shift = lshr i64 %.0.i, 32
  %.sroa.5359.0.extract.trunc = trunc nuw i64 %.sroa.5359.0.extract.shift to i32
  %.pre = load i8, ptr %i.af, align 8, !tbaa !393, !range !52
  %i.bs = trunc nuw i8 %.pre to i1
  %i.bt = select i1 %i.bs, ptr %11, ptr null
  br label %bb.w

bb.t:                                             ; preds = %bb.l
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.u:                                             ; preds = %bb.n
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.by

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.w:                                             ; preds = %_ZN4Luau6Parser20extractStringDetailsEv.exit, %bb.p
  %i.bx = phi ptr [ %i.bt, %_ZN4Luau6Parser20extractStringDetailsEv.exit ], [ null, %bb.p ]
  %.0417 = phi i32 [ %.sroa.5359.0.extract.trunc, %_ZN4Luau6Parser20extractStringDetailsEv.exit ], [ 0, %bb.p ]
  %.0416 = phi i32 [ %.sroa.0358.0.extract.trunc, %_ZN4Luau6Parser20extractStringDetailsEv.exit ], [ undef, %bb.p ]
  %i.by = load i64, ptr %i.x, align 4             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  invoke void @_ZN4Luau6Parser14parseCharArrayEPNS_8AstArrayIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.280") align 8 %12, ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef %i.bx)
          to label %bb.x unwind label %bb.ax

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.bz = load i32, ptr %9, align 8, !tbaa !110
  store i32 %i.bz, ptr %13, align 4, !tbaa !327
  %i.ca = load i64, ptr %i.al, align 4
  store i64 %i.ca, ptr %i.ak, align 4
  %i.cb = load i32, ptr %i.w, align 8, !tbaa !110
  %.not.i123 = icmp eq i32 %i.cb, 93
  br i1 %.not.i123, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4Luau6Parser25expectMatchAndConsumeFailENS_6Lexeme4TypeERKNS0_11MatchLexemeEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 93, ptr noundef nonnull readonly align 4 dereferenceable(12) %13, ptr noundef null)
          to label %.noexc125 unwind label %bb.ay

.noexc125:                                        ; preds = %bb.y
  %i.cc = invoke noundef zeroext i1 @_ZN4Luau6Parser28expectMatchAndConsumeRecoverEcRKNS0_11MatchLexemeEb(ptr noundef nonnull align 8 dereferenceable(1232) %0, i8 noundef signext 93, ptr nonnull readonly align 4 poison, i1 noundef zeroext false)
          to label %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit unwind label %bb.ay

bb.z:                                             ; preds = %bb.x
  invoke void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
          to label %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit.thread unwind label %bb.ay

_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit.thread: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.aa

_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit: ; preds = %.noexc125
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br i1 %i.cc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit.thread, %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit
  %.sroa.029.0.copyload = load i64, ptr %i.ad, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit, %bb.aa
  %.sroa.029.0 = phi i64 [ %.sroa.029.0.copyload, %bb.aa ], [ -1, %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit ] ; 2 uses
  %i.cd = load i32, ptr %i.w, align 8, !tbaa !110
  %.not.i.i128 = icmp eq i32 %i.cd, 58
  br i1 %.not.i.i128, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ce = invoke noundef zeroext i1 @_ZN4Luau6Parser33expectAndConsumeFailWithLookaheadENS_6Lexeme4TypeEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 58, ptr noundef nonnull @.str.258)
          to label %_ZN4Luau6Parser16expectAndConsumeEcPKc.exit131 unwind label %bb.az ; 0 uses

bb.ad:                                            ; preds = %bb.ab
  invoke void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
          to label %bb.ae unwind label %bb.az

bb.ae:                                            ; preds = %bb.ad
  %.sroa.026.0.copyload = load i64, ptr %i.ad, align 8
  br label %_ZN4Luau6Parser16expectAndConsumeEcPKc.exit131

_ZN4Luau6Parser16expectAndConsumeEcPKc.exit131:   ; preds = %bb.ac, %bb.ae
  %.sroa.026.0 = phi i64 [ %.sroa.026.0.copyload, %bb.ae ], [ -1, %bb.ac ] ; 2 uses
  %i.cf = load i32, ptr %i.b, align 4, !tbaa !236 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !36
  %i.cg = load i32, ptr %i.w, align 8, !tbaa !110
  switch i32 %i.cg, label %bb.af [
    i32 124, label %bb.ag
    i32 38, label %bb.ag
  ]

bb.af:                                            ; preds = %_ZN4Luau6Parser16expectAndConsumeEcPKc.exit131
  %i.ch = invoke { ptr, ptr } @_ZN4Luau6Parser15parseSimpleTypeEbb(ptr noundef nonnull align 8 dereferenceable(1232) %0, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %.noexc133 unwind label %bb.ba, !inline_history !523

.noexc133:                                        ; preds = %bb.af
  %i.ci = extractvalue { ptr, ptr } %i.ch, 0
  store i32 %i.cf, ptr %i.b, align 4, !tbaa !236
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc133, %_ZN4Luau6Parser16expectAndConsumeEcPKc.exit131, %_ZN4Luau6Parser16expectAndConsumeEcPKc.exit131
  %.0.i132 = phi ptr [ %i.ci, %.noexc133 ], [ null, %_ZN4Luau6Parser16expectAndConsumeEcPKc.exit131 ], [ null, %_ZN4Luau6Parser16expectAndConsumeEcPKc.exit131 ]
  %i.cj = invoke noundef ptr @_ZN4Luau6Parser15parseTypeSuffixEPNS_7AstTypeERKNS_8LocationE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef %.0.i132, ptr noundef nonnull align 4 dereferenceable(16) %6)
          to label %bb.ah unwind label %bb.ba, !inline_history !523 ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.cf, ptr %i.b, align 4, !tbaa !236
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.ck = load i8, ptr %i.am, align 8, !tbaa !623, !range !52, !noundef !53
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.ai, label %.thread419

bb.ai:                                            ; preds = %bb.ah
  %i.cm = load ptr, ptr %12, align 8, !tbaa !625  ; 3 uses
  %i.cn = load i64, ptr %i.an, align 8, !tbaa !627
  %i.co = call noundef ptr @memchr(ptr noundef %i.cm, i32 noundef 0, i64 noundef %i.cn) #40
  %.not = icmp eq ptr %i.co, null
  br i1 %.not, label %bb.aj, label %.thread419

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6349)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6349, ptr noundef nonnull align 4 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !36
  %i.cp = load ptr, ptr %i.i, align 8, !tbaa !970 ; 10 uses
  %i.cq = load ptr, ptr %i.ae, align 8, !tbaa !174
  %.not.i.i135 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not.i.i135, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.cm, ptr %i.cp, align 8
  %.sroa.6346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6346.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6349, i64 16, i1 false)
  %.sroa.7348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store ptr %i.cj, ptr %.sroa.7348.0..sroa_idx, align 8
  %.sroa.8351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  store i32 %.041, ptr %.sroa.8351.0..sroa_idx, align 8
  %.sroa.9354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9354.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0364, i64 16, i1 false)
  %.sroa.9354.sroa.6.0..sroa.9354.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 52
  store i8 %.sroa.10363.0, ptr %.sroa.9354.sroa.6.0..sroa.9354.0..sroa_idx.sroa_idx, align 4
  %i.cr = load ptr, ptr %i.i, align 8, !tbaa !970
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  store ptr %i.cs, ptr %i.i, align 8, !tbaa !970
  br label %bb.ao

bb.al:                                            ; preds = %bb.aj
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !171 ; 5 uses
  %i.cu = ptrtoint ptr %i.cp to i64
  %i.cv = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cw = sub i64 %i.cu, %i.cv                    ; 3 uses
  %i.cx = icmp eq i64 %i.cw, 9223372036854775800
  br i1 %i.cx, label %bb.am, label %_ZNKSt6vectorIN4Luau12AstTablePropESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.328) #37
          to label %.noexc136 unwind label %.loopexit.split-lp457

.noexc136:                                        ; preds = %bb.am
  unreachable

_ZNKSt6vectorIN4Luau12AstTablePropESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.al
  %i.cy = sdiv exact i64 %i.cw, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.cz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cy ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cy
  %i.db = call i64 @llvm.umin.i64(i64 %i.cz, i64 164703072086692425)
  %i.dc = select i1 %i.da, i64 164703072086692425, i64 %i.db ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dd = mul nuw nsw i64 %i.dc, 56
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #35
          to label %.noexc137 unwind label %.loopexit456 ; 5 uses

.noexc137:                                        ; preds = %_ZNKSt6vectorIN4Luau12AstTablePropESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cw ; 6 uses
  store ptr %i.cm, ptr %i.df, align 8
  %.sroa.6346.0..sroa_idx347 = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6346.0..sroa_idx347, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6349, i64 16, i1 false)
  %.sroa.7348.0..sroa_idx349 = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  store ptr %i.cj, ptr %.sroa.7348.0..sroa_idx349, align 8
  %.sroa.8351.0..sroa_idx352 = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  store i32 %.041, ptr %.sroa.8351.0..sroa_idx352, align 8
  %.sroa.9354.0..sroa_idx355 = getelementptr inbounds nuw i8, ptr %i.df, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9354.0..sroa_idx355, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0364, i64 16, i1 false)
  %.sroa.9354.sroa.6.0..sroa.9354.0..sroa_idx355.sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 52
  store i8 %.sroa.10363.0, ptr %.sroa.9354.sroa.6.0..sroa.9354.0..sroa_idx355.sroa_idx, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ct, %i.cp
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau12AstTablePropESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc137, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.i ], [ %i.de, %.noexc137 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i ], [ %i.ct, %.noexc137 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i.i, i64 56, i1 false), !alias.scope !972
  %i.dg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dg, %i.cp
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau12AstTablePropESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !976

_ZNSt6vectorIN4Luau12AstTablePropESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc137
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.de, %.noexc137 ], [ %i.dh, %.lr.ph.i.i.i.i.i.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 56
  %.not.i23.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4Luau12AstTablePropESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN4Luau12AstTablePropESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.dj = load ptr, ptr %i.ae, align 8, !tbaa !174
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = sub i64 %i.dk, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.dl) #36
  br label %_ZNSt6vectorIN4Luau12AstTablePropESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau12AstTablePropESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.an, %_ZNSt6vectorIN4Luau12AstTablePropESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.de, ptr %i.h, align 8, !tbaa !171
  store ptr %i.di, ptr %i.i, align 8, !tbaa !970
  %i.dm = getelementptr inbounds nuw [56 x i8], ptr %i.de, i64 %i.dc
  store ptr %i.dm, ptr %i.ae, align 8, !tbaa !174
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN4Luau12AstTablePropESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ak
  %i.dn = add i64 %.sroa.13406.0625, 1            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6349)
  %i.do = load i8, ptr %i.af, align 8, !tbaa !393, !range !52, !noundef !53
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.ap, label %bb.bd

bb.ap:                                            ; preds = %bb.ao
  %i.dq = load i32, ptr %i.w, align 8, !tbaa !110 ; 2 uses
  %i.dr = icmp eq i32 %i.dq, 44
  %i.ds = icmp eq i32 %i.dq, 59
  %..i = select i1 %i.ds, i32 1, i32 2
  %.0.i138 = select i1 %i.dr, i32 0, i32 %..i     ; 3 uses
  %i.dt = load i64, ptr %i.al, align 4            ; 2 uses
  %.not92 = icmp eq i32 %.0.i138, 2
  br i1 %.not92, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.du = load i64, ptr %i.x, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %storemerge93 = phi i64 [ %i.du, %bb.aq ], [ -1, %bb.ap ] ; 2 uses
  %i.dv = load ptr, ptr %i.ao, align 8, !tbaa !373, !nonnull !53, !align !374
  %i.dw = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i64 noundef 32)
          to label %.noexc139 unwind label %.loopexit461 ; 3 uses

.noexc139:                                        ; preds = %bb.ar
  %.sroa.0.0.copyload.i = load ptr, ptr %11, align 8, !tbaa !45
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !19
  invoke void @_ZN4Luau21CstExprConstantStringC1ENS_8AstArrayIcEENS0_10QuoteStyleEj(ptr noundef nonnull align 8 dereferenceable(32) %i.dw, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i32 noundef %.0416, i32 noundef %.0417)
          to label %_ZN4Luau9Allocator5allocINS_21CstExprConstantStringEJRNS_8AstArrayIcEERNS2_10QuoteStyleERjEEEPT_DpOT0_.exit unwind label %.loopexit461

_ZN4Luau9Allocator5allocINS_21CstExprConstantStringEJRNS_8AstArrayIcEERNS2_10QuoteStyleERjEEEPT_DpOT0_.exit: ; preds = %.noexc139
  %i.dx = load ptr, ptr %i.p, align 8, !tbaa !971 ; 12 uses
  %i.dy = load ptr, ptr %i.ag, align 8, !tbaa !170
  %.not.i.i141 = icmp eq ptr %i.dx, %i.dy
  br i1 %.not.i.i141, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZN4Luau9Allocator5allocINS_21CstExprConstantStringEJRNS_8AstArrayIcEERNS2_10QuoteStyleERjEEEPT_DpOT0_.exit
  store i32 2, ptr %i.dx, align 8, !tbaa !977
  %.sroa.6323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  store i64 %i.dt, ptr %.sroa.6323.0..sroa_idx, align 4
  %.sroa.7326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  store i64 %.sroa.029.0, ptr %.sroa.7326.0..sroa_idx, align 4
  %.sroa.8329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  store i64 %.sroa.026.0, ptr %.sroa.8329.0..sroa_idx, align 4
  %.sroa.9332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 28
  store i32 %.0.i138, ptr %.sroa.9332.0..sroa_idx, align 4, !tbaa !979
  %.sroa.10335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  store i64 %storemerge93, ptr %.sroa.10335.0..sroa_idx, align 8
  %.sroa.11338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  store ptr %i.dw, ptr %.sroa.11338.0..sroa_idx, align 8, !tbaa !981
  %.sroa.12341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  store i64 %i.by, ptr %.sroa.12341.0..sroa_idx, align 8
  %i.dz = load ptr, ptr %i.p, align 8, !tbaa !971
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 56
  store ptr %i.ea, ptr %i.p, align 8, !tbaa !971
  br label %bb.aw

bb.at:                                            ; preds = %_ZN4Luau9Allocator5allocINS_21CstExprConstantStringEJRNS_8AstArrayIcEERNS2_10QuoteStyleERjEEEPT_DpOT0_.exit
  %i.eb = load ptr, ptr %i.o, align 8, !tbaa !167 ; 5 uses
  %i.ec = ptrtoint ptr %i.dx to i64
  %i.ed = ptrtoint ptr %i.eb to i64               ; 2 uses
  %i.ee = sub i64 %i.ec, %i.ed                    ; 3 uses
  %i.ef = icmp eq i64 %i.ee, 9223372036854775800
  br i1 %i.ef, label %bb.au, label %_ZNKSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.au:                                            ; preds = %bb.at
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.328) #37
          to label %.noexc151 unwind label %.loopexit.split-lp462

.noexc151:                                        ; preds = %bb.au
  unreachable

_ZNKSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.at
  %i.eg = sdiv exact i64 %i.ee, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i142 = call i64 @llvm.umax.i64(i64 %i.eg, i64 1)
  %i.eh = add nsw i64 %.sroa.speculated.i.i.i.i142, %i.eg ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.eg
  %i.ej = call i64 @llvm.umin.i64(i64 %i.eh, i64 164703072086692425)
  %i.ek = select i1 %i.ei, i64 164703072086692425, i64 %i.ej ; 3 uses
  %.not.i.i.i.i143 = icmp ne i64 %i.ek, 0
  call void @llvm.assume(i1 %.not.i.i.i.i143)
  %i.el = mul nuw nsw i64 %i.ek, 56
  %i.em = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #35
          to label %.noexc152 unwind label %.loopexit461 ; 5 uses

.noexc152:                                        ; preds = %_ZNKSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ee ; 8 uses
  store i32 2, ptr %i.en, align 8, !tbaa !977
  %.sroa.6323.0..sroa_idx324 = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i64 %i.dt, ptr %.sroa.6323.0..sroa_idx324, align 4
  %.sroa.7326.0..sroa_idx327 = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store i64 %.sroa.029.0, ptr %.sroa.7326.0..sroa_idx327, align 4
  %.sroa.8329.0..sroa_idx330 = getelementptr inbounds nuw i8, ptr %i.en, i64 20
  store i64 %.sroa.026.0, ptr %.sroa.8329.0..sroa_idx330, align 4
  %.sroa.9332.0..sroa_idx333 = getelementptr inbounds nuw i8, ptr %i.en, i64 28
  store i32 %.0.i138, ptr %.sroa.9332.0..sroa_idx333, align 4, !tbaa !979
  %.sroa.10335.0..sroa_idx336 = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  store i64 %storemerge93, ptr %.sroa.10335.0..sroa_idx336, align 8
  %.sroa.11338.0..sroa_idx339 = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  store ptr %i.dw, ptr %.sroa.11338.0..sroa_idx339, align 8, !tbaa !981
  %.sroa.12341.0..sroa_idx342 = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  store i64 %i.by, ptr %.sroa.12341.0..sroa_idx342, align 8
  %.not10.i.i.i.i.i.i144 = icmp eq ptr %i.eb, %i.dx
  br i1 %.not10.i.i.i.i.i.i144, label %_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i145

.lr.ph.i.i.i.i.i.i145:                            ; preds = %.noexc152, %.lr.ph.i.i.i.i.i.i145
  %.012.i.i.i.i.i.i146 = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.i145 ], [ %i.em, %.noexc152 ] ; 2 uses
  %.0911.i.i.i.i.i.i147 = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.i145 ], [ %i.eb, %.noexc152 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i.i146, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i.i147, i64 56, i1 false), !tbaa.struct !983, !alias.scope !984
  %i.eo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i147, i64 56 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i146, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i148 = icmp eq ptr %i.eo, %i.dx
  br i1 %.not.i.i.i.i.i.i148, label %_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i145, !llvm.loop !988

_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i145, %.noexc152
  %.0.lcssa.i.i.i.i.i.i149 = phi ptr [ %i.em, %.noexc152 ], [ %i.ep, %.lr.ph.i.i.i.i.i.i145 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i149, i64 56
  %.not.i23.i.i.i150 = icmp eq ptr %i.eb, null
  br i1 %.not.i23.i.i.i150, label %_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.er = load ptr, ptr %i.ag, align 8, !tbaa !170
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = sub i64 %i.es, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.et) #36
  br label %_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.av, %_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.em, ptr %i.o, align 8, !tbaa !167
  store ptr %i.eq, ptr %i.p, align 8, !tbaa !971
  %i.eu = getelementptr inbounds nuw [56 x i8], ptr %i.em, i64 %i.ek
  store ptr %i.eu, ptr %i.ag, align 8, !tbaa !170
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.as
  %i.ev = add i64 %.sroa.14.0623, 1
  br label %bb.bd

bb.ax:                                            ; preds = %bb.w
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ay:                                            ; preds = %bb.z, %.noexc125, %bb.y
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.be

bb.az:                                            ; preds = %bb.ad, %bb.ac
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ba:                                            ; preds = %bb.ag, %bb.af
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit456:                                     ; preds = %_ZNKSt6vectorIN4Luau12AstTablePropESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit458 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.loopexit.split-lp457:                            ; preds = %bb.am
  %lpad.loopexit.split-lp459 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit.split-lp457, %.loopexit456
  %lpad.phi460 = phi { ptr, i32 } [ %lpad.loopexit458, %.loopexit456 ], [ %lpad.loopexit.split-lp459, %.loopexit.split-lp457 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6349)
  br label %bb.be

.loopexit461:                                     ; preds = %bb.ar, %.noexc139, %_ZNKSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit463 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp462:                            ; preds = %bb.au
  %lpad.loopexit.split-lp464 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.thread419:                                       ; preds = %bb.ah, %bb.ai
  invoke void (ptr, ptr, ptr, ...) @_ZN4Luau6Parser6reportERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.al, ptr noundef nonnull @.str.233)
          to label %bb.bd unwind label %bb.bc

bb.bc:                                            ; preds = %.thread419
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %.thread419, %bb.ao, %bb.aw
  %.sroa.14.1 = phi i64 [ %.sroa.14.0623, %.thread419 ], [ %i.ev, %bb.aw ], [ %.sroa.14.0623, %bb.ao ]
  %.sroa.13406.1 = phi i64 [ %.sroa.13406.0625, %.thread419 ], [ %i.dn, %bb.aw ], [ %i.dn, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.bx

bb.be:                                            ; preds = %.loopexit461, %.loopexit.split-lp462, %bb.ay, %bb.az, %bb.ba, %bb.bc, %bb.bb, %bb.ax
  %.pn96.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ew, %bb.ax ], [ %i.ex, %bb.ay ], [ %lpad.phi460, %bb.bb ], [ %i.ey, %bb.az ], [ %i.fa, %bb.bc ], [ %i.ez, %bb.ba ], [ %lpad.loopexit463, %.loopexit461 ], [ %lpad.loopexit.split-lp464, %.loopexit.split-lp462 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.by

.critedge2:                                       ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.bf

bb.bf:                                            ; preds = %.critedge2, %bb.o
  %.not84 = icmp eq ptr %.0412624, null
  br i1 %.not84, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0364, i64 16, i1 false)
  store i8 %.sroa.10363.0, ptr %.sroa.10363.0..sroa_idx, align 8
  invoke void @_ZN4Luau6Parser17parseTableIndexerENS_14AstTableAccessESt8optionalINS_8LocationEENS_6LexemeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Parser::TableIndexerResult") align 8 %14, ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef %.041, ptr noundef nonnull byval(%"class.std::optional.182") align 8 %15, ptr noundef nonnull byval(%"struct.Luau::Lexeme") align 8 %9)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.fb = load ptr, ptr %14, align 8, !tbaa !632
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  invoke void (ptr, ptr, ptr, ...) @_ZN4Luau6Parser6reportERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.fc, ptr noundef nonnull @.str.260)
          to label %bb.bx unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.by

bb.bj:                                            ; preds = %bb.bh
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bk:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0364, i64 16, i1 false)
  store i8 %.sroa.10363.0, ptr %.sroa.10363.0..sroa_idx364, align 8
  invoke void @_ZN4Luau6Parser17parseTableIndexerENS_14AstTableAccessESt8optionalINS_8LocationEENS_6LexemeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Parser::TableIndexerResult") align 8 %16, ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef %.041, ptr noundef nonnull byval(%"class.std::optional.182") align 8 %17, ptr noundef nonnull byval(%"struct.Luau::Lexeme") align 8 %9)
          to label %bb.bl unwind label %bb.bu

bb.bl:                                            ; preds = %bb.bk
  %i.ff = load ptr, ptr %16, align 8, !tbaa !632
  %i.fg = load i8, ptr %i.af, align 8, !tbaa !393, !range !52, !noundef !53
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.bm, label %bb.bv

bb.bm:                                            ; preds = %bb.bl
  %i.fi = load i32, ptr %i.w, align 8, !tbaa !110 ; 2 uses
  %i.fj = icmp eq i32 %i.fi, 44
  %i.fk = icmp eq i32 %i.fi, 59
  %..i153 = select i1 %i.fk, i32 1, i32 2
  %.0.i154 = select i1 %i.fj, i32 0, i32 %..i153  ; 3 uses
  %i.fl = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.fm = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.fn = load i64, ptr %i.aj, align 8            ; 2 uses
  %.not85 = icmp eq i32 %.0.i154, 2
  br i1 %.not85, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fo = load i64, ptr %i.x, align 4
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %storemerge86 = phi i64 [ %i.fo, %bb.bn ], [ -1, %bb.bm ] ; 2 uses
  %i.fp = load ptr, ptr %i.p, align 8, !tbaa !971 ; 11 uses
  %i.fq = load ptr, ptr %i.ag, align 8, !tbaa !170
  %.not.i.i155 = icmp eq ptr %i.fp, %i.fq
  br i1 %.not.i.i155, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.fp, align 8, !tbaa !977
  %.sroa.6297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store i64 %i.fl, ptr %.sroa.6297.0..sroa_idx, align 4
  %.sroa.7300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store i64 %i.fm, ptr %.sroa.7300.0..sroa_idx, align 4
  %.sroa.8303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 20
  store i64 %i.fn, ptr %.sroa.8303.0..sroa_idx, align 4
  %.sroa.9306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 28
  store i32 %.0.i154, ptr %.sroa.9306.0..sroa_idx, align 4, !tbaa !979
  %.sroa.10309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  store i64 %storemerge86, ptr %.sroa.10309.0..sroa_idx, align 8
  %.sroa.11312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11312.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.fr = load ptr, ptr %i.p, align 8, !tbaa !971
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 56
  store ptr %i.fs, ptr %i.p, align 8, !tbaa !971
  br label %bb.bt

bb.bq:                                            ; preds = %bb.bo
  %i.ft = load ptr, ptr %i.o, align 8, !tbaa !167 ; 5 uses
  %i.fu = ptrtoint ptr %i.fp to i64
  %i.fv = ptrtoint ptr %i.ft to i64               ; 2 uses
  %i.fw = sub i64 %i.fu, %i.fv                    ; 3 uses
  %i.fx = icmp eq i64 %i.fw, 9223372036854775800
  br i1 %i.fx, label %bb.br, label %_ZNKSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i156

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.328) #37
          to label %.noexc168 unwind label %.loopexit.split-lp452

.noexc168:                                        ; preds = %bb.br
  unreachable

_ZNKSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i156: ; preds = %bb.bq
  %i.fy = sdiv exact i64 %i.fw, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i157 = call i64 @llvm.umax.i64(i64 %i.fy, i64 1)
  %i.fz = add nsw i64 %.sroa.speculated.i.i.i.i157, %i.fy ; 2 uses
  %i.ga = icmp ult i64 %i.fz, %i.fy
  %i.gb = call i64 @llvm.umin.i64(i64 %i.fz, i64 164703072086692425)
  %i.gc = select i1 %i.ga, i64 164703072086692425, i64 %i.gb ; 3 uses
  %.not.i.i.i.i158 = icmp ne i64 %i.gc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i158)
  %i.gd = mul nuw nsw i64 %i.gc, 56
  %i.ge = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gd) #35
          to label %.noexc169 unwind label %.loopexit451 ; 5 uses

.noexc169:                                        ; preds = %_ZNKSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i156
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.fw ; 7 uses
  store i32 0, ptr %i.gf, align 8, !tbaa !977
  %.sroa.6297.0..sroa_idx298 = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  store i64 %i.fl, ptr %.sroa.6297.0..sroa_idx298, align 4
  %.sroa.7300.0..sroa_idx301 = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  store i64 %i.fm, ptr %.sroa.7300.0..sroa_idx301, align 4
  %.sroa.8303.0..sroa_idx304 = getelementptr inbounds nuw i8, ptr %i.gf, i64 20
  store i64 %i.fn, ptr %.sroa.8303.0..sroa_idx304, align 4
  %.sroa.9306.0..sroa_idx307 = getelementptr inbounds nuw i8, ptr %i.gf, i64 28
  store i32 %.0.i154, ptr %.sroa.9306.0..sroa_idx307, align 4, !tbaa !979
  %.sroa.10309.0..sroa_idx310 = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  store i64 %storemerge86, ptr %.sroa.10309.0..sroa_idx310, align 8
  %.sroa.11312.0..sroa_idx313 = getelementptr inbounds nuw i8, ptr %i.gf, i64 40
  %.not10.i.i.i.i.i.i159 = icmp eq ptr %i.ft, %i.fp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11312.0..sroa_idx313, i8 0, i64 16, i1 false)
  br i1 %.not10.i.i.i.i.i.i159, label %_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i164, label %.lr.ph.i.i.i.i.i.i160

.lr.ph.i.i.i.i.i.i160:                            ; preds = %.noexc169, %.lr.ph.i.i.i.i.i.i160
  %.012.i.i.i.i.i.i161 = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.i.i160 ], [ %i.ge, %.noexc169 ] ; 2 uses
  %.0911.i.i.i.i.i.i162 = phi ptr [ %i.gg, %.lr.ph.i.i.i.i.i.i160 ], [ %i.ft, %.noexc169 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i.i161, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i.i162, i64 56, i1 false), !tbaa.struct !983, !alias.scope !989
  %i.gg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i162, i64 56 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i161, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i163 = icmp eq ptr %i.gg, %i.fp
  br i1 %.not.i.i.i.i.i.i163, label %_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i164, label %.lr.ph.i.i.i.i.i.i160, !llvm.loop !988

_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i164: ; preds = %.lr.ph.i.i.i.i.i.i160, %.noexc169
  %.0.lcssa.i.i.i.i.i.i165 = phi ptr [ %i.ge, %.noexc169 ], [ %i.gh, %.lr.ph.i.i.i.i.i.i160 ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i165, i64 56
  %.not.i23.i.i.i166 = icmp eq ptr %i.ft, null
  br i1 %.not.i23.i.i.i166, label %_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i167, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i164
  %i.gj = load ptr, ptr %i.ag, align 8, !tbaa !170
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = sub i64 %i.gk, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef %i.gl) #36
  br label %_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i167

_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i167: ; preds = %bb.bs, %_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i164
  store ptr %i.ge, ptr %i.o, align 8, !tbaa !167
  store ptr %i.gi, ptr %i.p, align 8, !tbaa !971
  %i.gm = getelementptr inbounds nuw [56 x i8], ptr %i.ge, i64 %i.gc
  store ptr %i.gm, ptr %i.ag, align 8, !tbaa !170
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i167, %bb.bp
  %i.gn = add i64 %.sroa.14.0623, 1
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bk
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.loopexit451:                                     ; preds = %_ZNKSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i156
  %lpad.loopexit453 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.loopexit.split-lp452:                            ; preds = %bb.br
  %lpad.loopexit.split-lp454 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt, %bb.bl
  %.sroa.14.2 = phi i64 [ %i.gn, %bb.bt ], [ %.sroa.14.0623, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  br label %bb.bx

bb.bw:                                            ; preds = %.loopexit451, %.loopexit.split-lp452, %bb.bu
  %.pn87.pn = phi { ptr, i32 } [ %i.go, %bb.bu ], [ %lpad.loopexit453, %.loopexit451 ], [ %lpad.loopexit.split-lp454, %.loopexit.split-lp452 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  br label %bb.by

bb.bx:                                            ; preds = %bb.bh, %bb.bv, %bb.bd
  %.sroa.14.3 = phi i64 [ %.sroa.14.1, %bb.bd ], [ %.sroa.14.2, %bb.bv ], [ %.sroa.14.0623, %bb.bh ]
  %.1413 = phi ptr [ %.0412624, %bb.bd ], [ %i.ff, %bb.bv ], [ %.0412624, %bb.bh ]
  %.sroa.13406.2 = phi i64 [ %.sroa.13406.1, %bb.bd ], [ %.sroa.13406.0625, %bb.bv ], [ %.sroa.13406.0625, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %_ZN4Luau6Parser12parseNameOptEPKc.exit.thread425

bb.by:                                            ; preds = %bb.v, %bb.be, %bb.bi, %bb.bj, %bb.bw, %bb.u, %bb.t
  %.pn96.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fd, %bb.bi ], [ %i.bu, %bb.t ], [ %.pn87.pn, %bb.bw ], [ %i.bv, %bb.u ], [ %i.fe, %bb.bj ], [ %.pn96.pn.pn.pn.pn.pn.pn, %bb.be ], [ %i.bw, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.dy

bb.bz:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit119.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #34
  %i.gp = icmp eq i64 %.sroa.13406.0625, 0
  %i.gq = icmp eq ptr %.0412624, null
  %or.cond6.not = select i1 %i.gp, i1 %i.gq, i1 false
  br i1 %or.cond6.not, label %bb.ca, label %.critedge8

bb.ca:                                            ; preds = %bb.bz
  %i.gr = icmp eq i32 %i.bc, 281
  br i1 %i.gr, label %bb.cb, label %.critedge116

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN4Luau5Lexer9lookaheadEv(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Lexeme") align 8 %18, ptr noundef nonnull align 8 dereferenceable(120) %i.v)
          to label %bb.cc unwind label %bb.ci

bb.cc:                                            ; preds = %bb.cb
  %i.gs = load i32, ptr %18, align 8, !tbaa !110
  %.not436 = icmp eq i32 %i.gs, 58
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  %.pre789 = load i32, ptr %i.w, align 8, !tbaa !110 ; 2 uses
  br i1 %.not436, label %bb.cn, label %.loopexit439.a

.critedge116:                                     ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %.loopexit439.a

.loopexit439.a:                                   ; preds = %bb.cc, %.critedge116
  %i.gt = phi i32 [ %i.bc, %.critedge116 ], [ %.pre789, %bb.cc ]
  %i.gu = load i32, ptr %i.b, align 4, !tbaa !236 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !36
  switch i32 %i.gt, label %bb.cd [
    i32 124, label %bb.ce
    i32 38, label %bb.ce
  ]

bb.cd:                                            ; preds = %.loopexit439.a
  %i.gv = invoke { ptr, ptr } @_ZN4Luau6Parser15parseSimpleTypeEbb(ptr noundef nonnull align 8 dereferenceable(1232) %0, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %.noexc172 unwind label %bb.cj, !inline_history !523

.noexc172:                                        ; preds = %bb.cd
  %i.gw = extractvalue { ptr, ptr } %i.gv, 0
  store i32 %i.gu, ptr %i.b, align 4, !tbaa !236
  br label %bb.ce

bb.ce:                                            ; preds = %.noexc172, %.loopexit439.a, %.loopexit439.a
  %.0.i171 = phi ptr [ %i.gw, %.noexc172 ], [ null, %.loopexit439.a ], [ null, %.loopexit439.a ]
  %i.gx = invoke noundef ptr @_ZN4Luau6Parser15parseTypeSuffixEPNS_7AstTypeERKNS_8LocationE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef %.0.i171, ptr noundef nonnull align 4 dereferenceable(16) %5)
          to label %bb.cf unwind label %bb.cj, !inline_history !523 ; 2 uses

bb.cf:                                            ; preds = %bb.ce
  store i32 %i.gu, ptr %i.b, align 4, !tbaa !236
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #34
  store i64 %.sroa.0373.0.copyload, ptr %19, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %.sroa.0373.0.copyload, ptr %i.gy, align 8
  %i.gz = load ptr, ptr %i.ao, align 8, !tbaa !373, !nonnull !53, !align !374
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ha = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i64 noundef 120)
          to label %.noexc176 unwind label %bb.ck ; 2 uses

.noexc176:                                        ; preds = %bb.cf
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.sroa.0.0.copyload.i175 = load ptr, ptr %i.hb, align 8, !tbaa !45
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.hc, align 8, !tbaa !398
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN4Luau16AstTypeReferenceC1ERKNS_8LocationESt8optionalINS_7AstNameEES5_S4_IS1_ES3_bRKNS_8AstArrayINS_13AstTypeOrPackEEEPNS_8AstLocalE(ptr noundef nonnull align 8 dereferenceable(120) %i.ha, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr undef, i8 0, ptr %.sroa.0.0.copyload.i175, ptr noundef nonnull byval(%"class.std::optional.182") align 8 %3, ptr noundef nonnull align 4 dereferenceable(16) %19, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef null)
          to label %bb.cg unwind label %bb.ck

bb.cg:                                            ; preds = %.noexc176
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.hd = load ptr, ptr %i.ao, align 8, !tbaa !373, !nonnull !53, !align !374
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6295)
  %i.he = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6295, ptr noundef nonnull align 4 dereferenceable(16) %i.he, i64 16, i1 false), !tbaa.struct !36
  %i.hf = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.hd, i64 noundef 56)
          to label %bb.ch unwind label %bb.cl     ; 7 uses

bb.ch:                                            ; preds = %bb.cg
  store ptr %i.ha, ptr %i.hf, align 8
  %.sroa.5291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store ptr %i.gx, ptr %.sroa.5291.0..sroa_idx, align 8
  %.sroa.6292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6292.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6295, i64 16, i1 false)
  %.sroa.7293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  store i32 %.041, ptr %.sroa.7293.0..sroa_idx, align 8
  %.sroa.8294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hf, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8294.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0364, i64 16, i1 false)
  %.sroa.8294.sroa.5.0..sroa.8294.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.hf, i64 52
  store i8 %.sroa.10363.0, ptr %.sroa.8294.sroa.5.0..sroa.8294.0..sroa_idx.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6295)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  br label %.loopexit438

bb.ci:                                            ; preds = %bb.cb
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %bb.dy

bb.cj:                                            ; preds = %bb.ce, %bb.cd
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.ck:                                            ; preds = %.noexc176, %bb.cf
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cg
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6295)
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cl
  %.pn.pn = phi { ptr, i32 } [ %i.hi, %bb.ck ], [ %i.hj, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  br label %bb.dy

.critedge8:                                       ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %bb.cn

bb.cn:                                            ; preds = %.critedge8, %bb.cc
  %i.hk = phi i32 [ %i.bc, %.critedge8 ], [ %.pre789, %bb.cc ]
  %.not.i179 = icmp eq i32 %i.hk, 281
  br i1 %.not.i179, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZN4Luau6Parser15reportNameErrorEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull @.str.258)
          to label %.loopexit438 unwind label %.loopexit.split-lp

bb.cp:                                            ; preds = %bb.cn
  %i.hl = load ptr, ptr %i.ac, align 8, !tbaa !22, !noalias !993
  %i.hm = ptrtoint ptr %i.hl to i64               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5290, ptr noundef nonnull align 4 dereferenceable(16) %i.x, i64 16, i1 false)
  invoke void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
          to label %bb.cq unwind label %.loopexit440.a

.loopexit440.a:                                   ; preds = %bb.cp
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

.loopexit.split-lp:                               ; preds = %bb.co
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.cq:                                            ; preds = %bb.cp
  %i.hn = load i32, ptr %i.w, align 8, !tbaa !110
  %.not.i.i182 = icmp eq i32 %i.hn, 58
  br i1 %.not.i.i182, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ho = invoke noundef zeroext i1 @_ZN4Luau6Parser33expectAndConsumeFailWithLookaheadENS_6Lexeme4TypeEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 58, ptr noundef nonnull @.str.258)
          to label %_ZN4Luau6Parser16expectAndConsumeEcPKc.exit185 unwind label %bb.dk ; 0 uses

bb.cs:                                            ; preds = %bb.cq
  invoke void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
          to label %bb.ct unwind label %bb.dk

bb.ct:                                            ; preds = %bb.cs
  %.sroa.0.0.copyload = load i64, ptr %i.ad, align 8
  br label %_ZN4Luau6Parser16expectAndConsumeEcPKc.exit185

_ZN4Luau6Parser16expectAndConsumeEcPKc.exit185:   ; preds = %bb.cr, %bb.ct
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %bb.ct ], [ -1, %bb.cr ] ; 2 uses
  %i.hp = load i32, ptr %i.b, align 4, !tbaa !236 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !36
  %i.hq = load i32, ptr %i.w, align 8, !tbaa !110
  switch i32 %i.hq, label %bb.cu [
    i32 124, label %bb.cv
    i32 38, label %bb.cv
  ]

bb.cu:                                            ; preds = %_ZN4Luau6Parser16expectAndConsumeEcPKc.exit185
  %i.hr = invoke { ptr, ptr } @_ZN4Luau6Parser15parseSimpleTypeEbb(ptr noundef nonnull align 8 dereferenceable(1232) %0, i1 noundef zeroext false, i1 noundef zeroext %1)
          to label %.noexc187 unwind label %bb.dl, !inline_history !523

.noexc187:                                        ; preds = %bb.cu
  %i.hs = extractvalue { ptr, ptr } %i.hr, 0
  store i32 %i.hp, ptr %i.b, align 4, !tbaa !236
  br label %bb.cv

bb.cv:                                            ; preds = %.noexc187, %_ZN4Luau6Parser16expectAndConsumeEcPKc.exit185, %_ZN4Luau6Parser16expectAndConsumeEcPKc.exit185
  %.0.i186 = phi ptr [ %i.hs, %.noexc187 ], [ null, %_ZN4Luau6Parser16expectAndConsumeEcPKc.exit185 ], [ null, %_ZN4Luau6Parser16expectAndConsumeEcPKc.exit185 ]
  %i.ht = invoke noundef ptr @_ZN4Luau6Parser15parseTypeSuffixEPNS_7AstTypeERKNS_8LocationE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef %.0.i186, ptr noundef nonnull align 4 dereferenceable(16) %2)
          to label %bb.cw unwind label %bb.dl, !inline_history !523 ; 2 uses

bb.cw:                                            ; preds = %bb.cv
  store i32 %i.hp, ptr %i.b, align 4, !tbaa !236
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.hu = load ptr, ptr %i.i, align 8, !tbaa !970 ; 10 uses
  %i.hv = load ptr, ptr %i.ae, align 8, !tbaa !174
  %.not.i.i190 = icmp eq ptr %i.hu, %i.hv
  br i1 %.not.i.i190, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  store i64 %i.hm, ptr %i.hu, align 8
  %.sroa.6276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6276.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5290, i64 16, i1 false)
  %.sroa.7278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  store ptr %i.ht, ptr %.sroa.7278.0..sroa_idx, align 8
  %.sroa.8281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  store i32 %.041, ptr %.sroa.8281.0..sroa_idx, align 8
  %.sroa.9284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hu, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9284.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0364, i64 16, i1 false)
  %.sroa.9284.sroa.6.0..sroa.9284.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.hu, i64 52
  store i8 %.sroa.10363.0, ptr %.sroa.9284.sroa.6.0..sroa.9284.0..sroa_idx.sroa_idx, align 4
  %i.hw = load ptr, ptr %i.i, align 8, !tbaa !970
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 56
  store ptr %i.hx, ptr %i.i, align 8, !tbaa !970
  br label %bb.db

bb.cy:                                            ; preds = %bb.cw
  %i.hy = load ptr, ptr %i.h, align 8, !tbaa !171 ; 5 uses
  %i.hz = ptrtoint ptr %i.hu to i64
  %i.ia = ptrtoint ptr %i.hy to i64               ; 2 uses
  %i.ib = sub i64 %i.hz, %i.ia                    ; 3 uses
  %i.ic = icmp eq i64 %i.ib, 9223372036854775800
  br i1 %i.ic, label %bb.cz, label %_ZNKSt6vectorIN4Luau12AstTablePropESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i191

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.328) #37
          to label %.noexc203 unwind label %.loopexit.split-lp442

.noexc203:                                        ; preds = %bb.cz
  unreachable

_ZNKSt6vectorIN4Luau12AstTablePropESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i191: ; preds = %bb.cy
  %i.id = sdiv exact i64 %i.ib, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i192 = call i64 @llvm.umax.i64(i64 %i.id, i64 1)
  %i.ie = add nsw i64 %.sroa.speculated.i.i.i.i192, %i.id ; 2 uses
  %i.if = icmp ult i64 %i.ie, %i.id
  %i.ig = call i64 @llvm.umin.i64(i64 %i.ie, i64 164703072086692425)
  %i.ih = select i1 %i.if, i64 164703072086692425, i64 %i.ig ; 3 uses
  %.not.i.i.i.i193 = icmp ne i64 %i.ih, 0
  call void @llvm.assume(i1 %.not.i.i.i.i193)
  %i.ii = mul nuw nsw i64 %i.ih, 56
  %i.ij = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ii) #35
          to label %.noexc204 unwind label %.loopexit441 ; 5 uses

.noexc204:                                        ; preds = %_ZNKSt6vectorIN4Luau12AstTablePropESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i191
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ib ; 6 uses
  store i64 %i.hm, ptr %i.ik, align 8
  %.sroa.6276.0..sroa_idx277 = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6276.0..sroa_idx277, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5290, i64 16, i1 false)
  %.sroa.7278.0..sroa_idx279 = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  store ptr %i.ht, ptr %.sroa.7278.0..sroa_idx279, align 8
  %.sroa.8281.0..sroa_idx282 = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  store i32 %.041, ptr %.sroa.8281.0..sroa_idx282, align 8
  %.sroa.9284.0..sroa_idx285 = getelementptr inbounds nuw i8, ptr %i.ik, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9284.0..sroa_idx285, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0364, i64 16, i1 false)
  %.sroa.9284.sroa.6.0..sroa.9284.0..sroa_idx285.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ik, i64 52
  store i8 %.sroa.10363.0, ptr %.sroa.9284.sroa.6.0..sroa.9284.0..sroa_idx285.sroa_idx, align 4
  %.not10.i.i.i.i.i.i194 = icmp eq ptr %i.hy, %i.hu
  br i1 %.not10.i.i.i.i.i.i194, label %_ZNSt6vectorIN4Luau12AstTablePropESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i199, label %.lr.ph.i.i.i.i.i.i195

.lr.ph.i.i.i.i.i.i195:                            ; preds = %.noexc204, %.lr.ph.i.i.i.i.i.i195
  %.012.i.i.i.i.i.i196 = phi ptr [ %i.im, %.lr.ph.i.i.i.i.i.i195 ], [ %i.ij, %.noexc204 ] ; 2 uses
  %.0911.i.i.i.i.i.i197 = phi ptr [ %i.il, %.lr.ph.i.i.i.i.i.i195 ], [ %i.hy, %.noexc204 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i.i196, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i.i197, i64 56, i1 false), !alias.scope !996
  %i.il = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i197, i64 56 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i196, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i198 = icmp eq ptr %i.il, %i.hu
  br i1 %.not.i.i.i.i.i.i198, label %_ZNSt6vectorIN4Luau12AstTablePropESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i199, label %.lr.ph.i.i.i.i.i.i195, !llvm.loop !976

_ZNSt6vectorIN4Luau12AstTablePropESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i199: ; preds = %.lr.ph.i.i.i.i.i.i195, %.noexc204
  %.0.lcssa.i.i.i.i.i.i200 = phi ptr [ %i.ij, %.noexc204 ], [ %i.im, %.lr.ph.i.i.i.i.i.i195 ]
  %i.in = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i200, i64 56
  %.not.i23.i.i.i201 = icmp eq ptr %i.hy, null
  br i1 %.not.i23.i.i.i201, label %_ZNSt6vectorIN4Luau12AstTablePropESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i202, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIN4Luau12AstTablePropESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i199
  %i.io = load ptr, ptr %i.ae, align 8, !tbaa !174
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = sub i64 %i.ip, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef %i.iq) #36
  br label %_ZNSt6vectorIN4Luau12AstTablePropESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i202

_ZNSt6vectorIN4Luau12AstTablePropESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i202: ; preds = %bb.da, %_ZNSt6vectorIN4Luau12AstTablePropESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i199
  store ptr %i.ij, ptr %i.h, align 8, !tbaa !171
  store ptr %i.in, ptr %i.i, align 8, !tbaa !970
  %i.ir = getelementptr inbounds nuw [56 x i8], ptr %i.ij, i64 %i.ih
  store ptr %i.ir, ptr %i.ae, align 8, !tbaa !174
  br label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorIN4Luau12AstTablePropESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i202, %bb.cx
  %i.is = add i64 %.sroa.13406.0625, 1            ; 2 uses
  %i.it = load i8, ptr %i.af, align 8, !tbaa !393, !range !52, !noundef !53
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %bb.dc, label %_ZN4Luau6Parser12parseNameOptEPKc.exit.thread425

bb.dc:                                            ; preds = %bb.db
  %i.iv = load i32, ptr %i.w, align 8, !tbaa !110 ; 2 uses
  %i.iw = icmp eq i32 %i.iv, 44
  %i.ix = icmp eq i32 %i.iv, 59
  %..i206 = select i1 %i.ix, i32 1, i32 2
  %.0.i207 = select i1 %i.iw, i32 0, i32 %..i206  ; 3 uses
  %.not77 = icmp eq i32 %.0.i207, 2
  br i1 %.not77, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.iy = load i64, ptr %i.x, align 4
  br label %bb.de

bb.de:                                            ; preds = %bb.dc, %bb.dd
  %storemerge = phi i64 [ %i.iy, %bb.dd ], [ -1, %bb.dc ] ; 2 uses
  %i.iz = load ptr, ptr %i.p, align 8, !tbaa !971 ; 10 uses
  %i.ja = load ptr, ptr %i.ag, align 8, !tbaa !170
  %.not.i.i208 = icmp eq ptr %i.iz, %i.ja
  br i1 %.not.i.i208, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  store i32 1, ptr %i.iz, align 8, !tbaa !977
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iz, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 -1, i64 16, i1 false)
  store i64 %.sroa.0.0, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iz, i64 28
  store i32 %.0.i207, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !979
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iz, i64 32
  store i64 %storemerge, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iz, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.jb = load ptr, ptr %i.p, align 8, !tbaa !971
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 56
  store ptr %i.jc, ptr %i.p, align 8, !tbaa !971
  br label %bb.dj

bb.dg:                                            ; preds = %bb.de
  %i.jd = load ptr, ptr %i.o, align 8, !tbaa !167 ; 5 uses
  %i.je = ptrtoint ptr %i.iz to i64
  %i.jf = ptrtoint ptr %i.jd to i64               ; 2 uses
  %i.jg = sub i64 %i.je, %i.jf                    ; 3 uses
  %i.jh = icmp eq i64 %i.jg, 9223372036854775800
  br i1 %i.jh, label %bb.dh, label %_ZNKSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i209

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.328) #37
          to label %.noexc221 unwind label %.loopexit.split-lp447

.noexc221:                                        ; preds = %bb.dh
  unreachable

_ZNKSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i209: ; preds = %bb.dg
  %i.ji = sdiv exact i64 %i.jg, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i210 = call i64 @llvm.umax.i64(i64 %i.ji, i64 1)
  %i.jj = add nsw i64 %.sroa.speculated.i.i.i.i210, %i.ji ; 2 uses
  %i.jk = icmp ult i64 %i.jj, %i.ji
  %i.jl = call i64 @llvm.umin.i64(i64 %i.jj, i64 164703072086692425)
  %i.jm = select i1 %i.jk, i64 164703072086692425, i64 %i.jl ; 3 uses
  %.not.i.i.i.i211 = icmp ne i64 %i.jm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i211)
  %i.jn = mul nuw nsw i64 %i.jm, 56
  %i.jo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jn) #35
          to label %.noexc222 unwind label %.loopexit446 ; 5 uses

.noexc222:                                        ; preds = %_ZNKSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i209
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jg ; 6 uses
  store i32 1, ptr %i.jp, align 8, !tbaa !977
  %.sroa.6.0..sroa_idx258 = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %.sroa.8.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %i.jp, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx258, i8 -1, i64 16, i1 false)
  store i64 %.sroa.0.0, ptr %.sroa.8.0..sroa_idx262, align 4
  %.sroa.9.0..sroa_idx264 = getelementptr inbounds nuw i8, ptr %i.jp, i64 28
  store i32 %.0.i207, ptr %.sroa.9.0..sroa_idx264, align 4, !tbaa !979
  %.sroa.10.0..sroa_idx266 = getelementptr inbounds nuw i8, ptr %i.jp, i64 32
  store i64 %storemerge, ptr %.sroa.10.0..sroa_idx266, align 8
  %.sroa.11.0..sroa_idx268 = getelementptr inbounds nuw i8, ptr %i.jp, i64 40
  %.not10.i.i.i.i.i.i212 = icmp eq ptr %i.jd, %i.iz
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx268, i8 0, i64 16, i1 false)
  br i1 %.not10.i.i.i.i.i.i212, label %_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i217, label %.lr.ph.i.i.i.i.i.i213

.lr.ph.i.i.i.i.i.i213:                            ; preds = %.noexc222, %.lr.ph.i.i.i.i.i.i213
  %.012.i.i.i.i.i.i214 = phi ptr [ %i.jr, %.lr.ph.i.i.i.i.i.i213 ], [ %i.jo, %.noexc222 ] ; 2 uses
  %.0911.i.i.i.i.i.i215 = phi ptr [ %i.jq, %.lr.ph.i.i.i.i.i.i213 ], [ %i.jd, %.noexc222 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i.i214, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i.i215, i64 56, i1 false), !tbaa.struct !983, !alias.scope !1000
  %i.jq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i215, i64 56 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i214, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i216 = icmp eq ptr %i.jq, %i.iz
  br i1 %.not.i.i.i.i.i.i216, label %_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i217, label %.lr.ph.i.i.i.i.i.i213, !llvm.loop !988

_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i217: ; preds = %.lr.ph.i.i.i.i.i.i213, %.noexc222
  %.0.lcssa.i.i.i.i.i.i218 = phi ptr [ %i.jo, %.noexc222 ], [ %i.jr, %.lr.ph.i.i.i.i.i.i213 ]
  %i.js = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i218, i64 56
  %.not.i23.i.i.i219 = icmp eq ptr %i.jd, null
  br i1 %.not.i23.i.i.i219, label %_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i220, label %bb.di

bb.di:                                            ; preds = %_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i217
  %i.jt = load ptr, ptr %i.ag, align 8, !tbaa !170
  %i.ju = ptrtoint ptr %i.jt to i64
  %i.jv = sub i64 %i.ju, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.jd, i64 noundef %i.jv) #36
  br label %_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i220

_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i220: ; preds = %bb.di, %_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i217
  store ptr %i.jo, ptr %i.o, align 8, !tbaa !167
  store ptr %i.js, ptr %i.p, align 8, !tbaa !971
  %i.jw = getelementptr inbounds nuw [56 x i8], ptr %i.jo, i64 %i.jm
  store ptr %i.jw, ptr %i.ag, align 8, !tbaa !170
  br label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i220, %bb.df
  %i.jx = add i64 %.sroa.14.0623, 1
  br label %_ZN4Luau6Parser12parseNameOptEPKc.exit.thread425

bb.dk:                                            ; preds = %bb.cs, %bb.cr
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.dl:                                            ; preds = %bb.cv, %bb.cu
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

.loopexit441:                                     ; preds = %_ZNKSt6vectorIN4Luau12AstTablePropESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i191
  %lpad.loopexit443 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

.loopexit.split-lp442:                            ; preds = %bb.cz
  %lpad.loopexit.split-lp444 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

.loopexit446:                                     ; preds = %_ZNKSt6vectorIN4Luau12CstTypeTable4ItemESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i209
  %lpad.loopexit448 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

.loopexit.split-lp447:                            ; preds = %bb.dh
  %lpad.loopexit.split-lp449 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

_ZN4Luau6Parser12parseNameOptEPKc.exit.thread425: ; preds = %bb.db, %bb.dj, %bb.bx
  %.sroa.14.5 = phi i64 [ %.sroa.14.3, %bb.bx ], [ %.sroa.14.0623, %bb.db ], [ %i.jx, %bb.dj ] ; 4 uses
  %.2414 = phi ptr [ %.1413, %bb.bx ], [ %.0412624, %bb.db ], [ %.0412624, %bb.dj ] ; 4 uses
  %.sroa.13406.4 = phi i64 [ %.sroa.13406.2, %bb.bx ], [ %i.is, %bb.db ], [ %i.is, %bb.dj ] ; 4 uses
  %i.ka = load i32, ptr %i.w, align 8, !tbaa !110
  switch i32 %i.ka, label %.loopexit438.thread839 [
    i32 44, label %bb.dm
    i32 59, label %bb.dm
    i32 125, label %.loopexit438.thread
  ]

.loopexit438.thread839:                           ; preds = %_ZN4Luau6Parser12parseNameOptEPKc.exit.thread425
  %.sroa.5253.0.copyload845 = load i64, ptr %.sroa.8376.0..sroa_idx, align 4
  br label %bb.do

bb.dm:                                            ; preds = %_ZN4Luau6Parser12parseNameOptEPKc.exit.thread425, %_ZN4Luau6Parser12parseNameOptEPKc.exit.thread425
end_hunk_6
begin_hunk_7_@_ZN4Luau6Parser14parseTableTypeEb:bb.a

bb.dr:                                            ; preds = %bb.dp, %.noexc226, %bb.do
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit229.thread: ; preds = %bb.dp, %bb.dq, %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit229
  %.sroa.13406.6836 = phi i64 [ %.sroa.13406.5.ph849, %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit229 ], [ %.sroa.13406.5.ph849, %bb.dq ], [ %.sroa.13406.6837, %bb.dp ] ; 7 uses
  %.2834 = phi i1 [ %.1411.ph848, %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit229 ], [ %.1411.ph848, %bb.dq ], [ %.2835, %bb.dp ]
  %.4832 = phi ptr [ %.3.ph847, %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit229 ], [ %.3.ph847, %bb.dq ], [ %.4833, %bb.dp ]
  %.sroa.14.7830 = phi i64 [ %.sroa.14.6.ph846, %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit229 ], [ %.sroa.14.6.ph846, %bb.dq ], [ %.sroa.14.7831, %bb.dp ] ; 7 uses
  %.sroa.5253.0 = phi i64 [ %.sroa.5253.0.copyload850, %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit229 ], [ %.sroa.5253.0.copyload255, %bb.dq ], [ %.sroa.5253.0.copyload838, %bb.dp ]
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !373, !nonnull !53, !align !374 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #34
  store i64 %.sroa.0373.0.copyload, ptr %20, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %.sroa.5253.0, ptr %i.kg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #34
  %i.kh = icmp eq i64 %.sroa.13406.6836, 0
  br i1 %i.kh, label %.loopexit437, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit229.thread
  %i.ki = load ptr, ptr %i.h, align 8, !tbaa !171
  %i.kj = getelementptr i8, ptr %i.ki, i64 %i.n   ; 3 uses
  %i.kk = mul i64 %.sroa.13406.6836, 56
  %i.kl = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.kf, i64 noundef %i.kk)
          to label %.lr.ph.i.i.preheader unwind label %bb.du ; 5 uses

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i
  %xtraiter = and i64 %.sroa.13406.6836, 1
  %i.km = icmp eq i64 %.sroa.13406.6836, 1
  br i1 %i.km, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.sroa.13406.6836, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.010.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ks, %.lr.ph.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.kn = getelementptr inbounds nuw [56 x i8], ptr %i.kl, i64 %.010.i.i
  %i.ko = getelementptr inbounds nuw [56 x i8], ptr %i.kj, i64 %.010.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kn, ptr noundef nonnull align 8 dereferenceable(56) %i.ko, i64 56, i1 false)
  %i.kp = or disjoint i64 %.010.i.i, 1            ; 2 uses
  %i.kq = getelementptr inbounds nuw [56 x i8], ptr %i.kl, i64 %i.kp
  %i.kr = getelementptr inbounds nuw [56 x i8], ptr %i.kj, i64 %i.kp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kq, ptr noundef nonnull align 8 dereferenceable(56) %i.kr, i64 56, i1 false)
  %i.ks = add nuw i64 %.010.i.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit437.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !1004

.loopexit437.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit437, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit437.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.010.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ks, %.loopexit437.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1436 = trunc i64 %.sroa.13406.6836 to i1
  call void @llvm.assume(i1 %lcmp.mod1436)
  %i.kt = getelementptr inbounds nuw [56 x i8], ptr %i.kl, i64 %.010.i.i.epil.init
  %i.ku = getelementptr inbounds nuw [56 x i8], ptr %i.kj, i64 %.010.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kt, ptr noundef nonnull align 8 dereferenceable(56) %i.ku, i64 56, i1 false)
  br label %.loopexit437

.loopexit437:                                     ; preds = %.lr.ph.i.i.epil.preheader, %.loopexit437.loopexit.unr-lcssa, %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit229.thread
  %i.kv = phi ptr [ null, %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit229.thread ], [ %i.kl, %.loopexit437.loopexit.unr-lcssa ], [ %i.kl, %.lr.ph.i.i.epil.preheader ]
  store ptr %i.kv, ptr %21, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %.sroa.13406.6836, ptr %i.kw, align 8
  %i.kx = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.kf, i64 noundef 56)
          to label %.noexc231 unwind label %bb.du ; 3 uses

.noexc231:                                        ; preds = %.loopexit437
  invoke void @_ZN4Luau12AstTypeTableC1ERKNS_8LocationERKNS_8AstArrayINS_12AstTablePropEEEPNS_15AstTableIndexerE(ptr noundef nonnull align 8 dereferenceable(56) %i.kx, ptr noundef nonnull align 4 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef %.4832)
          to label %_ZN4Luau9Allocator5allocINS_12AstTypeTableEJNS_8LocationENS_8AstArrayINS_12AstTablePropEEERPNS_15AstTableIndexerEEEEPT_DpOT0_.exit unwind label %bb.du

_ZN4Luau9Allocator5allocINS_12AstTypeTableEJNS_8LocationENS_8AstArrayINS_12AstTablePropEEERPNS_15AstTableIndexerEEEEPT_DpOT0_.exit: ; preds = %.noexc231
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.kz = load i8, ptr %i.ky, align 8, !tbaa !393, !range !52, !noundef !53
  %i.la = trunc nuw i8 %i.kz to i1
  br i1 %i.la, label %bb.ds, label %bb.dx

bb.ds:                                            ; preds = %_ZN4Luau9Allocator5allocINS_12AstTypeTableEJNS_8LocationENS_8AstArrayINS_12AstTablePropEEERPNS_15AstTableIndexerEEEEPT_DpOT0_.exit
  %i.lb = load ptr, ptr %i.ke, align 8, !tbaa !373, !nonnull !53, !align !374 ; 2 uses
  %i.lc = icmp eq i64 %.sroa.14.7830, 0
  br i1 %i.lc, label %.loopexit, label %.lr.ph.preheader.i.i233

.lr.ph.preheader.i.i233:                          ; preds = %bb.ds
  %i.ld = load ptr, ptr %i.o, align 8, !tbaa !167
  %i.le = getelementptr i8, ptr %i.ld, i64 %i.u   ; 3 uses
  %i.lf = mul i64 %.sroa.14.7830, 56
  %i.lg = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.lb, i64 noundef %i.lf)
          to label %.lr.ph.i.i234.preheader unwind label %bb.dv ; 5 uses

.lr.ph.i.i234.preheader:                          ; preds = %.lr.ph.preheader.i.i233
  %xtraiter1437 = and i64 %.sroa.14.7830, 1
  %i.lh = icmp eq i64 %.sroa.14.7830, 1
  br i1 %i.lh, label %.lr.ph.i.i234.epil.preheader, label %.lr.ph.i.i234.preheader.new

.lr.ph.i.i234.preheader.new:                      ; preds = %.lr.ph.i.i234.preheader
  %unroll_iter1440 = and i64 %.sroa.14.7830, -2
  br label %.lr.ph.i.i234

.lr.ph.i.i234:                                    ; preds = %.lr.ph.i.i234, %.lr.ph.i.i234.preheader.new
  %.010.i.i235 = phi i64 [ 0, %.lr.ph.i.i234.preheader.new ], [ %i.ln, %.lr.ph.i.i234 ] ; 4 uses
  %niter1441 = phi i64 [ 0, %.lr.ph.i.i234.preheader.new ], [ %niter1441.next.1, %.lr.ph.i.i234 ]
  %i.li = getelementptr inbounds nuw [56 x i8], ptr %i.lg, i64 %.010.i.i235
  %i.lj = getelementptr inbounds nuw [56 x i8], ptr %i.le, i64 %.010.i.i235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.li, ptr noundef nonnull align 8 dereferenceable(56) %i.lj, i64 56, i1 false), !tbaa.struct !983
  %i.lk = or disjoint i64 %.010.i.i235, 1         ; 2 uses
  %i.ll = getelementptr inbounds nuw [56 x i8], ptr %i.lg, i64 %i.lk
  %i.lm = getelementptr inbounds nuw [56 x i8], ptr %i.le, i64 %i.lk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ll, ptr noundef nonnull align 8 dereferenceable(56) %i.lm, i64 56, i1 false), !tbaa.struct !983
  %i.ln = add nuw i64 %.010.i.i235, 2             ; 2 uses
  %niter1441.next.1 = add nuw i64 %niter1441, 2   ; 2 uses
  %niter1441.ncmp.1 = icmp eq i64 %niter1441.next.1, %unroll_iter1440
  br i1 %niter1441.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i234, !llvm.loop !1005

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i234
  %lcmp.mod1438.not = icmp eq i64 %xtraiter1437, 0
  br i1 %lcmp.mod1438.not, label %.loopexit, label %.lr.ph.i.i234.epil.preheader

.lr.ph.i.i234.epil.preheader:                     ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i234.preheader
  %.010.i.i235.epil.init = phi i64 [ 0, %.lr.ph.i.i234.preheader ], [ %i.ln, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1439 = trunc i64 %.sroa.14.7830 to i1
  call void @llvm.assume(i1 %lcmp.mod1439)
  %i.lo = getelementptr inbounds nuw [56 x i8], ptr %i.lg, i64 %.010.i.i235.epil.init
  %i.lp = getelementptr inbounds nuw [56 x i8], ptr %i.le, i64 %.010.i.i235.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.lo, ptr noundef nonnull align 8 dereferenceable(56) %i.lp, i64 56, i1 false), !tbaa.struct !983
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i234.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ds
  %i.lq = phi ptr [ null, %bb.ds ], [ %i.lg, %.loopexit.loopexit.unr-lcssa ], [ %i.lg, %.lr.ph.i.i234.epil.preheader ]
  %i.lr = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.lb, i64 noundef 32)
          to label %.noexc243 unwind label %bb.dv ; 2 uses

.noexc243:                                        ; preds = %.loopexit
  invoke void @_ZN4Luau12CstTypeTableC1ENS_8AstArrayINS0_4ItemEEEb(ptr noundef nonnull align 8 dereferenceable(25) %i.lr, ptr %i.lq, i64 %.sroa.14.7830, i1 noundef zeroext %.2834)
          to label %_ZN4Luau9Allocator5allocINS_12CstTypeTableEJNS_8AstArrayINS2_4ItemEEERbEEEPT_DpOT0_.exit unwind label %bb.dv

_ZN4Luau9Allocator5allocINS_12CstTypeTableEJNS_8AstArrayINS2_4ItemEEERbEEEPT_DpOT0_.exit: ; preds = %.noexc243
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store ptr %i.kx, ptr %i.a, align 8, !tbaa !394
  %i.lt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ls, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.dt unwind label %bb.dw

bb.dt:                                            ; preds = %_ZN4Luau9Allocator5allocINS_12CstTypeTableEJNS_8AstArrayINS2_4ItemEEERbEEEPT_DpOT0_.exit
  store ptr %i.lr, ptr %i.lt, align 8, !tbaa !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.dx

bb.du:                                            ; preds = %.noexc231, %.loopexit437, %.lr.ph.preheader.i.i
  %i.lu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  br label %bb.dy

bb.dv:                                            ; preds = %.noexc243, %.loopexit, %.lr.ph.preheader.i.i233
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.dw:                                            ; preds = %_ZN4Luau9Allocator5allocINS_12CstTypeTableEJNS_8AstArrayINS2_4ItemEEERbEEEPT_DpOT0_.exit
  %i.lw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dt, %_ZN4Luau9Allocator5allocINS_12AstTypeTableEJNS_8LocationENS_8AstArrayINS_12AstTablePropEEERPNS_15AstTableIndexerEEEEPT_DpOT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.lx = load ptr, ptr %i.o, align 8, !tbaa !1006
  %i.ly = getelementptr inbounds i8, ptr %i.lx, i64 %i.u ; 2 uses
  %i.lz = load ptr, ptr %i.p, align 8, !tbaa !1006
  %.not.i.i.i = icmp eq ptr %i.ly, %i.lz
  br i1 %.not.i.i.i, label %_ZN4Luau10TempVectorINS_12CstTypeTable4ItemEED2Ev.exit, label %_ZSt8_DestroyIPN4Luau12CstTypeTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN4Luau12CstTypeTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.dx
  store ptr %i.ly, ptr %i.p, align 8, !tbaa !971
  br label %_ZN4Luau10TempVectorINS_12CstTypeTable4ItemEED2Ev.exit

_ZN4Luau10TempVectorINS_12CstTypeTable4ItemEED2Ev.exit: ; preds = %bb.dx, %_ZSt8_DestroyIPN4Luau12CstTypeTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.ma = load ptr, ptr %i.h, align 8, !tbaa !1007
  %i.mb = getelementptr inbounds i8, ptr %i.ma, i64 %i.n ; 2 uses
  %i.mc = load ptr, ptr %i.i, align 8, !tbaa !1007
  %.not.i.i.i245 = icmp eq ptr %i.mb, %i.mc
  br i1 %.not.i.i.i245, label %_ZN4Luau10TempVectorINS_12AstTablePropEED2Ev.exit, label %_ZSt8_DestroyIPN4Luau12AstTablePropES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN4Luau12AstTablePropES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZN4Luau10TempVectorINS_12CstTypeTable4ItemEED2Ev.exit
  store ptr %i.mb, ptr %i.i, align 8, !tbaa !970
  br label %_ZN4Luau10TempVectorINS_12AstTablePropEED2Ev.exit

_ZN4Luau10TempVectorINS_12AstTablePropEED2Ev.exit: ; preds = %_ZN4Luau10TempVectorINS_12CstTypeTable4ItemEED2Ev.exit, %_ZSt8_DestroyIPN4Luau12AstTablePropES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  ret ptr %i.kx

bb.dy:                                            ; preds = %bb.j, %bb.k, %bb.by, %bb.ci, %bb.cm, %bb.cj, %.loopexit441, %.loopexit.split-lp442, %.loopexit446, %.loopexit.split-lp447, %.loopexit440.a, %.loopexit.split-lp, %bb.dk, %bb.dl, %bb.dv, %bb.dw, %bb.du, %bb.dr, %bb.i
  %.pn109.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %i.lv, %bb.dv ], [ %i.kd, %bb.dr ], [ %i.lu, %bb.du ], [ %i.lw, %bb.dw ], [ %i.ax, %bb.j ], [ %.pn96.pn.pn.pn.pn.pn.pn.pn.pn, %bb.by ], [ %i.hh, %bb.cj ], [ %i.ay, %bb.k ], [ %i.hg, %bb.ci ], [ %.pn.pn, %bb.cm ], [ %lpad.loopexit.split-lp449, %.loopexit.split-lp447 ], [ %i.jy, %bb.dk ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.jz, %bb.dl ], [ %lpad.loopexit, %.loopexit440.a ], [ %lpad.loopexit448, %.loopexit446 ], [ %lpad.loopexit443, %.loopexit441 ], [ %lpad.loopexit.split-lp444, %.loopexit.split-lp442 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.md = load ptr, ptr %i.o, align 8, !tbaa !1006
  %i.me = getelementptr inbounds i8, ptr %i.md, i64 %i.u ; 2 uses
  %i.mf = load ptr, ptr %i.p, align 8, !tbaa !1006
  %.not.i.i.i246 = icmp eq ptr %i.me, %i.mf
  br i1 %.not.i.i.i246, label %_ZN4Luau10TempVectorINS_12CstTypeTable4ItemEED2Ev.exit248, label %_ZSt8_DestroyIPN4Luau12CstTypeTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i247

_ZSt8_DestroyIPN4Luau12CstTypeTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i247: ; preds = %bb.dy
  store ptr %i.me, ptr %i.p, align 8, !tbaa !971
  br label %_ZN4Luau10TempVectorINS_12CstTypeTable4ItemEED2Ev.exit248

_ZN4Luau10TempVectorINS_12CstTypeTable4ItemEED2Ev.exit248: ; preds = %bb.dy, %_ZSt8_DestroyIPN4Luau12CstTypeTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i247
  %i.mg = load ptr, ptr %i.h, align 8, !tbaa !1007
  %i.mh = getelementptr inbounds i8, ptr %i.mg, i64 %i.n ; 2 uses
  %i.mi = load ptr, ptr %i.i, align 8, !tbaa !1007
  %.not.i.i.i249 = icmp eq ptr %i.mh, %i.mi
  br i1 %.not.i.i.i249, label %_ZN4Luau10TempVectorINS_12AstTablePropEED2Ev.exit251, label %_ZSt8_DestroyIPN4Luau12AstTablePropES1_EvT_S3_RSaIT0_E.exit.i.i.i.i250

_ZSt8_DestroyIPN4Luau12AstTablePropES1_EvT_S3_RSaIT0_E.exit.i.i.i.i250: ; preds = %_ZN4Luau10TempVectorINS_12CstTypeTable4ItemEED2Ev.exit248
  store ptr %i.mh, ptr %i.i, align 8, !tbaa !970
  br label %_ZN4Luau10TempVectorINS_12AstTablePropEED2Ev.exit251

_ZN4Luau10TempVectorINS_12AstTablePropEED2Ev.exit251: ; preds = %_ZN4Luau10TempVectorINS_12CstTypeTable4ItemEED2Ev.exit248, %_ZSt8_DestroyIPN4Luau12AstTablePropES1_EvT_S3_RSaIT0_E.exit.i.i.i.i250
  resume { ptr, i32 } %.pn109.pn.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZN4Luau6Parser14tableSeparatorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1232) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %i.c = icmp eq i32 %i.b, 44
  %i.d = icmp eq i32 %i.b, 59
  %. = select i1 %i.d, i32 1, i32 2
  %.0 = select i1 %i.c, i32 0, i32 %.
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local { ptr, ptr } @_ZN4Luau6Parser17parseFunctionTypeEbRKNS_8AstArrayIPNS_7AstAttrEEE(ptr noundef nonnull align 8 dereferenceable(1232) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::Lexeme", align 8     ; 7 uses
  %4 = alloca %"struct.Luau::Position", align 8   ; 6 uses
  %5 = alloca %"struct.Luau::AstArray.192", align 8 ; 7 uses
  %6 = alloca %"struct.Luau::Position", align 8   ; 6 uses
  %7 = alloca %"struct.std::pair.231", align 8    ; 5 uses
  %8 = alloca %"class.Luau::TempVector.256", align 8 ; 11 uses
  %9 = alloca %"class.Luau::TempVector.257", align 8 ; 10 uses
  %10 = alloca %"class.Luau::TempVector.198", align 8 ; 10 uses
  %11 = alloca %"class.Luau::TempVector.198", align 8 ; 12 uses
  %12 = alloca %"struct.Luau::Parser::MatchLexeme", align 4 ; 6 uses
  %13 = alloca %"struct.Luau::AstTypeList", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %14 = alloca %"struct.Luau::Location", align 8  ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %15 = alloca %"struct.Luau::AstTypeList", align 8 ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %16 = alloca %"struct.Luau::AstArray.255", align 8 ; 3 uses
  %17 = alloca %"struct.Luau::AstArray.268", align 8 ; 3 uses
  %18 = alloca %"struct.Luau::AstArray.192", align 8 ; 6 uses
  %19 = alloca %"struct.Luau::AstArray.192", align 8 ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !236
  %i.g = add i32 %i.f, 1                          ; 2 uses
  store i32 %i.g, ptr %i.e, align 4, !tbaa !236
  %i.h = load i32, ptr @_ZN4FInt18LuauRecursionLimitE, align 8, !tbaa !366
  %i.i = icmp ugt i32 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 132
  tail call void (ptr, ptr, ...) @_ZN4Luau10ParseError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull @.str.320, ptr noundef nonnull @.str.257) #37
  unreachable

_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !110
  %i.m = icmp eq i32 %i.l, 60
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !tbaa.struct !228
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store i64 -1, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i64 -1, ptr %6, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !393, !range !52, !noundef !53
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  call void @_ZN4Luau6Parser20parseGenericTypeListEbPNS_8PositionEPNS_8AstArrayIS1_EES2_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.231") align 8 %7, ptr noundef nonnull align 8 dereferenceable(1232) %0, i1 noundef zeroext false, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6)
  br label %bb.e

bb.d:                                             ; preds = %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  call void @_ZN4Luau6Parser20parseGenericTypeListEbPNS_8PositionEPNS_8AstArrayIS1_EES2_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.231") align 8 %7, ptr noundef nonnull align 8 dereferenceable(1232) %0, i1 noundef zeroext false, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.0199.0.copyload = load i32, ptr %i.k, align 8, !tbaa !229 ; 2 uses
  %.sroa.5200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %.sroa.5200.0.copyload = load i64, ptr %.sroa.5200.0..sroa_idx, align 4 ; 5 uses
  %.not.i.i = icmp eq i32 %.sroa.0199.0.copyload, 40 ; 4 uses
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = call noundef zeroext i1 @_ZN4Luau6Parser33expectAndConsumeFailWithLookaheadENS_6Lexeme4TypeEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 40, ptr noundef nonnull @.str.261) ; 0 uses
  br label %_ZN4Luau6Parser16expectAndConsumeEcPKc.exit

bb.g:                                             ; preds = %bb.e
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %_ZN4Luau6Parser16expectAndConsumeEcPKc.exit

_ZN4Luau6Parser16expectAndConsumeEcPKc.exit:      ; preds = %bb.f, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !203
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1052 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !9
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  store ptr %i.x, ptr %8, align 8, !tbaa !921
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !583
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !163
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  store i64 %i.af, ptr %i.y, align 8, !tbaa !922
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store i64 0, ptr %i.ag, align 8, !tbaa !902
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  store ptr %i.ah, ptr %9, align 8, !tbaa !923
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !856
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !123
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 5
  store i64 %i.ap, ptr %i.ai, align 8, !tbaa !924
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store i64 0, ptr %i.aq, align 8, !tbaa !879
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  store ptr %i.ar, ptr %10, align 8, !tbaa !420
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !422
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !119
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 3
  store i64 %i.az, ptr %i.as, align 8, !tbaa !423
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i64 0, ptr %i.ba, align 8, !tbaa !425
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  store ptr %i.bb, ptr %11, align 8, !tbaa !420
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !422
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !119
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3
  store i64 %i.bj, ptr %i.bc, align 8, !tbaa !423
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store i64 0, ptr %i.bk, align 8, !tbaa !425
  %i.bl = load i32, ptr %i.k, align 8, !tbaa !110
  %.not = icmp eq i32 %i.bl, 41
  br i1 %.not, label %bb.i, label %.invoke

.invoke:                                          ; preds = %_ZN4Luau6Parser16expectAndConsumeEcPKc.exit
  %i.bm = load i8, ptr %i.n, align 8, !tbaa !393, !range !52, !noundef !53
  %i.bn = trunc nuw i8 %i.bm to i1                ; 2 uses
  %i.bo = select i1 %i.bn, ptr %11, ptr null
  %i.bp = select i1 %i.bn, ptr %10, ptr null
  %i.bq = invoke noundef ptr @_ZN4Luau6Parser13parseTypeListERNS_10TempVectorIPNS_7AstTypeEEERNS1_ISt8optionalISt4pairINS_7AstNameENS_8LocationEEEEEPNS1_INS_8PositionEEESG_(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef %i.bo, ptr noundef %i.bp)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %.invoke
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.i:                                             ; preds = %.invoke, %_ZN4Luau6Parser16expectAndConsumeEcPKc.exit
  %.0 = phi ptr [ null, %_ZN4Luau6Parser16expectAndConsumeEcPKc.exit ], [ %i.bq, %.invoke ] ; 3 uses
  %.sroa.0195.0.copyload = load i64, ptr %.sroa.5200.0..sroa_idx, align 4 ; 4 uses
end_hunk_7
begin_hunk_8_@_ZN4Luau6Parser15parseSimpleTypeEbb:bb.a

.sink.split:                                      ; preds = %bb.aj, %bb.ah
  %.sink = phi { ptr, i64 } [ %i.ec, %bb.ah ], [ %i.ee, %bb.aj ] ; 2 uses
  %i.eg = extractvalue { ptr, i64 } %.sink, 0
  %i.eh = extractvalue { ptr, i64 } %.sink, 1
  store ptr %i.eg, ptr %18, align 8, !tbaa !1036
  store i64 %i.eh, ptr %i.dm, align 8, !tbaa !19
  br label %bb.al

bb.al:                                            ; preds = %.sink.split, %_ZNK4Luau7AstNameeqEPKc.exit.thread
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !373, !nonnull !53, !align !374
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #34
  %i.ek = load i64, ptr %6, align 8
  store i64 %i.ek, ptr %22, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %.sroa.4.0.copyload, ptr %i.el, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.em = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i64 noundef 120)
          to label %.noexc unwind label %bb.ap    ; 3 uses

.noexc:                                           ; preds = %bb.al
  %.sroa.0.0.copyload.i68 = load ptr, ptr %15, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.081, i64 16, i1 false)
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %.sroa.586.0, ptr %.sroa.582.0..sroa_idx, align 8
  invoke void @_ZN4Luau16AstTypeReferenceC1ERKNS_8LocationESt8optionalINS_7AstNameEES5_S4_IS1_ES3_bRKNS_8AstArrayINS_13AstTypeOrPackEEEPNS_8AstLocalE(ptr noundef nonnull align 8 dereferenceable(120) %i.em, ptr noundef nonnull align 4 dereferenceable(16) %22, ptr %.sroa.085.0, i8 %.sroa.586.0, ptr %.sroa.0.0.copyload.i68, ptr noundef nonnull byval(%"class.std::optional.182") align 8 %3, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i1 noundef zeroext %i.dy, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef %.1)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #34
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !393, !range !52, !noundef !53
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.eq = load ptr, ptr %i.ei, align 8, !tbaa !373, !nonnull !53, !align !374 ; 2 uses
  %i.er = load i64, ptr %i.dw, align 8, !tbaa !425 ; 9 uses
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %.loopexit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.an
  %i.et = load ptr, ptr %20, align 8, !tbaa !435, !nonnull !53, !align !374
  %i.eu = load i64, ptr %i.do, align 8, !tbaa !423 ; 2 uses
  %i.ev = load ptr, ptr %i.et, align 8, !tbaa !119 ; 2 uses
  %i.ew = ptrtoaddr ptr %i.ev to i64
  %i.ex = getelementptr [8 x i8], ptr %i.ev, i64 %i.eu ; 6 uses
  %i.ey = shl i64 %i.er, 3
  %i.ez = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, i64 noundef %i.ey)
          to label %.lr.ph.i.i.preheader unwind label %bb.aq ; 10 uses

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i
  %min.iters.check = icmp ult i64 %i.er, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader101, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.fa = ptrtoaddr ptr %i.ez to i64
  %i.fb = shl i64 %i.eu, 3
  %i.fc = add i64 %i.fb, %i.ew
  %i.fd = sub i64 %i.fc, %i.fa
  %diff.check = icmp ugt i64 %i.fd, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader101, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.er, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %index ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %index ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %wide.load = load <2 x i64>, ptr %i.ff, align 4
  %wide.load100 = load <2 x i64>, ptr %i.fg, align 4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store <2 x i64> %wide.load, ptr %i.fe, align 4
  store <2 x i64> %wide.load100, ptr %i.fh, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !1037

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.er, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.preheader101

.lr.ph.i.i.preheader101:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.er, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader101, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi i64 [ %i.fm, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader101 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader101 ]
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.010.i.i.prol
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.010.i.i.prol
  %i.fl = load i64, ptr %i.fk, align 4
  store i64 %i.fl, ptr %i.fj, align 4
  %i.fm = add nuw i64 %.010.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1038

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader101
  %.010.i.i.unr = phi i64 [ %.010.i.i.ph, %.lr.ph.i.i.preheader101 ], [ %i.fm, %.lr.ph.i.i.prol ]
  %i.fn = sub i64 %.010.i.i.ph, %i.er
  %i.fo = icmp ugt i64 %i.fn, -4
  br i1 %i.fo, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.ge, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.010.i.i
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.010.i.i
  %i.fr = load i64, ptr %i.fq, align 4
  store i64 %i.fr, ptr %i.fp, align 4
  %i.fs = add nuw i64 %.010.i.i, 1                ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fs
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.fs
  %i.fv = load i64, ptr %i.fu, align 4
  store i64 %i.fv, ptr %i.ft, align 4
  %i.fw = add nuw i64 %.010.i.i, 2                ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fw
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.fw
  %i.fz = load i64, ptr %i.fy, align 4
  store i64 %i.fz, ptr %i.fx, align 4
  %i.ga = add nuw i64 %.010.i.i, 3                ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ga
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ga
  %i.gd = load i64, ptr %i.gc, align 4
  store i64 %i.gd, ptr %i.gb, align 4
  %i.ge = add nuw i64 %.010.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ge, %i.er
  br i1 %exitcond.not.i.i.3, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !1039

.loopexit:                                        ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %bb.an
  %i.gf = phi ptr [ null, %bb.an ], [ %i.ez, %middle.block ], [ %i.ez, %.lr.ph.i.i ], [ %i.ez, %.lr.ph.i.i.prol.loopexit ]
  %i.gg = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, i64 noundef 48)
          to label %.noexc75 unwind label %bb.aq  ; 2 uses

.noexc75:                                         ; preds = %.loopexit
  %.sroa.02.0.copyload.i = load i64, ptr %19, align 8
  %.sroa.0.0.copyload.i74 = load i64, ptr %21, align 8
  invoke void @_ZN4Luau16CstTypeReferenceC1ENS_8PositionES1_NS_8AstArrayIS1_EES1_(ptr noundef nonnull align 8 dereferenceable(48) %i.gg, i64 %.sroa.784.0, i64 %.sroa.02.0.copyload.i, ptr %i.gf, i64 %i.er, i64 %.sroa.0.0.copyload.i74)
          to label %_ZN4Luau9Allocator5allocINS_16CstTypeReferenceEJRNS_8PositionES4_NS_8AstArrayIS3_EES4_EEEPT_DpOT0_.exit unwind label %bb.aq

_ZN4Luau9Allocator5allocINS_16CstTypeReferenceEJRNS_8PositionES4_NS_8AstArrayIS3_EES4_EEEPT_DpOT0_.exit: ; preds = %.noexc75
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  store ptr %i.em, ptr %i.c, align 8, !tbaa !394
  %i.gi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.gh, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %_ZN4Luau9Allocator5allocINS_16CstTypeReferenceEJRNS_8PositionES4_NS_8AstArrayIS3_EES4_EEEPT_DpOT0_.exit
  store ptr %i.gg, ptr %i.gi, align 8, !tbaa !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %bb.as

bb.ap:                                            ; preds = %.noexc, %bb.al
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #34
  br label %bb.at

bb.aq:                                            ; preds = %.noexc75, %.loopexit, %.lr.ph.preheader.i.i
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ar:                                            ; preds = %_ZN4Luau9Allocator5allocINS_16CstTypeReferenceEJRNS_8PositionES4_NS_8AstArrayIS3_EES4_EEEPT_DpOT0_.exit
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %bb.at

bb.as:                                            ; preds = %bb.ao, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #34
  %i.gm = load ptr, ptr %20, align 8, !tbaa !435, !nonnull !53, !align !374 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !439
  %i.go = load i64, ptr %i.do, align 8, !tbaa !423
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %i.go ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !439
  %.not.i.i.i = icmp eq ptr %i.gp, %i.gr
  br i1 %.not.i.i.i, label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit, label %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.as
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !422
  br label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit

_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit:     ; preds = %bb.as, %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %bb.au

bb.at:                                            ; preds = %bb.aq, %bb.ar, %bb.ap, %bb.ak, %bb.ai
  %.pn.pn.pn = phi { ptr, i32 } [ %i.gj, %bb.ap ], [ %i.ed, %bb.ai ], [ %i.ef, %bb.ak ], [ %i.gl, %bb.ar ], [ %i.gk, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #34
  %i.gs = load ptr, ptr %20, align 8, !tbaa !435, !nonnull !53, !align !374 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !439
  %i.gu = load i64, ptr %i.do, align 8, !tbaa !423
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.gu ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !439
  %.not.i.i.i34 = icmp eq ptr %i.gv, %i.gx
  br i1 %.not.i.i.i34, label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit36, label %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i35

_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i35: ; preds = %bb.at
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !422
  br label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit36

_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit36:   ; preds = %bb.at, %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.081)
  br label %bb.bc

bb.au:                                            ; preds = %bb.ae, %bb.af, %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit
  %.sroa.020.1 = phi ptr [ %i.em, %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit ], [ %i.de, %bb.af ], [ %i.de, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.081)
  %i.gy = insertvalue { ptr, ptr } poison, ptr %.sroa.020.1, 0
  %i.gz = insertvalue { ptr, ptr } %i.gy, ptr null, 1
  br label %bb.bb

bb.av:                                            ; preds = %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  %i.ha = tail call noundef ptr @_ZN4Luau6Parser14parseTableTypeEb(ptr noundef nonnull align 8 dereferenceable(1232) %0, i1 noundef zeroext %2)
  %i.hb = insertvalue { ptr, ptr } poison, ptr %i.ha, 0
  %i.hc = insertvalue { ptr, ptr } %i.hb, ptr null, 1
  br label %bb.bb

bb.aw:                                            ; preds = %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit, %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  %i.hd = call { ptr, ptr } @_ZN4Luau6Parser17parseFunctionTypeEbRKNS_8AstArrayIPNS_7AstAttrEEE(ptr noundef nonnull align 8 dereferenceable(1232) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(16) %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #34
  br label %bb.bb

bb.ax:                                            ; preds = %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  %i.he = call noundef ptr (ptr, ptr, ptr, ptr, ...) @_ZN4Luau6Parser15reportTypeErrorERKNS_8LocationERKNS_8AstArrayIPNS_7AstTypeEEEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull @.str.276)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #34
  %i.hf = insertvalue { ptr, ptr } poison, ptr %i.he, 0
  %i.hg = insertvalue { ptr, ptr } %i.hf, ptr null, 1
  br label %bb.bb

bb.ay:                                            ; preds = %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #34
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.hi = load i64, ptr %i.hh, align 8            ; 2 uses
  store i64 %i.hi, ptr %25, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.hk = load i64, ptr %6, align 8
  store i64 %i.hk, ptr %i.hj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #34
  %i.hl = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.hi, ptr %26, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.hn = load i64, ptr %i.hl, align 8
  store i64 %i.hn, ptr %i.hm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #34
  call void @_ZNK4Luau6Lexeme8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef nonnull align 8 dereferenceable(32) %i.j)
  %i.ho = load ptr, ptr %27, align 8, !tbaa !20
  %i.hp = invoke noundef ptr (ptr, ptr, ptr, ptr, ...) @_ZN4Luau6Parser22reportMissingTypeErrorERKNS_8LocationES3_PKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %26, ptr noundef nonnull align 4 dereferenceable(16) %25, ptr noundef nonnull @.str.277, ptr noundef %i.ho)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.hq = load ptr, ptr %27, align 8, !tbaa !20   ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.az
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !22
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #34
  %i.hv = insertvalue { ptr, ptr } poison, ptr %i.hp, 0
  %i.hw = insertvalue { ptr, ptr } %i.hv, ptr null, 1
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.hx = landingpad { ptr, i32 }
          cleanup
  %i.hy = load ptr, ptr %27, align 8, !tbaa !20   ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.ia = icmp eq ptr %i.hy, %i.hz
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.ba
  %i.ib = load i64, ptr %i.hz, align 8, !tbaa !22
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ic) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #34
  br label %bb.bc

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.t, %bb.s, %bb.r, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.fca.1.insert.merged = phi { ptr, ptr } [ %i.t, %bb.e ], [ %i.p, %bb.d ], [ %i.aa, %bb.f ], [ %i.af, %bb.g ], [ %i.ak, %bb.h ], [ %i.bm, %bb.r ], [ %i.bq, %bb.s ], [ %i.bt, %bb.t ], [ %i.gz, %bb.au ], [ %i.hc, %bb.av ], [ %i.hd, %bb.aw ], [ %i.hg, %bb.ax ], [ %i.hw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  ret { ptr, ptr } %.fca.1.insert.merged

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit36
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit36 ], [ %i.hx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local { ptr, ptr } @_ZN4Luau6Parser21parseSimpleTypeOrPackEv(ptr noundef nonnull align 8 dereferenceable(1232) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"struct.Luau::Location", align 4   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !236
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !36
  %i.d = tail call { ptr, ptr } @_ZN4Luau6Parser15parseSimpleTypeEbb(ptr noundef nonnull align 8 dereferenceable(1232) %0, i1 noundef zeroext true, i1 noundef zeroext false) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 1        ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.d, 0
  store i32 %i.b, ptr %i.a, align 4, !tbaa !236
  %i.g = call noundef ptr @_ZN4Luau6Parser15parseTypeSuffixEPNS_7AstTypeERKNS_8LocationE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef %i.f, ptr noundef nonnull align 4 dereferenceable(16) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.02.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.e, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser17parseInterpStringEv(ptr noundef nonnull align 8 dereferenceable(1232) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Luau::Location", align 4   ; 10 uses
  %2 = alloca %"struct.Luau::Lexeme", align 8     ; 10 uses
  %3 = alloca %"struct.Luau::Location", align 8   ; 6 uses
  %4 = alloca %"struct.Luau::AstArray", align 8   ; 5 uses
  %5 = alloca %"struct.Luau::AstArray", align 8   ; 5 uses
  %6 = alloca %"struct.Luau::AstArray", align 8   ; 5 uses
  %7 = alloca %"struct.Luau::AstArray", align 8   ; 5 uses
  %8 = alloca %"struct.Luau::AstArray.320", align 8 ; 8 uses
  %9 = alloca %"struct.Luau::AstArray", align 8   ; 7 uses
  %10 = alloca %"struct.Luau::Location", align 8  ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %11 = alloca %"struct.Luau::AstArray", align 8  ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"struct.Luau::AstArray.320", align 8 ; 6 uses
  %14 = alloca %"struct.Luau::AstArray", align 8  ; 6 uses
  %15 = alloca %"struct.Luau::Location", align 8  ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 8 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1040
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !187
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 8 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1040
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !187
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 9 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !422
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !119
  %i.u = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.w = sub i64 %i.u, %i.v                       ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 14 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !341
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !184
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
end_hunk_8
begin_hunk_9_@_ZN4Luau6Parser21parseTableConstructorEv:bb.a
  %.sroa.14.4353 = phi i64 [ %.sroa.14.3, %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit158 ], [ %.sroa.14.3, %bb.cn ], [ %.sroa.14.0, %bb.cm ] ; 7 uses
  %.sroa.14275.2351 = phi i64 [ %.sroa.14275.1, %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit158 ], [ %.sroa.14275.1, %bb.cn ], [ %.sroa.14275.0, %bb.cm ] ; 7 uses
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.copyload, %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit158 ], [ %.sroa.5.0.copyload179, %bb.cn ], [ %.sroa.5.0.copyload349, %bb.cm ]
  %i.ie = load ptr, ptr %i.ae, align 8, !tbaa !373, !nonnull !53, !align !374 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i64 %.sroa.0253.0.copyload, ptr %6, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.5.0, ptr %i.if, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.ig = icmp eq i64 %.sroa.14275.2351, 0
  br i1 %i.ig, label %.loopexit282, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit158.thread
  %i.ih = load ptr, ptr %i.b, align 8, !tbaa !143
  %i.ii = getelementptr i8, ptr %i.ih, i64 %i.h   ; 3 uses
  %i.ij = mul i64 %.sroa.14275.2351, 24
  %i.ik = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ie, i64 noundef %i.ij)
          to label %.lr.ph.i.i.preheader unwind label %bb.cr ; 5 uses

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i
  %xtraiter = and i64 %.sroa.14275.2351, 1
  %i.il = icmp eq i64 %.sroa.14275.2351, 1
  br i1 %i.il, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.sroa.14275.2351, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.010.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ir, %.lr.ph.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.im = getelementptr inbounds nuw [24 x i8], ptr %i.ik, i64 %.010.i.i
  %i.in = getelementptr inbounds nuw [24 x i8], ptr %i.ii, i64 %.010.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.im, ptr noundef nonnull align 8 dereferenceable(24) %i.in, i64 24, i1 false), !tbaa.struct !1165
  %i.io = or disjoint i64 %.010.i.i, 1            ; 2 uses
  %i.ip = getelementptr inbounds nuw [24 x i8], ptr %i.ik, i64 %i.io
  %i.iq = getelementptr inbounds nuw [24 x i8], ptr %i.ii, i64 %i.io
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ip, ptr noundef nonnull align 8 dereferenceable(24) %i.iq, i64 24, i1 false), !tbaa.struct !1165
  %i.ir = add nuw i64 %.010.i.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit282.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !1166

.loopexit282.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit282, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit282.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.010.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ir, %.loopexit282.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod518 = trunc i64 %.sroa.14275.2351 to i1
  call void @llvm.assume(i1 %lcmp.mod518)
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %i.ik, i64 %.010.i.i.epil.init
  %i.it = getelementptr inbounds nuw [24 x i8], ptr %i.ii, i64 %.010.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.is, ptr noundef nonnull align 8 dereferenceable(24) %i.it, i64 24, i1 false), !tbaa.struct !1165
  br label %.loopexit282

.loopexit282:                                     ; preds = %.lr.ph.i.i.epil.preheader, %.loopexit282.loopexit.unr-lcssa, %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit158.thread
  %i.iu = phi ptr [ null, %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit158.thread ], [ %i.ik, %.loopexit282.loopexit.unr-lcssa ], [ %i.ik, %.lr.ph.i.i.epil.preheader ]
  store ptr %i.iu, ptr %7, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.14275.2351, ptr %i.iv, align 8
  %i.iw = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ie, i64 noundef 48)
          to label %.noexc160 unwind label %bb.cr ; 3 uses

.noexc160:                                        ; preds = %.loopexit282
  invoke void @_ZN4Luau12AstExprTableC1ERKNS_8LocationERKNS_8AstArrayINS0_4ItemEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.iw, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZN4Luau9Allocator5allocINS_12AstExprTableEJNS_8LocationENS_8AstArrayINS2_4ItemEEEEEEPT_DpOT0_.exit unwind label %bb.cr

_ZN4Luau9Allocator5allocINS_12AstExprTableEJNS_8LocationENS_8AstArrayINS2_4ItemEEEEEEPT_DpOT0_.exit: ; preds = %.noexc160
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.ix = load i8, ptr %i.y, align 8, !tbaa !393, !range !52, !noundef !53
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %bb.cp, label %bb.cv

bb.cp:                                            ; preds = %_ZN4Luau9Allocator5allocINS_12AstExprTableEJNS_8LocationENS_8AstArrayINS2_4ItemEEEEEEPT_DpOT0_.exit
  %i.iz = load ptr, ptr %i.ae, align 8, !tbaa !373, !nonnull !53, !align !374 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.ja = icmp eq i64 %.sroa.14.4353, 0
  br i1 %i.ja, label %.loopexit, label %.lr.ph.preheader.i.i162

.lr.ph.preheader.i.i162:                          ; preds = %bb.cp
  %i.jb = load ptr, ptr %i.i, align 8, !tbaa !139
  %i.jc = getelementptr i8, ptr %i.jb, i64 %i.o   ; 3 uses
  %i.jd = mul i64 %.sroa.14.4353, 36
  %i.je = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.iz, i64 noundef %i.jd)
          to label %.lr.ph.i.i163.preheader unwind label %bb.cs ; 5 uses

.lr.ph.i.i163.preheader:                          ; preds = %.lr.ph.preheader.i.i162
  %xtraiter519 = and i64 %.sroa.14.4353, 1
  %i.jf = icmp eq i64 %.sroa.14.4353, 1
  br i1 %i.jf, label %.lr.ph.i.i163.epil.preheader, label %.lr.ph.i.i163.preheader.new

.lr.ph.i.i163.preheader.new:                      ; preds = %.lr.ph.i.i163.preheader
  %unroll_iter522 = and i64 %.sroa.14.4353, -2
  br label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %.lr.ph.i.i163, %.lr.ph.i.i163.preheader.new
  %.010.i.i164 = phi i64 [ 0, %.lr.ph.i.i163.preheader.new ], [ %i.jl, %.lr.ph.i.i163 ] ; 4 uses
  %niter523 = phi i64 [ 0, %.lr.ph.i.i163.preheader.new ], [ %niter523.next.1, %.lr.ph.i.i163 ]
  %i.jg = getelementptr inbounds nuw [36 x i8], ptr %i.je, i64 %.010.i.i164
  %i.jh = getelementptr inbounds nuw [36 x i8], ptr %i.jc, i64 %.010.i.i164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.jg, ptr noundef nonnull align 4 dereferenceable(36) %i.jh, i64 36, i1 false), !tbaa.struct !1144
  %i.ji = or disjoint i64 %.010.i.i164, 1         ; 2 uses
  %i.jj = getelementptr inbounds nuw [36 x i8], ptr %i.je, i64 %i.ji
  %i.jk = getelementptr inbounds nuw [36 x i8], ptr %i.jc, i64 %i.ji
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.jj, ptr noundef nonnull align 4 dereferenceable(36) %i.jk, i64 36, i1 false), !tbaa.struct !1144
  %i.jl = add nuw i64 %.010.i.i164, 2             ; 2 uses
  %niter523.next.1 = add nuw i64 %niter523, 2     ; 2 uses
  %niter523.ncmp.1 = icmp eq i64 %niter523.next.1, %unroll_iter522
  br i1 %niter523.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i163, !llvm.loop !1167

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i163
  %lcmp.mod520.not = icmp eq i64 %xtraiter519, 0
  br i1 %lcmp.mod520.not, label %.loopexit, label %.lr.ph.i.i163.epil.preheader

.lr.ph.i.i163.epil.preheader:                     ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i163.preheader
  %.010.i.i164.epil.init = phi i64 [ 0, %.lr.ph.i.i163.preheader ], [ %i.jl, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod521 = trunc i64 %.sroa.14.4353 to i1
  call void @llvm.assume(i1 %lcmp.mod521)
  %i.jm = getelementptr inbounds nuw [36 x i8], ptr %i.je, i64 %.010.i.i164.epil.init
  %i.jn = getelementptr inbounds nuw [36 x i8], ptr %i.jc, i64 %.010.i.i164.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.jm, ptr noundef nonnull align 4 dereferenceable(36) %i.jn, i64 36, i1 false), !tbaa.struct !1144
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i163.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.cp
  %i.jo = phi ptr [ null, %bb.cp ], [ %i.je, %.loopexit.loopexit.unr-lcssa ], [ %i.je, %.lr.ph.i.i163.epil.preheader ]
  store ptr %i.jo, ptr %8, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.14.4353, ptr %i.jp, align 8
  %i.jq = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.iz, i64 noundef 24)
          to label %.noexc169 unwind label %bb.cs ; 2 uses

.noexc169:                                        ; preds = %.loopexit
  invoke void @_ZN4Luau12CstExprTableC1ERKNS_8AstArrayINS0_4ItemEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.jq, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZN4Luau9Allocator5allocINS_12CstExprTableEJNS_8AstArrayINS2_4ItemEEEEEEPT_DpOT0_.exit unwind label %bb.cs

_ZN4Luau9Allocator5allocINS_12CstExprTableEJNS_8AstArrayINS2_4ItemEEEEEEPT_DpOT0_.exit: ; preds = %.noexc169
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store ptr %i.iw, ptr %i.a, align 8, !tbaa !394
  %i.js = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.jr, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.cq unwind label %bb.ct

bb.cq:                                            ; preds = %_ZN4Luau9Allocator5allocINS_12CstExprTableEJNS_8AstArrayINS2_4ItemEEEEEEPT_DpOT0_.exit
  store ptr %i.jq, ptr %i.js, align 8, !tbaa !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.cv

bb.cr:                                            ; preds = %.noexc160, %.loopexit282, %.lr.ph.preheader.i.i
  %i.jt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.cw

bb.cs:                                            ; preds = %.noexc169, %.loopexit, %.lr.ph.preheader.i.i162
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ct:                                            ; preds = %_ZN4Luau9Allocator5allocINS_12CstExprTableEJNS_8AstArrayINS2_4ItemEEEEEEPT_DpOT0_.exit
  %i.jv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.pn64 = phi { ptr, i32 } [ %i.jv, %bb.ct ], [ %i.ju, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cq, %_ZN4Luau9Allocator5allocINS_12AstExprTableEJNS_8LocationENS_8AstArrayINS2_4ItemEEEEEEPT_DpOT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.jw = load ptr, ptr %i.i, align 8, !tbaa !1168
  %i.jx = getelementptr inbounds i8, ptr %i.jw, i64 %i.o ; 2 uses
  %i.jy = load ptr, ptr %i.j, align 8, !tbaa !1168
  %.not.i.i.i = icmp eq ptr %i.jx, %i.jy
  br i1 %.not.i.i.i, label %_ZN4Luau10TempVectorINS_12CstExprTable4ItemEED2Ev.exit, label %_ZSt8_DestroyIPN4Luau12CstExprTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN4Luau12CstExprTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.cv
  store ptr %i.jx, ptr %i.j, align 8, !tbaa !1142
  br label %_ZN4Luau10TempVectorINS_12CstExprTable4ItemEED2Ev.exit

_ZN4Luau10TempVectorINS_12CstExprTable4ItemEED2Ev.exit: ; preds = %bb.cv, %_ZSt8_DestroyIPN4Luau12CstExprTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.jz = load ptr, ptr %i.b, align 8, !tbaa !1169
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 %i.h ; 2 uses
  %i.kb = load ptr, ptr %i.c, align 8, !tbaa !1169
  %.not.i.i.i171 = icmp eq ptr %i.ka, %i.kb
  br i1 %.not.i.i.i171, label %_ZN4Luau10TempVectorINS_12AstExprTable4ItemEED2Ev.exit, label %_ZSt8_DestroyIPN4Luau12AstExprTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN4Luau12AstExprTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZN4Luau10TempVectorINS_12CstExprTable4ItemEED2Ev.exit
  store ptr %i.ka, ptr %i.c, align 8, !tbaa !1141
  br label %_ZN4Luau10TempVectorINS_12AstExprTable4ItemEED2Ev.exit

_ZN4Luau10TempVectorINS_12AstExprTable4ItemEED2Ev.exit: ; preds = %_ZN4Luau10TempVectorINS_12CstExprTable4ItemEED2Ev.exit, %_ZSt8_DestroyIPN4Luau12AstExprTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  ret ptr %i.iw

bb.cw:                                            ; preds = %.loopexit294, %.loopexit.split-lp295, %.loopexit289, %.loopexit.split-lp290, %.loopexit309, %.loopexit.split-lp310, %bb.co, %bb.cu, %bb.cr, %bb.ch, %bb.bq, %bb.au, %bb.ai
  %.pn68 = phi { ptr, i32 } [ %.pn64, %bb.cu ], [ %i.jt, %bb.cr ], [ %.pn54.pn.pn.pn.pn.pn.pn.pn, %bb.ai ], [ %.pn47.pn.pn.pn.pn, %bb.bq ], [ %i.dq, %bb.au ], [ %i.ia, %bb.ch ], [ %lpad.loopexit.split-lp312, %.loopexit.split-lp310 ], [ %lpad.loopexit.split-lp292, %.loopexit.split-lp290 ], [ %i.id, %bb.co ], [ %lpad.loopexit311, %.loopexit309 ], [ %lpad.loopexit291, %.loopexit289 ], [ %lpad.loopexit296, %.loopexit294 ], [ %lpad.loopexit.split-lp297, %.loopexit.split-lp295 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.kc = load ptr, ptr %i.i, align 8, !tbaa !1168
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 %i.o ; 2 uses
  %i.ke = load ptr, ptr %i.j, align 8, !tbaa !1168
  %.not.i.i.i172 = icmp eq ptr %i.kd, %i.ke
  br i1 %.not.i.i.i172, label %_ZN4Luau10TempVectorINS_12CstExprTable4ItemEED2Ev.exit174, label %_ZSt8_DestroyIPN4Luau12CstExprTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i173

_ZSt8_DestroyIPN4Luau12CstExprTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i173: ; preds = %bb.cw
  store ptr %i.kd, ptr %i.j, align 8, !tbaa !1142
  br label %_ZN4Luau10TempVectorINS_12CstExprTable4ItemEED2Ev.exit174

_ZN4Luau10TempVectorINS_12CstExprTable4ItemEED2Ev.exit174: ; preds = %bb.cw, %_ZSt8_DestroyIPN4Luau12CstExprTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i173
  %i.kf = load ptr, ptr %i.b, align 8, !tbaa !1169
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 %i.h ; 2 uses
  %i.kh = load ptr, ptr %i.c, align 8, !tbaa !1169
  %.not.i.i.i175 = icmp eq ptr %i.kg, %i.kh
  br i1 %.not.i.i.i175, label %_ZN4Luau10TempVectorINS_12AstExprTable4ItemEED2Ev.exit177, label %_ZSt8_DestroyIPN4Luau12AstExprTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i176

_ZSt8_DestroyIPN4Luau12AstExprTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i176: ; preds = %_ZN4Luau10TempVectorINS_12CstExprTable4ItemEED2Ev.exit174
  store ptr %i.kg, ptr %i.c, align 8, !tbaa !1141
  br label %_ZN4Luau10TempVectorINS_12AstExprTable4ItemEED2Ev.exit177

_ZN4Luau10TempVectorINS_12AstExprTable4ItemEED2Ev.exit177: ; preds = %_ZN4Luau10TempVectorINS_12CstExprTable4ItemEED2Ev.exit174, %_ZSt8_DestroyIPN4Luau12AstExprTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i176
  resume { ptr, i32 } %.pn68
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser15parseIfElseExprEv(ptr noundef nonnull align 8 dereferenceable(1232) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"struct.Luau::Location", align 8   ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %.sroa.011.0.copyload = load i64, ptr %i.c, align 4
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.d = tail call noundef ptr @_ZN4Luau6Parser9parseExprEj(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 0)
  %i.e = load i32, ptr %i.b, align 8, !tbaa !110
  %.not.i = icmp eq i32 %i.e, 308                 ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load i64, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN4Luau6Parser33expectAndConsumeFailWithLookaheadENS_6Lexeme4TypeEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 308, ptr noundef nonnull @.str.295) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ %i.g, %bb.b ], [ -1, %bb.c ]
  %i.i = tail call noundef ptr @_ZN4Luau6Parser9parseExprEj(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 0)
  %i.j = load i64, ptr %i.c, align 4
  %i.k = load i32, ptr %i.b, align 8, !tbaa !110  ; 2 uses
  %i.l = icmp eq i32 %i.k, 295                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !236  ; 2 uses
  %i.o = add i32 %i.n, 1                          ; 2 uses
  store i32 %i.o, ptr %i.m, align 4, !tbaa !236
  %i.p = load i32, ptr @_ZN4FInt18LuauRecursionLimitE, align 8, !tbaa !366
  %i.q = icmp ugt i32 %i.o, %i.p
  br i1 %i.q, label %bb.f, label %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @_ZN4Luau10ParseError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull @.str.320, ptr noundef nonnull @.str.284) #37
  unreachable

_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit: ; preds = %bb.e
  %i.r = tail call noundef ptr @_ZN4Luau6Parser15parseIfElseExprEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  store i32 %i.n, ptr %i.m, align 4, !tbaa !236
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %.not.i3 = icmp eq i32 %i.k, 294                ; 2 uses
  br i1 %.not.i3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = tail call noundef zeroext i1 @_ZN4Luau6Parser33expectAndConsumeFailWithLookaheadENS_6Lexeme4TypeEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 294, ptr noundef nonnull @.str.295) ; 0 uses
  br label %_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit4

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit4

_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit4: ; preds = %bb.h, %bb.i
  %i.t = tail call noundef ptr @_ZN4Luau6Parser9parseExprEj(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 0)
  br label %bb.j

bb.j:                                             ; preds = %_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit4, %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  %.014 = phi i1 [ true, %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit ], [ %.not.i3, %_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit4 ]
  %.013 = phi ptr [ %i.r, %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit ], [ %i.t, %_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit4 ] ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.013, i64 20
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !373, !nonnull !53, !align !374
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  store i64 %.sroa.011.0.copyload, ptr %1, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.3.0.copyload, ptr %i.w, align 8
  %i.x = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 noundef 72) ; 3 uses
  call void @_ZN4Luau13AstExprIfElseC1ERKNS_8LocationEPNS_7AstExprEbS5_bS5_(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %i.d, i1 noundef zeroext %.not.i, ptr noundef %i.i, i1 noundef zeroext %.014, ptr noundef %.013)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = load i8, ptr %i.y, align 8, !tbaa !393, !range !52, !noundef !53
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !373, !nonnull !53, !align !374
  %i.ac = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 noundef 24) ; 2 uses
  call void @_ZN4Luau13CstExprIfElseC1ENS_8PositionES1_b(ptr noundef nonnull align 4 dereferenceable(21) %i.ac, i64 %storemerge, i64 %i.j, i1 noundef zeroext %i.l)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store ptr %i.x, ptr %i.a, align 8, !tbaa !394
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret ptr %i.x
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef ptr @_ZN4Luau6Parser23reportFunctionArgsErrorEPNS_7AstExprEb(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::AstArray", align 8   ; 5 uses
  %4 = alloca %"struct.Luau::Location", align 8   ; 6 uses
  %5 = alloca %"struct.Luau::AstArray", align 8   ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  br i1 %2, label %bb.b, label %.lr.ph.i.i11

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !494
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !496
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %.lr.ph.i.i11, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !373, !nonnull !53, !align !374
  %i.g = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 noundef 8) ; 2 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  store ptr %i.g, ptr %3, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = call noundef ptr (ptr, ptr, ptr, ptr, ...) @_ZN4Luau6Parser15reportExprErrorERKNS_8LocationERKNS_8AstArrayIPNS_7AstExprEEEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.290)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.e

.lr.ph.i.i11:                                     ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.m = load i64, ptr %i.k, align 4
  store i64 %i.m, ptr %4, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load i64, ptr %i.l, align 4
  store i64 %i.o, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !373, !nonnull !53, !align !374
  %i.r = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef 8) ; 2 uses
  store ptr %1, ptr %i.r, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.r, ptr %5, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @_ZNK4Luau6Lexeme8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
  %i.u = load ptr, ptr %6, align 8, !tbaa !20
  %i.v = invoke noundef ptr (ptr, ptr, ptr, ptr, ...) @_ZN4Luau6Parser15reportExprErrorERKNS_8LocationERKNS_8AstArrayIPNS_7AstExprEEEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.291, ptr noundef %i.u)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i11
  %i.w = load ptr, ptr %6, align 8, !tbaa !20     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.z = load i64, ptr %i.x, align 8, !tbaa !22
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.e

end_hunk_9
