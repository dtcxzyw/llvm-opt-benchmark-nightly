inline.NumInlined: 5023
inline.NumDeleted: 1781
begin_hunk_0_@_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer8AssembleERKNS_11RecordBatchE:bb.a

bb.cu:                                            ; preds = %_ZSt8_DestroyIPN5arrow6FutureINS0_8internal5EmptyEEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i
  %i.ml = load ptr, ptr %i.dy, align 8, !tbaa !210, !noalias !206
  %i.mm = ptrtoint ptr %i.ml to i64
  %i.mn = ptrtoint ptr %i.mk to i64
  %i.mo = sub i64 %i.mm, %i.mn
  call void @_ZdlPvm(ptr noundef nonnull %i.mk, i64 noundef %i.mo) #30
  br label %_ZN5arrow6StatusD2Ev.exit69

.body.i.i.i:                                      ; preds = %bb.cn, %bb.cm, %bb.cl, %bb.bs, %.body.i.i.i.i
  %.pn23.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.jh, %bb.bs ], [ %i.ll, %bb.cn ], [ %i.ll, %bb.cl ], [ %i.ll, %bb.cm ]
  call void @_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28, !noalias !206
  br label %common.resume

bb.cv:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN5arrow6StatusD2Ev.exit73.sink.split, label %_ZN5arrow6StatusD2Ev.exit.i.i, !llvm.loop !281

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.cv, %_ZN5arrow6StatusD2Ev.exit.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.cv ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28, !noalias !282
  call fastcc void @_ZZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvENKUlmE_clEm(ptr dead_on_unwind noalias writable align 8 %15, ptr nonnull align 8 dereferenceable(128) %1, i64 noundef %indvars.iv.i.i)
  %i.mp = load ptr, ptr %15, align 8, !tbaa !39, !noalias !282 ; 3 uses
  store ptr %i.mp, ptr %21, align 8, !tbaa !39, !alias.scope !282
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28, !noalias !282
  %i.mq = icmp eq ptr %i.mp, null
  br i1 %i.mq, label %bb.cv, label %_ZN5arrow6StatusD2Ev.exit69.thread

_ZN5arrow6StatusD2Ev.exit69.thread:               ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i, %bb.x
  %.ph = phi ptr [ %i.da, %bb.x ], [ %i.mp, %_ZN5arrow6StatusD2Ev.exit.i.i ]
  store ptr %.ph, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %.critedge54

_ZN5arrow6StatusD2Ev.exit69:                      ; preds = %_ZSt8_DestroyIPN5arrow6FutureINS0_8internal5EmptyEEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, %bb.cu
  %.pr88.pr = load ptr, ptr %21, align 8, !tbaa !39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28, !noalias !206
  store ptr %.pr88.pr, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  %i.mr = icmp eq ptr %.pr88.pr, null
  br i1 %i.mr, label %_ZN5arrow6StatusD2Ev.exit73, label %.critedge54

_ZN5arrow6StatusD2Ev.exit73.sink.split:           ; preds = %bb.cv, %.preheader.i.i, %_ZN5arrow6StatusD2Ev.exit69.thread90
  store ptr null, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %_ZN5arrow6StatusD2Ev.exit73

_ZN5arrow6StatusD2Ev.exit73:                      ; preds = %_ZN5arrow6StatusD2Ev.exit73.sink.split, %_ZN5arrow6StatusD2Ev.exit69, %._crit_edge116
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !100 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.mv = load ptr, ptr %i.bm, align 8, !tbaa !70 ; 4 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 32
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !42 ; 3 uses
  %i.mz = load ptr, ptr %i.mw, align 8, !tbaa !45 ; 3 uses
  %i.na = ptrtoint ptr %i.my to i64
  %i.nb = ptrtoint ptr %i.mz to i64
  %i.nc = sub i64 %i.na, %i.nb                    ; 4 uses
  %i.nd = icmp ugt i64 %i.nc, 9223372036854775792
  br i1 %i.nd, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit73
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #31
  unreachable

bb.cx:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit73
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !283 ; 2 uses
  %i.ng = load ptr, ptr %i.mu, align 8, !tbaa !174 ; 5 uses
  %i.nh = ptrtoint ptr %i.nf to i64
  %i.ni = ptrtoint ptr %i.ng to i64               ; 2 uses
  %i.nj = sub i64 %i.nh, %i.ni                    ; 2 uses
  %i.nk = icmp ult i64 %i.nj, %i.nc
  br i1 %i.nk, label %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.cx
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !175
  %i.nn = ptrtoint ptr %i.nm to i64
  %i.no = sub i64 %i.nn, %i.ni                    ; 3 uses
  %i.np = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nc) #29 ; 5 uses
  %i.nq = icmp sgt i64 %i.no, 0
  br i1 %i.nq, label %bb.cy, label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

bb.cy:                                            ; preds = %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.np, ptr align 8 %i.ng, i64 %i.no, i1 false)
  br label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %bb.cy, %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ng, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ng, i64 noundef %i.nj) #30
  %.pre.pre = load ptr, ptr %i.bm, align 8, !tbaa !70 ; 3 uses
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 24
  %.pre140.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !180
  %.phi.trans.insert141.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 32
  %.pre142.pre = load ptr, ptr %.phi.trans.insert141.phi.trans.insert, align 8, !tbaa !180
  br label %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.cz, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %.pre142.a = phi ptr [ %.pre142.pre, %bb.cz ], [ %i.my, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ]
  %.pre140 = phi ptr [ %.pre140.pre, %bb.cz ], [ %i.mz, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ]
  %.pre = phi ptr [ %.pre.pre, %bb.cz ], [ %i.mv, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ]
  store ptr %i.np, ptr %i.mu, align 8, !tbaa !174
  %i.nr = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.no
  store ptr %i.nr, ptr %i.nl, align 8, !tbaa !175
  %i.ns = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.nc ; 2 uses
  store ptr %i.ns, ptr %i.ne, align 8, !tbaa !283
  br label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE7reserveEm.exit: ; preds = %bb.cx, %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.nt = phi ptr [ %i.ng, %bb.cx ], [ %i.np, %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i ]
  %i.nu = phi ptr [ %i.nf, %bb.cx ], [ %i.ns, %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i ]
  %i.nv = phi ptr [ %i.my, %bb.cx ], [ %.pre142.a, %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i ] ; 2 uses
  %i.nw = phi ptr [ %i.mz, %bb.cx ], [ %.pre140, %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i ] ; 2 uses
  %i.nx = phi ptr [ %i.mv, %bb.cx ], [ %.pre, %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i ]
  %i.ny = icmp eq ptr %i.nw, %i.nv
  br i1 %i.ny, label %._crit_edge120, label %.lr.ph119

.lr.ph119:                                        ; preds = %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE7reserveEm.exit
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  br label %bb.da

._crit_edge120.loopexit:                          ; preds = %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit
  %.pre143 = load ptr, ptr %i.bm, align 8, !tbaa !70
  br label %._crit_edge120

._crit_edge120:                                   ; preds = %._crit_edge120.loopexit, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE7reserveEm.exit
  %i.oa = phi ptr [ %i.nx, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE7reserveEm.exit ], [ %.pre143, %._crit_edge120.loopexit ]
  %.038.lcssa = phi i64 [ %i.mt, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE7reserveEm.exit ], [ %i.pp, %._crit_edge120.loopexit ]
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 48
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.od = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIlSaIlEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.oc, ptr noundef nonnull align 8 dereferenceable(24) %i.ob) ; 0 uses
  %i.oe = load i64, ptr %i.ms, align 8, !tbaa !100
  %i.of = sub nsw i64 %.038.lcssa, %i.oe
  %i.og = load ptr, ptr %i.bm, align 8, !tbaa !70
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 72
  store i64 %i.of, ptr %i.oh, align 8, !tbaa !284
  %i.oi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !285
  %i.ok = load ptr, ptr %1, align 8, !tbaa !55
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.om = load ptr, ptr %i.ol, align 8
  call void %i.om(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 noundef %i.oj)
  br label %.critedge54

bb.da:                                            ; preds = %.lr.ph119, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit
  %i.on = phi ptr [ %i.nt, %.lr.ph119 ], [ %i.pm, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit ] ; 5 uses
  %i.oo = phi ptr [ %i.nu, %.lr.ph119 ], [ %i.pn, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit ] ; 3 uses
  %.038118 = phi i64 [ %i.mt, %.lr.ph119 ], [ %i.pp, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit ] ; 3 uses
  %.sroa.080.0117 = phi ptr [ %i.nw, %.lr.ph119 ], [ %i.pq, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.op = load ptr, ptr %.sroa.080.0117, align 8, !tbaa !33 ; 2 uses
  %.not92 = icmp eq ptr %i.op, null
  br i1 %.not92, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !46 ; 3 uses
  %i.os = add i64 %i.or, 7
  %i.ot = and i64 %i.os, -8
  %i.ou = sub nsw i64 %i.ot, %i.or
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.035 = phi i64 [ %i.or, %bb.db ], [ 0, %bb.da ] ; 3 uses
  %.0 = phi i64 [ %i.ou, %bb.db ], [ 0, %bb.da ]
  %i.ov = load ptr, ptr %i.nz, align 8, !tbaa !175 ; 4 uses
  %.not.i.i74 = icmp eq ptr %i.ov, %i.oo
  br i1 %.not.i.i74, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store i64 %.038118, ptr %i.ov, align 8, !tbaa !288
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  store i64 %.035, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !288
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  store ptr %i.ow, ptr %i.nz, align 8, !tbaa !175
  br label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit

bb.de:                                            ; preds = %bb.dc
  %i.ox = ptrtoint ptr %i.oo to i64
  %i.oy = ptrtoint ptr %i.on to i64
  %i.oz = sub i64 %i.ox, %i.oy                    ; 6 uses
  %i.pa = icmp eq i64 %i.oz, 9223372036854775792
  br i1 %i.pa, label %bb.df, label %_ZNKSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.df:                                            ; preds = %bb.de
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #31
  unreachable

_ZNKSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.de
  %i.pb = ashr exact i64 %i.oz, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.pb, i64 1)
  %i.pc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.pb ; 2 uses
  %i.pd = icmp ult i64 %i.pc, %i.pb
  %i.pe = call i64 @llvm.umin.i64(i64 %i.pc, i64 576460752303423487)
  %i.pf = select i1 %i.pd, i64 576460752303423487, i64 %i.pe ; 2 uses
  %i.pg = shl nuw nsw i64 %i.pf, 4
  %i.ph = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pg) #29 ; 5 uses
  %i.pi = getelementptr inbounds i8, ptr %i.ph, i64 %i.oz ; 3 uses
  store i64 %.038118, ptr %i.pi, align 8, !tbaa !288
  %.sroa.5.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  store i64 %.035, ptr %.sroa.5.0..sroa_idx77, align 8, !tbaa !288
  %i.pj = icmp sgt i64 %i.oz, 0
  br i1 %i.pj, label %bb.dg, label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.dg:                                            ; preds = %_ZNKSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ph, ptr align 8 %i.on, i64 %i.oz, i1 false)
  br label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.dg, %_ZNKSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %.not.i17.i.i.i = icmp eq ptr %i.on, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.on, i64 noundef %i.oz) #30
  br label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.dh, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.ph, ptr %i.mu, align 8, !tbaa !174
  store ptr %i.pk, ptr %i.nz, align 8, !tbaa !175
  %i.pl = getelementptr inbounds nuw [16 x i8], ptr %i.ph, i64 %i.pf ; 2 uses
  store ptr %i.pl, ptr %i.ne, align 8, !tbaa !283
  br label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.dd, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.pm = phi ptr [ %i.on, %bb.dd ], [ %i.ph, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  %i.pn = phi ptr [ %i.oo, %bb.dd ], [ %i.pl, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  %i.po = add i64 %.035, %.038118
  %i.pp = add i64 %i.po, %.0                      ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.080.0117, i64 16 ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.nv
  br i1 %i.pr, label %._crit_edge120.loopexit, label %bb.da

.critedge54:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit69.thread, %_ZN5arrow6Status7InvalidIJRA49_KcSt13_SetprecisionRdEEES0_DpOT_.exit, %._crit_edge120, %_ZN5arrow6StatusD2Ev.exit69
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerD2Ev(ptr noundef nonnull align 8 captures(none) dead_on_return(128) dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerE, i64 16), ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !289  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !290
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #30
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !174  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !283
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #30
  br label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EED2Ev.exit

_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !291  ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !292
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #30
  br label %_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EED2Ev.exit

_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EED2Ev.exit, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !118  ; 8 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.x, align 8, !tbaa !125
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !127
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #28, !inline_history !293
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !55
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #28, !inline_history !293
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i3 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.aa, %bb.h ], [ %i.ak, %bb.i ]
  %i.al = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.al, label %bb.j, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #28
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EED2Ev.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc16WriteRecordBatchERKNS_11RecordBatchElPNS_2io12OutputStreamEPiPlRKNS0_15IpcWriteOptionsE(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef writeonly captures(none) %5, ptr noundef nonnull align 8 dereferenceable(60) %6) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit:
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %10 = alloca %"struct.arrow::ipc::IpcPayload", align 8 ; 11 uses
  %11 = alloca %"class.arrow::ipc::(anonymous namespace)::RecordBatchSerializer", align 8 ; 12 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  store i32 0, ptr %10, align 8, !tbaa !59
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerE, i64 16), ptr %11, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %10, ptr %i.b, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, i8 0, i64 88, i1 false)
  store ptr %6, ptr %i.d, align 8, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 112
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !88
  %i.h = sext i32 %i.g to i64
  store i64 %i.h, ptr %i.e, align 8, !tbaa !99
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 120
  store i64 %2, ptr %i.i, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer8AssembleERKNS_11RecordBatchE(ptr dead_on_unwind noalias nonnull writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(128) %11, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.a

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.j = load ptr, ptr %12, align 8, !tbaa !39    ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit21, label %.critedge

bb.a:                                             ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.c

_ZN5arrow6StatusD2Ev.exit21:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.n = load i64, ptr %i.m, align 8, !tbaa !284
  store i64 %i.n, ptr %5, align 8, !tbaa !288
  call void @llvm.experimental.noalias.scope.decl(metadata !294)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !294
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !33, !noalias !294
  invoke void @_ZN5arrow3ipc12WriteMessageERKNS_6BufferERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamEPi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(60) %6, ptr noundef %3, ptr noundef %4)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit21
end_hunk_0
begin_hunk_1_@_ZN5arrow3ipc8internal22SparseTensorSerializer8AssembleERKNS_12SparseTensorE:bb.a
  store ptr null, ptr %4, align 16, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !42
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.m:                                             ; preds = %_ZNK5arrow12SparseTensor4dataEv.exit
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr %i.at, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit unwind label %bb.x

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.m, %bb.l
  %i.ay = load ptr, ptr %i.aj, align 8, !tbaa !118 ; 8 uses
  %.not.i.i37 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i37, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.az, align 8, !tbaa !125
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !127
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !55
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #28, !inline_history !300
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !55
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #28, !inline_history !300
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.bc, %bb.q ], [ %i.bm, %bb.r ]
  %i.bn = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bn, label %bb.s, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !449 ; 2 uses
  %i.bq = load ptr, ptr %1, align 8, !tbaa !436   ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !42 ; 3 uses
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !45 ; 3 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 4 uses
  %i.by = icmp ugt i64 %i.bx, 9223372036854775792
  br i1 %i.by, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #31
  unreachable

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !283 ; 2 uses
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !174 ; 5 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.ce = sub i64 %i.cc, %i.cd                    ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.bx
  br i1 %i.cf, label %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.u
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !175
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.cd                    ; 3 uses
  %i.cj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #29 ; 5 uses
  %i.ck = icmp sgt i64 %i.ci, 0
  br i1 %i.ck, label %bb.v, label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

bb.v:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr align 8 %i.cb, i64 %i.ci, i1 false)
  br label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %bb.v, %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.cb, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.ce) #30
  %.pre.pre = load ptr, ptr %1, align 8, !tbaa !436 ; 3 uses
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 32
  %.pre54.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !42
  %.phi.trans.insert55.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 24
  %.pre56.pre = load ptr, ptr %.phi.trans.insert55.phi.trans.insert, align 8, !tbaa !45
  br label %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.w, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %.pre56.a = phi ptr [ %.pre56.pre, %bb.w ], [ %i.bu, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ]
  %.pre54 = phi ptr [ %.pre54.pre, %bb.w ], [ %i.bt, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ]
  %.pre = phi ptr [ %.pre.pre, %bb.w ], [ %i.bq, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ]
  store ptr %i.cj, ptr %i.a, align 8, !tbaa !174
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ci
  store ptr %i.cl, ptr %i.c, align 8, !tbaa !175
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.bx ; 2 uses
  store ptr %i.cm, ptr %i.bz, align 8, !tbaa !283
  br label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE7reserveEm.exit: ; preds = %bb.u, %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.cn = phi ptr [ %i.cb, %bb.u ], [ %i.cj, %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i ]
  %i.co = phi ptr [ %i.ca, %bb.u ], [ %i.cm, %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i ]
  %i.cp = phi ptr [ %i.bu, %bb.u ], [ %.pre56.a, %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i ] ; 2 uses
  %i.cq = phi ptr [ %i.bt, %bb.u ], [ %.pre54, %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i ]
  %i.cr = phi ptr [ %i.bq, %bb.u ], [ %.pre, %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i ] ; 3 uses
  %.not = icmp eq ptr %i.cq, %i.cp
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE7reserveEm.exit
  %.pre57.a = load ptr, ptr %i.c, align 8, !tbaa !175
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE7reserveEm.exit
  %.027.lcssa = phi i64 [ %i.bp, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE7reserveEm.exit ], [ %i.ec, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit ]
  %.026.lcssa = phi i64 [ 0, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE7reserveEm.exit ], [ %i.ed, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit ]
  %.lcssa = phi ptr [ %i.cr, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE7reserveEm.exit ], [ %i.dy, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.cs = load i64, ptr %i.bo, align 8, !tbaa !449
  %i.ct = sub nsw i64 %.027.lcssa, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %.lcssa, i64 72
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !284
  %i.cv = getelementptr inbounds nuw i8, ptr %.lcssa, i64 80
  store i64 %.026.lcssa, ptr %i.cv, align 8, !tbaa !181
  call void @_ZN5arrow3ipc8internal22SparseTensorSerializer17SerializeMetadataERKNS_12SparseTensorE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2)
  br label %bb.ad

bb.x:                                             ; preds = %bb.m
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.cw

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit
  %.pre5862 = phi ptr [ %.pre5863, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit ], [ %i.cr, %.lr.ph.preheader ] ; 2 uses
  %i.cx = phi ptr [ %i.dy, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit ], [ %i.cr, %.lr.ph.preheader ]
  %i.cy = phi ptr [ %i.dz, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit ], [ %i.cn, %.lr.ph.preheader ] ; 5 uses
  %i.cz = phi ptr [ %i.ea, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit ], [ %i.co, %.lr.ph.preheader ] ; 3 uses
  %i.da = phi ptr [ %i.eb, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit ], [ %.pre57.a, %.lr.ph.preheader ] ; 4 uses
  %i.db = phi ptr [ %i.ei, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit ], [ %i.cp, %.lr.ph.preheader ]
  %.02548 = phi i64 [ %i.ee, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.02647 = phi i64 [ %i.ed, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit ], [ 0, %.lr.ph.preheader ]
  %.02746 = phi i64 [ %i.ec, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit ], [ %i.bp, %.lr.ph.preheader ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %.02548
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !33
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load i64, ptr %i.de, align 8, !tbaa !46 ; 2 uses
  %i.dg = add i64 %i.df, 7
  %i.dh = and i64 %i.dg, -8                       ; 3 uses
  %.not.i.i38 = icmp eq ptr %i.da, %i.cz
  br i1 %.not.i.i38, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph
  store i64 %.02746, ptr %i.da, align 8, !tbaa !288
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 %i.dh, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !288
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  store ptr %i.di, ptr %i.c, align 8, !tbaa !175
  br label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit

bb.z:                                             ; preds = %.lr.ph
  %i.dj = ptrtoint ptr %i.cz to i64
  %i.dk = ptrtoint ptr %i.cy to i64
  %i.dl = sub i64 %i.dj, %i.dk                    ; 6 uses
  %i.dm = icmp eq i64 %i.dl, 9223372036854775792
  br i1 %i.dm, label %bb.aa, label %_ZNKSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #31
  unreachable

_ZNKSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.z
  %i.dn = ashr exact i64 %i.dl, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dn, i64 1)
  %i.do = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dn ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.dn
  %i.dq = call i64 @llvm.umin.i64(i64 %i.do, i64 576460752303423487)
  %i.dr = select i1 %i.dp, i64 576460752303423487, i64 %i.dq ; 2 uses
  %i.ds = shl nuw nsw i64 %i.dr, 4
  %i.dt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #29 ; 5 uses
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 %i.dl ; 3 uses
  store i64 %.02746, ptr %i.du, align 8, !tbaa !288
  %.sroa.5.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i64 %i.dh, ptr %.sroa.5.0..sroa_idx41, align 8, !tbaa !288
  %i.dv = icmp sgt i64 %i.dl, 0
  br i1 %i.dv, label %bb.ab, label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.ab:                                            ; preds = %_ZNKSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dt, ptr align 8 %i.cy, i64 %i.dl, i1 false)
  br label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.ab, %_ZNKSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dl) #30
  %.pre58.pre = load ptr, ptr %1, align 8, !tbaa !436
  br label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.ac, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %.pre58 = phi ptr [ %.pre58.pre, %bb.ac ], [ %.pre5862, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i ] ; 2 uses
  store ptr %i.dt, ptr %i.a, align 8, !tbaa !174
  store ptr %i.dw, ptr %i.c, align 8, !tbaa !175
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %i.dr ; 2 uses
  store ptr %i.dx, ptr %i.bz, align 8, !tbaa !283
  br label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.y, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %.pre5863 = phi ptr [ %.pre5862, %bb.y ], [ %.pre58, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  %i.dy = phi ptr [ %i.cx, %bb.y ], [ %.pre58, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 4 uses
  %i.dz = phi ptr [ %i.cy, %bb.y ], [ %i.dt, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  %i.ea = phi ptr [ %i.cz, %bb.y ], [ %i.dx, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  %i.eb = phi ptr [ %i.di, %bb.y ], [ %i.dw, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  %i.ec = add nsw i64 %i.dh, %.02746              ; 2 uses
  %i.ed = add nsw i64 %i.df, %.02647              ; 2 uses
  %i.ee = add nuw i64 %.02548, 1                  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !42
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !45 ; 2 uses
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = ashr exact i64 %i.el, 4
  %i.en = icmp ult i64 %i.ee, %i.em
  br i1 %i.en, label %.lr.ph, label %._crit_edge, !llvm.loop !450

bb.ad:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit, %._crit_edge
  ret void
}

declare void @_ZN5arrow3ipc15IpcWriteOptions8DefaultsEv(ptr dead_on_unwind writable sret(%"struct.arrow::ipc::IpcWriteOptions") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow3ipc8internal22SparseTensorSerializerD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !127
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !372
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !372
  br label %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit, !prof !129

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit

_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit:          ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !174  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !283
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #30
  br label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EED2Ev.exit

_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EED2Ev.exit: ; preds = %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc22GetSparseTensorPayloadERKNS_12SparseTensorEPNS_10MemoryPoolEPNS0_10IpcPayloadE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::ipc::internal::SparseTensorSerializer", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %3, ptr %4, align 8, !tbaa !436
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  invoke void @_ZN5arrow3ipc15IpcWriteOptions8DefaultsEv(ptr dead_on_unwind nonnull writable sret(%"struct.arrow::ipc::IpcWriteOptions") align 8 %i.b)
          to label %_ZN5arrow3ipc8internal22SparseTensorSerializerC2ElPNS0_10IpcPayloadE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !174  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !283
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #30
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %bb.c, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.l ], [ %i.c, %bb.c ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN5arrow3ipc8internal22SparseTensorSerializerC2ElPNS0_10IpcPayloadE.exit: ; preds = %bb.a
  invoke void @_ZN5arrow3ipc8internal22SparseTensorSerializer8AssembleERKNS_12SparseTensorE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %_ZN5arrow3ipc8internal22SparseTensorSerializerC2ElPNS0_10IpcPayloadE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !118  ; 8 uses
  %.not.i.i.i.i3 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i3, label %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.l, align 8, !tbaa !125
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !127
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #28, !inline_history !441
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #28, !inline_history !441
  br label %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit.i

bb.g:                                             ; preds = %bb.e
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !127
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !171
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !171
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare noundef i32 @_ZNK5arrow11RecordBatch11num_columnsEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer10VisitArrayERKNS_5ArrayE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.std::shared_ptr", align 16  ; 11 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.c = load atomic i8, ptr @_ZGVZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer10VisitArrayERKNS_5ArrayEE11kNullBuffer acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e, !prof !644

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer10VisitArrayERKNS_5ArrayEE11kNullBuffer) #28
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr null, ptr %i.a, align 8, !tbaa !645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 0, ptr %i.b, align 4, !tbaa !3
  invoke void @_ZSt11make_sharedIN5arrow6BufferEJDniEESt10shared_ptrIT_EDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 @_ZZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer10VisitArrayERKNS_5ArrayEE11kNullBuffer, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.f = call i32 @__cxa_atexit(ptr nonnull @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr nonnull @_ZZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer10VisitArrayERKNS_5ArrayEE11kNullBuffer, ptr nonnull @__dso_handle) #28 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer10VisitArrayERKNS_5ArrayEE11kNullBuffer) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.h = load i64, ptr %i.g, align 8, !tbaa !99
  %i.i = icmp slt i64 %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.8)
  br label %bb.al

bb.g:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer10VisitArrayERKNS_5ArrayEE11kNullBuffer) #28
  br label %bb.am

bb.h:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !182, !nonnull !183, !align !184
  %i.m = load i8, ptr %i.l, align 8, !tbaa !362, !range !187, !noundef !183
  %i.n = trunc nuw i8 %i.m to i1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !115 ; 4 uses
  br i1 %i.n, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !138
  %i.q = icmp sgt i64 %i.p, 2147483647
  br i1 %i.q, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6Status8FromArgsIJRA51_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 6, ptr noundef nonnull align 1 dereferenceable(51) @.str.9)
  br label %bb.al

._crit_edge:                                      ; preds = %bb.h, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !647
  %.not22 = icmp eq i64 %i.t, 0
  br i1 %.not22, label %bb.m, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.u = call noundef signext i8 @_ZNK5arrow9ArrayData11device_typeEv(ptr noundef nonnull align 8 dereferenceable(120) %.pre)
  %.not23 = icmp eq i8 %i.u, 1
  br i1 %.not23, label %._crit_edge42, label %bb.l

._crit_edge42:                                    ; preds = %bb.k
  %.pre43 = load ptr, ptr %i.r, align 8, !tbaa !115
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status8FromArgsIJRA51_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(51) @.str.10)
  br label %bb.al

bb.m:                                             ; preds = %._crit_edge42, %._crit_edge
  %i.v = phi ptr [ %.pre43, %._crit_edge42 ], [ %.pre, %._crit_edge ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !138  ; 2 uses
  %i.z = call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !173 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !292
  %.not.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.y, ptr %i.ab, align 8, !tbaa !288
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.z, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !288
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !288
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !173
  br label %_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EE9push_backEOS3_.exit

bb.o:                                             ; preds = %bb.m
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !291 ; 4 uses
  %i.ag = ptrtoint ptr %i.ab to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 6 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.p, label %_ZNKSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #31
  unreachable

_ZNKSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.ak = sdiv exact i64 %i.ai, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = call i64 @llvm.umin.i64(i64 %i.al, i64 384307168202282325)
  %i.ao = select i1 %i.am, i64 384307168202282325, i64 %i.an ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 24
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #29 ; 4 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ai ; 4 uses
  store i64 %i.y, ptr %i.ar, align 8, !tbaa !288
  %.sroa.5.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.z, ptr %.sroa.5.0..sroa_idx38, align 8, !tbaa !288
  %.sroa.6.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 0, ptr %.sroa.6.0..sroa_idx40, align 8, !tbaa !288
  %i.as = icmp sgt i64 %i.ai, 0
  br i1 %i.as, label %bb.q, label %_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr align 8 %i.af, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.q, %_ZNKSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.not.i17.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ai) #30
  br label %_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.aq, ptr %i.w, align 8, !tbaa !291
  store ptr %i.at, ptr %i.aa, align 8, !tbaa !173
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.au, ptr %i.ac, align 8, !tbaa !292
  br label %_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.n, %_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.av = load ptr, ptr %i.r, align 8, !tbaa !115
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !341
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !648
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !182, !nonnull !183, !align !184
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 59
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !660
  %i.bc = call noundef zeroext i1 @_ZN5arrow3ipc8internal17HasValidityBitmapENS_4Type4typeENS0_15MetadataVersionE(i32 noundef %i.ay, i8 noundef signext %i.bb)
  br i1 %i.bc, label %bb.s, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

bb.s:                                             ; preds = %_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EE9push_backEOS3_.exit
  %i.bd = call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %bb.t, label %bb.af

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.bf = load ptr, ptr %i.r, align 8, !tbaa !115 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !647
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !138
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !45 ; 2 uses
  %i.bm = load ptr, ptr %i.k, align 8, !tbaa !182, !nonnull !183, !align !184
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !364
  %.val = load ptr, ptr %i.bl, align 8, !tbaa !33
  %i.bp = getelementptr i8, ptr %i.bl, i64 8
  %.val28 = load ptr, ptr %i.bp, align 8
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_118GetTruncatedBitmapEllRKSt10shared_ptrINS_6BufferEEPNS_10MemoryPoolEPS4_(ptr dead_on_unwind noalias writable align 8 %4, i64 noundef %i.bh, i64 noundef %i.bj, ptr %.val, ptr %.val28, ptr noundef %i.bo, ptr noundef %3)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.u

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.t
  %i.bq = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  store ptr %i.bq, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.br = icmp eq ptr %i.bq, null                 ; 2 uses
  br i1 %i.br, label %_ZN5arrow6StatusD2Ev.exit32, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.ae

_ZN5arrow6StatusD2Ev.exit32:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !70 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !42 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !299
  %.not.i33 = icmp eq ptr %i.bw, %i.by
  br i1 %.not.i33, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr null, ptr %i.bz, align 8, !tbaa !118
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load <2 x ptr>, ptr %3, align 16, !tbaa !119
  store ptr null, ptr %i.ca, align 8, !tbaa !118
  store <2 x ptr> %i.cb, ptr %i.bw, align 8, !tbaa !119
  store ptr null, ptr %3, align 16, !tbaa !33
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr %i.cc, ptr %i.bv, align 8, !tbaa !42
  br label %.critedge

bb.w:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.critedge unwind label %bb.ad

.critedge:                                        ; preds = %bb.w, %bb.v, %_ZN5arrow6StatusD2Ev.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !118 ; 8 uses
  %.not.i.i34 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i34, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.critedge
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 4 uses
  %i.ch = load atomic i64, ptr %i.cg acquire, align 8 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 4294967297
  %i.cj = trunc i64 %i.ch to i32                  ; 2 uses
  br i1 %i.ci, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.cg, align 8, !tbaa !125
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 0, ptr %i.ck, align 4, !tbaa !127
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !55
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #28, !inline_history !300
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !55
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #28, !inline_history !300
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.cr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cs = add nsw i32 %i.cj, -1
  store i32 %i.cs, ptr %i.cg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ct = atomicrmw volatile add ptr %i.cg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i = phi i32 [ %i.cj, %bb.aa ], [ %i.ct, %bb.ab ]
  %i.cu = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cu, label %bb.ac, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %i.br, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit, label %bb.al

bb.ad:                                            ; preds = %bb.w
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.u
  %.pn25 = phi { ptr, i32 } [ %i.cv, %bb.ad ], [ %i.bs, %bb.u ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.am

bb.af:                                            ; preds = %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !70 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !42 ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !299
  %.not.i35 = icmp eq ptr %i.cz, %i.db
  br i1 %.not.i35, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer10VisitArrayERKNS_5ArrayEE11kNullBuffer, i64 8), align 8, !tbaa !118 ; 2 uses
  %i.dd = load <2 x ptr>, ptr @_ZZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer10VisitArrayERKNS_5ArrayEE11kNullBuffer, align 16, !tbaa !119
  store <2 x ptr> %i.dd, ptr %i.cz, align 8, !tbaa !119
  %.not.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 3 uses
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i.i = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !3
  %i.dh = add nsw i32 %i.dg, 1
  store i32 %i.dh, ptr %i.de, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i
end_hunk_2
begin_hunk_3_@strcmp
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(28) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !681
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !681
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !684, !noalias !681, !nonnull !183, !align !184
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(28) %2) #28, !noalias !681
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(28) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !681 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !681
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !681
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !134    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !111
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !134    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !111
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume
}

declare void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA51_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(51) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !694
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !694
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !684, !noalias !694, !nonnull !183, !align !184
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(51) %2) #28, !noalias !694
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(51) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA51_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !694 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA51_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA51_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA51_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !694
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA51_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA51_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !694
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA51_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !134    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !111
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA51_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !134    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !111
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume
}

declare noundef signext i8 @_ZNK5arrow9ArrayData11device_typeEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare void @_ZN5arrow8internal10CopyBitmapEPNS_10MemoryPoolEPKhlll(ptr dead_on_unwind writable sret(%"class.arrow::Result.106") align 8, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !45     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #31
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !119
  store ptr null, ptr %i.r, align 8, !tbaa !118
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !119
  store ptr null, ptr %2, align 8, !tbaa !33
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !119, !alias.scope !700, !noalias !697
  store ptr null, ptr %i.t, align 8, !tbaa !118, !alias.scope !700, !noalias !697
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !119, !alias.scope !697, !noalias !700
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !33, !alias.scope !700, !noalias !697
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !702

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !119, !alias.scope !706, !noalias !703
  store ptr null, ptr %i.y, align 8, !tbaa !118, !alias.scope !706, !noalias !703
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !119, !alias.scope !703, !noalias !706
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !33, !alias.scope !706, !noalias !703
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !702

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !299
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #30
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !45
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !42
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !299
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !45     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #31
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !118  ; 2 uses
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !119
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !119
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !3
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit

_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.p, %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !119, !alias.scope !711, !noalias !708
  store ptr null, ptr %i.z, align 8, !tbaa !118, !alias.scope !711, !noalias !708
  store <2 x ptr> %i.aa, ptr %.012.i.i.i, align 8, !tbaa !119, !alias.scope !708, !noalias !711
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !33, !alias.scope !711, !noalias !708
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !702

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit ], [ %i.ac, %.lr.ph.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !119, !alias.scope !716, !noalias !713
  store ptr null, ptr %i.ae, align 8, !tbaa !118, !alias.scope !716, !noalias !713
  store <2 x ptr> %i.af, ptr %.012.i.i.i18, align 8, !tbaa !119, !alias.scope !713, !noalias !716
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !33, !alias.scope !716, !noalias !713
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !702

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !299
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #30
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !45
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !42
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !299
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__shared_ptr", align 16 ; 5 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %5 = alloca %"class.arrow::Result.82", align 8  ; 12 uses
  %6 = alloca %"class.std::unique_ptr.86", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr", align 8   ; 8 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"class.std::__shared_ptr", align 16 ; 5 uses
  %9 = alloca %"class.std::shared_ptr", align 16  ; 12 uses
  %10 = alloca %"class.arrow::Result.82", align 8 ; 12 uses
  %11 = alloca %"class.std::unique_ptr.86", align 8 ; 7 uses
  %12 = alloca %"class.std::shared_ptr", align 8  ; 6 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %13 = alloca %"class.std::__shared_ptr", align 16 ; 5 uses
  %14 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %15 = alloca %"class.arrow::Result.82", align 8 ; 12 uses
  %16 = alloca %"class.std::unique_ptr.86", align 8 ; 7 uses
  %17 = alloca %"class.std::shared_ptr", align 8  ; 6 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %18 = alloca %"class.std::__shared_ptr", align 16 ; 5 uses
  %i.j = alloca i64, align 8                      ; 8 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %20 = alloca %"class.arrow::Result.82", align 8 ; 12 uses
  %21 = alloca %"class.std::unique_ptr.86", align 8 ; 7 uses
  %22 = alloca %"class.std::shared_ptr", align 8  ; 8 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %23 = alloca %"class.std::__shared_ptr", align 16 ; 5 uses
  %i.m = alloca i32, align 4                      ; 8 uses
  %24 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %25 = alloca %"class.arrow::Result.82", align 8 ; 12 uses
  %26 = alloca %"class.std::unique_ptr.86", align 8 ; 7 uses
  %27 = alloca %"class.std::shared_ptr", align 8  ; 8 uses
  %28 = alloca %"class.arrow::Result.339", align 8 ; 13 uses
  %29 = alloca %"class.std::shared_ptr.32", align 16 ; 6 uses
  %30 = alloca %"class.std::shared_ptr.32", align 8 ; 7 uses
  %31 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %32 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %33 = alloca %"class.std::shared_ptr", align 8  ; 8 uses
  %34 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %35 = alloca %"class.std::shared_ptr", align 8  ; 9 uses
  %36 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %37 = alloca %"class.std::vector.137", align 8  ; 10 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %38 = alloca %"class.std::allocator.139", align 1 ; 4 uses
  %39 = alloca %"class.std::vector.137", align 8  ; 10 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %40 = alloca %"class.std::allocator.139", align 1 ; 4 uses
  %41 = alloca %"class.arrow::Result.82", align 8 ; 11 uses
  %42 = alloca %"class.std::unique_ptr.86", align 8 ; 7 uses
  %43 = alloca %"class.std::shared_ptr.32", align 16 ; 13 uses
  %44 = alloca %"class.std::shared_ptr.32", align 16 ; 7 uses
  %45 = alloca %"class.std::shared_ptr.32", align 8 ; 6 uses
  %46 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %47 = alloca %"class.std::shared_ptr", align 8  ; 8 uses
  %48 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %49 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %50 = alloca %"class.std::shared_ptr.32", align 8 ; 7 uses
  %51 = alloca %"class.std::shared_ptr.32", align 8 ; 9 uses
  %52 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %53 = alloca %"class.std::shared_ptr.32", align 8 ; 7 uses
  %54 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %55 = alloca %"class.std::shared_ptr", align 16 ; 17 uses
  %56 = alloca %"class.arrow::Status", align 8    ; 10 uses
  %57 = alloca %"class.std::shared_ptr.32", align 16 ; 9 uses
  %i.p = alloca i32, align 4                      ; 6 uses
  %58 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.q = alloca i32, align 4                      ; 7 uses
  %59 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %60 = alloca %"class.std::shared_ptr.32", align 8 ; 6 uses
  %61 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %62 = alloca %"class.std::shared_ptr", align 16 ; 11 uses
  %63 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %64 = alloca %"class.std::shared_ptr", align 8  ; 10 uses
  %65 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %66 = alloca %"class.std::shared_ptr.32", align 8 ; 10 uses
  %67 = alloca %"class.std::shared_ptr.32", align 8 ; 6 uses
  %68 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %69 = alloca %"class.std::shared_ptr", align 16 ; 11 uses
  %70 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %71 = alloca %"class.std::shared_ptr", align 8  ; 10 uses
  %72 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %73 = alloca %"class.std::shared_ptr.32", align 8 ; 10 uses
  %74 = alloca %"class.std::shared_ptr.32", align 8 ; 6 uses
  %75 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %76 = alloca %"class.std::shared_ptr", align 16 ; 17 uses
  %77 = alloca %"class.arrow::Status", align 8    ; 10 uses
  %78 = alloca %"class.std::shared_ptr.32", align 16 ; 9 uses
  %i.r = alloca i64, align 8                      ; 6 uses
  %79 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.s = alloca i64, align 8                      ; 7 uses
  %80 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %81 = alloca %"class.std::shared_ptr.32", align 8 ; 6 uses
  %82 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %83 = alloca %"class.std::shared_ptr", align 16 ; 17 uses
  %84 = alloca %"class.arrow::Status", align 8    ; 10 uses
  %85 = alloca %"class.std::shared_ptr.32", align 16 ; 9 uses
  %i.t = alloca i32, align 4                      ; 6 uses
  %86 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.u = alloca i32, align 4                      ; 7 uses
  %87 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %88 = alloca %"class.std::shared_ptr.32", align 8 ; 6 uses
  %89 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.v = alloca i64, align 8                      ; 4 uses
  %i.w = alloca i64, align 8                      ; 4 uses
end_hunk_3
begin_hunk_4_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit: ; preds = %._crit_edge1975, %bb.bld, %.critedge46.i1174, %.critedge43.i1170, %.critedge48.i1179, %.critedge46.i, %.critedge43.i, %.critedge48.i, %bb.bqb, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1674, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1652, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1518, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1263, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_15Decimal256ArrayEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS7_EE5valuesr25is_fixed_size_binary_typeIS7_EE5valueENS_6StatusEE4typeERKS6_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_15Decimal128ArrayEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS7_EE5valuesr25is_fixed_size_binary_typeIS7_EE5valueENS_6StatusEE4typeERKS6_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_14Decimal64ArrayEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS7_EE5valuesr25is_fixed_size_binary_typeIS7_EE5valueENS_6StatusEE4typeERKS6_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_14Decimal32ArrayEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS7_EE5valuesr25is_fixed_size_binary_typeIS7_EE5valueENS_6StatusEE4typeERKS6_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_20DayTimeIntervalArrayEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS7_EE5valuesr25is_fixed_size_binary_typeIS7_EE5valueENS_6StatusEE4typeERKS6_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_12NumericArrayINS_17MonthIntervalTypeEEEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS9_EE5valuesr25is_fixed_size_binary_typeIS9_EE5valueENS_6StatusEE4typeERKS8_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_25MonthDayNanoIntervalArrayEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS7_EE5valuesr25is_fixed_size_binary_typeIS7_EE5valueENS_6StatusEE4typeERKS6_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_12NumericArrayINS_10Time64TypeEEEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS9_EE5valuesr25is_fixed_size_binary_typeIS9_EE5valueENS_6StatusEE4typeERKS8_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_12NumericArrayINS_10Time32TypeEEEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS9_EE5valuesr25is_fixed_size_binary_typeIS9_EE5valueENS_6StatusEE4typeERKS8_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_12NumericArrayINS_13TimestampTypeEEEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS9_EE5valuesr25is_fixed_size_binary_typeIS9_EE5valueENS_6StatusEE4typeERKS8_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_12NumericArrayINS_10Date64TypeEEEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS9_EE5valuesr25is_fixed_size_binary_typeIS9_EE5valueENS_6StatusEE4typeERKS8_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_12NumericArrayINS_10Date32TypeEEEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS9_EE5valuesr25is_fixed_size_binary_typeIS9_EE5valueENS_6StatusEE4typeERKS8_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_12NumericArrayINS_12DurationTypeEEEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS9_EE5valuesr25is_fixed_size_binary_typeIS9_EE5valueENS_6StatusEE4typeERKS8_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_20FixedSizeBinaryArrayEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS7_EE5valuesr25is_fixed_size_binary_typeIS7_EE5valueENS_6StatusEE4typeERKS6_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_16LargeBinaryArrayEEENSt9enable_ifIXsr19is_base_binary_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_16LargeStringArrayEEENSt9enable_ifIXsr19is_base_binary_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit, %bb.vs, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_11BinaryArrayEEENSt9enable_ifIXsr19is_base_binary_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit, %bb.re, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_11StringArrayEEENSt9enable_ifIXsr19is_base_binary_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_12NumericArrayINS_10DoubleTypeEEEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS9_EE5valuesr25is_fixed_size_binary_typeIS9_EE5valueENS_6StatusEE4typeERKS8_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_12NumericArrayINS_9FloatTypeEEEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS9_EE5valuesr25is_fixed_size_binary_typeIS9_EE5valueENS_6StatusEE4typeERKS8_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_12NumericArrayINS_13HalfFloatTypeEEEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS9_EE5valuesr25is_fixed_size_binary_typeIS9_EE5valueENS_6StatusEE4typeERKS8_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_12NumericArrayINS_10UInt64TypeEEEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS9_EE5valuesr25is_fixed_size_binary_typeIS9_EE5valueENS_6StatusEE4typeERKS8_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_12NumericArrayINS_9Int64TypeEEEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS9_EE5valuesr25is_fixed_size_binary_typeIS9_EE5valueENS_6StatusEE4typeERKS8_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_12NumericArrayINS_10UInt32TypeEEEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS9_EE5valuesr25is_fixed_size_binary_typeIS9_EE5valueENS_6StatusEE4typeERKS8_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_12NumericArrayINS_9Int32TypeEEEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS9_EE5valuesr25is_fixed_size_binary_typeIS9_EE5valueENS_6StatusEE4typeERKS8_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_12NumericArrayINS_10UInt16TypeEEEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS9_EE5valuesr25is_fixed_size_binary_typeIS9_EE5valueENS_6StatusEE4typeERKS8_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_12NumericArrayINS_9Int16TypeEEEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS9_EE5valuesr25is_fixed_size_binary_typeIS9_EE5valueENS_6StatusEE4typeERKS8_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_12NumericArrayINS_9UInt8TypeEEEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS9_EE5valuesr25is_fixed_size_binary_typeIS9_EE5valueENS_6StatusEE4typeERKS8_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_12NumericArrayINS_8Int8TypeEEEEENSt9enable_ifIXoooosr14is_number_typeINT_9TypeClassEEE5valuesr16is_temporal_typeIS9_EE5valuesr25is_fixed_size_binary_typeIS9_EE5valueENS_6StatusEE4typeERKS8_.exit, %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitERKNS_12BooleanArrayE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitERKNS_15BinaryViewArrayE(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::shared_ptr", align 16  ; 12 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !115  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !118  ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.g, align 8, !tbaa !119
  store <2 x ptr> %i.k, ptr %4, align 16, !tbaa !119
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !3
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !115
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit:  ; preds = %bb.a, %bb.c, %bb.d
  %i.q = phi ptr [ %i.d, %bb.a ], [ %i.d, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i64, ptr %i.r, align 8, !tbaa !647
  %i.t = shl nsw i64 %i.s, 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !138
  %i.w = shl nsw i64 %i.v, 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1600)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.t, ptr %i.a, align 8, !tbaa !288, !noalias !1600
  store i64 %i.w, ptr %i.b, align 8, !tbaa !288, !noalias !1600
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1603)
  store ptr null, ptr %3, align 16, !tbaa !33, !alias.scope !1606
  %i.x = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29
          to label %.noexc unwind label %bb.y     ; 4 uses

.noexc:                                           ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrIS1_ERKlSA_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, !noalias !1606

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i: ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 96) #30, !noalias !1606
  br label %.body

bb.e:                                             ; preds = %.noexc
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %i.x, ptr %i.z, align 8, !tbaa !118, !alias.scope !1606
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.aa, ptr %3, align 16, !tbaa !351, !alias.scope !1606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !118 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ac, align 8, !tbaa !125
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !127
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #28, !inline_history !300
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !55
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #28, !inline_history !300
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i16 = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i16, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.af, %bb.i ], [ %i.ap, %bb.j ]
  %i.aq = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aq, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !70 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !42 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !299
  %.not.i = icmp eq ptr %i.au, %i.aw
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = load <2 x ptr>, ptr %3, align 16, !tbaa !119
  store ptr null, ptr %i.z, align 8, !tbaa !118
  store <2 x ptr> %i.ax, ptr %i.au, align 8, !tbaa !119
  store ptr null, ptr %3, align 16, !tbaa !33
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %i.ay, ptr %i.at, align 8, !tbaa !42
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr %i.au, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge unwind label %bb.z

._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge: ; preds = %bb.m
  %.pre32 = load ptr, ptr %i.ar, align 8, !tbaa !70
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge, %bb.l
  %i.ba = phi ptr [ %.pre32, %._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge ], [ %i.as, %bb.l ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48 ; 2 uses
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !115 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !42
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !45 ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 3 uses
  %i.bk = ashr exact i64 %i.bj, 4
  %i.bl = add nsw i64 %i.bk, -2                   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 56 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !350 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 64 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !290
  %.not.i18 = icmp eq ptr %i.bn, %i.bp
  br i1 %.not.i18, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !288
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bq, ptr %i.bm, align 8, !tbaa !350
  br label %_ZNSt6vectorIlSaIlEE12emplace_backIJmEEERlDpOT_.exit

bb.o:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.br = load ptr, ptr %i.bb, align 8, !tbaa !289 ; 4 uses
  %i.bs = ptrtoint ptr %i.bn to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 6 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775800
  br i1 %i.bv, label %bb.p, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #31
          to label %.noexc20.a unwind label %bb.aa

.noexc20.a:                                       ; preds = %bb.p
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.bw = ashr exact i64 %i.bu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %i.bx = add nsw i64 %.sroa.speculated.i.i.i, %i.bw ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.bw
  %i.bz = call i64 @llvm.umin.i64(i64 %i.bx, i64 1152921504606846975)
  %i.ca = select i1 %i.by, i64 1152921504606846975, i64 %i.bz ; 2 uses
  %i.cb = shl nuw nsw i64 %i.ca, 3
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #29
          to label %.noexc21 unwind label %bb.aa  ; 4 uses

.noexc21:                                         ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 %i.bu ; 2 uses
  store i64 %i.bl, ptr %i.cd, align 8, !tbaa !288
  %i.ce = icmp sgt i64 %i.bu, 0
  br i1 %i.ce, label %bb.q, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

bb.q:                                             ; preds = %.noexc21
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cc, ptr align 8 %i.br, i64 %i.bu, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i: ; preds = %bb.q, %.noexc21
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.not.i17.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bu) #30
  %.pre33.pre.a = load ptr, ptr %i.c, align 8, !tbaa !115 ; 2 uses
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre33.pre.a, i64 48
  %.pre34.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !42
  %.phi.trans.insert35.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre33.pre.a, i64 40
  %.pre36.pre = load ptr, ptr %.phi.trans.insert35.phi.trans.insert, align 8, !tbaa !45 ; 2 uses
  %.pre45.a = ptrtoint ptr %.pre34.pre to i64
  %.pre46.a = ptrtoint ptr %.pre36.pre to i64
  %.pre47 = sub i64 %.pre45.a, %.pre46.a
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  %.pre43.pre-phi = phi i64 [ %.pre47, %bb.r ], [ %i.bj, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i ]
  %.pre36 = phi ptr [ %.pre36.pre, %bb.r ], [ %i.bg, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i ]
  store ptr %i.cc, ptr %i.bb, align 8, !tbaa !289
  store ptr %i.cf, ptr %i.bm, align 8, !tbaa !350
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ca
  store ptr %i.cg, ptr %i.bo, align 8, !tbaa !290
  br label %_ZNSt6vectorIlSaIlEE12emplace_backIJmEEERlDpOT_.exit

_ZNSt6vectorIlSaIlEE12emplace_backIJmEEERlDpOT_.exit: ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, %bb.n
  %.pre-phi44 = phi i64 [ %.pre43.pre-phi, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.bj, %bb.n ]
  %i.ch = phi ptr [ %.pre36, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.bg, %bb.n ]
  %i.ci = icmp ugt i64 %.pre-phi44, 32
  br i1 %i.ci, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit, %_ZNSt6vectorIlSaIlEE12emplace_backIJmEEERlDpOT_.exit
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !1607
  %i.cj = load ptr, ptr %i.z, align 8, !tbaa !118 ; 8 uses
  %.not.i.i22 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i22, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  %i.cl = load atomic i64, ptr %i.ck acquire, align 8 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 4294967297
  %i.cn = trunc i64 %i.cl to i32                  ; 2 uses
  br i1 %i.cm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.ck, align 8, !tbaa !125
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 0, ptr %i.co, align 4, !tbaa !127
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !55
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #28, !inline_history !300
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !55
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #28, !inline_history !300
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26

bb.u:                                             ; preds = %bb.s
  %i.cv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i23 = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i.i23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cw = add nsw i32 %i.cn, -1
  store i32 %i.cw, ptr %i.ck, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

bb.w:                                             ; preds = %bb.u
  %i.cx = atomicrmw volatile add ptr %i.ck, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i25 = phi i32 [ %i.cn, %bb.v ], [ %i.cx, %bb.w ]
  %i.cy = icmp eq i32 %.0.i.i.i.i25, 1
  br i1 %i.cy, label %bb.x, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26, !prof !129

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26: ; preds = %._crit_edge, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %bb.m
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i, %bb.p
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %_ZNSt6vectorIlSaIlEE12emplace_backIJmEEERlDpOT_.exit, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit
  %i.dc = phi ptr [ %i.dz, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ], [ %i.ch, %_ZNSt6vectorIlSaIlEE12emplace_backIJmEEERlDpOT_.exit ]
  %.031 = phi i64 [ %i.du, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ], [ 2, %_ZNSt6vectorIlSaIlEE12emplace_backIJmEEERlDpOT_.exit ] ; 2 uses
  %i.dd = load ptr, ptr %i.ar, align 8, !tbaa !70 ; 3 uses
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %.031 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 32 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !42 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !299
  %.not.i27 = icmp eq ptr %i.dg, %i.di
  br i1 %.not.i27, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !118 ; 2 uses
  %i.dl = load <2 x ptr>, ptr %i.de, align 8, !tbaa !119
  store <2 x ptr> %i.dl, ptr %i.dg, align 8, !tbaa !119
  %.not.i.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !3
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %i.dm, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.dq = atomicrmw volatile add ptr %i.dm, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i28 = load ptr, ptr %i.df, align 8, !tbaa !42
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i

_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i: ; preds = %bb.ae, %bb.ad, %bb.ab
  %i.dr = phi ptr [ %i.dg, %bb.ab ], [ %i.dg, %bb.ad ], [ %.pre.i28, %bb.ae ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store ptr %i.ds, ptr %i.df, align 8, !tbaa !42
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

bb.af:                                            ; preds = %.lr.ph
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.de)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit unwind label %bb.ag

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit: ; preds = %bb.af, %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i
  %i.du = add nuw i64 %.031, 1                    ; 2 uses
  %i.dv = load ptr, ptr %i.c, align 8, !tbaa !115 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !42
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !45 ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 4
  %i.ee = icmp ult i64 %i.du, %i.ed
  br i1 %i.ee, label %.lr.ph, label %._crit_edge, !llvm.loop !1610

bb.ag:                                            ; preds = %bb.af
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.z, %bb.aa, %bb.ag, %bb.y, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i
  %.sink = phi ptr [ %4, %bb.y ], [ %4, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i ], [ %3, %bb.ag ], [ %3, %bb.aa ], [ %3, %bb.z ]
  %.pn.pn = phi { ptr, i32 } [ %i.cz, %bb.y ], [ %i.y, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i ], [ %i.ef, %bb.ag ], [ %i.db, %bb.aa ], [ %i.da, %bb.z ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %.sink) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrIS1_ERKlSA_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !125
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !127
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_4
begin_hunk_5_@_ZN5arrow3ipc8internal17PayloadFileWriter12WritePayloadERKNS0_10IpcPayloadE:bb.a
  store i64 %i.c, ptr %8, align 8, !tbaa !1970
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !1972
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !284
  store i64 %i.g, ptr %i.e, align 8, !tbaa !1973
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !323  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !1974
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33, !noalias !1974
  call void @_ZN5arrow3ipc12WriteMessageERKNS_6BufferERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamEPi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(60) %i.a, ptr noundef %i.i, ptr noundef nonnull %i.d), !noalias !1974
  %i.l = load ptr, ptr %5, align 8, !tbaa !39, !noalias !1974 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1974
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.preheader.i, label %.critedge

.preheader.i:                                     ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42, !noalias !1974
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !45, !noalias !1974 ; 2 uses
  %.not67.i = icmp eq ptr %i.p, %i.q
  br i1 %.not67.i, label %_ZN5arrow6StatusD2Ev.exit21, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.critedge44.i
  %i.r = phi ptr [ %i.an, %.critedge44.i ], [ %i.q, %.preheader.i ]
  %.03466.i = phi i64 [ %i.al, %.critedge44.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.03466.i ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33, !noalias !1974 ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %.critedge44.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !46, !noalias !1974 ; 3 uses
  %i.w = add i64 %i.v, 7
  %i.x = and i64 %i.w, -8
  %i.y = sub nsw i64 %i.x, %i.v                   ; 2 uses
  %i.z = icmp sgt i64 %i.v, 0
  br i1 %i.z, label %_ZN5arrow6StatusD2Ev.exit50.i, label %_ZN5arrow6StatusD2Ev.exit54.i

_ZN5arrow6StatusD2Ev.exit50.i:                    ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !1974
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !55, !noalias !1974
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !1974
  call void %i.ac(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.s), !noalias !1974, !inline_history !297
  %i.ad = load ptr, ptr %6, align 8, !tbaa !39, !noalias !1974 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !1974
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN5arrow6StatusD2Ev.exit54.i, label %.critedge

_ZN5arrow6StatusD2Ev.exit54.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit50.i, %bb.b
  %i.af = icmp sgt i64 %i.y, 0
  br i1 %i.af, label %_ZN5arrow6StatusD2Ev.exit56.i, label %.critedge44.i

_ZN5arrow6StatusD2Ev.exit56.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit54.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !1974
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !55, !noalias !1974
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !1974
  call void %i.ai(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @_ZN5arrow3ipcL13kPaddingBytesE, i64 noundef %i.y), !noalias !1974, !inline_history !297
  %i.aj = load ptr, ptr %7, align 8, !tbaa !39, !noalias !1974 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !1974
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.critedge44.i, label %.critedge

.critedge44.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit56.i, %_ZN5arrow6StatusD2Ev.exit54.i, %.lr.ph.i
  %i.al = add nuw i64 %.03466.i, 1                ; 2 uses
  %i.am = load ptr, ptr %i.o, align 8, !tbaa !42, !noalias !1974
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !45, !noalias !1974 ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 4
  %i.as = icmp ult i64 %i.al, %i.ar
  br i1 %i.as, label %.lr.ph.i, label %_ZN5arrow6StatusD2Ev.exit21, !llvm.loop !57

_ZN5arrow6StatusD2Ev.exit21:                      ; preds = %.critedge44.i, %.preheader.i
  store ptr null, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !1977
  call void @llvm.experimental.noalias.scope.decl(metadata !1980)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !1983
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !323, !noalias !1983 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !55, !noalias !1983
  %i.av = getelementptr i8, ptr %i.au, i64 -24
  %i.aw = load i64, ptr %i.av, align 8, !noalias !1983
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %i.aw ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !55, !noalias !1983
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !1983
  call void %i.ba(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.451") align 8 %3, ptr noundef nonnull align 8 dereferenceable(28) %i.ax), !noalias !1983, !inline_history !1918
  call void @llvm.experimental.noalias.scope.decl(metadata !1984)
  %i.bb = load ptr, ptr %3, align 8, !tbaa !39, !noalias !1987
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_ZN5arrow6StatusD2Ev.exit8.thread.i, label %_ZNO5arrow6ResultIlE6statusEv.exit.i.i.i

_ZNO5arrow6ResultIlE6statusEv.exit.i.i.i:         ; preds = %_ZN5arrow6StatusD2Ev.exit21
  call void @llvm.experimental.noalias.scope.decl(metadata !1988)
  invoke void @_ZN5arrow8internal19UninitializedResultEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4)
          to label %bb.c unwind label %bb.f, !noalias !1977

_ZN5arrow6StatusD2Ev.exit8.thread.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit21
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !288, !noalias !1987
  store i64 %i.be, ptr %i.b, align 8, !tbaa !288, !noalias !1987
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !1983
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1977
  br label %_ZN5arrow6StatusD2Ev.exit27

bb.c:                                             ; preds = %_ZNO5arrow6ResultIlE6statusEv.exit.i.i.i
  %i.bf = load ptr, ptr %3, align 8, !tbaa !39, !noalias !1991 ; 3 uses
  %i.bg = load ptr, ptr %4, align 8, !tbaa !39, !alias.scope !1992, !noalias !1977 ; 3 uses
  store ptr %i.bg, ptr %3, align 8, !tbaa !39, !noalias !1991
  store ptr %i.bf, ptr %4, align 8, !tbaa !39, !alias.scope !1993, !noalias !1977
  %.not.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d, !prof !1929

bb.d:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !257, !range !187, !noalias !1977, !noundef !183
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #28, !noalias !1977
  %.pr.pre.i = load ptr, ptr %4, align 8, !tbaa !39, !noalias !1977
  br label %_ZN5arrow6StatusD2Ev.exit.i

bb.f:                                             ; preds = %_ZNO5arrow6ResultIlE6statusEv.exit.i.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %3, align 8, !tbaa !39, !noalias !1983 ; 2 uses
  %.not.i.i2.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i2.i.i, label %_ZN5arrow6ResultIlED2Ev.exit3.i.i, label %bb.g, !prof !256

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !257, !range !187, !noalias !1977, !noundef !183
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %_ZN5arrow6ResultIlED2Ev.exit3.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #28, !noalias !1977
  br label %_ZN5arrow6ResultIlED2Ev.exit3.i.i

_ZN5arrow6ResultIlED2Ev.exit3.i.i:                ; preds = %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !1983
  resume { ptr, i32 } %i.bk

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.e, %bb.d, %bb.c
  %i.bp = phi ptr [ %i.bf, %bb.c ], [ %.pr.pre.i, %bb.e ], [ %i.bf, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !1983
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1977
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_ZN5arrow6StatusD2Ev.exit27, label %.critedge

_ZN5arrow6StatusD2Ev.exit27:                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit8.thread.i
  %i.br = load i32, ptr %2, align 8, !tbaa !59
  switch i32 %i.br, label %.critedge [
    i32 2, label %bb.i
    i32 3, label %bb.o
  ]

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit27
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1994 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1947
  %.not.i28 = icmp eq ptr %i.bu, %i.bw
  br i1 %.not.i28, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !1995
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !1994
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store ptr %i.by, ptr %i.bt, align 8, !tbaa !1994
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.bz = load ptr, ptr %i.bs, align 8, !tbaa !1944 ; 4 uses
  %i.ca = ptrtoint ptr %i.bu to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 6 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775800
  br i1 %i.cd, label %bb.l, label %_ZNKSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #31
  unreachable

_ZNKSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.ce = sdiv exact i64 %i.cc, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ce, i64 1)
  %i.cf = add nsw i64 %.sroa.speculated.i.i.i, %i.ce ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  %i.ch = call i64 @llvm.umin.i64(i64 %i.cf, i64 384307168202282325)
  %i.ci = select i1 %i.cg, i64 384307168202282325, i64 %i.ch ; 2 uses
  %i.cj = mul nuw nsw i64 %i.ci, 24
  %i.ck = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #29 ; 4 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 %i.cc ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !1995
  %i.cm = icmp sgt i64 %i.cc, 0
  br i1 %i.cm, label %bb.m, label %_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ck, ptr align 8 %i.bz, i64 %i.cc, i1 false)
  br label %_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %.not.i17.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cc) #30
  br label %_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.ck, ptr %i.bs, align 8, !tbaa !1944
  store ptr %i.cn, ptr %i.bt, align 8, !tbaa !1994
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.co, ptr %i.bv, align 8, !tbaa !1947
  br label %.critedge

bb.o:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit27
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 4 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1994 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !1947
  %.not.i29 = icmp eq ptr %i.cr, %i.ct
  br i1 %.not.i29, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !1995
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !1994
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store ptr %i.cv, ptr %i.cq, align 8, !tbaa !1994
  br label %.critedge

bb.q:                                             ; preds = %bb.o
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !1944 ; 4 uses
  %i.cx = ptrtoint ptr %i.cr to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 6 uses
  %i.da = icmp eq i64 %i.cz, 9223372036854775800
  br i1 %i.da, label %bb.r, label %_ZNKSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i30

bb.r:                                             ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #31
  unreachable

_ZNKSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i30: ; preds = %bb.q
  %i.db = sdiv exact i64 %i.cz, 24                ; 3 uses
  %.sroa.speculated.i.i.i31 = call i64 @llvm.umax.i64(i64 %i.db, i64 1)
  %i.dc = add nsw i64 %.sroa.speculated.i.i.i31, %i.db ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.db
  %i.de = call i64 @llvm.umin.i64(i64 %i.dc, i64 384307168202282325)
  %i.df = select i1 %i.dd, i64 384307168202282325, i64 %i.de ; 2 uses
  %i.dg = mul nuw nsw i64 %i.df, 24
  %i.dh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #29 ; 4 uses
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 %i.cz ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !1995
  %i.dj = icmp sgt i64 %i.cz, 0
  br i1 %i.dj, label %bb.s, label %_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i33

bb.s:                                             ; preds = %_ZNKSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i30
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dh, ptr align 8 %i.cw, i64 %i.cz, i1 false)
  br label %_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i33

_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i33: ; preds = %bb.s, %_ZNKSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i30
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %.not.i17.i.i34 = icmp eq ptr %i.cw, null
  br i1 %.not.i17.i.i34, label %_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i35, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i33
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.cz) #30
  br label %_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i35

_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i35: ; preds = %bb.t, %_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i33
  store ptr %i.dh, ptr %i.cp, align 8, !tbaa !1944
  store ptr %i.dk, ptr %i.cq, align 8, !tbaa !1994
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.dh, i64 %i.df
  store ptr %i.dl, ptr %i.cs, align 8, !tbaa !1947
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit56.i, %_ZN5arrow6StatusD2Ev.exit50.i, %_ZN5arrow6StatusD2Ev.exit27, %bb.j, %_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.p, %_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i35, %_ZN5arrow6StatusD2Ev.exit.i, %bb.a
  %.sink = phi ptr [ null, %bb.j ], [ %i.bp, %_ZN5arrow6StatusD2Ev.exit.i ], [ %i.l, %bb.a ], [ null, %_ZN5arrow6StatusD2Ev.exit27 ], [ null, %_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i35 ], [ null, %bb.p ], [ null, %_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.aj, %_ZN5arrow6StatusD2Ev.exit56.i ], [ %i.ad, %_ZN5arrow6StatusD2Ev.exit50.i ]
  store ptr %.sink, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow3ipc8internal17PayloadFileWriter5CloseEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %4 = alloca %"class.arrow::Result.451", align 8 ; 12 uses
  %5 = alloca %"class.arrow::Result.451", align 8 ; 12 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !1996
  store i32 0, ptr %i.a, align 4, !tbaa !3, !noalias !1996
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i8, ptr %i.c, align 4, !tbaa !1933, !range !187, !noalias !1996, !noundef !183
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !1999
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !323, !noalias !1999 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55, !noalias !1999
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !noalias !1999
  call void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @_ZN5arrow3ipc8internalL21kIpcContinuationTokenE, i64 noundef 4), !noalias !1999, !inline_history !1937
  %i.k = load ptr, ptr %7, align 8, !tbaa !39, !noalias !1999 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !1999
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit8.i, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit8.i:                     ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !328, !noalias !1999
  %i.o = add nsw i64 %i.n, 4
  store i64 %i.o, ptr %i.m, align 8, !tbaa !328, !noalias !1999
  br label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit8.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !2002
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 6 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !323, !noalias !2002 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !55, !noalias !2002
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !2002
  call void %i.t(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.a, i64 noundef 4), !noalias !2002, !inline_history !1937
  %i.u = load ptr, ptr %6, align 8, !tbaa !39, !noalias !2002 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !2002
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !1996
  store ptr %i.u, ptr %0, align 8, !tbaa !39
  br label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !1996
  store ptr %i.k, ptr %0, align 8, !tbaa !39
  br label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 10 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !328, !noalias !2002
  %i.y = add nsw i64 %i.x, 4
  store i64 %i.y, ptr %i.w, align 8, !tbaa !328, !noalias !2002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !1996
  store ptr null, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2005)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !2005
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !323, !noalias !2005 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !55, !noalias !2005
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !2005
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %i.ac ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !55, !noalias !2005
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !2005
  call void %i.ag(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.451") align 8 %5, ptr noundef nonnull align 8 dereferenceable(28) %i.ad), !noalias !2005, !inline_history !1951
  call void @llvm.experimental.noalias.scope.decl(metadata !2008)
  %i.ah = load ptr, ptr %5, align 8, !tbaa !39, !noalias !2011
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZN5arrow6StatusD2Ev.exit41.thread, label %_ZNO5arrow6ResultIlE6statusEv.exit.i.i

_ZNO5arrow6ResultIlE6statusEv.exit.i.i:           ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !2012)
  invoke void @_ZN5arrow8internal19UninitializedResultEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8)
          to label %bb.e unwind label %bb.h

_ZN5arrow6StatusD2Ev.exit41.thread:               ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !288, !noalias !2011 ; 2 uses
  store i64 %i.ak, ptr %i.w, align 8, !tbaa !288, !noalias !2011
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !2005
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZN5arrow6StatusD2Ev.exit43

bb.e:                                             ; preds = %_ZNO5arrow6ResultIlE6statusEv.exit.i.i
  %i.al = load ptr, ptr %5, align 8, !tbaa !39, !noalias !2015 ; 3 uses
  %i.am = load ptr, ptr %8, align 8, !tbaa !39, !alias.scope !2015 ; 3 uses
  store ptr %i.am, ptr %5, align 8, !tbaa !39, !noalias !2015
  store ptr %i.al, ptr %8, align 8, !tbaa !39, !alias.scope !2011
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit37, label %bb.f, !prof !1929

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !257, !range !187, !noundef !183
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %_ZN5arrow6StatusD2Ev.exit37, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  %.pr.pre = load ptr, ptr %8, align 8, !tbaa !39
  br label %_ZN5arrow6StatusD2Ev.exit37

bb.h:                                             ; preds = %_ZNO5arrow6ResultIlE6statusEv.exit.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %5, align 8, !tbaa !39, !noalias !2005 ; 2 uses
  %.not.i.i2.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i2.i, label %_ZN5arrow6ResultIlED2Ev.exit3.i, label %bb.i, !prof !256

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !257, !range !187, !noundef !183
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZN5arrow6ResultIlED2Ev.exit3.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  br label %_ZN5arrow6ResultIlED2Ev.exit3.i

common.resume:                                    ; preds = %_ZN5arrow6ResultIlED2Ev.exit3.i50, %_ZN5arrow6ResultIlED2Ev.exit3.i
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %_ZN5arrow6ResultIlED2Ev.exit3.i ], [ %i.bx, %_ZN5arrow6ResultIlED2Ev.exit3.i50 ]
  resume { ptr, i32 } %common.resume.op

_ZN5arrow6ResultIlED2Ev.exit3.i:                  ; preds = %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !2005
  br label %common.resume

_ZN5arrow6StatusD2Ev.exit37:                      ; preds = %bb.f, %bb.g, %bb.e
  %i.av = phi ptr [ %i.al, %bb.e ], [ %.pr.pre, %bb.g ], [ %i.al, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !2005
  store ptr %i.av, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN5arrow6StatusD2Ev.exit37._ZN5arrow6StatusD2Ev.exit43_crit_edge, label %.critedge

_ZN5arrow6StatusD2Ev.exit37._ZN5arrow6StatusD2Ev.exit43_crit_edge: ; preds = %_ZN5arrow6StatusD2Ev.exit37
  %.pre = load i64, ptr %i.w, align 8, !tbaa !328
  br label %_ZN5arrow6StatusD2Ev.exit43

_ZN5arrow6StatusD2Ev.exit43:                      ; preds = %_ZN5arrow6StatusD2Ev.exit37._ZN5arrow6StatusD2Ev.exit43_crit_edge, %_ZN5arrow6StatusD2Ev.exit41.thread
  %i.ax = phi i64 [ %.pre, %_ZN5arrow6StatusD2Ev.exit37._ZN5arrow6StatusD2Ev.exit43_crit_edge ], [ %i.ak, %_ZN5arrow6StatusD2Ev.exit41.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !135
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !323
end_hunk_5
