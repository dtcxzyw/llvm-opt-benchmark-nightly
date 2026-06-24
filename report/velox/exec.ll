inline.NumInlined: 3425
inline.NumDeleted: 1710
begin_hunk_0_@_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor7ExecuteERKNS0_9ExecBatchEPNS1_12ExecListenerE:_ZN5arrow6StatusD2Ev.exit
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !660, !noalias !648
  switch i32 %i.ej, label %bb.bf [
    i32 1, label %bb.aw
    i32 0, label %bb.ax
    i32 3, label %bb.be
  ]

bb.aw:                                            ; preds = %bb.av
  store i8 1, ptr %i.ef, align 4, !tbaa !659, !noalias !648
  br label %bb.bf

bb.ax:                                            ; preds = %bb.av
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  store i8 1, ptr %i.ek, align 8, !tbaa !671, !noalias !648
  %i.el = load ptr, ptr %2, align 8, !tbaa !50, !noalias !648 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !50, !noalias !648 ; 2 uses
  %.not1920.i = icmp eq ptr %i.el, %i.en
  br i1 %.not1920.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ax
  %i.eo = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.eq = getelementptr inbounds nuw i8, ptr %25, i64 128 ; 2 uses
  %.phi.trans.insert.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %25, i64 104 ; 2 uses
  %.phi.trans.insert1.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %25, i64 112
  %i.er = getelementptr inbounds nuw i8, ptr %25, i64 120
  br label %bb.ay

._crit_edge.loopexit.i:                           ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS_5DatumE.exit.i
  %i.es = xor i8 %i.fi, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.ax
  %i.et = phi i8 [ %i.es, %._crit_edge.loopexit.i ], [ 0, %bb.ax ] ; 2 uses
  store i8 %i.et, ptr %i.ef, align 4, !tbaa !659, !noalias !648
  br label %bb.bf

bb.ay:                                            ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS_5DatumE.exit.i, %.lr.ph.i
  %.sroa.015.021.i = phi ptr [ %i.el, %.lr.ph.i ], [ %i.fj, %_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS_5DatumE.exit.i ] ; 3 uses
  %.val10.i = load ptr, ptr %.sroa.015.021.i, align 8, !noalias !648 ; 2 uses
  %i.eu = getelementptr i8, ptr %.sroa.015.021.i, i64 16
  %.val11.i = load i8, ptr %i.eu, align 8, !tbaa !51, !noalias !648
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26, !noalias !648
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %25, i8 0, i64 16, i1 false), !noalias !648
  store i64 -1, ptr %i.eo, align 8, !tbaa !276, !noalias !648
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ep, i8 0, i64 112, i1 false), !noalias !648
  switch i8 %.val11.i, label %bb.bb [
    i8 2, label %_ZNK5arrow5Datum5arrayEv.exit.i.i
    i8 1, label %_ZNK5arrow5Datum6scalarEv.exit.i.i
  ]

_ZNK5arrow5Datum5arrayEv.exit.i.i:                ; preds = %bb.ay
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(136) %25, ptr noundef nonnull align 8 dereferenceable(120) %.val10.i)
          to label %_ZN5arrow7compute9ExecValue8SetArrayERKNS_9ArrayDataE.exit.i.i unwind label %bb.az, !noalias !648

_ZN5arrow7compute9ExecValue8SetArrayERKNS_9ArrayDataE.exit.i.i: ; preds = %_ZNK5arrow5Datum5arrayEv.exit.i.i
  store ptr null, ptr %i.eq, align 8, !tbaa !229, !noalias !648
  %.pre.pre.i.i = load ptr, ptr %.phi.trans.insert.phi.trans.insert.i.i, align 8, !tbaa !248, !noalias !648
  %.pre2.pre.i.i = load ptr, ptr %.phi.trans.insert1.phi.trans.insert.i.i, align 8, !tbaa !249, !noalias !648
  br label %bb.ba

bb.az:                                            ; preds = %_ZNK5arrow5Datum5arrayEv.exit.i.i
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute9ExecValueD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %25) #26, !noalias !648
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26, !noalias !648
  br label %common.resume

_ZNK5arrow5Datum6scalarEv.exit.i.i:               ; preds = %bb.ay
  store ptr %.val10.i, ptr %i.eq, align 8, !tbaa !229, !noalias !648
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNK5arrow5Datum6scalarEv.exit.i.i, %_ZN5arrow7compute9ExecValue8SetArrayERKNS_9ArrayDataE.exit.i.i
  %.pre2.i.i = phi ptr [ %.pre2.pre.i.i, %_ZN5arrow7compute9ExecValue8SetArrayERKNS_9ArrayDataE.exit.i.i ], [ null, %_ZNK5arrow5Datum6scalarEv.exit.i.i ]
  %.pre.i.i = phi ptr [ %.pre.pre.i.i, %_ZN5arrow7compute9ExecValue8SetArrayERKNS_9ArrayDataE.exit.i.i ], [ null, %_ZNK5arrow5Datum6scalarEv.exit.i.i ]
  %i.ew = call fastcc noundef i32 @_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS0_9ExecValueE(ptr noundef nonnull align 8 dereferenceable(136) %25), !noalias !648
  %i.ex = icmp eq i32 %i.ew, 1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ay
  %i.ey = phi ptr [ null, %bb.ay ], [ %.pre2.i.i, %bb.ba ]
  %i.ez = phi ptr [ null, %bb.ay ], [ %.pre.i.i, %bb.ba ]
  %.0.i.i = phi i1 [ false, %bb.ay ], [ %i.ex, %bb.ba ]
  invoke void @_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_(ptr noundef %i.ez, ptr noundef %i.ey)
          to label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i unwind label %bb.bc, !noalias !648, !inline_history !250

bb.bc:                                            ; preds = %bb.bb
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #29, !noalias !648, !inline_history !250
  unreachable

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i: ; preds = %bb.bb
  %i.fc = load ptr, ptr %.phi.trans.insert.phi.trans.insert.i.i, align 8, !tbaa !248, !noalias !648 ; 3 uses
  %.not.i.i.i.i.i.i45 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.i.i.i45, label %_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS_5DatumE.exit.i, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i
  %i.fd = load ptr, ptr %i.er, align 8, !tbaa !251, !noalias !648
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = sub i64 %i.fe, %i.ff
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.fg) #30, !noalias !648, !inline_history !252
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS_5DatumE.exit.i

_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS_5DatumE.exit.i: ; preds = %bb.bd, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26, !noalias !648
  %i.fh = load i8, ptr %i.ek, align 8, !tbaa !671, !range !240, !noalias !648, !noundef !241
  %i.fi = select i1 %.0.i.i, i8 %i.fh, i8 0       ; 2 uses
  store i8 %i.fi, ptr %i.ek, align 8, !tbaa !671, !noalias !648
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 24 ; 2 uses
  %.not19.i = icmp eq ptr %i.fj, %i.en
  br i1 %.not19.i, label %._crit_edge.loopexit.i, label %bb.ay

bb.be:                                            ; preds = %bb.av
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i8 1, ptr %i.fk, align 8, !tbaa !671, !noalias !648
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %._crit_edge.i, %bb.aw, %bb.av, %_ZN5arrow14DataTypeLayoutD2Ev.exit.i
  %i.fl = phi i8 [ 0, %bb.av ], [ 1, %bb.aw ], [ 0, %bb.be ], [ %i.et, %._crit_edge.i ], [ 0, %_ZN5arrow14DataTypeLayoutD2Ev.exit.i ]
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !605, !noalias !648
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 88
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !673, !noalias !648
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !674, !noalias !648 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !675, !noalias !648
  %.not.i.i.i44 = icmp eq ptr %i.fu, %i.fs
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN5arrow7compute12_GLOBAL__N_119BufferPreallocationES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5arrow7compute12_GLOBAL__N_119BufferPreallocationES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %bb.bg
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !675, !noalias !648
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE5clearEv.exit.i

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute12_GLOBAL__N_119BufferPreallocationES3_EvT_S5_RSaIT0_E.exit.i.i.i, %bb.bg
  %i.fv = load ptr, ptr %i.dk, align 8, !tbaa !651, !noalias !648
  call fastcc void @_ZN5arrow7compute12_GLOBAL__N_122ComputeDataPreallocateERKNS_8DataTypeEPSt6vectorINS1_19BufferPreallocationESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(72) %i.fv, ptr noundef %i.fr), !noalias !648
  %.pre.i = load i8, ptr %i.ef, align 4, !tbaa !659, !range !240, !noalias !648
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE5clearEv.exit.i, %bb.bf
  %i.fw = phi i8 [ %.pre.i, %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE5clearEv.exit.i ], [ %i.fl, %bb.bf ]
  %i.fx = trunc nuw i8 %i.fw to i1
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fz = load i8, ptr %i.fy, align 8, !range !240, !noalias !648
  %i.ga = trunc nuw i8 %i.fz to i1
  %or.cond.i = select i1 %i.fx, i1 true, i1 %i.ga
  br i1 %or.cond.i, label %bb.bi, label %_ZN5arrow9is_nestedENS_4Type4typeE.exit.thread.i

bb.bi:                                            ; preds = %bb.bh
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val12.i = load ptr, ptr %i.gb, align 8, !tbaa !674, !noalias !648
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val13.i = load ptr, ptr %i.gc, align 8, !tbaa !675, !noalias !648
  %i.gd = ptrtoint ptr %.val13.i to i64
  %i.ge = ptrtoint ptr %.val12.i to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = ashr exact i64 %i.gf, 3
  %i.gh = load i32, ptr %i.dx, align 8, !tbaa !657, !noalias !648
  %i.gi = add nsw i32 %i.gh, -1
  %i.gj = sext i32 %i.gi to i64
  %i.gk = icmp eq i64 %i.gg, %i.gj
  br i1 %i.gk, label %bb.bj, label %_ZN5arrow9is_nestedENS_4Type4typeE.exit.thread.i

bb.bj:                                            ; preds = %bb.bi
  %switch.tableidx = add i32 %i.ee, -25           ; 2 uses
  %i.gl = icmp ult i32 %switch.tableidx, 18
  %switch.shifted = lshr i32 207023, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.gl, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %_ZN5arrow9is_nestedENS_4Type4typeE.exit.thread.i, label %_ZN5arrow9is_nestedENS_4Type4typeE.exit.i

_ZN5arrow9is_nestedENS_4Type4typeE.exit.i:        ; preds = %bb.bj
  %i.gm = icmp ne i32 %i.ee, 29
  %i.gn = zext i1 %i.gm to i8
  br label %_ZN5arrow9is_nestedENS_4Type4typeE.exit.thread.i

_ZN5arrow9is_nestedENS_4Type4typeE.exit.thread.i: ; preds = %bb.bj, %_ZN5arrow9is_nestedENS_4Type4typeE.exit.i, %bb.bi, %bb.bh
  %i.go = phi i8 [ %i.gn, %_ZN5arrow9is_nestedENS_4Type4typeE.exit.i ], [ 0, %bb.bi ], [ 0, %bb.bh ], [ 0, %bb.bj ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 81
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !676, !noalias !648
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !590, !noalias !648
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !620, !noalias !648
  %i.gq = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 32
  %i.gr = load i8, ptr %i.gq, align 8, !tbaa !394, !range !240, !noalias !648, !noundef !241
  %i.gs = trunc nuw i8 %i.gr to i1
  br i1 %i.gs, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_ZN5arrow9is_nestedENS_4Type4typeE.exit.thread.i
  %i.gt = load ptr, ptr %i.fm, align 8, !tbaa !605, !noalias !648
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 80
  %i.gv = load i8, ptr %i.gu, align 8, !tbaa !677, !range !240, !noalias !648, !noundef !241
  %32 = trunc nuw i8 %i.gv to i1
  %spec.select.i = select i1 %32, i8 %i.go, i8 0
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %_ZN5arrow9is_nestedENS_4Type4typeE.exit.thread.i
  %i.gw = phi i8 [ %spec.select.i, %bb.bk ], [ 0, %_ZN5arrow9is_nestedENS_4Type4typeE.exit.thread.i ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 82
  store i8 %i.gw, ptr %i.gx, align 2, !tbaa !678, !noalias !648
  store ptr null, ptr %0, align 8, !tbaa !93, !alias.scope !679
  %i.gy = trunc nuw i8 %i.go to i1
  br i1 %i.gy, label %bb.bm, label %bb.ey

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26, !noalias !682
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %15, i8 0, i64 16, i1 false), !noalias !682
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26, !noalias !682
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 32, i1 false), !noalias !682
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26, !noalias !682
  %i.gz = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %17, i8 0, i64 16, i1 false), !noalias !682
  store i64 -1, ptr %i.gz, align 8, !tbaa !276, !noalias !682
  %i.ha = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(105) %i.ha, i8 0, i64 105, i1 false), !noalias !682
  %i.hb = getelementptr inbounds nuw i8, ptr %17, i64 128
  %i.hc = trunc nuw i8 %i.gw to i1
  br i1 %i.hc, label %bb.bn, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bm
  %i.hd = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 90
  br label %bb.cs

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26, !noalias !682
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !219, !noalias !682
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12ScalarKernelEE13PrepareOutputEl(ptr dead_on_unwind noalias writable align 8 %18, ptr noundef nonnull align 8 dereferenceable(200) %1, i64 noundef %i.hj)
          to label %bb.bo unwind label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.hk = load ptr, ptr %18, align 8, !tbaa !93, !noalias !682
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.bp, !prof !96

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %.critedge.i unwind label %bb.bs

bb.bq:                                            ; preds = %bb.cs
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.br:                                            ; preds = %bb.bn
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.bs:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.bp
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.bo
  %i.hp = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !118, !noalias !685 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !45, !noalias !685 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hp, i8 0, i64 16, i1 false), !noalias !682
  store ptr %i.hq, ptr %15, align 16, !tbaa !690, !noalias !682
  %i.ht = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !45, !noalias !682
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(120) %i.hq)
          to label %bb.bt unwind label %bb.bs

bb.bt:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  store i64 0, ptr %i.ha, align 8, !tbaa !257, !noalias !682
  %i.hu = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 176
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit55.i, %bb.bt
  %.028.i = phi i64 [ 0, %bb.bt ], [ %i.il, %_ZN5arrow6StatusD2Ev.exit55.i ]
  %i.hx = invoke noundef zeroext i1 @_ZN5arrow7compute6detail16ExecSpanIterator4NextEPNS0_8ExecSpanE(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull %16)
          to label %bb.bv unwind label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.hx, label %bb.bw, label %bb.cb

bb.bw:                                            ; preds = %bb.bv
  %i.hy = load i64, ptr %16, align 8, !tbaa !242, !noalias !682 ; 2 uses
  store i64 %.028.i, ptr %i.ha, align 8, !tbaa !257, !noalias !682
  store i64 %i.hy, ptr %i.hu, align 8, !tbaa !258, !noalias !682
  %i.hz = load ptr, ptr %17, align 8, !tbaa !259, !noalias !682
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !260
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.id = load i64, ptr %i.gz, align 8, !tbaa !276, !noalias !682
  %.not.i.i53.i = icmp ne i64 %i.id, 0
  %i.ie = load ptr, ptr %i.hv, align 8, !noalias !682
  %i.if = icmp ne ptr %i.ie, null
  %i.ig = select i1 %.not.i.i53.i, i1 %i.if, i1 false
  %..i.i = sext i1 %i.ig to i64
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.sink.i.i = phi i64 [ %..i.i, %bb.bx ], [ %i.hy, %bb.bw ]
  store i64 %.sink.i.i, ptr %i.gz, align 8, !tbaa !276, !noalias !682
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26, !noalias !682
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor17ExecuteSingleSpanERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable align 8 %19, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef %17)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.ca

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.by
  call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.ih = load ptr, ptr %19, align 8, !tbaa !93, !noalias !694 ; 2 uses
  store ptr %i.ih, ptr %0, align 8, !tbaa !93, !alias.scope !694
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26, !noalias !682
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %_ZN5arrow6StatusD2Ev.exit55.i, label %.critedge.i

bb.bz:                                            ; preds = %bb.bu
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.ca:                                            ; preds = %bb.by
  %i.ik = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26, !noalias !682
  br label %bb.cr

_ZN5arrow6StatusD2Ev.exit55.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.il = load i64, ptr %i.hw, align 8, !tbaa !218, !noalias !682
  br label %bb.bu, !llvm.loop !695

bb.cb:                                            ; preds = %bb.bv
  store ptr %i.hq, ptr %20, align 8, !tbaa !118, !noalias !682
  %i.im = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store ptr null, ptr %i.ht, align 8, !tbaa !45, !noalias !682
  store ptr %i.hs, ptr %i.im, align 8, !tbaa !45, !noalias !682
  store ptr null, ptr %15, align 16, !tbaa !118, !noalias !682
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 90
  %.val51.i = load i8, ptr %i.in, align 2, !tbaa !216, !range !240, !noalias !682, !noundef !241
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor10EmitResultESt10shared_ptrINS_9ArrayDataEEPNS1_12ExecListenerE(ptr dead_on_unwind noalias nonnull writable align 8 %0, i8 %.val51.i, ptr noundef %20, ptr noundef %3)
          to label %bb.cc unwind label %bb.cj

bb.cc:                                            ; preds = %bb.cb
  %i.io = load ptr, ptr %i.im, align 8, !tbaa !45, !noalias !682 ; 8 uses
  %.not.i.i56.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i56.i, label %.critedge.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 4 uses
  %i.iq = load atomic i64, ptr %i.ip acquire, align 8 ; 2 uses
  %i.ir = icmp eq i64 %i.iq, 4294967297
  %i.is = trunc i64 %i.iq to i32                  ; 2 uses
  br i1 %i.ir, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store i32 0, ptr %i.ip, align 8, !tbaa !57
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 12
  store i32 0, ptr %i.it, align 4, !tbaa !59
  %i.iu = load ptr, ptr %i.io, align 8, !tbaa !38
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #26, !inline_history !696
  %i.ix = load ptr, ptr %i.io, align 8, !tbaa !38
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #26, !inline_history !696
  br label %.critedge.i

bb.cf:                                            ; preds = %bb.cd
  %i.ja = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47, !noalias !682
  %.not.i.i.i57.i = icmp eq i8 %i.ja, 0
  br i1 %.not.i.i.i57.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jb = add nsw i32 %i.is, -1
  store i32 %i.jb, ptr %i.ip, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i

bb.ch:                                            ; preds = %bb.cf
  %i.jc = atomicrmw volatile add ptr %i.ip, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i: ; preds = %bb.ch, %bb.cg
  %.0.i.i.i.i59.i = phi i32 [ %i.is, %bb.cg ], [ %i.jc, %bb.ch ]
  %i.jd = icmp eq i32 %.0.i.i.i.i59.i, 1
  br i1 %i.jd, label %bb.ci, label %.critedge.i, !prof !44

bb.ci:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i
end_hunk_0
