inline.NumInlined: 2838
inline.NumDeleted: 1070
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN6duckdbL19ListExtractFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
bb.cg:                                            ; preds = %bb.ce
  %i.gy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i.i2.i95.i = icmp eq i8 %i.gy, 0
  br i1 %.not.i.i.i.i.i2.i95.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.gz = add nsw i32 %i.gq, -1
  store i32 %i.gz, ptr %i.gn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i96.i

bb.ci:                                            ; preds = %bb.cg
  %i.ha = atomicrmw volatile add ptr %i.gn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i96.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i96.i: ; preds = %bb.ci, %bb.ch
  %.0.i.i.i.i.i.i4.i97.i = phi i32 [ %i.gq, %bb.ch ], [ %i.ha, %bb.ci ]
  %i.hb = icmp eq i32 %.0.i.i.i.i.i.i4.i97.i, 1
  br i1 %i.hb, label %bb.cj, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit98.i, !prof !71

bb.cj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i96.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gm) #20
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit98.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit98.i:     ; preds = %bb.cj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i96.i, %bb.cf, %_ZN6duckdb15SelectionVectorD2Ev.exit.i93.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.hc = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !66 ; 8 uses
  %.not.i.i.i.i.i99.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i.i99.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i103.i, label %bb.ck

bb.ck:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit98.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 4 uses
  %i.hf = load atomic i64, ptr %i.he acquire, align 8 ; 2 uses
  %i.hg = icmp eq i64 %i.hf, 4294967297
  %i.hh = trunc i64 %i.hf to i32                  ; 2 uses
  br i1 %i.hg, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i32 0, ptr %i.he, align 8, !tbaa !67
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 12
  store i32 0, ptr %i.hi, align 4, !tbaa !69
  %i.hj = load ptr, ptr %i.hd, align 8, !tbaa !64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #20, !inline_history !114
  %i.hm = load ptr, ptr %i.hd, align 8, !tbaa !64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #20, !inline_history !114
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i103.i

bb.cm:                                            ; preds = %bb.ck
  %i.hp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i.i.i100.i = icmp eq i8 %i.hp, 0
  br i1 %.not.i.i.i.i.i.i100.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.hq = add nsw i32 %i.hh, -1
  store i32 %i.hq, ptr %i.he, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i101.i

bb.co:                                            ; preds = %bb.cm
  %i.hr = atomicrmw volatile add ptr %i.he, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i101.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i101.i: ; preds = %bb.co, %bb.cn
  %.0.i.i.i.i.i.i.i102.i = phi i32 [ %i.hh, %bb.cn ], [ %i.hr, %bb.co ]
  %i.hs = icmp eq i32 %.0.i.i.i.i.i.i.i102.i, 1
  br i1 %i.hs, label %bb.cp, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i103.i, !prof !71

bb.cp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i101.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #20
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i103.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i103.i:      ; preds = %bb.cp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i101.i, %bb.cl, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit98.i
  %i.ht = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !66 ; 8 uses
  %.not.i.i.i.i1.i104.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i.i1.i104.i, label %_ZN6duckdbL18ExecuteListExtractERNS_6VectorES1_S1_m.exit, label %bb.cq

bb.cq:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i103.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 4 uses
  %i.hw = load atomic i64, ptr %i.hv acquire, align 8 ; 2 uses
  %i.hx = icmp eq i64 %i.hw, 4294967297
  %i.hy = trunc i64 %i.hw to i32                  ; 2 uses
  br i1 %i.hx, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i32 0, ptr %i.hv, align 8, !tbaa !67
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 12
  store i32 0, ptr %i.hz, align 4, !tbaa !69
  %i.ia = load ptr, ptr %i.hu, align 8, !tbaa !64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dereferenceable(16) %i.hu) #20, !inline_history !115
  %i.id = load ptr, ptr %i.hu, align 8, !tbaa !64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(16) %i.hu) #20, !inline_history !115
  br label %_ZN6duckdbL18ExecuteListExtractERNS_6VectorES1_S1_m.exit

bb.cs:                                            ; preds = %bb.cq
  %i.ig = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i.i2.i105.i = icmp eq i8 %i.ig, 0
  br i1 %.not.i.i.i.i.i2.i105.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ih = add nsw i32 %i.hy, -1
  store i32 %i.ih, ptr %i.hv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i106.i

bb.cu:                                            ; preds = %bb.cs
  %i.ii = atomicrmw volatile add ptr %i.hv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i106.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i106.i: ; preds = %bb.cu, %bb.ct
  %.0.i.i.i.i.i.i4.i107.i = phi i32 [ %i.hy, %bb.ct ], [ %i.ii, %bb.cu ]
  %i.ij = icmp eq i32 %.0.i.i.i.i.i.i4.i107.i, 1
  br i1 %i.ij, label %bb.cv, label %_ZN6duckdbL18ExecuteListExtractERNS_6VectorES1_S1_m.exit, !prof !71

bb.cv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i106.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hu) #20
  br label %_ZN6duckdbL18ExecuteListExtractERNS_6VectorES1_S1_m.exit

bb.cw:                                            ; preds = %bb.ba, %bb.ax, %bb.av, %.loopexit.split-lp.i, %.loopexit.i, %bb.t
  %.sroa.0124.0153.i = phi ptr [ %.sroa.0124.0.lcssa214.i, %bb.t ], [ %.sroa.0124.2.i, %bb.ax ], [ %.sroa.0124.2.i, %bb.ba ], [ %.sroa.0124.0166.i, %bb.av ], [ %.sroa.0124.0166.i, %.loopexit.i ], [ %.sroa.0124.0166.i, %.loopexit.split-lp.i ] ; 2 uses
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.y, %bb.t ], [ %i.dm, %bb.ax ], [ %i.dq, %bb.ba ], [ %.pn.pn.i, %bb.av ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %.not.i.i.i109.i = icmp eq ptr %.sroa.0124.0153.i, null
  br i1 %.not.i.i.i109.i, label %_ZNSt6vectorImSaImEED2Ev.exit110.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0124.0153.i) #24
  br label %_ZNSt6vectorImSaImEED2Ev.exit110.i

_ZNSt6vectorImSaImEED2Ev.exit110.i:               ; preds = %bb.cx, %bb.cw
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #20
  br label %.body.i

.body.i:                                          ; preds = %_ZNSt6vectorImSaImEED2Ev.exit110.i, %bb.l
  %.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i, %_ZNSt6vectorImSaImEED2Ev.exit110.i ], [ %i.n, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.cy

bb.cy:                                            ; preds = %.body.i, %bb.s, %bb.r
  %.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.w, %bb.r ], [ %.pn.pn.pn.pn.pn.pn.i, %.body.i ], [ %i.x, %bb.s ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %8) #20
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.q
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.cy ], [ %i.v, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.p, %bb.o, %bb.n
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.s, %bb.n ], [ %i.t, %bb.o ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.cz ], [ %i.u, %bb.p ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %7) #20
  br label %bb.db

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.hd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.gx, %bb.db
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.db ], [ %.pn.pn.i.i.i.i, %bb.gx ], [ %.pn24, %bb.hd ], [ %i.zn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.zn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.db:                                            ; preds = %bb.da, %bb.m
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.da ], [ %i.r, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %common.resume

_ZN6duckdbL18ExecuteListExtractERNS_6VectorES1_S1_m.exit: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i103.i, %bb.cr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i106.i, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %_ZN6duckdbL20ExecuteStringExtractERNS_6VectorES1_S1_m.exit

bb.dc:                                            ; preds = %bb.a
  %i.ik = load i8, ptr %i.c, align 8, !tbaa !106  ; 3 uses
  %i.il = load i8, ptr %i.d, align 8, !tbaa !106  ; 3 uses
  %i.im = icmp eq i8 %i.ik, 2                     ; 2 uses
  %i.in = icmp eq i8 %i.il, 2                     ; 2 uses
  %or.cond.i.i.i = and i1 %i.im, %i.in
  br i1 %or.cond.i.i.i, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.c)
  %i.io = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !116 ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.d)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !116
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !116 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i20 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i.i.i.i20, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i.i.i: ; preds = %bb.dd
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !104
  %i.ix = trunc i64 %i.iw to i1
  br i1 %i.ix, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i.i.i, label %bb.de

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i.i.i, %bb.dd
  %i.iy = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !103 ; 2 uses
  %.not.i.i14.i.i.i.i = icmp eq ptr %i.iz, null
  br i1 %.not.i.i14.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit16.thread.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit16.i.i.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit16.i.i.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i.i.i
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !104
  %i.jb = trunc i64 %i.ja to i1
  br i1 %i.jb, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit16.thread.i.i.i.i, label %bb.de

bb.de:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit16.i.i.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdbL20ExecuteStringExtractERNS_6VectorES1_S1_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit16.thread.i.i.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit16.i.i.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ip, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !11
  %i.jc = load i64, ptr %i.ir, align 8, !tbaa !104
  %i.jd = tail call { i64, ptr } @_ZN6duckdb16SubstringUnicodeERNS_6VectorENS_8string_tEll(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 %.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i, i64 noundef %i.jc, i64 noundef 1) ; 2 uses
  %i.je = extractvalue { i64, ptr } %i.jd, 0
  %i.jf = extractvalue { i64, ptr } %i.jd, 1
  store i64 %i.je, ptr %i.it, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store ptr %i.jf, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !11
  br label %_ZN6duckdbL20ExecuteStringExtractERNS_6VectorES1_S1_m.exit

bb.df:                                            ; preds = %bb.dc
  %i.jg = icmp eq i8 %i.ik, 0
  %or.cond3.i.i.i = and i1 %i.jg, %i.in
  br i1 %or.cond3.i.i.i, label %bb.dg, label %bb.dy

bb.dg:                                            ; preds = %bb.df
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.c)
  %i.jh = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !116 ; 3 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.d)
  %i.jj = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !116 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i40.i.i.i = icmp eq ptr %i.jm, null
  br i1 %.not.i.i.i40.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i41.i.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i41.i.i.i: ; preds = %bb.dg
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !104
  %i.jo = trunc i64 %i.jn to i1
  br i1 %i.jo, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i.i, label %bb.dh

bb.dh:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i41.i.i.i
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdbL20ExecuteStringExtractERNS_6VectorES1_S1_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i41.i.i.i, %bb.dg
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !116 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.c)
  %i.js = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !103
  store ptr %i.jt, ptr %i.jr, align 8, !tbaa !103
  %i.ju = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.jv = icmp eq ptr %2, %i.c
  br i1 %i.jv, label %bb.ds, label %bb.di

bb.di:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.jx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !66 ; 2 uses
  %i.jz = load <2 x ptr>, ptr %i.jw, align 8, !tbaa !20
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 3 uses
  %i.kb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.kb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.kc = load i32, ptr %i.ka, align 4, !tbaa !3
  %i.kd = add nsw i32 %i.kc, 1
  store i32 %i.kd, ptr %i.ka, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i.i

bb.dl:                                            ; preds = %bb.dj
  %i.ke = atomicrmw volatile add ptr %i.ka, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i.i: ; preds = %bb.dl, %bb.dk, %bb.di
  %i.kf = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !66 ; 8 uses
  store <2 x ptr> %i.jz, ptr %i.ju, align 8, !tbaa !20
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ds, label %bb.dm

bb.dm:                                            ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i.i
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 4 uses
  %i.ki = load atomic i64, ptr %i.kh acquire, align 8 ; 2 uses
  %i.kj = icmp eq i64 %i.ki, 4294967297
  %i.kk = trunc i64 %i.ki to i32                  ; 2 uses
  br i1 %i.kj, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  store i32 0, ptr %i.kh, align 8, !tbaa !67
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kg, i64 12
  store i32 0, ptr %i.kl, align 4, !tbaa !69
  %i.km = load ptr, ptr %i.kg, align 8, !tbaa !64
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8
  tail call void %i.ko(ptr noundef nonnull align 8 dereferenceable(16) %i.kg) #20, !inline_history !117
  %i.kp = load ptr, ptr %i.kg, align 8, !tbaa !64
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8
  tail call void %i.kr(ptr noundef nonnull align 8 dereferenceable(16) %i.kg) #20, !inline_history !117
  br label %bb.ds

bb.do:                                            ; preds = %bb.dm
  %i.ks = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i5.i.i.i.i.i.i.i = icmp eq i8 %i.ks, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i.i.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.kt = add nsw i32 %i.kk, -1
  store i32 %i.kt, ptr %i.kh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.dq:                                            ; preds = %bb.do
  %i.ku = atomicrmw volatile add ptr %i.kh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dq, %bb.dp
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.kk, %bb.dp ], [ %i.ku, %bb.dq ]
  %i.kv = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.kv, label %bb.dr, label %bb.ds, !prof !71

bb.dr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kg) #20
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.dn, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i.i
  %i.kw = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !118
  %i.ky = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.kx, ptr %i.ky, align 8, !tbaa !118
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.kz = load ptr, ptr %i.jr, align 8, !tbaa !103, !noalias !126
  %.not.i.i18.i.i.i.i = icmp eq ptr %i.kz, null
  br i1 %.not.i.i18.i.i.i.i, label %.preheader.i.i.i.i.i, label %bb.dt

.preheader.i.i.i.i.i:                             ; preds = %bb.ds
  %.not91.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not91.i.i.i.i.i, label %_ZN6duckdbL20ExecuteStringExtractERNS_6VectorES1_S1_m.exit, label %.lr.ph89.i.i.i.i.i

.lr.ph89.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i
  %i.la = load i64, ptr %i.jk, align 8, !tbaa !104, !alias.scope !122, !noalias !127
  br label %bb.dx

bb.dt:                                            ; preds = %bb.ds
  %i.lb = add i64 %i.b, 63
  %i.lc = lshr i64 %i.lb, 6                       ; 2 uses
  %.not90.i.i.i.i.i = icmp eq i64 %i.lc, 0
  br i1 %.not90.i.i.i.i.i, label %_ZN6duckdbL20ExecuteStringExtractERNS_6VectorES1_S1_m.exit, label %.lr.ph87.i.i.i.i.i

.lr.ph87.i.i.i.i.i:                               ; preds = %bb.dt, %.loopexit77.i.i.i.i.i
  %.086.i.i.i.i.i = phi i64 [ %.4.i.i.i.i.i, %.loopexit77.i.i.i.i.i ], [ 0, %bb.dt ] ; 9 uses
  %.07085.i.i.i.i.i = phi i64 [ %i.me, %.loopexit77.i.i.i.i.i ], [ 0, %bb.dt ] ; 2 uses
  %i.ld = load ptr, ptr %i.jr, align 8, !tbaa !103, !noalias !126 ; 2 uses
  %.not.i72.i.i.i.i.i = icmp eq ptr %i.ld, null
  br i1 %.not.i72.i.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i.i: ; preds = %.lr.ph87.i.i.i.i.i
  %i.le = add i64 %.086.i.i.i.i.i, 64
  %i.lf = tail call noundef i64 @llvm.umin.i64(i64 %i.le, i64 %i.b)
  br label %.preheader78.i.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i.i: ; preds = %.lr.ph87.i.i.i.i.i
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %.07085.i.i.i.i.i
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !104, !noalias !126 ; 2 uses
  %i.li = add i64 %.086.i.i.i.i.i, 64
  %i.lj = tail call noundef i64 @llvm.umin.i64(i64 %i.li, i64 %i.b) ; 5 uses
  switch i64 %i.lh, label %.preheader76.i.i.i.i.i [
    i64 -1, label %.preheader78.i.i.i.i.i
    i64 0, label %.loopexit77.i.i.i.i.i
  ]

.preheader78.i.i.i.i.i:                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i.i
  %i.lk = phi i64 [ %i.lf, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i.i ], [ %i.lj, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i.i ] ; 3 uses
  %i.ll = icmp ult i64 %.086.i.i.i.i.i, %i.lk
  br i1 %i.ll, label %.lr.ph.i.i.i.i.i, label %.loopexit77.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader78.i.i.i.i.i
  %i.lm = load i64, ptr %i.jk, align 8, !tbaa !104, !alias.scope !122, !noalias !127
  br label %bb.du

.preheader76.i.i.i.i.i:                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i.i
  %i.ln = icmp ult i64 %.086.i.i.i.i.i, %i.lj
  br i1 %i.ln, label %.lr.ph83.i.i.i.i.i, label %.loopexit77.i.i.i.i.i

bb.du:                                            ; preds = %bb.du, %.lr.ph.i.i.i.i.i
  %.181.i.i.i.i.i = phi i64 [ %.086.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.lt, %bb.du ] ; 3 uses
  %i.lo = getelementptr inbounds nuw [16 x i8], ptr %i.ji, i64 %.181.i.i.i.i.i ; 2 uses
  %.sroa.025.0.copyload.i.i.i.i.i = load i64, ptr %i.lo, align 8, !alias.scope !119, !noalias !128
  %.sroa.426.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %.sroa.426.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.426.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !11, !alias.scope !119, !noalias !128
  %i.lp = tail call { i64, ptr } @_ZN6duckdb16SubstringUnicodeERNS_6VectorENS_8string_tEll(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 %.sroa.025.0.copyload.i.i.i.i.i, ptr %.sroa.426.0.copyload.i.i.i.i.i, i64 noundef %i.lm, i64 noundef 1), !noalias !126 ; 2 uses
  %i.lq = extractvalue { i64, ptr } %i.lp, 0
  %i.lr = extractvalue { i64, ptr } %i.lp, 1
  %i.ls = getelementptr inbounds nuw [16 x i8], ptr %i.jq, i64 %.181.i.i.i.i.i ; 2 uses
  store i64 %i.lq, ptr %i.ls, align 8, !alias.scope !124, !noalias !129
  %.sroa.423.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store ptr %i.lr, ptr %.sroa.423.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !11, !alias.scope !124, !noalias !129
  %i.lt = add i64 %.181.i.i.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.lt, %i.lk
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit77.i.i.i.i.i, label %bb.du, !llvm.loop !130

.lr.ph83.i.i.i.i.i:                               ; preds = %.preheader76.i.i.i.i.i, %bb.dw
  %.282.i.i.i.i.i = phi i64 [ %i.md, %bb.dw ], [ %.086.i.i.i.i.i, %.preheader76.i.i.i.i.i ] ; 4 uses
  %i.lu = sub nuw i64 %.282.i.i.i.i.i, %.086.i.i.i.i.i
  %i.lv = shl nuw i64 1, %i.lu
  %i.lw = and i64 %i.lv, %i.lh
  %.not.i.i.i.i.i19 = icmp eq i64 %i.lw, 0
  br i1 %.not.i.i.i.i.i19, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph83.i.i.i.i.i
  %i.lx = getelementptr inbounds nuw [16 x i8], ptr %i.ji, i64 %.282.i.i.i.i.i ; 2 uses
  %.sroa.016.0.copyload.i.i.i.i.i = load i64, ptr %i.lx, align 8, !alias.scope !119, !noalias !128
  %.sroa.417.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %.sroa.417.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.417.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !11, !alias.scope !119, !noalias !128
  %i.ly = load i64, ptr %i.jk, align 8, !tbaa !104, !alias.scope !122, !noalias !127
  %i.lz = tail call { i64, ptr } @_ZN6duckdb16SubstringUnicodeERNS_6VectorENS_8string_tEll(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 %.sroa.016.0.copyload.i.i.i.i.i, ptr %.sroa.417.0.copyload.i.i.i.i.i, i64 noundef %i.ly, i64 noundef 1), !noalias !126 ; 2 uses
  %i.ma = extractvalue { i64, ptr } %i.lz, 0
  %i.mb = extractvalue { i64, ptr } %i.lz, 1
  %i.mc = getelementptr inbounds nuw [16 x i8], ptr %i.jq, i64 %.282.i.i.i.i.i ; 2 uses
  store i64 %i.ma, ptr %i.mc, align 8, !alias.scope !124, !noalias !129
  %.sroa.414.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  store ptr %i.mb, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !11, !alias.scope !124, !noalias !129
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %.lr.ph83.i.i.i.i.i
  %i.md = add i64 %.282.i.i.i.i.i, 1              ; 2 uses
  %exitcond95.not.i.i.i.i.i = icmp eq i64 %i.md, %i.lj
  br i1 %exitcond95.not.i.i.i.i.i, label %.loopexit77.i.i.i.i.i, label %.lr.ph83.i.i.i.i.i, !llvm.loop !131

.loopexit77.i.i.i.i.i:                            ; preds = %bb.dw, %bb.du, %.preheader76.i.i.i.i.i, %.preheader78.i.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i.i
  %.4.i.i.i.i.i = phi i64 [ %i.lj, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i.i ], [ %i.lk, %bb.du ], [ %.086.i.i.i.i.i, %.preheader76.i.i.i.i.i ], [ %.086.i.i.i.i.i, %.preheader78.i.i.i.i.i ], [ %i.lj, %bb.dw ]
  %i.me = add nuw nsw i64 %.07085.i.i.i.i.i, 1    ; 2 uses
  %exitcond96.not.i.i.i.i.i = icmp eq i64 %i.me, %i.lc
  br i1 %exitcond96.not.i.i.i.i.i, label %_ZN6duckdbL20ExecuteStringExtractERNS_6VectorES1_S1_m.exit, label %.lr.ph87.i.i.i.i.i, !llvm.loop !132

bb.dx:                                            ; preds = %bb.dx, %.lr.ph89.i.i.i.i.i
  %.07188.i.i.i.i.i = phi i64 [ 0, %.lr.ph89.i.i.i.i.i ], [ %i.mk, %bb.dx ] ; 3 uses
  %i.mf = getelementptr inbounds nuw [16 x i8], ptr %i.ji, i64 %.07188.i.i.i.i.i ; 2 uses
  %.sroa.03.0.copyload.i.i.i.i.i = load i64, ptr %i.mf, align 8, !alias.scope !119, !noalias !128
  %.sroa.44.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %.sroa.44.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !11, !alias.scope !119, !noalias !128
  %i.mg = tail call { i64, ptr } @_ZN6duckdb16SubstringUnicodeERNS_6VectorENS_8string_tEll(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 %.sroa.03.0.copyload.i.i.i.i.i, ptr %.sroa.44.0.copyload.i.i.i.i.i, i64 noundef %i.la, i64 noundef 1), !noalias !126 ; 2 uses
  %i.mh = extractvalue { i64, ptr } %i.mg, 0
  %i.mi = extractvalue { i64, ptr } %i.mg, 1
  %i.mj = getelementptr inbounds nuw [16 x i8], ptr %i.jq, i64 %.07188.i.i.i.i.i ; 2 uses
  store i64 %i.mh, ptr %i.mj, align 8, !alias.scope !124, !noalias !129
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  store ptr %i.mi, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !11, !alias.scope !124, !noalias !129
  %i.mk = add nuw i64 %.07188.i.i.i.i.i, 1        ; 2 uses
  %exitcond97.not.i.i.i.i.i = icmp eq i64 %i.mk, %i.b
  br i1 %exitcond97.not.i.i.i.i.i, label %_ZN6duckdbL20ExecuteStringExtractERNS_6VectorES1_S1_m.exit, label %bb.dx, !llvm.loop !133

bb.dy:                                            ; preds = %bb.df
  %i.ml = icmp eq i8 %i.il, 0
  %or.cond5.i.i.i = and i1 %i.im, %i.ml
  br i1 %or.cond5.i.i.i, label %bb.dz, label %bb.es

bb.dz:                                            ; preds = %bb.dy
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.c)
  %i.mm = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !116 ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.d)
  %i.mo = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !116 ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i43.i.i.i = icmp eq ptr %i.mr, null
  br i1 %.not.i.i.i43.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i.i: ; preds = %bb.dz
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !104
  %i.mt = trunc i64 %i.ms to i1
  br i1 %i.mt, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i.i
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdbL20ExecuteStringExtractERNS_6VectorES1_S1_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i.i, %bb.dz
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.mu = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !116 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.mw = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.d)
  %i.mx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !103
  store ptr %i.my, ptr %i.mw, align 8, !tbaa !103
  %i.mz = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.na = icmp eq ptr %2, %i.d
  br i1 %i.na, label %bb.el, label %bb.eb

bb.eb:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i.i
  %i.nb = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !66 ; 2 uses
  %i.ne = load <2 x ptr>, ptr %i.nb, align 8, !tbaa !20
  %.not.i.i.i.i.i.i.i.i46.i.i.i = icmp eq ptr %i.nd, null
  br i1 %.not.i.i.i.i.i.i.i.i46.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 8 ; 3 uses
  %i.ng = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i.i.i.i.i.i47.i.i.i = icmp eq i8 %i.ng, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i47.i.i.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.nh = load i32, ptr %i.nf, align 4, !tbaa !3
  %i.ni = add nsw i32 %i.nh, 1
  store i32 %i.ni, ptr %i.nf, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i.i

bb.ee:                                            ; preds = %bb.ec
  %i.nj = atomicrmw volatile add ptr %i.nf, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i.i: ; preds = %bb.ee, %bb.ed, %bb.eb
  %i.nk = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !66 ; 8 uses
  store <2 x ptr> %i.ne, ptr %i.mz, align 8, !tbaa !20
  %.not.i.i.i.i.i.i.i49.i.i.i = icmp eq ptr %i.nl, null
  br i1 %.not.i.i.i.i.i.i.i49.i.i.i, label %bb.el, label %bb.ef

bb.ef:                                            ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i.i
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8 ; 4 uses
  %i.nn = load atomic i64, ptr %i.nm acquire, align 8 ; 2 uses
  %i.no = icmp eq i64 %i.nn, 4294967297
  %i.np = trunc i64 %i.nn to i32                  ; 2 uses
  br i1 %i.no, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  store i32 0, ptr %i.nm, align 8, !tbaa !67
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nl, i64 12
  store i32 0, ptr %i.nq, align 4, !tbaa !69
  %i.nr = load ptr, ptr %i.nl, align 8, !tbaa !64
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nt = load ptr, ptr %i.ns, align 8
  tail call void %i.nt(ptr noundef nonnull align 8 dereferenceable(16) %i.nl) #20, !inline_history !134
  %i.nu = load ptr, ptr %i.nl, align 8, !tbaa !64
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 24
  %i.nw = load ptr, ptr %i.nv, align 8
  tail call void %i.nw(ptr noundef nonnull align 8 dereferenceable(16) %i.nl) #20, !inline_history !134
  br label %bb.el

bb.eh:                                            ; preds = %bb.ef
  %i.nx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i5.i.i.i.i50.i.i.i = icmp eq i8 %i.nx, 0
  br i1 %.not.i.i.i.i5.i.i.i.i50.i.i.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ny = add nsw i32 %i.np, -1
  store i32 %i.ny, ptr %i.nm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i51.i.i.i

bb.ej:                                            ; preds = %bb.eh
  %i.nz = atomicrmw volatile add ptr %i.nm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i51.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i51.i.i.i: ; preds = %bb.ej, %bb.ei
  %.0.i.i.i.i.i.i.i.i.i52.i.i.i = phi i32 [ %i.np, %bb.ei ], [ %i.nz, %bb.ej ]
  %i.oa = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i52.i.i.i, 1
  br i1 %i.oa, label %bb.ek, label %bb.el, !prof !71

bb.ek:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i51.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nl) #20
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i51.i.i.i, %bb.eg, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i.i
  %i.ob = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !118
  %i.od = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.oc, ptr %i.od, align 8, !tbaa !118
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.oe = load ptr, ptr %i.mw, align 8, !tbaa !103, !noalias !142
  %.not.i.i18.i53.i.i.i = icmp eq ptr %i.oe, null
  br i1 %.not.i.i18.i53.i.i.i, label %.preheader.i.i80.i.i.i, label %bb.em

.preheader.i.i80.i.i.i:                           ; preds = %bb.el
  %.not91.i.i81.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not91.i.i81.i.i.i, label %_ZN6duckdbL20ExecuteStringExtractERNS_6VectorES1_S1_m.exit, label %.lr.ph89.i.i82.i.i.i

.lr.ph89.i.i82.i.i.i:                             ; preds = %.preheader.i.i80.i.i.i
  %.sroa.03.0.copyload.i.i83.i.i.i = load i64, ptr %i.mn, align 8, !alias.scope !135, !noalias !143
  %.sroa.44.0..sroa_idx.i.i84.i.i.i = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %.sroa.44.0.copyload.i.i85.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i84.i.i.i, align 8, !tbaa !11, !alias.scope !135, !noalias !143
  br label %bb.er

bb.em:                                            ; preds = %bb.el
  %i.of = add i64 %i.b, 63
  %i.og = lshr i64 %i.of, 6                       ; 2 uses
  %.not90.i.i54.i.i.i = icmp eq i64 %i.og, 0
  br i1 %.not90.i.i54.i.i.i, label %_ZN6duckdbL20ExecuteStringExtractERNS_6VectorES1_S1_m.exit, label %.lr.ph87.i.i55.i.i.i

.lr.ph87.i.i55.i.i.i:                             ; preds = %bb.em
  %.sroa.426.0..sroa_idx.i.i56.i.i.i = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 2 uses
  br label %bb.en

bb.en:                                            ; preds = %.loopexit77.i.i61.i.i.i, %.lr.ph87.i.i55.i.i.i
  %.086.i.i57.i.i.i = phi i64 [ 0, %.lr.ph87.i.i55.i.i.i ], [ %.4.i.i62.i.i.i, %.loopexit77.i.i61.i.i.i ] ; 9 uses
  %.07085.i.i58.i.i.i = phi i64 [ 0, %.lr.ph87.i.i55.i.i.i ], [ %i.pi, %.loopexit77.i.i61.i.i.i ] ; 2 uses
  %i.oh = load ptr, ptr %i.mw, align 8, !tbaa !103, !noalias !142 ; 2 uses
  %.not.i72.i.i59.i.i.i = icmp eq ptr %i.oh, null
  br i1 %.not.i72.i.i59.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i79.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i60.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i79.i.i.i: ; preds = %bb.en
  %i.oi = add i64 %.086.i.i57.i.i.i, 64
  %i.oj = tail call noundef i64 @llvm.umin.i64(i64 %i.oi, i64 %i.b)
  br label %.preheader78.i.i64.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i60.i.i.i: ; preds = %bb.en
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %.07085.i.i58.i.i.i
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !104, !noalias !142 ; 2 uses
  %i.om = add i64 %.086.i.i57.i.i.i, 64
  %i.on = tail call noundef i64 @llvm.umin.i64(i64 %i.om, i64 %i.b) ; 5 uses
  switch i64 %i.ol, label %.preheader76.i.i71.i.i.i [
    i64 -1, label %.preheader78.i.i64.i.i.i
    i64 0, label %.loopexit77.i.i61.i.i.i
  ]

.preheader78.i.i64.i.i.i:                         ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i60.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i79.i.i.i
  %i.oo = phi i64 [ %i.oj, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i79.i.i.i ], [ %i.on, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i60.i.i.i ] ; 3 uses
  %i.op = icmp ult i64 %.086.i.i57.i.i.i, %i.oo
  br i1 %i.op, label %.lr.ph.i.i65.i.i.i, label %.loopexit77.i.i61.i.i.i

.lr.ph.i.i65.i.i.i:                               ; preds = %.preheader78.i.i64.i.i.i
  %.sroa.025.0.copyload.i.i66.i.i.i = load i64, ptr %i.mn, align 8, !alias.scope !135, !noalias !143
  %.sroa.426.0.copyload.i.i67.i.i.i = load ptr, ptr %.sroa.426.0..sroa_idx.i.i56.i.i.i, align 8, !tbaa !11, !alias.scope !135, !noalias !143
  br label %bb.eo

.preheader76.i.i71.i.i.i:                         ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i60.i.i.i
  %i.oq = icmp ult i64 %.086.i.i57.i.i.i, %i.on
  br i1 %i.oq, label %.lr.ph83.i.i72.i.i.i, label %.loopexit77.i.i61.i.i.i

bb.eo:                                            ; preds = %bb.eo, %.lr.ph.i.i65.i.i.i
  %.181.i.i68.i.i.i = phi i64 [ %.086.i.i57.i.i.i, %.lr.ph.i.i65.i.i.i ], [ %i.ox, %bb.eo ] ; 3 uses
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %.181.i.i68.i.i.i
  %i.os = load i64, ptr %i.or, align 8, !tbaa !104, !alias.scope !138, !noalias !144
  %i.ot = tail call { i64, ptr } @_ZN6duckdb16SubstringUnicodeERNS_6VectorENS_8string_tEll(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 %.sroa.025.0.copyload.i.i66.i.i.i, ptr %.sroa.426.0.copyload.i.i67.i.i.i, i64 noundef %i.os, i64 noundef 1), !noalias !142 ; 2 uses
  %i.ou = extractvalue { i64, ptr } %i.ot, 0
  %i.ov = extractvalue { i64, ptr } %i.ot, 1
  %i.ow = getelementptr inbounds nuw [16 x i8], ptr %i.mv, i64 %.181.i.i68.i.i.i ; 2 uses
  store i64 %i.ou, ptr %i.ow, align 8, !alias.scope !140, !noalias !145
  %.sroa.423.0..sroa_idx.i.i69.i.i.i = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  store ptr %i.ov, ptr %.sroa.423.0..sroa_idx.i.i69.i.i.i, align 8, !tbaa !11, !alias.scope !140, !noalias !145
  %i.ox = add i64 %.181.i.i68.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i70.i.i.i = icmp eq i64 %i.ox, %i.oo
  br i1 %exitcond.not.i.i70.i.i.i, label %.loopexit77.i.i61.i.i.i, label %bb.eo, !llvm.loop !146

.lr.ph83.i.i72.i.i.i:                             ; preds = %.preheader76.i.i71.i.i.i, %bb.eq
  %.282.i.i73.i.i.i = phi i64 [ %i.ph, %bb.eq ], [ %.086.i.i57.i.i.i, %.preheader76.i.i71.i.i.i ] ; 4 uses
  %i.oy = sub nuw i64 %.282.i.i73.i.i.i, %.086.i.i57.i.i.i
  %i.oz = shl nuw i64 1, %i.oy
  %i.pa = and i64 %i.oz, %i.ol
  %.not.i.i74.i.i.i = icmp eq i64 %i.pa, 0
  br i1 %.not.i.i74.i.i.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %.lr.ph83.i.i72.i.i.i
  %.sroa.016.0.copyload.i.i75.i.i.i = load i64, ptr %i.mn, align 8, !alias.scope !135, !noalias !143
  %.sroa.417.0.copyload.i.i76.i.i.i = load ptr, ptr %.sroa.426.0..sroa_idx.i.i56.i.i.i, align 8, !tbaa !11, !alias.scope !135, !noalias !143
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %.282.i.i73.i.i.i
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !104, !alias.scope !138, !noalias !144
  %i.pd = tail call { i64, ptr } @_ZN6duckdb16SubstringUnicodeERNS_6VectorENS_8string_tEll(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 %.sroa.016.0.copyload.i.i75.i.i.i, ptr %.sroa.417.0.copyload.i.i76.i.i.i, i64 noundef %i.pc, i64 noundef 1), !noalias !142 ; 2 uses
  %i.pe = extractvalue { i64, ptr } %i.pd, 0
  %i.pf = extractvalue { i64, ptr } %i.pd, 1
  %i.pg = getelementptr inbounds nuw [16 x i8], ptr %i.mv, i64 %.282.i.i73.i.i.i ; 2 uses
  store i64 %i.pe, ptr %i.pg, align 8, !alias.scope !140, !noalias !145
  %.sroa.414.0..sroa_idx.i.i77.i.i.i = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
end_hunk_0
begin_hunk_1_@_ZN6duckdbL18ListResizeFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %.not.i166 = icmp eq ptr %i.r, null
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %.fr = freeze ptr %i.t                          ; 9 uses
  %.not.i167 = icmp eq ptr %.fr, null             ; 2 uses
  br i1 %.not.i166, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not.i167, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  br i1 %.not.i164, label %.lr.ph.split.us.split.us.split.us, label %.lr.ph.split.us.split.us.split

.lr.ph.split.us.split.us.split.us:                ; preds = %.lr.ph.split.us.split.us
  %min.iters.check381 = icmp ult i64 %i.g, 4      ; 2 uses
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.preheader: ; preds = %.lr.ph.split.us.split.us.split.us
  br i1 %min.iters.check381, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.preheader412, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.preheader
  %n.vec = and i64 %i.g, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %vec.phi378 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <2 x i64>, ptr %i.u, align 8, !tbaa !104
  %wide.load379 = load <2 x i64>, ptr %i.v, align 8, !tbaa !104
  %i.w = add <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.x = add <2 x i64> %wide.load379, %vec.phi378 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !238

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.x, %i.w
  %i.z = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.preheader412

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.preheader412: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.preheader, %middle.block
  %.0121235.us.us.us.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.preheader ], [ %i.z, %middle.block ]
  %.0123234.us.us.us.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.preheader ], [ %n.vec, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.us.preheader: ; preds = %.lr.ph.split.us.split.us.split.us
  br i1 %min.iters.check381, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.us.preheader408, label %vector.ph382

vector.ph382:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.us.preheader
  %n.vec384 = and i64 %i.g, -4                    ; 3 uses
  br label %vector.body385

vector.body385:                                   ; preds = %vector.body385, %vector.ph382
  %index386 = phi i64 [ 0, %vector.ph382 ], [ %index.next391, %vector.body385 ] ; 2 uses
  %vec.phi387 = phi <2 x i64> [ zeroinitializer, %vector.ph382 ], [ %i.ac, %vector.body385 ]
  %vec.phi388 = phi <2 x i64> [ zeroinitializer, %vector.ph382 ], [ %i.ad, %vector.body385 ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index386 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load389 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !104
  %wide.load390 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !104
  %i.ac = add <2 x i64> %wide.load389, %vec.phi387 ; 2 uses
  %i.ad = add <2 x i64> %wide.load390, %vec.phi388 ; 2 uses
  %index.next391 = add nuw i64 %index386, 4       ; 2 uses
  %i.ae = icmp eq i64 %index.next391, %n.vec384
  br i1 %i.ae, label %middle.block392, label %vector.body385, !llvm.loop !241

middle.block392:                                  ; preds = %vector.body385
  %bin.rdx393 = add <2 x i64> %i.ad, %i.ac
  %i.af = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx393) ; 2 uses
  %cmp.n394 = icmp eq i64 %i.g, %n.vec384
  br i1 %cmp.n394, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.us.preheader408

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.us.preheader408: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.us.preheader, %middle.block392
  %.0121235.us.us.us.us.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.us.preheader ], [ %i.af, %middle.block392 ]
  %.0123234.us.us.us.us.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.us.preheader ], [ %n.vec384, %middle.block392 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.us.preheader408, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.us
  %.0121235.us.us.us.us = phi i64 [ %i.ai, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.us ], [ %.0121235.us.us.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.us.preheader408 ]
  %.0123234.us.us.us.us = phi i64 [ %i.aj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.us ], [ %.0123234.us.us.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.us.preheader408 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0123234.us.us.us.us
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !104
  %i.ai = add i64 %i.ah, %.0121235.us.us.us.us    ; 2 uses
  %i.aj = add nuw i64 %.0123234.us.us.us.us, 1    ; 2 uses
  %exitcond319.not = icmp eq i64 %i.aj, %i.g
  br i1 %exitcond319.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.us, !llvm.loop !242

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.preheader412, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us
  %.0121235.us.us.us = phi i64 [ %i.am, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us ], [ %.0121235.us.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.preheader412 ]
  %.0123234.us.us.us = phi i64 [ %i.an, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us ], [ %.0123234.us.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.preheader412 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0123234.us.us.us
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !104
  %i.am = add i64 %i.al, %.0121235.us.us.us       ; 2 uses
  %i.an = add nuw i64 %.0123234.us.us.us, 1       ; 2 uses
  %exitcond318.not = icmp eq i64 %i.an, %i.g
  br i1 %exitcond318.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us, !llvm.loop !243

.lr.ph.split.us.split.us.split:                   ; preds = %.lr.ph.split.us.split.us
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.preheader: ; preds = %.lr.ph.split.us.split.us.split
  %i.ao = add i64 %i.g, -1
  %xtraiter435 = and i64 %i.g, 3                  ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 3
  br i1 %i.ap, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.preheader
  %unroll_iter439 = and i64 %i.g, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.preheader: ; preds = %.lr.ph.split.us.split.us.split
  %i.aq = add i64 %i.g, -1
  %xtraiter441 = and i64 %i.g, 3                  ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 3
  br i1 %i.ar, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.preheader
  %unroll_iter446 = and i64 %i.g, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.preheader.new
  %.0121235.us.us.us277 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.preheader.new ], [ %i.bs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279 ]
  %.0123234.us.us.us278 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.preheader.new ], [ %i.bt, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279 ] ; 5 uses
  %niter447 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.preheader.new ], [ %niter447.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279 ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.0123234.us.us.us278
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !104
  %i.ax = add i64 %i.aw, %.0121235.us.us.us277
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.0123234.us.us.us278
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !104
  %i.be = add i64 %i.bd, %i.ax
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.0123234.us.us.us278
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !104
  %i.bl = add i64 %i.bk, %i.be
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.0123234.us.us.us278
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !104
  %i.bs = add i64 %i.br, %i.bl                    ; 3 uses
  %i.bt = add nuw i64 %.0123234.us.us.us278, 4    ; 2 uses
  %niter447.next.3 = add nuw i64 %niter447, 4     ; 2 uses
  %niter447.ncmp.3 = icmp eq i64 %niter447.next.3, %unroll_iter446
  br i1 %niter447.ncmp.3, label %._crit_edge.loopexit417.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279, !llvm.loop !244

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.preheader.new
  %.0121235.us.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.preheader.new ], [ %i.cu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us ]
  %.0123234.us.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.preheader.new ], [ %i.cv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us ] ; 5 uses
  %niter440 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.preheader.new ], [ %niter440.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.0123234.us.us
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !104
  %i.bz = add i64 %i.by, %.0121235.us.us
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.0123234.us.us
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !104
  %i.cg = add i64 %i.cf, %i.bz
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.0123234.us.us
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !104
  %i.cn = add i64 %i.cm, %i.cg
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.0123234.us.us
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !104
  %i.cu = add i64 %i.ct, %i.cn                    ; 3 uses
  %i.cv = add nuw i64 %.0123234.us.us, 4          ; 2 uses
  %niter440.next.3 = add nuw i64 %niter440, 4     ; 2 uses
  %niter440.ncmp.3 = icmp eq i64 %niter440.next.3, %unroll_iter439
  br i1 %niter440.ncmp.3, label %._crit_edge.loopexit419.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us, !llvm.loop !244

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %.not.i164, label %.lr.ph.split.us.split.split.us.preheader, label %.lr.ph.split.us.split.split.preheader

.lr.ph.split.us.split.split.preheader:            ; preds = %.lr.ph.split.us.split
  %xtraiter = and i64 %i.g, 1
  %i.cw = icmp eq i64 %i.g, 1
  br i1 %i.cw, label %.lr.ph.split.us.split.split.epil.preheader, label %.lr.ph.split.us.split.split.preheader.new

.lr.ph.split.us.split.split.preheader.new:        ; preds = %.lr.ph.split.us.split.split.preheader
  %unroll_iter = and i64 %i.g, -2
  br label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us.preheader:         ; preds = %.lr.ph.split.us.split
  %xtraiter429 = and i64 %i.g, 1
  %i.cx = icmp eq i64 %i.g, 1
  br i1 %i.cx, label %.lr.ph.split.us.split.split.us.epil.preheader, label %.lr.ph.split.us.split.split.us.preheader.new

.lr.ph.split.us.split.split.us.preheader.new:     ; preds = %.lr.ph.split.us.split.split.us.preheader
  %unroll_iter433 = and i64 %i.g, -2
  br label %.lr.ph.split.us.split.split.us

.lr.ph.split.us.split.split.us:                   ; preds = %bb.k, %.lr.ph.split.us.split.split.us.preheader.new
  %.0121235.us.us268 = phi i64 [ 0, %.lr.ph.split.us.split.split.us.preheader.new ], [ %.1122.us.us273.1, %bb.k ] ; 2 uses
  %.0123234.us.us269 = phi i64 [ 0, %.lr.ph.split.us.split.split.us.preheader.new ], [ %i.do, %bb.k ] ; 5 uses
  %niter434 = phi i64 [ 0, %.lr.ph.split.us.split.split.us.preheader.new ], [ %niter434.next.1, %bb.k ]
  %i.cy = lshr i64 %.0123234.us.us269, 6
  %i.cz = and i64 %.0123234.us.us269, 62
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.cy
  %i.db = load i64, ptr %i.da, align 8, !tbaa !104 ; 2 uses
  %i.dc = shl nuw nsw i64 1, %i.cz
  %i.dd = and i64 %i.db, %i.dc
  %.not231.us.us = icmp eq i64 %i.dd, 0
  br i1 %.not231.us.us, label %.lr.ph.split.us.split.split.us.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us.us272

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us.us272: ; preds = %.lr.ph.split.us.split.split.us
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0123234.us.us269
  %i.df = load i64, ptr %i.de, align 8, !tbaa !104
  %i.dg = add i64 %i.df, %.0121235.us.us268
  br label %.lr.ph.split.us.split.split.us.1

.lr.ph.split.us.split.split.us.1:                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us.us272, %.lr.ph.split.us.split.split.us
  %.1122.us.us273 = phi i64 [ %i.dg, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us.us272 ], [ %.0121235.us.us268, %.lr.ph.split.us.split.split.us ] ; 2 uses
  %i.dh = or disjoint i64 %.0123234.us.us269, 1   ; 2 uses
  %i.di = and i64 %i.dh, 63
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = and i64 %i.db, %i.dj
  %.not231.us.us.1 = icmp eq i64 %i.dk, 0
  br i1 %.not231.us.us.1, label %bb.k, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us.us272.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us.us272.1: ; preds = %.lr.ph.split.us.split.split.us.1
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.dh
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !104
  %i.dn = add i64 %i.dm, %.1122.us.us273
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us.us272.1, %.lr.ph.split.us.split.split.us.1
  %.1122.us.us273.1 = phi i64 [ %i.dn, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us.us272.1 ], [ %.1122.us.us273, %.lr.ph.split.us.split.split.us.1 ] ; 3 uses
  %i.do = add nuw i64 %.0123234.us.us269, 2       ; 2 uses
  %niter434.next.1 = add nuw i64 %niter434, 2     ; 2 uses
  %niter434.ncmp.1 = icmp eq i64 %niter434.next.1, %unroll_iter433
  br i1 %niter434.ncmp.1, label %._crit_edge.loopexit421.unr-lcssa, label %.lr.ph.split.us.split.split.us, !llvm.loop !244

.lr.ph.split.us.split.split:                      ; preds = %bb.l, %.lr.ph.split.us.split.split.preheader.new
  %.0121235.us = phi i64 [ 0, %.lr.ph.split.us.split.split.preheader.new ], [ %.1122.us.1, %bb.l ] ; 2 uses
  %.0123234.us = phi i64 [ 0, %.lr.ph.split.us.split.split.preheader.new ], [ %i.eo, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.split.split.preheader.new ], [ %niter.next.1, %bb.l ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.0123234.us
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = zext i32 %i.dq to i64                   ; 3 uses
  %i.ds = lshr i64 %i.dr, 6
  %i.dt = and i64 %i.dr, 63
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.ds
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !104
  %i.dw = shl nuw i64 1, %i.dt
  %i.dx = and i64 %i.dv, %i.dw
  %.not231.us = icmp eq i64 %i.dx, 0
  br i1 %.not231.us, label %.lr.ph.split.us.split.split.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us: ; preds = %.lr.ph.split.us.split.split
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.dr
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !104
  %i.ea = add i64 %i.dz, %.0121235.us
  br label %.lr.ph.split.us.split.split.1

.lr.ph.split.us.split.split.1:                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us, %.lr.ph.split.us.split.split
  %.1122.us = phi i64 [ %i.ea, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us ], [ %.0121235.us, %.lr.ph.split.us.split.split ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.0123234.us
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3
  %i.ee = zext i32 %i.ed to i64                   ; 3 uses
  %i.ef = lshr i64 %i.ee, 6
  %i.eg = and i64 %i.ee, 63
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.ef
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !104
  %i.ej = shl nuw i64 1, %i.eg
  %i.ek = and i64 %i.ei, %i.ej
  %.not231.us.1 = icmp eq i64 %i.ek, 0
  br i1 %.not231.us.1, label %bb.l, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us.1: ; preds = %.lr.ph.split.us.split.split.1
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ee
  %i.em = load i64, ptr %i.el, align 8, !tbaa !104
  %i.en = add i64 %i.em, %.1122.us
  br label %bb.l

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us.1, %.lr.ph.split.us.split.split.1
  %.1122.us.1 = phi i64 [ %i.en, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us.1 ], [ %.1122.us, %.lr.ph.split.us.split.split.1 ] ; 3 uses
  %i.eo = add nuw i64 %.0123234.us, 2             ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit422.unr-lcssa, label %.lr.ph.split.us.split.split, !llvm.loop !244

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i167, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.o
  %.0121235.us236 = phi i64 [ %.1122.us242, %bb.o ], [ 0, %.lr.ph.split ] ; 2 uses
  %.0123234.us237 = phi i64 [ %i.fg, %bb.o ], [ 0, %.lr.ph.split ] ; 5 uses
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us238, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.split.us
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.0123234.us237
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3
  %i.er = zext i32 %i.eq to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us238

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us238: ; preds = %bb.m, %.lr.ph.split.split.us
  %i.es = phi i64 [ %i.er, %bb.m ], [ %.0123234.us237, %.lr.ph.split.split.us ] ; 2 uses
  br i1 %.not.i164, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit165.us239, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us238
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.0123234.us237
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3
  %i.ev = zext i32 %i.eu to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit165.us239

_ZNK6duckdb15SelectionVector9get_indexEm.exit165.us239: ; preds = %bb.n, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us238
  %i.ew = phi i64 [ %i.ev, %bb.n ], [ %.0123234.us237, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us238 ]
  %i.ex = lshr i64 %i.es, 6
  %i.ey = and i64 %i.es, 63
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ex
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !104
  %i.fb = shl nuw i64 1, %i.ey
  %i.fc = and i64 %i.fa, %i.fb
  %.not230.us = icmp eq i64 %i.fc, 0
  br i1 %.not230.us, label %bb.o, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us240

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us240: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit165.us239
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ew
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !104
  %i.ff = add i64 %i.fe, %.0121235.us236
  br label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us240, %_ZNK6duckdb15SelectionVector9get_indexEm.exit165.us239
  %.1122.us242 = phi i64 [ %i.ff, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us240 ], [ %.0121235.us236, %_ZNK6duckdb15SelectionVector9get_indexEm.exit165.us239 ] ; 2 uses
  %i.fg = add nuw i64 %.0123234.us237, 1          ; 2 uses
  %exitcond313.not = icmp eq i64 %i.fg, %i.g
  br i1 %exitcond313.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !244

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us247, label %.lr.ph.split.split.split

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us247: ; preds = %.lr.ph.split.split, %bb.q
  %.0121235.us245 = phi i64 [ %.1122.us253, %bb.q ], [ 0, %.lr.ph.split.split ] ; 3 uses
  %.0123234.us246 = phi i64 [ %i.ga, %bb.q ], [ 0, %.lr.ph.split.split ] ; 5 uses
  br i1 %.not.i164, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit165.us248, label %bb.p

bb.p:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us247
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.0123234.us246
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !3
  %i.fj = zext i32 %i.fi to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit165.us248

_ZNK6duckdb15SelectionVector9get_indexEm.exit165.us248: ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us247
  %i.fk = phi i64 [ %i.fj, %bb.p ], [ %.0123234.us246, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us247 ] ; 3 uses
  %i.fl = lshr i64 %.0123234.us246, 6
  %i.fm = and i64 %.0123234.us246, 63
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.fl
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !104
  %i.fp = shl nuw i64 1, %i.fm
  %i.fq = and i64 %i.fo, %i.fp
  %.not230.us249 = icmp eq i64 %i.fq, 0
  br i1 %.not230.us249, label %bb.q, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us250

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us250: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit165.us248
  %i.fr = lshr i64 %i.fk, 6
  %i.fs = and i64 %i.fk, 63
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.fr
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !104
  %i.fv = shl nuw i64 1, %i.fs
  %i.fw = and i64 %i.fu, %i.fv
  %.not231.us251 = icmp eq i64 %i.fw, 0
  br i1 %.not231.us251, label %bb.q, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us252

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us252: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us250
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.fk
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !104
  %i.fz = add i64 %i.fy, %.0121235.us245
  br label %bb.q

bb.q:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us252, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us250, %_ZNK6duckdb15SelectionVector9get_indexEm.exit165.us248
  %.1122.us253 = phi i64 [ %i.fz, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us252 ], [ %.0121235.us245, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us250 ], [ %.0121235.us245, %_ZNK6duckdb15SelectionVector9get_indexEm.exit165.us248 ] ; 2 uses
  %i.ga = add nuw i64 %.0123234.us246, 1          ; 2 uses
  %exitcond312.not = icmp eq i64 %i.ga, %i.g
  br i1 %exitcond312.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us247, !llvm.loop !244

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  br i1 %.not.i164, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us256, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us256: ; preds = %.lr.ph.split.split.split, %bb.r
  %.0121235.us257 = phi i64 [ %.1122.us264, %bb.r ], [ 0, %.lr.ph.split.split.split ] ; 3 uses
  %.0123234.us258 = phi i64 [ %i.gt, %bb.r ], [ 0, %.lr.ph.split.split.split ] ; 5 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.0123234.us258
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !3
  %i.gd = zext i32 %i.gc to i64                   ; 2 uses
  %i.ge = lshr i64 %i.gd, 6
  %i.gf = and i64 %i.gd, 63
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ge
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !104
  %i.gi = shl nuw i64 1, %i.gf
  %i.gj = and i64 %i.gh, %i.gi
  %.not230.us260 = icmp eq i64 %i.gj, 0
  br i1 %.not230.us260, label %bb.r, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us261

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us261: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us256
  %i.gk = lshr i64 %.0123234.us258, 6
  %i.gl = and i64 %.0123234.us258, 63
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.gk
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !104
  %i.go = shl nuw i64 1, %i.gl
  %i.gp = and i64 %i.gn, %i.go
  %.not231.us262 = icmp eq i64 %i.gp, 0
  br i1 %.not231.us262, label %bb.r, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us263

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us263: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us261
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0123234.us258
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !104
  %i.gs = add i64 %i.gr, %.0121235.us257
  br label %bb.r

bb.r:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us263, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us261, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us256
  %.1122.us264 = phi i64 [ %i.gs, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us263 ], [ %.0121235.us257, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us261 ], [ %.0121235.us257, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us256 ] ; 2 uses
  %i.gt = add nuw i64 %.0123234.us258, 1          ; 2 uses
  %exitcond311.not = icmp eq i64 %i.gt, %i.g
  br i1 %exitcond311.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us256, !llvm.loop !244

._crit_edge.loopexit417.unr-lcssa:                ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279
  %lcmp.mod443.not = icmp eq i64 %xtraiter441, 0
  br i1 %lcmp.mod443.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.epil.preheader: ; preds = %._crit_edge.loopexit417.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.preheader
  %.0121235.us.us.us277.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.preheader ], [ %i.bs, %._crit_edge.loopexit417.unr-lcssa ]
  %.0123234.us.us.us278.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.preheader ], [ %i.bt, %._crit_edge.loopexit417.unr-lcssa ]
  %lcmp.mod445 = icmp ne i64 %xtraiter441, 0
  call void @llvm.assume(i1 %lcmp.mod445)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.epil.preheader
  %.0121235.us.us.us277.epil = phi i64 [ %i.gz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.epil ], [ %.0121235.us.us.us277.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.epil.preheader ]
  %.0123234.us.us.us278.epil = phi i64 [ %i.ha, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.epil ], [ %.0123234.us.us.us278.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.epil.preheader ] ; 2 uses
  %epil.iter442 = phi i64 [ %epil.iter442.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.epil.preheader ]
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.0123234.us.us.us278.epil
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !3
  %i.gw = zext i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.gw
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !104
  %i.gz = add i64 %i.gy, %.0121235.us.us.us277.epil ; 2 uses
  %i.ha = add nuw i64 %.0123234.us.us.us278.epil, 1
  %epil.iter442.next = add i64 %epil.iter442, 1   ; 2 uses
  %epil.iter442.cmp.not = icmp eq i64 %epil.iter442.next, %xtraiter441
  br i1 %epil.iter442.cmp.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.epil, !llvm.loop !245

._crit_edge.loopexit419.unr-lcssa:                ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us
  %lcmp.mod436.not = icmp eq i64 %xtraiter435, 0
  br i1 %lcmp.mod436.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.epil.preheader: ; preds = %._crit_edge.loopexit419.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.preheader
  %.0121235.us.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.preheader ], [ %i.cu, %._crit_edge.loopexit419.unr-lcssa ]
  %.0123234.us.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.preheader ], [ %i.cv, %._crit_edge.loopexit419.unr-lcssa ]
  %lcmp.mod438 = icmp ne i64 %xtraiter435, 0
  call void @llvm.assume(i1 %lcmp.mod438)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.epil.preheader
  %.0121235.us.us.epil = phi i64 [ %i.hg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.epil ], [ %.0121235.us.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.epil.preheader ]
  %.0123234.us.us.epil = phi i64 [ %i.hh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.epil ], [ %.0123234.us.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.epil.preheader ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.0123234.us.us.epil
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !3
  %i.hd = zext i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.hd
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !104
  %i.hg = add i64 %i.hf, %.0121235.us.us.epil     ; 2 uses
  %i.hh = add nuw i64 %.0123234.us.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter435
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.epil, !llvm.loop !247

._crit_edge.loopexit421.unr-lcssa:                ; preds = %bb.k
  %lcmp.mod430.not = icmp eq i64 %xtraiter429, 0
  br i1 %lcmp.mod430.not, label %._crit_edge, label %.lr.ph.split.us.split.split.us.epil.preheader

.lr.ph.split.us.split.split.us.epil.preheader:    ; preds = %._crit_edge.loopexit421.unr-lcssa, %.lr.ph.split.us.split.split.us.preheader
  %.0121235.us.us268.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.split.us.preheader ], [ %.1122.us.us273.1, %._crit_edge.loopexit421.unr-lcssa ] ; 2 uses
  %.0123234.us.us269.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.split.us.preheader ], [ %i.do, %._crit_edge.loopexit421.unr-lcssa ] ; 3 uses
  %lcmp.mod432 = trunc i64 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod432)
  %i.hi = lshr i64 %.0123234.us.us269.epil.init, 6
  %i.hj = and i64 %.0123234.us.us269.epil.init, 63
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.hi
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !104
  %i.hm = shl nuw i64 1, %i.hj
  %i.hn = and i64 %i.hl, %i.hm
  %.not231.us.us.epil = icmp eq i64 %i.hn, 0
  br i1 %.not231.us.us.epil, label %._crit_edge, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us.us272.epil

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us.us272.epil: ; preds = %.lr.ph.split.us.split.split.us.epil.preheader
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0123234.us.us269.epil.init
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !104
  %i.hq = add i64 %i.hp, %.0121235.us.us268.epil.init
  br label %._crit_edge

._crit_edge.loopexit422.unr-lcssa:                ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.us.split.split.epil.preheader

.lr.ph.split.us.split.split.epil.preheader:       ; preds = %._crit_edge.loopexit422.unr-lcssa, %.lr.ph.split.us.split.split.preheader
  %.0121235.us.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.split.preheader ], [ %.1122.us.1, %._crit_edge.loopexit422.unr-lcssa ] ; 2 uses
  %.0123234.us.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.split.preheader ], [ %i.eo, %._crit_edge.loopexit422.unr-lcssa ]
  %lcmp.mod428 = trunc i64 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod428)
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.0123234.us.epil.init
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !3
  %i.ht = zext i32 %i.hs to i64                   ; 3 uses
  %i.hu = lshr i64 %i.ht, 6
  %i.hv = and i64 %i.ht, 63
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.hu
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !104
  %i.hy = shl nuw i64 1, %i.hv
  %i.hz = and i64 %i.hx, %i.hy
  %.not231.us.epil = icmp eq i64 %i.hz, 0
  br i1 %.not231.us.epil, label %._crit_edge, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us.epil

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us.epil: ; preds = %.lr.ph.split.us.split.split.epil.preheader
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ht
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !104
  %i.ic = add i64 %i.ib, %.0121235.us.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.aa, %bb.r, %bb.q, %bb.o, %._crit_edge.loopexit422.unr-lcssa, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us.epil, %.lr.ph.split.us.split.split.epil.preheader, %._crit_edge.loopexit421.unr-lcssa, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us.us272.epil, %.lr.ph.split.us.split.split.us.epil.preheader, %._crit_edge.loopexit419.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.epil, %._crit_edge.loopexit417.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.us, %middle.block, %middle.block392, %_ZN6duckdb19UnifiedVectorFormat7GetDataImEEPKT_RKS0_.exit
  %.0121.lcssa = phi i64 [ 0, %_ZN6duckdb19UnifiedVectorFormat7GetDataImEEPKT_RKS0_.exit ], [ %.1122.us242, %bb.o ], [ %.0121235.us.us268.epil.init, %.lr.ph.split.us.split.split.us.epil.preheader ], [ %i.gz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us279.epil ], [ %i.am, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us ], [ %i.hg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.epil ], [ %.0121235.us.epil.init, %.lr.ph.split.us.split.split.epil.preheader ], [ %.1122.us253, %bb.q ], [ %.1122.us264, %bb.r ], [ %i.ai, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.us ], [ %i.af, %middle.block392 ], [ %i.z, %middle.block ], [ %i.bs, %._crit_edge.loopexit417.unr-lcssa ], [ %i.cu, %._crit_edge.loopexit419.unr-lcssa ], [ %.1122.us.us273.1, %._crit_edge.loopexit421.unr-lcssa ], [ %i.hq, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us.us272.epil ], [ %.1122.us.1, %._crit_edge.loopexit422.unr-lcssa ], [ %i.ic, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread.us.epil ], [ %.1122, %bb.aa ] ; 2 uses
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.0121.lcssa)
          to label %bb.ab unwind label %bb.al

bb.s:                                             ; preds = %bb.c
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.t:                                             ; preds = %bb.d
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.u:                                             ; preds = %bb.e
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.v:                                             ; preds = %bb.f
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.w:                                             ; preds = %bb.g
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.x:                                             ; preds = %bb.h
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.y:                                             ; preds = %bb.i
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.z:                                             ; preds = %bb.j
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph.split.split.split, %bb.aa
  %.0121235 = phi i64 [ %.1122, %bb.aa ], [ 0, %.lr.ph.split.split.split ] ; 3 uses
  %.0123234 = phi i64 [ %i.jg, %bb.aa ], [ 0, %.lr.ph.split.split.split ] ; 3 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.0123234
  %i.im = load i32, ptr %i.il, align 4, !tbaa !3
  %i.in = zext i32 %i.im to i64                   ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.0123234
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !3
  %i.iq = zext i32 %i.ip to i64                   ; 3 uses
  %i.ir = lshr i64 %i.in, 6
  %i.is = and i64 %i.in, 63
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ir
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !104
  %i.iv = shl nuw i64 1, %i.is
  %i.iw = and i64 %i.iu, %i.iv
  %.not230 = icmp eq i64 %i.iw, 0
  br i1 %.not230, label %bb.aa, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ix = lshr i64 %i.iq, 6
  %i.iy = and i64 %i.iq, 63
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.ix
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !104
  %i.jb = shl nuw i64 1, %i.iy
  %i.jc = and i64 %i.ja, %i.jb
  %.not231 = icmp eq i64 %i.jc, 0
  br i1 %.not231, label %bb.aa, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.iq
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !104
  %i.jf = add i64 %i.je, %.0121235
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %.1122 = phi i64 [ %i.jf, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread ], [ %.0121235, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ %.0121235, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.jg = add nuw i64 %.0123234, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.jg, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !244

bb.ab:                                            ; preds = %._crit_edge
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.0121.lcssa)
          to label %bb.ac unwind label %bb.al

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.ad unwind label %bb.al

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.ae unwind label %bb.am

bb.ae:                                            ; preds = %bb.ad
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !116
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.af unwind label %bb.an

bb.af:                                            ; preds = %bb.ae
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.jk = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.ag unwind label %bb.ao     ; 3 uses

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.ah unwind label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr null, ptr %7, align 8, !tbaa !248
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !250
  %i.jn = load ptr, ptr %0, align 8, !tbaa !251
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = sub i64 %i.jo, %i.jp
  %i.jr = icmp eq i64 %i.jq, 312
  br i1 %i.jr, label %bb.ai, label %bb.as

bb.ai:                                            ; preds = %bb.ah
  %i.js = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
          to label %bb.aj unwind label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  %i.jt = ptrtoint ptr %i.js to i64
  store i64 %i.jt, ptr %7, align 8, !tbaa !252
  invoke void @_ZNK6duckdb12optional_ptrINS_6VectorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ak unwind label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  %i.ju = load ptr, ptr %7, align 8, !tbaa !248
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.ju, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.as unwind label %bb.aq

bb.al:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.am:                                            ; preds = %bb.ad
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.an:                                            ; preds = %bb.ae
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.ao:                                            ; preds = %bb.af
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.ap:                                            ; preds = %bb.ag
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.aq:                                            ; preds = %bb.aj, %bb.ak
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.ar:                                            ; preds = %bb.ai
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.as:                                            ; preds = %bb.ak, %bb.ah
  br i1 %.not295, label %._crit_edge294, label %.lr.ph293

.lr.ph293:                                        ; preds = %bb.as
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.kd = getelementptr inbounds nuw i8, ptr %2, i64 64
end_hunk_1
