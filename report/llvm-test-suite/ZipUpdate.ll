Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ZipUpdate?download=true
inline.NumInlined: 523
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN8NArchive4NZip6UpdateERK13CObjectVectorINS0_7CItemExEERKS1_INS0_11CUpdateItemEEP20ISequentialOutStreamPNS0_10CInArchiveEPNS0_22CCompressionMethodModeEP22IArchiveUpdateCallback:bb.a
.thread.i.i:                                      ; preds = %bb.bf, %._crit_edge.i.i, %_ZN8NArchive4NZip5CItemD2Ev.exit.jt1.i.i
  %.14.i.i = phi i32 [ 0, %._crit_edge.i.i ], [ %.12.jt1.i.i, %_ZN8NArchive4NZip5CItemD2Ev.exit.jt1.i.i ], [ %i.hp, %bb.bf ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip5CItemEE, i64 16), ptr %7, align 8, !tbaa !64
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.ds unwind label %bb.dr, !inline_history !133

bb.dr:                                            ; preds = %.thread.i.i
  %i.of = landingpad { ptr, i32 }
          catch ptr null
  %i.og = extractvalue { ptr, i32 } %i.of, 0
  call void @__clang_call_terminate(ptr %i.og) #16, !inline_history !133
  unreachable

bb.ds:                                            ; preds = %.thread.i.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #14, !inline_history !133
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN8NArchive4NZip10CAddCommonD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.oh = load ptr, ptr %i.gf, align 8, !tbaa !64
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %i.oj = load ptr, ptr %i.oi, align 8
  %i.ok = invoke noundef i32 %i.oj(ptr noundef nonnull align 8 dereferenceable(8) %i.gf)
          to label %_ZN8NArchive4NZipL9Update2StERNS0_11COutArchiveEPNS0_10CInArchiveEP9IInStreamRK13CObjectVectorINS0_7CItemExEERKS7_INS0_11CUpdateItemEEPKNS0_22CCompressionMethodModeEPK7CBufferIhEP22IArchiveUpdateCallback.exit.i unwind label %bb.dt ; 0 uses

bb.dt:                                            ; preds = %bb.ds
  %i.ol = landingpad { ptr, i32 }
          catch ptr null
  %i.om = extractvalue { ptr, i32 } %i.ol, 0
  call void @__clang_call_terminate(ptr %i.om) #16
  unreachable

bb.du:                                            ; preds = %bb.dq, %bb.dp, %bb.bg
  %.pn163.i.i = phi { ptr, i32 } [ %i.oe, %bb.dq ], [ %i.hq, %bb.bg ], [ %.pn157.pn.i.i, %bb.dp ]
  call void @_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN8NArchive4NZip10CAddCommonD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %6) #14
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.bd
  %.pn163.pn.pn.i.i = phi { ptr, i32 } [ %.pn163.i.i, %bb.du ], [ %i.ho, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.bc
  %.pn163.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn163.pn.pn.i.i, %bb.dv ], [ %i.hn, %bb.bc ]
  %i.on = load ptr, ptr %i.gf, align 8, !tbaa !64
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.op = load ptr, ptr %i.oo, align 8
  %i.oq = invoke noundef i32 %i.op(ptr noundef nonnull align 8 dereferenceable(8) %i.gf)
          to label %.body.i unwind label %bb.dx   ; 0 uses

bb.dx:                                            ; preds = %bb.dw
  %i.or = landingpad { ptr, i32 }
          catch ptr null
  %i.os = extractvalue { ptr, i32 } %i.or, 0
  call void @__clang_call_terminate(ptr %i.os) #16
  unreachable

bb.dy:                                            ; preds = %bb.ay, %.thread564.i
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.thread560.i:                                     ; preds = %bb.ax, %.thread557.i, %.thread.i, %bb.aw
  %.2276563.i = phi i32 [ %spec.store.select.i, %.thread.i ], [ %i.gc, %bb.ax ], [ %i.fv, %.thread557.i ], [ %spec.store.select.i, %bb.aw ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  %i.ou = getelementptr inbounds nuw i8, ptr %15, i64 88 ; 2 uses
  store i8 0, ptr %i.ou, align 8, !tbaa !135
  %i.ov = call i32 @pthread_mutex_init(ptr noundef nonnull align 8 dereferenceable(89) %15, ptr noundef null) #14 ; 0 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 2 uses
  %i.ox = call i32 @pthread_cond_init(ptr noundef nonnull %i.ow, ptr noundef null) #14 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  %i.oy = getelementptr inbounds nuw i8, ptr %16, i64 88 ; 2 uses
  store i8 0, ptr %i.oy, align 8, !tbaa !135
  %i.oz = call i32 @pthread_mutex_init(ptr noundef nonnull align 8 dereferenceable(89) %16, ptr noundef null) #14 ; 0 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  %i.pb = call i32 @pthread_cond_init(ptr noundef nonnull %i.pa, ptr noundef null) #14 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  %i.pc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.pd = getelementptr inbounds nuw i8, ptr %17, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pc, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.pd, align 8, !tbaa !121
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip5CItemEE, i64 16), ptr %17, align 8, !tbaa !64
  %i.pe = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #15
          to label %_ZN9CMyComPtrI21ICompressProgressInfoEC2EPS0_.exit.i unwind label %bb.ei ; 10 uses

_ZN9CMyComPtrI21ICompressProgressInfoEC2EPS0_.exit.i: ; preds = %.thread560.i
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8NArchive4NZip16CMtProgressMixerE, i64 16), ptr %i.pe, align 8, !tbaa !64
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 24 ; 2 uses
  store ptr null, ptr %i.pg, align 8, !tbaa !61
  store i32 1, ptr %i.pf, align 8, !tbaa !80
  invoke void @_ZN8NArchive4NZip16CMtProgressMixer6CreateEP9IProgressb(ptr noundef nonnull align 8 dereferenceable(32) %i.pe, ptr noundef nonnull %5, i1 noundef zeroext true)
          to label %bb.dz unwind label %bb.ej

bb.dz:                                            ; preds = %_ZN9CMyComPtrI21ICompressProgressInfoEC2EPS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  store ptr null, ptr %18, align 8, !tbaa !61
  %i.ph = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.pj = getelementptr inbounds nuw i8, ptr %18, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pi, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.pj, align 8, !tbaa !121
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIyE, i64 16), ptr %i.ph, align 8, !tbaa !64
  %i.pk = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.pm = getelementptr inbounds nuw i8, ptr %18, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pl, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.pm, align 8, !tbaa !121
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIyE, i64 16), ptr %i.pk, align 8, !tbaa !64
  %i.pn = getelementptr inbounds nuw i8, ptr %18, i64 88 ; 2 uses
  %i.po = invoke i32 @CriticalSection_Init(ptr noundef nonnull align 8 dereferenceable(40) %i.pn)
          to label %_ZN24CMtCompressProgressMixerC2Ev.exit.i unwind label %bb.ea ; 0 uses

bb.ea:                                            ; preds = %bb.dz
  %i.pp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.pk) #14
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.ph) #14
  %i.pq = load ptr, ptr %18, align 8, !tbaa !61   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.pq, null
  br i1 %.not.i.i.i, label %.body467.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !64
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %i.pt = load ptr, ptr %i.ps, align 8
  %i.pu = invoke noundef i32 %i.pt(ptr noundef nonnull align 8 dereferenceable(8) %i.pq)
          to label %.body467.i unwind label %bb.ec ; 0 uses

bb.ec:                                            ; preds = %bb.eb
  %i.pv = landingpad { ptr, i32 }
          catch ptr null
  %i.pw = extractvalue { ptr, i32 } %i.pv, 0
  call void @__clang_call_terminate(ptr %i.pw) #16
  unreachable

_ZN24CMtCompressProgressMixerC2Ev.exit.i:         ; preds = %bb.dz
  %i.px = load ptr, ptr %i.pg, align 8, !tbaa !61
  invoke void @_ZN24CMtCompressProgressMixer4InitEiP21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(128) %18, i32 noundef %.2276563.i, ptr noundef %i.px)
          to label %bb.ed unwind label %bb.ek

bb.ed:                                            ; preds = %_ZN24CMtCompressProgressMixerC2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14
  store ptr null, ptr %19, align 8, !tbaa !227
  %i.py = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store i64 65536, ptr %i.py, align 8, !tbaa !228
  %i.pz = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr null, ptr %i.pz, align 8, !tbaa !229
  %i.qa = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 2 uses
  %i.qb = invoke i32 @CriticalSection_Init(ptr noundef nonnull align 8 dereferenceable(40) %i.qa)
          to label %bb.eg unwind label %bb.ee     ; 0 uses

bb.ee:                                            ; preds = %bb.ed
  %i.qc = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN16CMemBlockManager9FreeSpaceEv(ptr noundef nonnull align 8 dereferenceable(88) %19)
          to label %.body469.i unwind label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.qd = landingpad { ptr, i32 }
          catch ptr null
  %i.qe = extractvalue { ptr, i32 } %i.qd, 0
  call void @__clang_call_terminate(ptr %i.qe) #16
  unreachable

bb.eg:                                            ; preds = %bb.ed
  %i.qf = getelementptr inbounds nuw i8, ptr %19, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization14CSemaphoreWFMOE, i64 16), ptr %i.qf, align 8, !tbaa !64
  %i.qg = getelementptr inbounds nuw i8, ptr %19, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qg, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #14
  store ptr %19, ptr %20, align 8, !tbaa !139
  %i.qh = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 5 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.qj = getelementptr inbounds nuw i8, ptr %20, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qi, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.qj, align 8, !tbaa !121
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE, i64 16), ptr %i.qh, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #14
  %i.qk = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ql = getelementptr inbounds nuw i8, ptr %21, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qk, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.ql, align 8, !tbaa !121
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip11CThreadInfoEE, i64 16), ptr %21, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #14
  %i.qm = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.qn = getelementptr inbounds nuw i8, ptr %22, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qm, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.qn, align 8, !tbaa !121
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE, i64 16), ptr %22, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #14
  %i.qo = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.qp = getelementptr inbounds nuw i8, ptr %23, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qo, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.qp, align 8, !tbaa !121
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIiE, i64 16), ptr %23, align 8, !tbaa !64
  %i.qq = zext nneg i32 %.2276563.i to i64
  %i.qr = shl nuw nsw i64 %i.qq, 9
  %i.qs = invoke noundef i32 @_ZN18CMemBlockManagerMt19AllocateSpaceAlwaysEPN8NWindows16NSynchronization8CSynchroEmm(ptr noundef nonnull align 8 dereferenceable(88) %19, ptr noundef nonnull %16, i64 noundef %i.qr, i64 noundef 0)
          to label %bb.eh unwind label %bb.el     ; 2 uses

bb.eh:                                            ; preds = %bb.eg
  %.not392.i = icmp eq i32 %i.qs, 0
  br i1 %.not392.i, label %.preheader607.i, label %.thread575.i

.preheader607.i:                                  ; preds = %bb.eh
  %i.qt = load i32, ptr %i.bz, align 4, !tbaa !97
  %i.qu = icmp sgt i32 %i.qt, 0
  br i1 %i.qu, label %.lr.ph691.i, label %.preheader606.i

.lr.ph691.i:                                      ; preds = %.preheader607.i
  %i.qv = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.qw = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.qx = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.qy = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.qz = getelementptr inbounds nuw i8, ptr %24, i64 72
  %i.ra = getelementptr inbounds nuw i8, ptr %24, i64 73
  br label %bb.em

bb.ei:                                            ; preds = %.thread560.i
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit551.i

bb.ej:                                            ; preds = %_ZN9CMyComPtrI21ICompressProgressInfoEC2EPS0_.exit.i
  %i.rc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ko

bb.ek:                                            ; preds = %_ZN24CMtCompressProgressMixerC2Ev.exit.i
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %bb.kn

bb.el:                                            ; preds = %bb.eg
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %bb.km

.preheader606.i:                                  ; preds = %bb.en, %.preheader607.i
  %.not724.i = icmp eq i32 %.2276563.i, 0         ; 2 uses
  br i1 %.not724.i, label %.preheader.i, label %.lr.ph693.i

.lr.ph693.i:                                      ; preds = %.preheader606.i
  %i.rf = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 2 uses
  br label %bb.ep

bb.em:                                            ; preds = %bb.en, %.lr.ph691.i
  %.1340690.i = phi i32 [ 0, %.lr.ph691.i ], [ %i.ri, %bb.en ]
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qv, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.qw, align 8, !tbaa !121
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIPvE, i64 16), ptr %24, align 8, !tbaa !64
  store i64 0, ptr %i.qx, align 8, !tbaa !141
  store i8 1, ptr %i.qy, align 8, !tbaa !143
  store i8 0, ptr %i.qz, align 8, !tbaa !231
  store i8 0, ptr %i.ra, align 1, !tbaa !232
  %i.rh = invoke noundef i32 @_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE3AddERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.qh, ptr noundef nonnull align 8 dereferenceable(74) %24)
          to label %bb.en unwind label %bb.eo     ; 0 uses

bb.en:                                            ; preds = %bb.em
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(74) %24) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  %i.ri = add nuw nsw i32 %.1340690.i, 1          ; 2 uses
  %i.rj = load i32, ptr %i.bz, align 4, !tbaa !97
  %i.rk = icmp slt i32 %i.ri, %i.rj
  br i1 %i.rk, label %bb.em, label %.preheader606.i, !llvm.loop !190

bb.eo:                                            ; preds = %bb.em
  %i.rl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(74) %24) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  br label %bb.km

.lr.ph696.i:                                      ; preds = %bb.et
  %i.rm = load ptr, ptr getelementptr inbounds nuw inrange(-24, 40) (i8, ptr @_ZTV19CMtCompressProgress, i64 24), align 8
  %i.rn = load ptr, ptr getelementptr inbounds nuw inrange(-24, 56) (i8, ptr @_ZTV13COutMemStream, i64 24), align 8
  br label %bb.ey

bb.ep:                                            ; preds = %bb.et, %.lr.ph693.i
  %.0265692.i = phi i32 [ 0, %.lr.ph693.i ], [ %i.rv, %bb.et ]
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #14
  invoke void @_ZN8NArchive4NZip11CThreadInfoC2ERKNS0_22CCompressionMethodModeE(ptr noundef nonnull align 8 dereferenceable(408) %25, ptr noundef nonnull align 8 dereferenceable(106) %14)
          to label %bb.eq unwind label %bb.eu

bb.eq:                                            ; preds = %bb.ep
  %i.ro = invoke noalias noundef nonnull dereferenceable(408) ptr @_Znwm(i64 noundef 408) #15
          to label %.noexc471.i unwind label %bb.ev ; 3 uses

.noexc471.i:                                      ; preds = %bb.eq
  invoke void @_ZN8NArchive4NZip11CThreadInfoC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(408) %i.ro, ptr noundef nonnull align 8 dereferenceable(408) %25)
          to label %bb.er unwind label %bb.es

bb.er:                                            ; preds = %.noexc471.i
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.et unwind label %bb.ev

bb.es:                                            ; preds = %.noexc471.i
  %i.rp = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ro, i64 noundef 408) #17
  br label %.body473.i

bb.et:                                            ; preds = %bb.er
  %i.rq = load ptr, ptr %i.rf, align 8, !tbaa !98
  %i.rr = load i32, ptr %i.rg, align 4, !tbaa !97 ; 2 uses
  %i.rs = sext i32 %i.rr to i64
  %i.rt = getelementptr inbounds [8 x i8], ptr %i.rq, i64 %i.rs
  store ptr %i.ro, ptr %i.rt, align 8, !tbaa !99
  %i.ru = add nsw i32 %i.rr, 1
  store i32 %i.ru, ptr %i.rg, align 4, !tbaa !97
  call void @_ZN8NArchive4NZip11CThreadInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %25) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  %i.rv = add nuw i32 %.0265692.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.rv, %.2276563.i
  br i1 %exitcond.not.i, label %.lr.ph696.i, label %bb.ep, !llvm.loop !191

bb.eu:                                            ; preds = %bb.ep
  %i.rw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ev:                                            ; preds = %bb.er, %bb.eq
  %i.rx = landingpad { ptr, i32 }
          cleanup
  br label %.body473.i

.body473.i:                                       ; preds = %bb.ev, %bb.es
  %eh.lpad-body474.i = phi { ptr, i32 } [ %i.rx, %bb.ev ], [ %i.rp, %bb.es ]
  call void @_ZN8NArchive4NZip11CThreadInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %25) #14
  br label %bb.ew

bb.ew:                                            ; preds = %.body473.i, %bb.eu
  %.pn428.i = phi { ptr, i32 } [ %eh.lpad-body474.i, %.body473.i ], [ %i.rw, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  br label %bb.km

bb.ex:                                            ; preds = %bb.fk
  %i.ry = add nuw i32 %.1266695.i, 1              ; 2 uses
  %exitcond822.not.i = icmp eq i32 %i.ry, %.2276563.i
  br i1 %exitcond822.not.i, label %.preheader.i, label %bb.ey, !llvm.loop !192

.preheader.i:                                     ; preds = %bb.ex, %.preheader606.i
  %i.rz = getelementptr inbounds nuw i8, ptr %23, i64 12 ; 4 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 4 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %26, i64 44 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %26, i64 48 ; 4 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %26, i64 56
  %i.sg = getelementptr inbounds nuw i8, ptr %26, i64 72
  %i.sh = getelementptr inbounds nuw i8, ptr %26, i64 120 ; 4 uses
  %i.si = getelementptr inbounds nuw i8, ptr %26, i64 128
  %i.sj = getelementptr inbounds nuw i8, ptr %26, i64 144
  %i.sk = getelementptr inbounds nuw i8, ptr %26, i64 152 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %26, i64 160
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %26, i64 180
  %i.so = getelementptr inbounds nuw i8, ptr %i.pe, i64 16 ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %22, i64 12 ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  %i.st = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 4 uses
  %i.su = getelementptr inbounds nuw i8, ptr %26, i64 168
  %i.sv = getelementptr inbounds nuw i8, ptr %28, i64 32 ; 5 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %28, i64 40 ; 4 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %28, i64 44 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %28, i64 48 ; 7 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %28, i64 56
  %i.ta = getelementptr inbounds nuw i8, ptr %28, i64 72
  %i.tb = getelementptr inbounds nuw i8, ptr %28, i64 120 ; 7 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %28, i64 128
  %i.td = getelementptr inbounds nuw i8, ptr %28, i64 144
  %i.te = getelementptr inbounds nuw i8, ptr %28, i64 152 ; 3 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %28, i64 160
  %i.tg = getelementptr inbounds nuw i8, ptr %28, i64 180
  %i.th = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 4 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %4, i64 105 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.tk = getelementptr inbounds nuw i8, ptr %17, i64 12 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %28, i64 168 ; 2 uses
  br label %.outer.outer.i

bb.ey:                                            ; preds = %bb.ex, %.lr.ph696.i
  %.1266695.i = phi i32 [ 0, %.lr.ph696.i ], [ %i.ry, %bb.ex ] ; 3 uses
  %i.tm = load ptr, ptr %i.rf, align 8, !tbaa !98
  %i.tn = sext i32 %.1266695.i to i64
  %i.to = getelementptr inbounds [8 x i8], ptr %i.tm, i64 %i.tn
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !99 ; 11 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 16 ; 2 uses
  %i.tr = load i32, ptr %i.tq, align 8, !tbaa !144
  %.not.i.i475.i = icmp eq i32 %i.tr, 0
  br i1 %.not.i.i475.i, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.i.i, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i.i

_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.i.i: ; preds = %bb.ey
  %i.ts = invoke i32 @AutoResetEvent_CreateNotSignaled(ptr noundef nonnull align 8 dereferenceable(104) %i.tq)
          to label %.noexc476.i unwind label %bb.fb ; 2 uses

.noexc476.i:                                      ; preds = %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.i.i
  %.not.not.i.i = icmp eq i32 %i.ts, 0
end_hunk_0
begin_hunk_1_@_ZN8NArchive4NZip6UpdateERK13CObjectVectorINS0_7CItemExEERKS1_INS0_11CUpdateItemEEP20ISequentialOutStreamPNS0_10CInArchiveEPNS0_22CCompressionMethodModeEP22IArchiveUpdateCallback:bb.a
  invoke fastcc void @_ZN8NArchive4NZipL32SetItemInfoFromCompressingResultERKNS0_18CCompressingResultEbhRNS0_5CItemE(ptr noundef nonnull align 8 dereferenceable(24) %i.ait, i1 noundef zeroext %i.aiv, i8 noundef zeroext %i.aiw, ptr noundef nonnull align 8 dereferenceable(179) %28)
          to label %bb.jg unwind label %bb.ix

bb.jg:                                            ; preds = %bb.jf
  invoke fastcc void @_ZN8NArchive4NZipL13SetFileHeaderERNS0_11COutArchiveERKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_5CItemE(ptr noundef nonnull align 8 dereferenceable(81) %32, ptr noundef nonnull align 8 dereferenceable(106) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.acr, ptr noundef nonnull align 8 dereferenceable(179) %28)
          to label %bb.jh unwind label %bb.ix

bb.jh:                                            ; preds = %bb.jg
  invoke void @_ZN8NArchive4NZip11COutArchive16WriteLocalHeaderERKNS0_10CLocalItemE(ptr noundef nonnull align 8 dereferenceable(81) %32, ptr noundef nonnull align 8 dereferenceable(80) %28)
          to label %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.thread.i unwind label %bb.ix

bb.ji:                                            ; preds = %bb.ja
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aib, i64 404
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !241
  %i.aiz = load ptr, ptr %i.st, align 8, !tbaa !98
  %i.aja = sext i32 %i.aiy to i64
  %i.ajb = getelementptr inbounds [8 x i8], ptr %i.aiz, i64 %i.aja
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !99 ; 3 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aib, i64 168
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !146
  invoke void @_ZN13COutMemStream10DetachDataER14CMemLockBlocks(ptr noundef nonnull align 8 dereferenceable(168) %i.aje, ptr noundef nonnull align 8 dereferenceable(41) %i.ajc)
          to label %bb.jj unwind label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aib, i64 376
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajc, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ajg, ptr noundef nonnull align 8 dereferenceable(24) %i.ajf, i64 24, i1 false), !tbaa.struct !245
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajc, i64 72
  store i8 1, ptr %i.ajh, align 8, !tbaa !231
  br label %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt0.i

bb.jk:                                            ; preds = %bb.ji
  %i.aji = landingpad { ptr, i32 }
          cleanup
  br label %.body535.i

bb.jl:                                            ; preds = %bb.ho
  %i.ajj = invoke fastcc noundef i32 @_ZN8NArchive4NZipL17UpdateItemOldDataERNS0_11COutArchiveEP9IInStreamRKNS0_11CUpdateItemERNS0_7CItemExEP21ICompressProgressInfoRy(ptr noundef nonnull align 8 dereferenceable(81) %32, ptr noundef %.sroa.0.1, ptr noundef nonnull align 8 dereferenceable(72) %i.acr, ptr noundef nonnull align 8 dereferenceable(186) %28, ptr noundef nonnull %i.pe, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.jm unwind label %bb.jn     ; 2 uses

bb.jm:                                            ; preds = %bb.jl
  %.not399.i = icmp eq i32 %i.ajj, 0
  br i1 %.not399.i, label %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.thread.i, label %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt1.i

bb.jn:                                            ; preds = %bb.jl
  %i.ajk = landingpad { ptr, i32 }
          cleanup
  br label %.body535.i

_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.thread.i: ; preds = %bb.jm, %bb.jh, %_ZN9CMyComPtrI10IOutStreamED2Ev.exit.i, %.noexc521.i
  %.4.i = phi i32 [ %.0261.ph.ph.i, %.noexc521.i ], [ %.0261.ph.ph.i, %bb.jm ], [ %.1.i, %_ZN9CMyComPtrI10IOutStreamED2Ev.exit.i ], [ %.1.i, %bb.jh ]
  %i.ajl = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #15
          to label %.noexc533.i unwind label %bb.hn ; 3 uses

.noexc533.i:                                      ; preds = %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.thread.i
  invoke void @_ZN8NArchive4NZip5CItemC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(179) %i.ajl, ptr noundef nonnull align 8 dereferenceable(179) %28)
          to label %bb.jo unwind label %bb.jp

bb.jo:                                            ; preds = %.noexc533.i
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.jq unwind label %bb.hn

bb.jp:                                            ; preds = %.noexc533.i
  %i.ajm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ajl, i64 noundef 184) #17
  br label %.body535.i

bb.jq:                                            ; preds = %bb.jo
  %i.ajn = load ptr, ptr %i.tj, align 8, !tbaa !98
  %i.ajo = load i32, ptr %i.tk, align 4, !tbaa !97 ; 2 uses
  %i.ajp = sext i32 %i.ajo to i64
  %i.ajq = getelementptr inbounds [8 x i8], ptr %i.ajn, i64 %i.ajp
  store ptr %i.ajl, ptr %i.ajq, align 8, !tbaa !99
  %i.ajr = add nsw i32 %i.ajo, 1
  store i32 %i.ajr, ptr %i.tk, align 4, !tbaa !97
  %i.ajs = load i64, ptr %i.b, align 8, !tbaa !78
  %i.ajt = add i64 %i.ajs, 26                     ; 3 uses
  store i64 %i.ajt, ptr %i.b, align 8, !tbaa !78
  %i.aju = load ptr, ptr %i.so, align 8, !tbaa !83 ; 4 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 80 ; 2 uses
  %i.ajw = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ajv) #14 ; 0 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.aju, i64 48
  store i64 0, ptr %i.ajx, align 8, !tbaa !78
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.aju, i64 32
  store i64 0, ptr %i.ajy, align 8, !tbaa !78
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.aju, i64 16
  store i64 %i.ajt, ptr %i.ajz, align 8, !tbaa !79
  %i.aka = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ajv) #14 ; 0 uses
  %i.akb = add nsw i32 %i.aco, 1
  br label %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt0.i

_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt1.i: ; preds = %bb.jm, %bb.jc, %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit532.i, %bb.hl
  %.27374.jt1.i = phi i32 [ %i.aik, %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit532.i ], [ -2147467263, %bb.hl ], [ %i.ajj, %bb.jm ], [ %i.aiq, %bb.jc ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.te, align 8, !tbaa !64
  %i.akc = load ptr, ptr %i.tl, align 8, !tbaa !114 ; 2 uses
  %i.akd = icmp eq ptr %i.akc, null
  br i1 %i.akd, label %_ZN7CBufferIhED2Ev.exit.i537.jt1.i, label %bb.jr

_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt0.i: ; preds = %bb.jq, %bb.jj
  %.promoted1249.i = phi i64 [ %i.ajt, %bb.jq ], [ %i.akm, %bb.jj ]
  %.1263.jt0.i = phi i32 [ %i.akb, %bb.jq ], [ %i.aco, %bb.jj ]
  %.5.jt0.i = phi i32 [ %.4.i, %bb.jq ], [ %.1.i, %bb.jj ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.te, align 8, !tbaa !64
  %i.ake = load ptr, ptr %i.tl, align 8, !tbaa !114 ; 2 uses
  %i.akf = icmp eq ptr %i.ake, null
  br i1 %i.akf, label %_ZN7CBufferIhED2Ev.exit.i537.jt0.i, label %bb.js

bb.jr:                                            ; preds = %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt1.i
  call void @_ZdaPv(ptr noundef nonnull %i.akc) #17, !inline_history !115
  br label %_ZN7CBufferIhED2Ev.exit.i537.jt1.i

bb.js:                                            ; preds = %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt0.i
  call void @_ZdaPv(ptr noundef nonnull %i.ake) #17, !inline_history !115
  br label %_ZN7CBufferIhED2Ev.exit.i537.jt0.i

_ZN7CBufferIhED2Ev.exit.i537.jt1.i:               ; preds = %bb.jr, %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt1.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.tb, align 8, !tbaa !64
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.tb)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i538.jt1.i unwind label %.loopexit.split-lp.i, !inline_history !116

_ZN7CBufferIhED2Ev.exit.i537.jt0.i:               ; preds = %bb.js, %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt0.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.tb, align 8, !tbaa !64
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.tb)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i538.jt0.i unwind label %.loopexit893.i, !inline_history !116

.loopexit893.i:                                   ; preds = %_ZN7CBufferIhED2Ev.exit.i537.jt0.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.jt

.loopexit.split-lp.i:                             ; preds = %_ZN7CBufferIhED2Ev.exit.i537.jt1.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.jt

bb.jt:                                            ; preds = %.loopexit.split-lp.i, %.loopexit893.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit893.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.akg = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.akg) #16, !inline_history !116
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i538.jt1.i: ; preds = %_ZN7CBufferIhED2Ev.exit.i537.jt1.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.tb) #14, !inline_history !116
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.sy, align 8, !tbaa !64
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.sy)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i539.jt1.i unwind label %.loopexit.split-lp895.i, !inline_history !116

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i538.jt0.i: ; preds = %_ZN7CBufferIhED2Ev.exit.i537.jt0.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.tb) #14, !inline_history !116
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.sy, align 8, !tbaa !64
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.sy)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i539.jt0.i unwind label %.loopexit894.i, !inline_history !116

.loopexit894.i:                                   ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i538.jt0.i
  %lpad.loopexit896.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ju

.loopexit.split-lp895.i:                          ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i538.jt1.i
  %lpad.loopexit.split-lp897.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ju

bb.ju:                                            ; preds = %.loopexit.split-lp895.i, %.loopexit894.i
  %lpad.phi898.i = phi { ptr, i32 } [ %lpad.loopexit896.i, %.loopexit894.i ], [ %lpad.loopexit.split-lp897.i, %.loopexit.split-lp895.i ]
  %i.akh = extractvalue { ptr, i32 } %lpad.phi898.i, 0
  call void @__clang_call_terminate(ptr %i.akh) #16, !inline_history !116
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i539.jt1.i: ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i538.jt1.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.sy) #14, !inline_history !116
  %i.aki = load ptr, ptr %i.sv, align 8, !tbaa !117 ; 2 uses
  %i.akj = icmp eq ptr %i.aki, null
  br i1 %i.akj, label %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt1.i, label %bb.jv

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i539.jt0.i: ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i538.jt0.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.sy) #14, !inline_history !116
  %i.akk = load ptr, ptr %i.sv, align 8, !tbaa !117 ; 2 uses
  %i.akl = icmp eq ptr %i.akk, null
  br i1 %i.akl, label %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i, label %bb.jw

bb.jv:                                            ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i539.jt1.i
  call void @_ZdaPv(ptr noundef nonnull %i.aki) #17
  br label %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt1.i

bb.jw:                                            ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i539.jt0.i
  call void @_ZdaPv(ptr noundef nonnull %i.akk) #17
  br label %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i

_ZN8NArchive4NZip5CItemD2Ev.exit540.jt1.i:        ; preds = %bb.jv, %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i539.jt1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  br label %.thread575.i

_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i:        ; preds = %bb.jw, %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i539.jt0.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  br label %.outer.outer.i, !llvm.loop !193

.outer.outer.i:                                   ; preds = %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i, %.preheader.i
  %.promoted.i = phi i64 [ 0, %.preheader.i ], [ %.promoted1249.i, %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i ]
  %.11358.ph.ph.i = phi i32 [ -2147467263, %.preheader.i ], [ %.11358.ph.i, %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i ]
  %.0264.ph.ph.i = phi i32 [ 0, %.preheader.i ], [ %.0264.ph599.lcssa706.split.i, %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i ]
  %.0262.ph.ph.i = phi i32 [ 0, %.preheader.i ], [ %.1263.jt0.i, %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i ] ; 2 uses
  %.0261.ph.ph.i = phi i32 [ -1, %.preheader.i ], [ %.5.jt0.i, %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i ] ; 4 uses
  br label %.outer.i

.outer.i:                                         ; preds = %.outer.outer.i, %_ZN8NArchive4NZip5CItemD2Ev.exit504.i
  %i.akm = phi i64 [ %i.ace, %_ZN8NArchive4NZip5CItemD2Ev.exit504.i ], [ %.promoted.i, %.outer.outer.i ] ; 12 uses
  %.11358.ph.i = phi i32 [ %.16363.i, %_ZN8NArchive4NZip5CItemD2Ev.exit504.i ], [ %.11358.ph.ph.i, %.outer.outer.i ] ; 6 uses
  %.0264.ph.i = phi i32 [ %i.wb, %_ZN8NArchive4NZip5CItemD2Ev.exit504.i ], [ %.0264.ph.ph.i, %.outer.outer.i ] ; 3 uses
  %i.akn = load i32, ptr %i.bz, align 4, !tbaa !97 ; 3 uses
  %i.ako = icmp slt i32 %.0262.ph.ph.i, %i.akn
  br i1 %i.ako, label %.outer.split.i, label %.outer598._crit_edge.i

.outer.split.i:                                   ; preds = %.outer.i
  %i.akp = load i32, ptr %i.rz, align 4
  %i.akq = icmp ult i32 %i.akp, %.2276563.i
  %.fr.i = freeze i1 %i.akq
  %i.akr = sext i32 %i.akn to i64                 ; 2 uses
  br i1 %.fr.i, label %.outer598.preheader.i, label %.lr.ph698.split.split.loopexit727.i

.outer598.preheader.i:                            ; preds = %.outer.split.i
  %i.aks = sext i32 %.0264.ph.i to i64            ; 2 uses
  %smax.i = call i64 @llvm.smax.i64(i64 %i.aks, i64 %i.akr) ; 2 uses
  %exitcond826.not.i1061.not = icmp slt i32 %.0264.ph.i, %i.akn
  br i1 %exitcond826.not.i1061.not, label %.lr.ph.preheader, label %.lr.ph698.split.split.loopexit.i

.lr.ph.preheader:                                 ; preds = %.outer598.preheader.i
  %i.akt = load ptr, ptr %i.sa, align 8, !tbaa !98
  br label %.lr.ph

.body535.i:                                       ; preds = %bb.jp, %bb.jn, %bb.jk, %bb.jd, %bb.ix, %bb.iw, %_ZN9CMyComPtrI10IOutStreamED2Ev.exit529.i, %_ZN9CMyComPtrI10IOutStreamED2Ev.exit525.i, %bb.hs, %bb.hn
  %.pn411.i = phi { ptr, i32 } [ %i.aji, %bb.jk ], [ %i.ajk, %bb.jn ], [ %i.afe, %bb.hs ], [ %i.agg, %_ZN9CMyComPtrI10IOutStreamED2Ev.exit525.i ], [ %i.ajm, %bb.jp ], [ %i.ahj, %_ZN9CMyComPtrI10IOutStreamED2Ev.exit529.i ], [ %i.ail, %bb.iw ], [ %i.aim, %bb.ix ], [ %i.air, %bb.jd ], [ %i.aer, %bb.hn ]
  call void @_ZN8NArchive4NZip5CItemD2Ev(ptr noundef nonnull align 8 dereferenceable(186) %28) #14
  br label %bb.jx

bb.jx:                                            ; preds = %.body535.i, %bb.hm
  %.pn411.pn.i = phi { ptr, i32 } [ %.pn411.i, %.body535.i ], [ %i.aeq, %bb.hm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  br label %bb.km

.outer598._crit_edge.i:                           ; preds = %.outer.i, %bb.hf
  invoke void @_ZN8NArchive4NZip11COutArchive15WriteCentralDirERK13CObjectVectorINS0_5CItemEEPK7CBufferIhE(ptr noundef nonnull align 8 dereferenceable(81) %32, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef %i.by)
          to label %.thread575.i unwind label %bb.fm

.thread575.i:                                     ; preds = %bb.fk, %.noexc476.i, %_ZN8NArchive4NZip5CItemD2Ev.exit504.i, %.outer598._crit_edge.i, %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt1.i, %bb.eh
  %.29376.i = phi i32 [ %i.qs, %bb.eh ], [ 0, %.outer598._crit_edge.i ], [ %.16363.i, %_ZN8NArchive4NZip5CItemD2Ev.exit504.i ], [ %.27374.jt1.i, %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt1.i ], [ %i.vl, %bb.fk ], [ %i.ts, %.noexc476.i ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %23) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #14
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %22) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  call void @_ZN8NArchive4NZip8CThreadsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %21) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  %i.aku = getelementptr inbounds nuw i8, ptr %20, i64 20 ; 2 uses
  %i.akv = load i32, ptr %i.aku, align 4, !tbaa !97
  %i.akw = icmp sgt i32 %i.akv, 0
  br i1 %i.akw, label %.lr.ph.i542.i, label %._crit_edge.i541.i

.lr.ph.i542.i:                                    ; preds = %.thread575.i
  %i.akx = getelementptr inbounds nuw i8, ptr %20, i64 24
  br label %bb.jz

._crit_edge.i541.i:                               ; preds = %bb.ka, %.thread575.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE, i64 16), ptr %i.qh, align 8, !tbaa !64
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.qh)
          to label %_ZN8NArchive4NZip8CMemRefsD2Ev.exit.i unwind label %bb.jy, !inline_history !148

bb.jy:                                            ; preds = %._crit_edge.i541.i
  %i.aky = landingpad { ptr, i32 }
          catch ptr null
  %i.akz = extractvalue { ptr, i32 } %i.aky, 0
  call void @__clang_call_terminate(ptr %i.akz) #16, !inline_history !148
  unreachable

bb.jz:                                            ; preds = %bb.ka, %.lr.ph.i542.i
  %indvars.iv.i543.i = phi i64 [ 0, %.lr.ph.i542.i ], [ %indvars.iv.next.i544.i, %bb.ka ] ; 2 uses
  %i.ala = load ptr, ptr %i.akx, align 8, !tbaa !98
  %i.alb = getelementptr inbounds nuw [8 x i8], ptr %i.ala, i64 %indvars.iv.i543.i
  %i.alc = load ptr, ptr %i.alb, align 8, !tbaa !99
  %i.ald = load ptr, ptr %20, align 8, !tbaa !139
  invoke void @_ZN10CMemBlocks7FreeOptEP18CMemBlockManagerMt(ptr noundef nonnull align 8 dereferenceable(40) %i.alc, ptr noundef %i.ald)
          to label %bb.ka unwind label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  %indvars.iv.next.i544.i = add nuw nsw i64 %indvars.iv.i543.i, 1 ; 2 uses
  %i.ale = load i32, ptr %i.aku, align 4, !tbaa !97
  %i.alf = sext i32 %i.ale to i64
  %i.alg = icmp slt i64 %indvars.iv.next.i544.i, %i.alf
  br i1 %i.alg, label %bb.jz, label %._crit_edge.i541.i, !llvm.loop !2

bb.kb:                                            ; preds = %bb.jz
  %i.alh = landingpad { ptr, i32 }
          catch ptr null
  %i.ali = extractvalue { ptr, i32 } %i.alh, 0
  call void @__clang_call_terminate(ptr %i.ali) #16
  unreachable

_ZN8NArchive4NZip8CMemRefsD2Ev.exit.i:            ; preds = %._crit_edge.i541.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.qh) #14, !inline_history !148
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  invoke void @_ZN18CMemBlockManagerMt9FreeSpaceEv(ptr noundef nonnull align 8 dereferenceable(88) %19)
          to label %bb.kc unwind label %bb.ke

bb.kc:                                            ; preds = %_ZN8NArchive4NZip8CMemRefsD2Ev.exit.i
  %i.alj = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.qa) #14 ; 0 uses
  invoke void @_ZN16CMemBlockManager9FreeSpaceEv(ptr noundef nonnull align 8 dereferenceable(88) %19)
          to label %_ZN18CMemBlockManagerMtD2Ev.exit.i unwind label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.alk = landingpad { ptr, i32 }
          catch ptr null
  %i.all = extractvalue { ptr, i32 } %i.alk, 0
  call void @__clang_call_terminate(ptr %i.all) #16
  unreachable

bb.ke:                                            ; preds = %_ZN8NArchive4NZip8CMemRefsD2Ev.exit.i
  %i.alm = landingpad { ptr, i32 }
          catch ptr null
  %i.aln = extractvalue { ptr, i32 } %i.alm, 0
  call void @__clang_call_terminate(ptr %i.aln) #16
  unreachable

_ZN18CMemBlockManagerMtD2Ev.exit.i:               ; preds = %bb.kc
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  %i.alo = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.pn) #14 ; 0 uses
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.pk) #14
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.ph) #14
  %i.alp = load ptr, ptr %18, align 8, !tbaa !61  ; 3 uses
  %.not.i.i546.i = icmp eq ptr %i.alp, null
  br i1 %.not.i.i546.i, label %bb.kh, label %bb.kf

bb.kf:                                            ; preds = %_ZN18CMemBlockManagerMtD2Ev.exit.i
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !64
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 16
  %i.als = load ptr, ptr %i.alr, align 8
  %i.alt = invoke noundef i32 %i.als(ptr noundef nonnull align 8 dereferenceable(8) %i.alp)
          to label %bb.kh unwind label %bb.kg     ; 0 uses

bb.kg:                                            ; preds = %bb.kf
  %i.alu = landingpad { ptr, i32 }
          catch ptr null
  %i.alv = extractvalue { ptr, i32 } %i.alu, 0
  call void @__clang_call_terminate(ptr %i.alv) #16
  unreachable

bb.kh:                                            ; preds = %bb.kf, %_ZN18CMemBlockManagerMtD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  %i.alw = load ptr, ptr %i.pe, align 8, !tbaa !64
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 16
  %i.aly = load ptr, ptr %i.alx, align 8
  %i.alz = invoke noundef i32 %i.aly(ptr noundef nonnull align 8 dereferenceable(8) %i.pe)
          to label %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit.i unwind label %bb.ki ; 0 uses

bb.ki:                                            ; preds = %bb.kh
  %i.ama = landingpad { ptr, i32 }
          catch ptr null
  %i.amb = extractvalue { ptr, i32 } %i.ama, 0
  call void @__clang_call_terminate(ptr %i.amb) #16
  unreachable

_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit.i: ; preds = %bb.kh
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip5CItemEE, i64 16), ptr %17, align 8, !tbaa !64
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev.exit.i unwind label %bb.kj, !inline_history !133

bb.kj:                                            ; preds = %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit.i
  %i.amc = landingpad { ptr, i32 }
          catch ptr null
  %i.amd = extractvalue { ptr, i32 } %i.amc, 0
  call void @__clang_call_terminate(ptr %i.amd) #16, !inline_history !133
  unreachable

_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev.exit.i: ; preds = %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #14, !inline_history !133
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  %i.ame = load i8, ptr %i.oy, align 8, !tbaa !135, !range !57, !noundef !58
  %i.amf = trunc nuw i8 %i.ame to i1
  br i1 %i.amf, label %bb.kk, label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i

bb.kk:                                            ; preds = %_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev.exit.i
  %i.amg = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(89) %16) #14 ; 0 uses
  %i.amh = call i32 @pthread_cond_destroy(ptr noundef nonnull %i.pa) #14 ; 0 uses
  br label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i

_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i: ; preds = %bb.kk, %_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  %i.ami = load i8, ptr %i.ou, align 8, !tbaa !135, !range !57, !noundef !58
  %i.amj = trunc nuw i8 %i.ami to i1
  br i1 %i.amj, label %bb.kl, label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit549.i

bb.kl:                                            ; preds = %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i
  %i.amk = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(89) %15) #14 ; 0 uses
  %i.aml = call i32 @pthread_cond_destroy(ptr noundef nonnull %i.ow) #14 ; 0 uses
  br label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit549.i

_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit549.i: ; preds = %bb.kl, %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  br label %_ZN8NArchive4NZipL9Update2StERNS0_11COutArchiveEPNS0_10CInArchiveEP9IInStreamRK13CObjectVectorINS0_7CItemExEERKS7_INS0_11CUpdateItemEEPKNS0_22CCompressionMethodModeEPK7CBufferIhEP22IArchiveUpdateCallback.exit.i

bb.km:                                            ; preds = %bb.jx, %bb.he, %bb.fm, %bb.fj, %bb.fb, %bb.fa, %bb.ew, %bb.eo, %bb.el
  %.pn431.pn.i = phi { ptr, i32 } [ %i.rl, %bb.eo ], [ %i.re, %bb.el ], [ %i.ty, %bb.fb ], [ %.pn428.i, %bb.ew ], [ %i.vm, %bb.fj ], [ %i.tx, %bb.fa ], [ %.pn411.pn.i, %bb.jx ], [ %.pn422.pn.pn.i, %bb.he ], [ %i.vz, %bb.fm ]
end_hunk_1
