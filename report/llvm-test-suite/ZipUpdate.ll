Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ZipUpdate?download=true
inline.NumInlined: 523
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN8NArchive4NZip6UpdateERK13CObjectVectorINS0_7CItemExEERKS1_INS0_11CUpdateItemEEP20ISequentialOutStreamPNS0_10CInArchiveEPNS0_22CCompressionMethodModeEP22IArchiveUpdateCallback:bb.a
.noexc180.i.i:                                    ; preds = %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.thread.i.i
  invoke void @_ZN8NArchive4NZip5CItemC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(179) %i.nb, ptr noundef nonnull align 8 dereferenceable(179) %8)
          to label %bb.ct unwind label %bb.cu

bb.ct:                                            ; preds = %.noexc180.i.i
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.cv unwind label %bb.bn

bb.cu:                                            ; preds = %.noexc180.i.i
  %i.nc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.nb, i64 noundef 184) #17
  br label %.body.i.i

bb.cv:                                            ; preds = %bb.ct
  %i.nd = load ptr, ptr %i.hg, align 8, !tbaa !158
  %i.ne = load i32, ptr %i.hh, align 4, !tbaa !157 ; 2 uses
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.nd, i64 %i.nf
  store ptr %i.nb, ptr %i.ng, align 8, !tbaa !159
  %i.nh = add nsw i32 %i.ne, 1
  store i32 %i.nh, ptr %i.hh, align 4, !tbaa !157
  %i.ni = load i64, ptr %i.hb, align 8, !tbaa !302
  %i.nj = add i64 %i.ni, 26
  store i64 %i.nj, ptr %i.hb, align 8, !tbaa !302
  br label %bb.cw

.critedge.i.i:                                    ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.bh, %.critedge.i.i, %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt1.i.i
  %.12.jt1.i.i = phi i32 [ %i.mw, %.critedge.i.i ], [ %.7135.jt1.i.i, %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt1.i.i ], [ -2147467263, %bb.bh ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.gw, align 8, !tbaa !124
  %i.nk = load ptr, ptr %i.hi, align 8, !tbaa !174 ; 2 uses
  %i.nl = icmp eq ptr %i.nk, null
  br i1 %i.nl, label %_ZN7CBufferIhED2Ev.exit.i.jt1.i.i, label %bb.cx

bb.cw:                                            ; preds = %bb.cv, %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt0.i.i
  %.6103.jt0.i.i = phi i64 [ %.5102.i.i, %bb.cv ], [ %.299.jt0.i.i, %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt0.i.i ]
  %.696.jt0.i.i = phi i64 [ %.595.i.i, %bb.cv ], [ %.292.jt0.i.i, %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt0.i.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.gw, align 8, !tbaa !124
  %i.nm = load ptr, ptr %i.hi, align 8, !tbaa !174 ; 2 uses
  %i.nn = icmp eq ptr %i.nm, null
  br i1 %i.nn, label %_ZN7CBufferIhED2Ev.exit.i.jt0.i.i, label %bb.cy

bb.cx:                                            ; preds = %.loopexit.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.nk) #17, !inline_history !175
  br label %_ZN7CBufferIhED2Ev.exit.i.jt1.i.i

bb.cy:                                            ; preds = %bb.cw
  call void @_ZdaPv(ptr noundef nonnull %i.nm) #17, !inline_history !175
  br label %_ZN7CBufferIhED2Ev.exit.i.jt0.i.i

_ZN7CBufferIhED2Ev.exit.i.jt1.i.i:                ; preds = %bb.cx, %.loopexit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.gt, align 8, !tbaa !124
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.gt)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.jt1.i.i unwind label %.loopexit.split-lp221.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !176

_ZN7CBufferIhED2Ev.exit.i.jt0.i.i:                ; preds = %bb.cy, %bb.cw
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.gt, align 8, !tbaa !124
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.gt)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.jt0.i.i unwind label %.loopexit.split-lp221.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !176

.loopexit.split-lp221.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN7CBufferIhED2Ev.exit.i.jt0.i.i, %_ZN7CBufferIhED2Ev.exit.i.jt1.i.i
  %lpad.loopexit.split-lp1228 = landingpad { ptr, i32 }
          catch ptr null
  %i.no = extractvalue { ptr, i32 } %lpad.loopexit.split-lp1228, 0
  call void @__clang_call_terminate(ptr %i.no) #16, !inline_history !176
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.jt1.i.i: ; preds = %_ZN7CBufferIhED2Ev.exit.i.jt1.i.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.gt) #14, !inline_history !176
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.gq, align 8, !tbaa !124
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.gq)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i.jt1.i.i unwind label %.loopexit.split-lp226.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !176

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.jt0.i.i: ; preds = %_ZN7CBufferIhED2Ev.exit.i.jt0.i.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.gt) #14, !inline_history !176
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.gq, align 8, !tbaa !124
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.gq)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i.jt0.i.i unwind label %.loopexit.split-lp226.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !176

.loopexit.split-lp226.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.jt0.i.i, %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.jt1.i.i
  %lpad.loopexit.split-lp1231 = landingpad { ptr, i32 }
          catch ptr null
  %i.np = extractvalue { ptr, i32 } %lpad.loopexit.split-lp1231, 0
  call void @__clang_call_terminate(ptr %i.np) #16, !inline_history !176
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i.jt1.i.i: ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.jt1.i.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.gq) #14, !inline_history !176
  %i.nq = load ptr, ptr %i.gn, align 8, !tbaa !177 ; 2 uses
  %i.nr = icmp eq ptr %i.nq, null
  br i1 %i.nr, label %_ZN8NArchive4NZip5CItemD2Ev.exit.jt1.i.i, label %bb.cz

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i.jt0.i.i: ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.jt0.i.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.gq) #14, !inline_history !176
  %i.ns = load ptr, ptr %i.gn, align 8, !tbaa !177 ; 2 uses
  %i.nt = icmp eq ptr %i.ns, null
  br i1 %i.nt, label %_ZN8NArchive4NZip5CItemD2Ev.exit.jt0.i.i, label %bb.da

bb.cz:                                            ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i.jt1.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.nq) #17
  br label %_ZN8NArchive4NZip5CItemD2Ev.exit.jt1.i.i

bb.da:                                            ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i.jt0.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.ns) #17
  br label %_ZN8NArchive4NZip5CItemD2Ev.exit.jt0.i.i

_ZN8NArchive4NZip5CItemD2Ev.exit.jt1.i.i:         ; preds = %bb.cz, %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i.jt1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %.thread.i.i

_ZN8NArchive4NZip5CItemD2Ev.exit.jt0.i.i:         ; preds = %bb.da, %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i.jt0.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.nu = load i32, ptr %i.bx, align 4, !tbaa !157
  %i.nv = sext i32 %i.nu to i64
  %.not162.i.i = icmp slt i64 %indvars.iv.next.i.i, %i.nv
  br i1 %.not162.i.i, label %bb.ba, label %._crit_edge.i.i, !llvm.loop !265

.body.i.i:                                        ; preds = %bb.cu, %bb.cr, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit179.i.i, %bb.bn
  %.pn157.i.i = phi { ptr, i32 } [ %.pn152.i.i, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit179.i.i ], [ %i.mx, %bb.cr ], [ %i.kb, %bb.bn ], [ %i.nc, %bb.cu ]
  call void @_ZN8NArchive4NZip5CItemD2Ev(ptr noundef nonnull align 8 dereferenceable(186) %8) #14
  br label %bb.db

bb.db:                                            ; preds = %.body.i.i, %bb.bi
  %.pn157.pn.i.i = phi { ptr, i32 } [ %.pn157.i.i, %.body.i.i ], [ %i.jo, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %.loopexit.split-lp.i.i

._crit_edge.i.i:                                  ; preds = %_ZN8NArchive4NZip5CItemD2Ev.exit.jt0.i.i, %bb.aw
  invoke void @_ZN8NArchive4NZip11COutArchive15WriteCentralDirERK13CObjectVectorINS0_5CItemEEPK7CBufferIhE(ptr noundef nonnull align 8 dereferenceable(81) %32, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.bw)
          to label %.thread.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread.i.i:                                      ; preds = %bb.bb, %._crit_edge.i.i, %_ZN8NArchive4NZip5CItemD2Ev.exit.jt1.i.i
  %.14.i.i = phi i32 [ 0, %._crit_edge.i.i ], [ %.12.jt1.i.i, %_ZN8NArchive4NZip5CItemD2Ev.exit.jt1.i.i ], [ %i.hm, %bb.bb ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip5CItemEE, i64 16), ptr %7, align 8, !tbaa !124
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.dd unwind label %bb.dc, !inline_history !192

bb.dc:                                            ; preds = %.thread.i.i
  %i.nw = landingpad { ptr, i32 }
          catch ptr null
  %i.nx = extractvalue { ptr, i32 } %i.nw, 0
  call void @__clang_call_terminate(ptr %i.nx) #16, !inline_history !192
  unreachable

bb.dd:                                            ; preds = %.thread.i.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #14, !inline_history !192
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN8NArchive4NZip10CAddCommonD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.ny = load ptr, ptr %i.gc, align 8, !tbaa !124
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8
  %i.ob = invoke noundef i32 %i.oa(ptr noundef nonnull align 8 dereferenceable(8) %i.gc)
          to label %_ZN8NArchive4NZipL9Update2StERNS0_11COutArchiveEPNS0_10CInArchiveEP9IInStreamRK13CObjectVectorINS0_7CItemExEERKS7_INS0_11CUpdateItemEEPKNS0_22CCompressionMethodModeEPK7CBufferIhEP22IArchiveUpdateCallback.exit.i unwind label %bb.de ; 0 uses

bb.de:                                            ; preds = %bb.dd
  %i.oc = landingpad { ptr, i32 }
          catch ptr null
  %i.od = extractvalue { ptr, i32 } %i.oc, 0
  call void @__clang_call_terminate(ptr %i.od) #16
  unreachable

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.db
  %.pn163.i.i = phi { ptr, i32 } [ %.pn157.pn.i.i, %bb.db ], [ %lpad.loopexit.split-lp1220, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN8NArchive4NZip10CAddCommonD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %6) #14
  br label %bb.df

bb.df:                                            ; preds = %.loopexit.split-lp.i.i, %bb.az
  %.pn163.pn.pn.i.i = phi { ptr, i32 } [ %.pn163.i.i, %.loopexit.split-lp.i.i ], [ %i.hl, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.ay
  %.pn163.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn163.pn.pn.i.i, %bb.df ], [ %i.hk, %bb.ay ]
  %i.oe = load ptr, ptr %i.gc, align 8, !tbaa !124
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %i.og = load ptr, ptr %i.of, align 8
  %i.oh = invoke noundef i32 %i.og(ptr noundef nonnull align 8 dereferenceable(8) %i.gc)
          to label %.body.i unwind label %bb.dh   ; 0 uses

bb.dh:                                            ; preds = %bb.dg
  %i.oi = landingpad { ptr, i32 }
          catch ptr null
  %i.oj = extractvalue { ptr, i32 } %i.oi, 0
  call void @__clang_call_terminate(ptr %i.oj) #16
  unreachable

bb.di:                                            ; preds = %bb.au, %.thread565.i, %bb.ap
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.thread561.i:                                     ; preds = %bb.at, %.thread558.i, %.thread.i, %bb.as
  %.2276564.i = phi i32 [ %spec.store.select.i, %.thread.i ], [ %i.fz, %bb.at ], [ %i.fs, %.thread558.i ], [ %spec.store.select.i, %bb.as ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  %i.ol = getelementptr inbounds nuw i8, ptr %15, i64 88 ; 2 uses
  store i8 0, ptr %i.ol, align 8, !tbaa !194
  %i.om = call i32 @pthread_mutex_init(ptr noundef nonnull align 8 dereferenceable(89) %15, ptr noundef null) #14 ; 0 uses
  %i.on = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 2 uses
  %i.oo = call i32 @pthread_cond_init(ptr noundef nonnull %i.on, ptr noundef null) #14 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  %i.op = getelementptr inbounds nuw i8, ptr %16, i64 88 ; 2 uses
  store i8 0, ptr %i.op, align 8, !tbaa !194
  %i.oq = call i32 @pthread_mutex_init(ptr noundef nonnull align 8 dereferenceable(89) %16, ptr noundef null) #14 ; 0 uses
  %i.or = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  %i.os = call i32 @pthread_cond_init(ptr noundef nonnull %i.or, ptr noundef null) #14 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  %i.ot = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ou = getelementptr inbounds nuw i8, ptr %17, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ot, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.ou, align 8, !tbaa !181
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip5CItemEE, i64 16), ptr %17, align 8, !tbaa !124
  %i.ov = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #15
          to label %_ZN9CMyComPtrI21ICompressProgressInfoEC2EPS0_.exit.i unwind label %bb.ds ; 10 uses

_ZN9CMyComPtrI21ICompressProgressInfoEC2EPS0_.exit.i: ; preds = %.thread561.i
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8NArchive4NZip16CMtProgressMixerE, i64 16), ptr %i.ov, align 8, !tbaa !124
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 24 ; 2 uses
  store ptr null, ptr %i.ox, align 8, !tbaa !121
  store i32 1, ptr %i.ow, align 8, !tbaa !140
  invoke void @_ZN8NArchive4NZip16CMtProgressMixer6CreateEP9IProgressb(ptr noundef nonnull align 8 dereferenceable(32) %i.ov, ptr noundef nonnull %5, i1 noundef zeroext true)
          to label %bb.dj unwind label %bb.dt

bb.dj:                                            ; preds = %_ZN9CMyComPtrI21ICompressProgressInfoEC2EPS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  store ptr null, ptr %18, align 8, !tbaa !121
  %i.oy = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.pa = getelementptr inbounds nuw i8, ptr %18, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oz, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.pa, align 8, !tbaa !181
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIyE, i64 16), ptr %i.oy, align 8, !tbaa !124
  %i.pb = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.pd = getelementptr inbounds nuw i8, ptr %18, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pc, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.pd, align 8, !tbaa !181
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIyE, i64 16), ptr %i.pb, align 8, !tbaa !124
  %i.pe = getelementptr inbounds nuw i8, ptr %18, i64 88 ; 2 uses
  %i.pf = invoke i32 @CriticalSection_Init(ptr noundef nonnull align 8 dereferenceable(40) %i.pe)
          to label %_ZN24CMtCompressProgressMixerC2Ev.exit.i unwind label %bb.dk ; 0 uses

bb.dk:                                            ; preds = %bb.dj
  %i.pg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.pb) #14
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.oy) #14
  %i.ph = load ptr, ptr %18, align 8, !tbaa !121  ; 3 uses
  %.not.i.i467.i = icmp eq ptr %i.ph, null
  br i1 %.not.i.i467.i, label %.body468.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !124
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %i.pk = load ptr, ptr %i.pj, align 8
  %i.pl = invoke noundef i32 %i.pk(ptr noundef nonnull align 8 dereferenceable(8) %i.ph)
          to label %.body468.i unwind label %bb.dm ; 0 uses

bb.dm:                                            ; preds = %bb.dl
  %i.pm = landingpad { ptr, i32 }
          catch ptr null
  %i.pn = extractvalue { ptr, i32 } %i.pm, 0
  call void @__clang_call_terminate(ptr %i.pn) #16
  unreachable

_ZN24CMtCompressProgressMixerC2Ev.exit.i:         ; preds = %bb.dj
  %i.po = load ptr, ptr %i.ox, align 8, !tbaa !121
  invoke void @_ZN24CMtCompressProgressMixer4InitEiP21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(128) %18, i32 noundef %.2276564.i, ptr noundef %i.po)
          to label %bb.dn unwind label %bb.du

bb.dn:                                            ; preds = %_ZN24CMtCompressProgressMixerC2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14
  store ptr null, ptr %19, align 8, !tbaa !305
  %i.pp = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store i64 65536, ptr %i.pp, align 8, !tbaa !306
  %i.pq = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr null, ptr %i.pq, align 8, !tbaa !307
  %i.pr = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 2 uses
  %i.ps = invoke i32 @CriticalSection_Init(ptr noundef nonnull align 8 dereferenceable(40) %i.pr)
          to label %bb.dq unwind label %bb.do     ; 0 uses

bb.do:                                            ; preds = %bb.dn
  %i.pt = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN16CMemBlockManager9FreeSpaceEv(ptr noundef nonnull align 8 dereferenceable(88) %19)
          to label %.body470.i unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.pu = landingpad { ptr, i32 }
          catch ptr null
  %i.pv = extractvalue { ptr, i32 } %i.pu, 0
  call void @__clang_call_terminate(ptr %i.pv) #16
  unreachable

bb.dq:                                            ; preds = %bb.dn
  %i.pw = getelementptr inbounds nuw i8, ptr %19, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization14CSemaphoreWFMOE, i64 16), ptr %i.pw, align 8, !tbaa !124
  %i.px = getelementptr inbounds nuw i8, ptr %19, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.px, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #14
  store ptr %19, ptr %20, align 8, !tbaa !198
  %i.py = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 5 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.qa = getelementptr inbounds nuw i8, ptr %20, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pz, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.qa, align 8, !tbaa !181
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE, i64 16), ptr %i.py, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #14
  %i.qb = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.qc = getelementptr inbounds nuw i8, ptr %21, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qb, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.qc, align 8, !tbaa !181
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip11CThreadInfoEE, i64 16), ptr %21, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #14
  %i.qd = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.qe = getelementptr inbounds nuw i8, ptr %22, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qd, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.qe, align 8, !tbaa !181
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE, i64 16), ptr %22, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #14
  %i.qf = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.qg = getelementptr inbounds nuw i8, ptr %23, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qf, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.qg, align 8, !tbaa !181
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIiE, i64 16), ptr %23, align 8, !tbaa !124
  %i.qh = zext nneg i32 %.2276564.i to i64
  %i.qi = shl nuw nsw i64 %i.qh, 9
  %i.qj = invoke noundef i32 @_ZN18CMemBlockManagerMt19AllocateSpaceAlwaysEPN8NWindows16NSynchronization8CSynchroEmm(ptr noundef nonnull align 8 dereferenceable(88) %19, ptr noundef nonnull %16, i64 noundef %i.qi, i64 noundef 0)
          to label %bb.dr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.dr:                                            ; preds = %bb.dq
  %.not392.i = icmp eq i32 %i.qj, 0               ; 2 uses
  %..i = select i1 %.not392.i, i32 -2147467263, i32 %i.qj
  br i1 %.not392.i, label %.preheader609.i, label %.thread576.i

.preheader609.i:                                  ; preds = %bb.dr
  %i.qk = load i32, ptr %i.bx, align 4, !tbaa !157
  %i.ql = icmp sgt i32 %i.qk, 0
  br i1 %i.ql, label %.lr.ph700.i, label %.preheader608.i

.lr.ph700.i:                                      ; preds = %.preheader609.i
  %i.qm = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.qn = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.qo = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.qp = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.qq = getelementptr inbounds nuw i8, ptr %24, i64 72
  %i.qr = getelementptr inbounds nuw i8, ptr %24, i64 73
  br label %bb.dv

bb.ds:                                            ; preds = %.thread561.i
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit552.i

bb.dt:                                            ; preds = %_ZN9CMyComPtrI21ICompressProgressInfoEC2EPS0_.exit.i
  %i.qt = landingpad { ptr, i32 }
          cleanup
  br label %bb.jh

bb.du:                                            ; preds = %_ZN24CMtCompressProgressMixerC2Ev.exit.i
  %i.qu = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

.preheader608.i:                                  ; preds = %bb.dw, %.preheader609.i
  %.not742.i = icmp eq i32 %.2276564.i, 0         ; 2 uses
  br i1 %.not742.i, label %.preheader.i, label %.lr.ph702.i

.lr.ph702.i:                                      ; preds = %.preheader608.i
  %i.qv = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 2 uses
  br label %bb.dy

bb.dv:                                            ; preds = %bb.dw, %.lr.ph700.i
  %.1340699.i = phi i32 [ 0, %.lr.ph700.i ], [ %i.qy, %bb.dw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qm, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.qn, align 8, !tbaa !181
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIPvE, i64 16), ptr %24, align 8, !tbaa !124
  store i64 0, ptr %i.qo, align 8, !tbaa !200
  store i8 1, ptr %i.qp, align 8, !tbaa !202
  store i8 0, ptr %i.qq, align 8, !tbaa !309
  store i8 0, ptr %i.qr, align 1, !tbaa !310
  %i.qx = invoke noundef i32 @_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE3AddERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.py, ptr noundef nonnull align 8 dereferenceable(74) %24)
          to label %bb.dw unwind label %bb.dx     ; 0 uses

bb.dw:                                            ; preds = %bb.dv
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(74) %24) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  %i.qy = add nuw nsw i32 %.1340699.i, 1          ; 2 uses
  %i.qz = load i32, ptr %i.bx, align 4, !tbaa !157
  %i.ra = icmp slt i32 %i.qy, %i.qz
  br i1 %i.ra, label %bb.dv, label %.preheader608.i, !llvm.loop !266

bb.dx:                                            ; preds = %bb.dv
  %i.rb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(74) %24) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  br label %.loopexit.split-lp.i

.lr.ph705.i:                                      ; preds = %bb.ec
  %i.rc = load ptr, ptr getelementptr inbounds nuw inrange(-24, 40) (i8, ptr @_ZTV19CMtCompressProgress, i64 24), align 8
  %i.rd = load ptr, ptr getelementptr inbounds nuw inrange(-24, 56) (i8, ptr @_ZTV13COutMemStream, i64 24), align 8
  br label %bb.eh

bb.dy:                                            ; preds = %bb.ec, %.lr.ph702.i
  %.0265701.i = phi i32 [ 0, %.lr.ph702.i ], [ %i.rl, %bb.ec ]
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #14
  invoke void @_ZN8NArchive4NZip11CThreadInfoC2ERKNS0_22CCompressionMethodModeE(ptr noundef nonnull align 8 dereferenceable(408) %25, ptr noundef nonnull align 8 dereferenceable(106) %14)
          to label %bb.dz unwind label %bb.ed

bb.dz:                                            ; preds = %bb.dy
  %i.re = invoke noalias noundef nonnull dereferenceable(408) ptr @_Znwm(i64 noundef 408) #15
          to label %.noexc472.i unwind label %bb.ee ; 3 uses

.noexc472.i:                                      ; preds = %bb.dz
  invoke void @_ZN8NArchive4NZip11CThreadInfoC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(408) %i.re, ptr noundef nonnull align 8 dereferenceable(408) %25)
          to label %bb.ea unwind label %bb.eb

bb.ea:                                            ; preds = %.noexc472.i
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.ec unwind label %bb.ee

bb.eb:                                            ; preds = %.noexc472.i
  %i.rf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.re, i64 noundef 408) #17
  br label %.body474.i

bb.ec:                                            ; preds = %bb.ea
  %i.rg = load ptr, ptr %i.qv, align 8, !tbaa !158
  %i.rh = load i32, ptr %i.qw, align 4, !tbaa !157 ; 2 uses
  %i.ri = sext i32 %i.rh to i64
  %i.rj = getelementptr inbounds [8 x i8], ptr %i.rg, i64 %i.ri
  store ptr %i.re, ptr %i.rj, align 8, !tbaa !159
  %i.rk = add nsw i32 %i.rh, 1
  store i32 %i.rk, ptr %i.qw, align 4, !tbaa !157
  call void @_ZN8NArchive4NZip11CThreadInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %25) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  %i.rl = add nuw i32 %.0265701.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.rl, %.2276564.i
  br i1 %exitcond.not.i, label %.lr.ph705.i, label %bb.dy, !llvm.loop !267

bb.ed:                                            ; preds = %bb.dy
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ea, %bb.dz
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %.body474.i

.body474.i:                                       ; preds = %bb.ee, %bb.eb
  %eh.lpad-body475.i = phi { ptr, i32 } [ %i.rn, %bb.ee ], [ %i.rf, %bb.eb ]
  call void @_ZN8NArchive4NZip11CThreadInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %25) #14
  br label %bb.ef

bb.ef:                                            ; preds = %.body474.i, %bb.ed
  %.pn428.i = phi { ptr, i32 } [ %eh.lpad-body475.i, %.body474.i ], [ %i.rm, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  br label %.loopexit.split-lp.i

bb.eg:                                            ; preds = %bb.eq
  %33 = add nuw i32 %.1266704.i, 1                ; 2 uses
  %exitcond855.not.i = icmp eq i32 %33, %.2276564.i
  br i1 %exitcond855.not.i, label %.preheader.i, label %bb.eh, !llvm.loop !268

.preheader.i:                                     ; preds = %bb.eg, %.preheader608.i
  %i.ro = getelementptr inbounds nuw i8, ptr %23, i64 12 ; 4 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 4 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %26, i64 44 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %26, i64 48 ; 4 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %26, i64 56
  %i.rv = getelementptr inbounds nuw i8, ptr %26, i64 72
  %i.rw = getelementptr inbounds nuw i8, ptr %26, i64 120 ; 4 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %26, i64 128
  %i.ry = getelementptr inbounds nuw i8, ptr %26, i64 144
  %i.rz = getelementptr inbounds nuw i8, ptr %26, i64 152 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %26, i64 160
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %26, i64 180
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ov, i64 16 ; 3 uses
  %i.se = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %22, i64 12 ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 4 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %26, i64 168
  %i.sk = getelementptr inbounds nuw i8, ptr %28, i64 32 ; 5 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %28, i64 40 ; 4 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %28, i64 44 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %28, i64 48 ; 7 uses
  %i.so = getelementptr inbounds nuw i8, ptr %28, i64 56
  %i.sp = getelementptr inbounds nuw i8, ptr %28, i64 72
  %i.sq = getelementptr inbounds nuw i8, ptr %28, i64 120 ; 7 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %28, i64 128
  %i.ss = getelementptr inbounds nuw i8, ptr %28, i64 144
  %i.st = getelementptr inbounds nuw i8, ptr %28, i64 152 ; 3 uses
  %i.su = getelementptr inbounds nuw i8, ptr %28, i64 160
  %i.sv = getelementptr inbounds nuw i8, ptr %28, i64 180
  %i.sw = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 4 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %4, i64 105 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.sz = getelementptr inbounds nuw i8, ptr %17, i64 12 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %28, i64 168 ; 2 uses
  br label %.outer.outer.i

bb.eh:                                            ; preds = %bb.eg, %.lr.ph705.i
  %.1266704.i = phi i32 [ 0, %.lr.ph705.i ], [ %33, %bb.eg ] ; 3 uses
  %i.tb = load ptr, ptr %i.qv, align 8, !tbaa !158
  %34 = sext i32 %.1266704.i to i64
  %i.tc = getelementptr inbounds [8 x i8], ptr %i.tb, i64 %34
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !159 ; 11 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16 ; 2 uses
  %i.tf = load i32, ptr %i.te, align 8, !tbaa !203
  %.not.i.i476.i = icmp eq i32 %i.tf, 0
  br i1 %.not.i.i476.i, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.i.i, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i.i

_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.i.i: ; preds = %bb.eh
  %i.tg = invoke i32 @AutoResetEvent_CreateNotSignaled(ptr noundef nonnull align 8 dereferenceable(104) %i.te)
          to label %.noexc477.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc477.i:                                      ; preds = %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.i.i
  %.not.not.i.i = icmp eq i32 %i.tg, 0
  br i1 %.not.not.i.i, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i.i, label %.thread576.i

_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i.i: ; preds = %.noexc477.i, %bb.eh
  %i.th = getelementptr inbounds nuw i8, ptr %i.td, i64 128 ; 2 uses
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !125
  %.not.i6.i.i = icmp eq ptr %i.ti, null
  br i1 %.not.i6.i.i, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i.i
  store ptr %15, ptr %i.th, align 8, !tbaa !125
  %i.tj = getelementptr inbounds nuw i8, ptr %i.td, i64 136
  store i8 0, ptr %i.tj, align 8, !tbaa !311
  %i.tk = getelementptr inbounds nuw i8, ptr %i.td, i64 137
  store i8 0, ptr %i.tk, align 1, !tbaa !126
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i.i
  %i.tl = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #15
          to label %bb.ek unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 20 uses

bb.ek:                                            ; preds = %bb.ej
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  store i32 0, ptr %i.tm, align 4, !tbaa !140
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV13COutMemStream, i64 16), ptr %i.tl, align 8, !tbaa !124
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  store ptr %19, ptr %i.tn, align 8, !tbaa !312
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 48
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tl, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization19CAutoResetEventWFMOE, i64 16), ptr %i.to, align 8, !tbaa !124
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tl, i64 72
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tl, i64 80
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization19CAutoResetEventWFMOE, i64 16), ptr %i.tq, align 8, !tbaa !124
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tl, i64 104
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tl, i64 112
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tl, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tt, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.tu, align 8, !tbaa !181
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIPvE, i64 16), ptr %i.ts, align 8, !tbaa !124
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tl, i64 136
  store i64 0, ptr %i.tv, align 8, !tbaa !200
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tl, i64 144
  store i8 1, ptr %i.tw, align 8, !tbaa !202
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tl, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tx, i8 0, i64 16, i1 false)
  %i.ty = getelementptr inbounds nuw i8, ptr %i.td, i64 168
  store ptr %i.tl, ptr %i.ty, align 8, !tbaa !205
  store ptr %16, ptr %i.tp, align 8, !tbaa !125
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tl, i64 64
  store i8 0, ptr %i.tz, align 8, !tbaa !311
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tl, i64 65
  store i8 0, ptr %i.ua, align 1, !tbaa !126
  store ptr %16, ptr %i.tr, align 8, !tbaa !125
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tl, i64 88
  store i8 0, ptr %i.ub, align 8, !tbaa !311
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tl, i64 89
  store i8 0, ptr %i.uc, align 1, !tbaa !126
  %i.ud = getelementptr inbounds nuw i8, ptr %i.td, i64 176 ; 2 uses
  %i.ue = invoke noundef i32 %i.rd(ptr noundef nonnull align 8 dereferenceable(8) %i.tl)
          to label %.noexc480.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1 ; 0 uses

.noexc480.i:                                      ; preds = %bb.ek
  %i.uf = load ptr, ptr %i.ud, align 8, !tbaa !120 ; 3 uses
  %.not6.i.i62 = icmp eq ptr %i.uf, null
  br i1 %.not6.i.i62, label %bb.em, label %bb.el

bb.el:                                            ; preds = %.noexc480.i
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !124
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 16
  %i.ui = load ptr, ptr %i.uh, align 8
  %i.uj = invoke noundef i32 %i.ui(ptr noundef nonnull align 8 dereferenceable(8) %i.uf)
          to label %bb.em unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1 ; 0 uses

bb.em:                                            ; preds = %bb.el, %.noexc480.i
  store ptr %i.tl, ptr %i.ud, align 8, !tbaa !120
  %i.uk = getelementptr inbounds nuw i8, ptr %i.td, i64 400
  store i8 1, ptr %i.uk, align 8, !tbaa !313
  %i.ul = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #15
          to label %bb.en unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.en:                                            ; preds = %bb.em
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ul, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV19CMtCompressProgress, i64 16), ptr %i.ul, align 16, !tbaa !124
  %i.um = getelementptr inbounds nuw i8, ptr %i.td, i64 152 ; 2 uses
  store ptr %i.ul, ptr %i.um, align 8, !tbaa !314
  %i.un = getelementptr inbounds nuw i8, ptr %i.td, i64 160 ; 2 uses
  %i.uo = invoke noundef i32 %i.rc(ptr noundef nonnull align 8 dereferenceable(8) %i.ul)
          to label %.noexc484.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0 ; 0 uses

.noexc484.i:                                      ; preds = %bb.en
  %i.up = load ptr, ptr %i.un, align 8, !tbaa !121 ; 3 uses
  %.not6.i483.i = icmp eq ptr %i.up, null
  br i1 %.not6.i483.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %.noexc484.i
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !124
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 16
  %i.us = load ptr, ptr %i.ur, align 8
  %i.ut = invoke noundef i32 %i.us(ptr noundef nonnull align 8 dereferenceable(8) %i.up)
          to label %bb.ep unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0 ; 0 uses

bb.ep:                                            ; preds = %bb.eo, %.noexc484.i
  store ptr %i.ul, ptr %i.un, align 8, !tbaa !121
  %i.uu = load ptr, ptr %i.um, align 8, !tbaa !314 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  store ptr %18, ptr %i.uv, align 8, !tbaa !317
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uu, i64 24
  store i32 %.1266704.i, ptr %i.uw, align 8, !tbaa !318
  %i.ux = invoke noundef i32 @Thread_Create(ptr noundef nonnull align 8 dereferenceable(408) %i.td, ptr noundef nonnull @_ZN8NArchive4NZipL11CoderThreadEPv, ptr noundef nonnull align 8 dereferenceable(408) %i.td)
          to label %bb.eq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.eq:                                            ; preds = %bb.ep
  %.not396.i = icmp eq i32 %i.ux, 0
  br i1 %.not396.i, label %bb.eg, label %.thread576.i

bb.er:                                            ; preds = %bb.gh, %.lr.ph707.split.split.i
  %indvars.iv861.i = phi i64 [ %i.vj, %.lr.ph707.split.split.i ], [ %indvars.iv.next862.i, %bb.gh ] ; 5 uses
  %i.uy = getelementptr inbounds [8 x i8], ptr %i.vi, i64 %indvars.iv861.i
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !159
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 73
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !310, !range !117, !noundef !118
  %i.vc = trunc nuw i8 %i.vb to i1
  br i1 %i.vc, label %bb.gh, label %bb.gi

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.outer599.i
  %indvars.iv856.i1043 = phi i64 [ %indvars.iv.next857.i, %.outer599.i ], [ %i.ajr, %.lr.ph.preheader ] ; 4 uses
  %indvars.iv.next857.i = add nsw i64 %indvars.iv856.i1043, 1 ; 3 uses
  %i.vd = getelementptr inbounds [8 x i8], ptr %i.ajt, i64 %indvars.iv856.i1043
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !159 ; 6 uses
  %i.vf = load i8, ptr %i.ve, align 8, !tbaa !292, !range !117, !noundef !118
  %i.vg = trunc nuw i8 %i.vf to i1
  br i1 %i.vg, label %bb.es, label %.outer599.i, !llvm.loop !269

.outer599.i:                                      ; preds = %.lr.ph
  %exitcond859.not.i = icmp eq i64 %indvars.iv.next857.i, %smax.i
  br i1 %exitcond859.not.i, label %.lr.ph707.split.i, label %.lr.ph, !llvm.loop !269

.lr.ph707.split.i:                                ; preds = %.outer599.preheader.i, %.outer599.i
  %i.vh = trunc nsw i64 %smax.i to i32
  br label %.lr.ph707.split.split.i

.lr.ph707.split.split.loopexit.i:                 ; preds = %.outer.split.i
  %.pre868.i = sext i32 %i.ajn to i64
  br label %.lr.ph707.split.split.i

.lr.ph707.split.split.i:                          ; preds = %.lr.ph707.split.split.loopexit.i, %.lr.ph707.split.i
  %.pre-phi.i = phi i64 [ %.pre868.i, %.lr.ph707.split.split.loopexit.i ], [ %i.ajs, %.lr.ph707.split.i ]
  %.0264.ph600.lcssa715.split.i = phi i32 [ %.0264.ph.i, %.lr.ph707.split.split.loopexit.i ], [ %i.vh, %.lr.ph707.split.i ]
  store i64 %i.ajm, ptr %i.b, align 8
  %i.vi = load ptr, ptr %i.si, align 8
  %i.vj = sext i32 %.0262.ph.ph.i to i64
  br label %bb.er

bb.es:                                            ; preds = %.lr.ph
  %i.vk = trunc nsw i64 %indvars.iv856.i1043 to i32
  %i.vl = trunc nsw i64 %indvars.iv.next857.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rq, i8 0, i64 16, i1 false)
  %i.vm = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #15
          to label %.noexc488.i unwind label %bb.ev ; 10 uses

.noexc488.i:                                      ; preds = %bb.es
  %i.vn = ptrtoaddr ptr %i.vm to i64
  %i.vo = load i32, ptr %i.rs, align 4, !tbaa !182
  %i.vp = icmp sgt i32 %i.vo, 0
  %.pre1.i.i.i.i.i = load i32, ptr %i.rr, align 8, !tbaa !183 ; 6 uses
  br i1 %i.vp, label %.preheader.i.i.i.i.i.i, label %bb.et

.preheader.i.i.i.i.i.i:                           ; preds = %.noexc488.i
  %i.vq = icmp sgt i32 %.pre1.i.i.i.i.i, 0
  %.pre.i.i.i.i.i487.i = load ptr, ptr %i.rq, align 8, !tbaa !177 ; 10 uses
  br i1 %i.vq, label %iter.check1110, label %._crit_edge.i.i.i.i.i.i

iter.check1110:                                   ; preds = %.preheader.i.i.i.i.i.i
  %.pre.i.i.i.i.i487.i1095 = ptrtoaddr ptr %.pre.i.i.i.i.i487.i to i64
  %wide.trip.count.i.i.i.i.i.i = zext nneg i32 %.pre1.i.i.i.i.i to i64 ; 8 uses
  %min.iters.check1096.a = icmp ult i32 %.pre1.i.i.i.i.i, 4
  %i.vr = sub i64 %.pre.i.i.i.i.i487.i1095, %i.vn
  %diff.check1098 = icmp ugt i64 %i.vr, -32
  %or.cond1124 = select i1 %min.iters.check1096.a, i1 true, i1 %diff.check1098
  br i1 %or.cond1124, label %vec.epilog.scalar.ph1112.preheader, label %vector.main.loop.iter.check1099

vector.main.loop.iter.check1099:                  ; preds = %iter.check1110
  %min.iters.check1100 = icmp ult i32 %.pre1.i.i.i.i.i, 32
  br i1 %min.iters.check1100, label %vec.epilog.ph1114, label %vector.ph1101

vector.ph1101:                                    ; preds = %vector.main.loop.iter.check1099
  %i.vs = and i64 %wide.trip.count.i.i.i.i.i.i, 28
  %n.vec1102 = and i64 %wide.trip.count.i.i.i.i.i.i, 2147483616 ; 4 uses
  br label %vector.body1103

vector.body1103:                                  ; preds = %vector.ph1101, %vector.body1103
  %index1104 = phi i64 [ 0, %vector.ph1101 ], [ %index.next1107, %vector.body1103 ] ; 3 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i487.i, i64 %index1104 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  %wide.load1105 = load <16 x i8>, ptr %i.vt, align 1, !tbaa !179
  %wide.load1106 = load <16 x i8>, ptr %i.vu, align 1, !tbaa !179
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vm, i64 %index1104 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 16
  store <16 x i8> %wide.load1105, ptr %i.vv, align 1, !tbaa !179
  store <16 x i8> %wide.load1106, ptr %i.vw, align 1, !tbaa !179
  %index.next1107 = add nuw i64 %index1104, 32    ; 2 uses
  %i.vx = icmp eq i64 %index.next1107, %n.vec1102
  br i1 %i.vx, label %middle.block1108, label %vector.body1103, !llvm.loop !270

middle.block1108:                                 ; preds = %vector.body1103
  %cmp.n1109 = icmp eq i64 %n.vec1102, %wide.trip.count.i.i.i.i.i.i
  br i1 %cmp.n1109, label %._crit_edge.thread.i.i.i.i.i.i, label %vec.epilog.iter.check1111

vec.epilog.iter.check1111:                        ; preds = %middle.block1108
  %min.epilog.iters.check1113 = icmp eq i64 %i.vs, 0
  br i1 %min.epilog.iters.check1113, label %vec.epilog.scalar.ph1112.preheader, label %vec.epilog.ph1114, !prof !186

vec.epilog.ph1114:                                ; preds = %vector.main.loop.iter.check1099, %vec.epilog.iter.check1111
  %vec.epilog.resume.val1115 = phi i64 [ %n.vec1102, %vec.epilog.iter.check1111 ], [ 0, %vector.main.loop.iter.check1099 ]
  %n.vec1116 = and i64 %wide.trip.count.i.i.i.i.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1117

vec.epilog.vector.body1117:                       ; preds = %vec.epilog.vector.body1117, %vec.epilog.ph1114
  %index1118 = phi i64 [ %vec.epilog.resume.val1115, %vec.epilog.ph1114 ], [ %index.next1120, %vec.epilog.vector.body1117 ] ; 3 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i487.i, i64 %index1118
  %wide.load1119 = load <4 x i8>, ptr %i.vy, align 1, !tbaa !179
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vm, i64 %index1118
  store <4 x i8> %wide.load1119, ptr %i.vz, align 1, !tbaa !179
  %index.next1120 = add nuw i64 %index1118, 4     ; 2 uses
  %i.wa = icmp eq i64 %index.next1120, %n.vec1116
  br i1 %i.wa, label %vec.epilog.middle.block1121, label %vec.epilog.vector.body1117, !llvm.loop !271

vec.epilog.middle.block1121:                      ; preds = %vec.epilog.vector.body1117
  %cmp.n1122 = icmp eq i64 %n.vec1116, %wide.trip.count.i.i.i.i.i.i
  br i1 %cmp.n1122, label %._crit_edge.thread.i.i.i.i.i.i, label %vec.epilog.scalar.ph1112.preheader

vec.epilog.scalar.ph1112.preheader:               ; preds = %iter.check1110, %vec.epilog.iter.check1111, %vec.epilog.middle.block1121
  %indvars.iv.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check1110 ], [ %n.vec1102, %vec.epilog.iter.check1111 ], [ %n.vec1116, %vec.epilog.middle.block1121 ] ; 3 uses
  %xtraiter1252 = and i64 %wide.trip.count.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod1253.not = icmp eq i64 %xtraiter1252, 0
  br i1 %lcmp.mod1253.not, label %vec.epilog.scalar.ph1112.prol.loopexit, label %vec.epilog.scalar.ph1112.prol

vec.epilog.scalar.ph1112.prol:                    ; preds = %vec.epilog.scalar.ph1112.preheader, %vec.epilog.scalar.ph1112.prol
  %indvars.iv.i.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.prol, %vec.epilog.scalar.ph1112.prol ], [ %indvars.iv.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph1112.preheader ] ; 3 uses
  %prol.iter1254 = phi i64 [ %prol.iter1254.next, %vec.epilog.scalar.ph1112.prol ], [ 0, %vec.epilog.scalar.ph1112.preheader ]
  %i.wb = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i487.i, i64 %indvars.iv.i.i.i.i.i.i.prol
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !179
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vm, i64 %indvars.iv.i.i.i.i.i.i.prol
  store i8 %i.wc, ptr %i.wd, align 1, !tbaa !179
  %indvars.iv.next.i.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter1254.next = add i64 %prol.iter1254, 1 ; 2 uses
  %prol.iter1254.cmp.not = icmp eq i64 %prol.iter1254.next, %xtraiter1252
  br i1 %prol.iter1254.cmp.not, label %vec.epilog.scalar.ph1112.prol.loopexit, label %vec.epilog.scalar.ph1112.prol, !llvm.loop !272

vec.epilog.scalar.ph1112.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1112.prol, %vec.epilog.scalar.ph1112.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph1112.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %vec.epilog.scalar.ph1112.prol ]
  %i.we = sub nsw i64 %indvars.iv.i.i.i.i.i.i.ph, %wide.trip.count.i.i.i.i.i.i
  %i.wf = icmp ugt i64 %i.we, -4
  br i1 %i.wf, label %._crit_edge.thread.i.i.i.i.i.i, label %vec.epilog.scalar.ph1112

._crit_edge.i.i.i.i.i.i:                          ; preds = %.preheader.i.i.i.i.i.i
  %i.wg = icmp eq ptr %.pre.i.i.i.i.i487.i, null
  br i1 %i.wg, label %bb.et, label %._crit_edge.thread.i.i.i.i.i.i

vec.epilog.scalar.ph1112:                         ; preds = %vec.epilog.scalar.ph1112.prol.loopexit, %vec.epilog.scalar.ph1112
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.3, %vec.epilog.scalar.ph1112 ], [ %indvars.iv.i.i.i.i.i.i.unr, %vec.epilog.scalar.ph1112.prol.loopexit ] ; 6 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i487.i, i64 %indvars.iv.i.i.i.i.i.i
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !179
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vm, i64 %indvars.iv.i.i.i.i.i.i
  store i8 %i.wi, ptr %i.wj, align 1, !tbaa !179
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i487.i, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !179
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vm, i64 %indvars.iv.next.i.i.i.i.i.i
  store i8 %i.wl, ptr %i.wm, align 1, !tbaa !179
  %indvars.iv.next.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 2 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i487.i, i64 %indvars.iv.next.i.i.i.i.i.i.1
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !179
  %i.wp = getelementptr inbounds nuw i8, ptr %i.vm, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store i8 %i.wo, ptr %i.wp, align 1, !tbaa !179
  %indvars.iv.next.i.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 3 ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i487.i, i64 %indvars.iv.next.i.i.i.i.i.i.2
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !179
  %i.ws = getelementptr inbounds nuw i8, ptr %i.vm, i64 %indvars.iv.next.i.i.i.i.i.i.2
  store i8 %i.wr, ptr %i.ws, align 1, !tbaa !179
  %indvars.iv.next.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.3, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %._crit_edge.thread.i.i.i.i.i.i, label %vec.epilog.scalar.ph1112, !llvm.loop !273

._crit_edge.thread.i.i.i.i.i.i:                   ; preds = %vec.epilog.scalar.ph1112.prol.loopexit, %vec.epilog.scalar.ph1112, %middle.block1108, %vec.epilog.middle.block1121, %._crit_edge.i.i.i.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i.i.i487.i) #17
  %.pre.i.i.i.i.i = load i32, ptr %i.rr, align 8, !tbaa !183
  br label %bb.et

bb.et:                                            ; preds = %._crit_edge.thread.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i, %.noexc488.i
  %i.wt = phi i32 [ %.pre1.i.i.i.i.i, %.noexc488.i ], [ %.pre1.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %._crit_edge.thread.i.i.i.i.i.i ]
  store ptr %i.vm, ptr %i.rq, align 8, !tbaa !177
  %i.wu = sext i32 %i.wt to i64
  %i.wv = getelementptr inbounds i8, ptr %i.vm, i64 %i.wu
  store i8 0, ptr %i.wv, align 1, !tbaa !179
  store i32 4, ptr %i.rs, align 4, !tbaa !182
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ru, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.rv, align 8, !tbaa !181
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.rt, align 8, !tbaa !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rx, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.ry, align 8, !tbaa !181
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.rw, align 8, !tbaa !124
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.rz, align 8, !tbaa !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.sa, i8 0, i64 19, i1 false)
  %i.ww = getelementptr inbounds nuw i8, ptr %i.ve, i64 1
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !187, !range !117, !noundef !118
  %i.wy = trunc nuw i8 %i.wx to i1
  br i1 %i.wy, label %bb.eu, label %bb.ew

bb.eu:                                            ; preds = %bb.et
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ve, i64 2
  %i.xa = load i8, ptr %i.wz, align 2, !tbaa !188, !range !117, !noundef !118
  %i.xb = trunc nuw i8 %i.xa to i1
  br i1 %i.xb, label %bb.ga, label %bb.fc, !llvm.loop !269

bb.ev:                                            ; preds = %bb.es
  %i.xc = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.ew:                                            ; preds = %bb.et
  %i.xd = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %i.xe = load i32, ptr %i.xd, align 8, !tbaa !293
  %i.xf = load ptr, ptr %i.sb, align 8, !tbaa !158
  %i.xg = sext i32 %i.xe to i64
  %i.xh = getelementptr inbounds [8 x i8], ptr %i.xf, i64 %i.xg
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !159 ; 2 uses
  %i.xj = invoke noundef nonnull align 8 dereferenceable(179) ptr @_ZN8NArchive4NZip5CItemaSERKS1_(ptr noundef nonnull align 8 dereferenceable(186) %26, ptr noundef nonnull align 8 dereferenceable(186) %i.xi)
          to label %bb.ex unwind label %bb.ez     ; 0 uses

bb.ex:                                            ; preds = %bb.ew
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xi, i64 180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.sc, ptr noundef nonnull align 4 dereferenceable(6) %i.xk, i64 6, i1 false)
  %i.xl = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive28ReadLocalItemAfterCdItemFullERNS0_7CItemExE(ptr noundef nonnull align 8 dereferenceable(138) %3, ptr noundef nonnull align 8 dereferenceable(186) %26)
          to label %bb.ey unwind label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %.not415.i = icmp eq i32 %i.xl, 0
  br i1 %.not415.i, label %bb.fa, label %bb.ga

bb.ez:                                            ; preds = %bb.fa, %bb.ex, %bb.ew
  %i.xm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

bb.fa:                                            ; preds = %bb.ey
  %i.xn = invoke noundef zeroext i1 @_ZNK8NArchive4NZip5CItem5IsDirEv(ptr noundef nonnull align 8 dereferenceable(179) %26)
          to label %bb.fb unwind label %bb.ez

bb.fb:                                            ; preds = %bb.fa
  br i1 %i.xn, label %bb.ga, label %bb.fc, !llvm.loop !269

bb.fc:                                            ; preds = %bb.fb, %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #14
  store ptr null, ptr %27, align 8, !tbaa !119
  %i.xo = load ptr, ptr %i.sd, align 8, !tbaa !143
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 80 ; 4 uses
  %i.xq = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.xp) #14 ; 0 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.ve, i64 12
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !301
  %i.xt = load ptr, ptr %5, align 8, !tbaa !124
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 72
  %i.xv = load ptr, ptr %i.xu, align 8
  %i.xw = invoke noundef i32 %i.xv(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %i.xs, ptr noundef nonnull %27)
          to label %bb.fd unwind label %bb.fj     ; 2 uses

bb.fd:                                            ; preds = %bb.fc
  switch i32 %i.xw, label %.thread579.i [
    i32 1, label %bb.fe
    i32 0, label %bb.fh
  ]

bb.fe:                                            ; preds = %bb.fd
  %i.xx = getelementptr inbounds nuw i8, ptr %i.ve, i64 24
  %i.xy = load i64, ptr %i.xx, align 8, !tbaa !162
  %i.xz = add i64 %i.ajm, 26
  %i.ya = add i64 %i.xz, %i.xy                    ; 3 uses
  %i.yb = load ptr, ptr %i.sd, align 8, !tbaa !143 ; 4 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 80 ; 2 uses
  %i.yd = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.yc) #14 ; 0 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yb, i64 48
  store i64 0, ptr %i.ye, align 8, !tbaa !138
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yb, i64 32
  store i64 0, ptr %i.yf, align 8, !tbaa !138
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yb, i64 16
  store i64 %i.ya, ptr %i.yg, align 8, !tbaa !139
  %i.yh = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.yc) #14 ; 0 uses
  %i.yi = load ptr, ptr %5, align 8, !tbaa !124
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 80
  %i.yk = load ptr, ptr %i.yj, align 8
  %i.yl = invoke noundef i32 %i.yk(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0)
          to label %bb.ff unwind label %bb.fj     ; 2 uses

bb.ff:                                            ; preds = %bb.fe
  %.not421.i = icmp eq i32 %i.yl, 0
  br i1 %.not421.i, label %bb.fg, label %.thread579.i

bb.fg:                                            ; preds = %bb.ff
  %i.ym = load ptr, ptr %i.si, align 8, !tbaa !158
  %i.yn = getelementptr inbounds [8 x i8], ptr %i.ym, i64 %indvars.iv856.i1043
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !159
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 73
  store i8 1, ptr %i.yp, align 1, !tbaa !310
  br label %.thread579.i, !llvm.loop !269

bb.fh:                                            ; preds = %bb.fd
  %i.yq = load ptr, ptr %5, align 8, !tbaa !124
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 80
  %i.ys = load ptr, ptr %i.yr, align 8
  %i.yt = invoke noundef i32 %i.ys(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0)
          to label %bb.fi unwind label %bb.fj     ; 3 uses

bb.fi:                                            ; preds = %bb.fh
  %.not417.i = icmp eq i32 %i.yt, 0               ; 2 uses
  %.11358.452..i = select i1 %.not417.i, i32 %.11358.ph.i, i32 %i.yt ; 2 uses
  br i1 %.not417.i, label %bb.fk, label %.thread579.i

bb.fj:                                            ; preds = %bb.fh, %bb.fe, %bb.fc
  %i.yu = landingpad { ptr, i32 }
          cleanup
  %i.yv = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.xp) #14 ; 0 uses
  br label %bb.fx

.thread579.i:                                     ; preds = %bb.fi, %bb.fg, %bb.ff, %bb.fd
  %i.yw = phi i64 [ %i.ajm, %bb.fd ], [ %i.ajm, %bb.fi ], [ %i.ya, %bb.ff ], [ %i.ya, %bb.fg ]
  %.15362.ph.i = phi i32 [ %i.xw, %bb.fd ], [ %i.yt, %bb.fi ], [ %i.yl, %bb.ff ], [ %.11358.ph.i, %bb.fg ]
  %i.yx = phi i1 [ false, %bb.fd ], [ false, %bb.fi ], [ false, %bb.ff ], [ true, %bb.fg ]
  %i.yy = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.xp) #14 ; 0 uses
  br label %.loopexit.i

bb.fk:                                            ; preds = %bb.fi
  %i.yz = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.xp) #14 ; 0 uses
  br i1 %.not742.i, label %.loopexit.i, label %.lr.ph730.i, !llvm.loop !269

.lr.ph730.i:                                      ; preds = %bb.fk
  %i.za = load ptr, ptr %i.se, align 8, !tbaa !158
  br label %bb.fl, !llvm.loop !269

bb.fl:                                            ; preds = %.critedge455.i, %.lr.ph730.i
  %.0728.i = phi i32 [ 0, %.lr.ph730.i ], [ %36, %.critedge455.i ] ; 3 uses
  %35 = sext i32 %.0728.i to i64
  %i.zb = getelementptr inbounds [8 x i8], ptr %i.za, i64 %35
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !159 ; 8 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 400
  %i.ze = load i8, ptr %i.zd, align 8, !tbaa !313, !range !117, !noundef !118
  %i.zf = trunc nuw i8 %i.ze to i1
  br i1 %i.zf, label %bb.fm, label %.critedge455.i

bb.fm:                                            ; preds = %bb.fl
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zc, i64 400
  store i8 0, ptr %i.zg, align 8, !tbaa !313
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zc, i64 184 ; 2 uses
  %i.zi = load ptr, ptr %27, align 8, !tbaa !119  ; 4 uses
  %.not.i.i490.i = icmp eq ptr %i.zi, null
  br i1 %.not.i.i490.i, label %.noexc491.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !124
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 8
  %i.zl = load ptr, ptr %i.zk, align 8
  %i.zm = invoke noundef i32 %i.zl(ptr noundef nonnull align 8 dereferenceable(8) %i.zi)
          to label %.noexc491.i unwind label %bb.ft, !inline_history !274 ; 0 uses

.noexc491.i:                                      ; preds = %bb.fn, %bb.fm
  %i.zn = load ptr, ptr %i.zh, align 8, !tbaa !119 ; 3 uses
  %.not6.i.i.i = icmp eq ptr %i.zn, null
  br i1 %.not6.i.i.i, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %.noexc491.i
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !124
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 16
  %i.zq = load ptr, ptr %i.zp, align 8
  %i.zr = invoke noundef i32 %i.zq(ptr noundef nonnull align 8 dereferenceable(8) %i.zn)
          to label %bb.fp unwind label %bb.ft, !inline_history !274 ; 0 uses

bb.fp:                                            ; preds = %bb.fo, %.noexc491.i
  store ptr %i.zi, ptr %i.zh, align 8, !tbaa !119
  %i.zs = load ptr, ptr %27, align 8, !tbaa !119  ; 3 uses
  %.not.i493.i = icmp eq ptr %i.zs, null
  br i1 %.not.i493.i, label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !124
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  %i.zv = load ptr, ptr %i.zu, align 8
  %i.zw = invoke noundef i32 %i.zv(ptr noundef nonnull align 8 dereferenceable(8) %i.zs)
          to label %.noexc494.i unwind label %bb.ft, !inline_history !275 ; 0 uses

.noexc494.i:                                      ; preds = %bb.fq
  store ptr null, ptr %27, align 8, !tbaa !119
  br label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i

_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i: ; preds = %.noexc494.i, %bb.fp
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zc, i64 168
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !205
  invoke void @_ZN13COutMemStream4InitEv(ptr noundef nonnull align 8 dereferenceable(168) %i.zy)
          to label %bb.fr unwind label %bb.ft

bb.fr:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zc, i64 152
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !314 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 16
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !317
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aaa, i64 24
  %i.aae = load i32, ptr %i.aad, align 8, !tbaa !318
  invoke void @_ZN24CMtCompressProgressMixer6ReinitEi(ptr noundef nonnull align 8 dereferenceable(128) %i.aac, i32 noundef %i.aae)
          to label %_ZN19CMtCompressProgress6ReinitEv.exit.i unwind label %bb.ft

_ZN19CMtCompressProgress6ReinitEv.exit.i:         ; preds = %bb.fr
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zc, i64 16
  %i.aag = invoke noundef i32 @Event_Set(ptr noundef nonnull align 8 dereferenceable(104) %i.aaf)
          to label %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit.i unwind label %bb.ft ; 0 uses

_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit.i: ; preds = %_ZN19CMtCompressProgress6ReinitEv.exit.i
  %i.aah = getelementptr inbounds nuw i8, ptr %i.zc, i64 404
  store i32 %i.vk, ptr %i.aah, align 4, !tbaa !319
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.fs unwind label %bb.ft

bb.fs:                                            ; preds = %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit.i
  %i.aai = getelementptr inbounds nuw i8, ptr %i.zc, i64 120
  %i.aaj = load ptr, ptr %i.sf, align 8, !tbaa !158
  %i.aak = load i32, ptr %i.sg, align 4, !tbaa !157 ; 2 uses
  %i.aal = sext i32 %i.aak to i64
  %i.aam = getelementptr inbounds [8 x i8], ptr %i.aaj, i64 %i.aal
  store ptr %i.aai, ptr %i.aam, align 8, !tbaa !321
  %i.aan = add nsw i32 %i.aak, 1
  store i32 %i.aan, ptr %i.sg, align 4, !tbaa !157
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.fu unwind label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit.i, %_ZN19CMtCompressProgress6ReinitEv.exit.i, %bb.fr, %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i, %bb.fq, %bb.fo, %bb.fn
  %i.aao = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.fu:                                            ; preds = %bb.fs
  %i.aap = load ptr, ptr %i.sh, align 8, !tbaa !158
  %i.aaq = load i32, ptr %i.ro, align 4, !tbaa !157
  %i.aar = sext i32 %i.aaq to i64
  %i.aas = getelementptr inbounds [4 x i8], ptr %i.aap, i64 %i.aar
  store i32 %.0728.i, ptr %i.aas, align 4, !tbaa !15
  %i.aat = load i32, ptr %i.ro, align 4, !tbaa !157
  %i.aau = add nsw i32 %i.aat, 1
  store i32 %i.aau, ptr %i.ro, align 4, !tbaa !157
  br label %.loopexit.i, !llvm.loop !269

.critedge455.i:                                   ; preds = %bb.fl
  %36 = add nuw i32 %.0728.i, 1                   ; 2 uses
  %exitcond860.not.i = icmp eq i32 %36, %.2276564.i
  br i1 %exitcond860.not.i, label %..loopexit_crit_edge.i, label %bb.fl, !llvm.loop !276

..loopexit_crit_edge.i:                           ; preds = %.critedge455.i
  br label %.loopexit.i, !llvm.loop !269

.loopexit.i:                                      ; preds = %..loopexit_crit_edge.i, %bb.fu, %bb.fk, %.thread579.i
  %i.aav = phi i64 [ %i.yw, %.thread579.i ], [ %i.ajm, %bb.fu ], [ %i.ajm, %..loopexit_crit_edge.i ], [ %i.ajm, %bb.fk ]
  %.15362583.i = phi i32 [ %.15362.ph.i, %.thread579.i ], [ %.11358.452..i, %bb.fu ], [ %.11358.452..i, %..loopexit_crit_edge.i ], [ %.11358.ph.i, %bb.fk ]
  %.13.i = phi i1 [ %i.yx, %.thread579.i ], [ true, %bb.fu ], [ true, %..loopexit_crit_edge.i ], [ true, %bb.fk ]
  %i.aaw = load ptr, ptr %27, align 8, !tbaa !119 ; 3 uses
  %.not.i499.i = icmp eq ptr %i.aaw, null
  br i1 %.not.i499.i, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i, label %bb.fv

bb.fv:                                            ; preds = %.loopexit.i
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !124
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 16
  %i.aaz = load ptr, ptr %i.aay, align 8
  %i.aba = invoke noundef i32 %i.aaz(ptr noundef nonnull align 8 dereferenceable(8) %i.aaw)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i unwind label %bb.fw ; 0 uses

bb.fw:                                            ; preds = %bb.fv
  %i.abb = landingpad { ptr, i32 }
          catch ptr null
  %i.abc = extractvalue { ptr, i32 } %i.abb, 0
  call void @__clang_call_terminate(ptr %i.abc) #16
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i:  ; preds = %bb.fv, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  br label %bb.ga

bb.fx:                                            ; preds = %bb.ft, %bb.fj
  %.pn422.i = phi { ptr, i32 } [ %i.aao, %bb.ft ], [ %i.yu, %bb.fj ]
  %i.abd = load ptr, ptr %27, align 8, !tbaa !119 ; 3 uses
  %.not.i500.i = icmp eq ptr %i.abd, null
  br i1 %.not.i500.i, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit501.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !124
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 16
  %i.abg = load ptr, ptr %i.abf, align 8
  %i.abh = invoke noundef i32 %i.abg(ptr noundef nonnull align 8 dereferenceable(8) %i.abd)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit501.i unwind label %bb.fz ; 0 uses

bb.fz:                                            ; preds = %bb.fy
  %i.abi = landingpad { ptr, i32 }
          catch ptr null
  %i.abj = extractvalue { ptr, i32 } %i.abi, 0
  call void @__clang_call_terminate(ptr %i.abj) #16
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit501.i: ; preds = %bb.fy, %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  br label %bb.gf

bb.ga:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i, %bb.fb, %bb.ey, %bb.eu
  %i.abk = phi i64 [ %i.ajm, %bb.ey ], [ %i.aav, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i ], [ %i.ajm, %bb.eu ], [ %i.ajm, %bb.fb ]
  %.16363.i = phi i32 [ -2147467263, %bb.ey ], [ %.15362583.i, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i ], [ %.11358.ph.i, %bb.eu ], [ %.11358.ph.i, %bb.fb ] ; 2 uses
  %.14.i = phi i1 [ false, %bb.ey ], [ %.13.i, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i ], [ true, %bb.eu ], [ true, %bb.fb ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.rz, align 8, !tbaa !124
  %i.abl = load ptr, ptr %i.sj, align 8, !tbaa !174 ; 2 uses
  %i.abm = icmp eq ptr %i.abl, null
  br i1 %i.abm, label %_ZN7CBufferIhED2Ev.exit.i502.i, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  call void @_ZdaPv(ptr noundef nonnull %i.abl) #17, !inline_history !175
  br label %_ZN7CBufferIhED2Ev.exit.i502.i

_ZN7CBufferIhED2Ev.exit.i502.i:                   ; preds = %bb.gb, %bb.ga
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.rw, align 8, !tbaa !124
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.rw)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i503.i unwind label %bb.gc, !inline_history !176

bb.gc:                                            ; preds = %_ZN7CBufferIhED2Ev.exit.i502.i
  %i.abn = landingpad { ptr, i32 }
          catch ptr null
  %i.abo = extractvalue { ptr, i32 } %i.abn, 0
  call void @__clang_call_terminate(ptr %i.abo) #16, !inline_history !176
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i503.i:   ; preds = %_ZN7CBufferIhED2Ev.exit.i502.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.rw) #14, !inline_history !176
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.rt, align 8, !tbaa !124
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.rt)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i504.i unwind label %bb.gd, !inline_history !176

bb.gd:                                            ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i503.i
  %i.abp = landingpad { ptr, i32 }
          catch ptr null
  %i.abq = extractvalue { ptr, i32 } %i.abp, 0
  call void @__clang_call_terminate(ptr %i.abq) #16, !inline_history !176
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i504.i: ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i503.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.rt) #14, !inline_history !176
  %i.abr = load ptr, ptr %i.rq, align 8, !tbaa !177 ; 2 uses
  %i.abs = icmp eq ptr %i.abr, null
  br i1 %i.abs, label %_ZN8NArchive4NZip5CItemD2Ev.exit505.i, label %bb.ge

bb.ge:                                            ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i504.i
  call void @_ZdaPv(ptr noundef nonnull %i.abr) #17
  br label %_ZN8NArchive4NZip5CItemD2Ev.exit505.i

_ZN8NArchive4NZip5CItemD2Ev.exit505.i:            ; preds = %bb.ge, %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i504.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  br i1 %.14.i, label %.outer.i, label %.thread576.i

bb.gf:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit501.i, %bb.ez
  %.pn422.pn.i = phi { ptr, i32 } [ %.pn422.i, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit501.i ], [ %i.xm, %bb.ez ]
  call void @_ZN8NArchive4NZip5CItemD2Ev(ptr noundef nonnull align 8 dereferenceable(186) %26) #14
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ev
  %.pn422.pn.pn.i = phi { ptr, i32 } [ %.pn422.pn.i, %bb.gf ], [ %i.xc, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  br label %.loopexit.split-lp.i

bb.gh:                                            ; preds = %bb.er
  %indvars.iv.next862.i = add nsw i64 %indvars.iv861.i, 1 ; 2 uses
  %i.abt = icmp slt i64 %indvars.iv.next862.i, %.pre-phi.i
  br i1 %i.abt, label %bb.er, label %._crit_edge708.i, !llvm.loop !269

bb.gi:                                            ; preds = %bb.er
  %i.abu = trunc nsw i64 %indvars.iv861.i to i32  ; 4 uses
  %i.abv = load ptr, ptr %i.rp, align 8, !tbaa !158
  %i.abw = getelementptr inbounds [8 x i8], ptr %i.abv, i64 %indvars.iv861.i
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !159 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sk, i8 0, i64 16, i1 false)
  %i.aby = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #15
          to label %.noexc517.i unwind label %bb.go ; 10 uses

.noexc517.i:                                      ; preds = %bb.gi
  %i.abz = ptrtoaddr ptr %i.aby to i64
  %i.aca = load i32, ptr %i.sm, align 4, !tbaa !182
  %i.acb = icmp sgt i32 %i.aca, 0
  %.pre1.i.i.i.i506.i = load i32, ptr %i.sl, align 8, !tbaa !183 ; 6 uses
  br i1 %i.acb, label %.preheader.i.i.i.i.i507.i, label %bb.gj

.preheader.i.i.i.i.i507.i:                        ; preds = %.noexc517.i
  %i.acc = icmp sgt i32 %.pre1.i.i.i.i506.i, 0
  %.pre.i.i.i.i.i508.i = load ptr, ptr %i.sk, align 8, !tbaa !177 ; 10 uses
  br i1 %i.acc, label %iter.check1078, label %._crit_edge.i.i.i.i.i509.i

iter.check1078:                                   ; preds = %.preheader.i.i.i.i.i507.i
  %.pre.i.i.i.i.i508.i1063 = ptrtoaddr ptr %.pre.i.i.i.i.i508.i to i64
  %wide.trip.count.i.i.i.i.i513.i = zext nneg i32 %.pre1.i.i.i.i506.i to i64 ; 8 uses
  %min.iters.check1064.a = icmp ult i32 %.pre1.i.i.i.i506.i, 4
  %i.acd = sub i64 %.pre.i.i.i.i.i508.i1063, %i.abz
  %diff.check1066 = icmp ugt i64 %i.acd, -32
  %or.cond1125 = select i1 %min.iters.check1064.a, i1 true, i1 %diff.check1066
  br i1 %or.cond1125, label %vec.epilog.scalar.ph1080.preheader, label %vector.main.loop.iter.check1067

vector.main.loop.iter.check1067:                  ; preds = %iter.check1078
  %min.iters.check1068 = icmp ult i32 %.pre1.i.i.i.i506.i, 32
  br i1 %min.iters.check1068, label %vec.epilog.ph1082, label %vector.ph1069

vector.ph1069:                                    ; preds = %vector.main.loop.iter.check1067
  %i.ace = and i64 %wide.trip.count.i.i.i.i.i513.i, 28
  %n.vec1070 = and i64 %wide.trip.count.i.i.i.i.i513.i, 2147483616 ; 4 uses
  br label %vector.body1071

vector.body1071:                                  ; preds = %vector.ph1069, %vector.body1071
  %index1072 = phi i64 [ 0, %vector.ph1069 ], [ %index.next1075, %vector.body1071 ] ; 3 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i508.i, i64 %index1072 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 16
  %wide.load1073 = load <16 x i8>, ptr %i.acf, align 1, !tbaa !179
  %wide.load1074 = load <16 x i8>, ptr %i.acg, align 1, !tbaa !179
  %i.ach = getelementptr inbounds nuw i8, ptr %i.aby, i64 %index1072 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 16
  store <16 x i8> %wide.load1073, ptr %i.ach, align 1, !tbaa !179
  store <16 x i8> %wide.load1074, ptr %i.aci, align 1, !tbaa !179
  %index.next1075 = add nuw i64 %index1072, 32    ; 2 uses
  %i.acj = icmp eq i64 %index.next1075, %n.vec1070
  br i1 %i.acj, label %middle.block1076, label %vector.body1071, !llvm.loop !277

middle.block1076:                                 ; preds = %vector.body1071
  %cmp.n1077 = icmp eq i64 %n.vec1070, %wide.trip.count.i.i.i.i.i513.i
  br i1 %cmp.n1077, label %._crit_edge.thread.i.i.i.i.i510.i, label %vec.epilog.iter.check1079

vec.epilog.iter.check1079:                        ; preds = %middle.block1076
  %min.epilog.iters.check1081 = icmp eq i64 %i.ace, 0
  br i1 %min.epilog.iters.check1081, label %vec.epilog.scalar.ph1080.preheader, label %vec.epilog.ph1082, !prof !186

vec.epilog.ph1082:                                ; preds = %vector.main.loop.iter.check1067, %vec.epilog.iter.check1079
  %vec.epilog.resume.val1083 = phi i64 [ %n.vec1070, %vec.epilog.iter.check1079 ], [ 0, %vector.main.loop.iter.check1067 ]
  %n.vec1084 = and i64 %wide.trip.count.i.i.i.i.i513.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1085

vec.epilog.vector.body1085:                       ; preds = %vec.epilog.vector.body1085, %vec.epilog.ph1082
  %index1086 = phi i64 [ %vec.epilog.resume.val1083, %vec.epilog.ph1082 ], [ %index.next1088, %vec.epilog.vector.body1085 ] ; 3 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i508.i, i64 %index1086
  %wide.load1087 = load <4 x i8>, ptr %i.ack, align 1, !tbaa !179
  %i.acl = getelementptr inbounds nuw i8, ptr %i.aby, i64 %index1086
  store <4 x i8> %wide.load1087, ptr %i.acl, align 1, !tbaa !179
  %index.next1088 = add nuw i64 %index1086, 4     ; 2 uses
  %i.acm = icmp eq i64 %index.next1088, %n.vec1084
  br i1 %i.acm, label %vec.epilog.middle.block1089, label %vec.epilog.vector.body1085, !llvm.loop !278

vec.epilog.middle.block1089:                      ; preds = %vec.epilog.vector.body1085
end_hunk_0
