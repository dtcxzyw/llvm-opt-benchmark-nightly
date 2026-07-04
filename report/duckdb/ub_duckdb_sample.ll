inline.NumInlined: 1843
inline.NumDeleted: 893
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6duckdb25ReservoirSamplePercentage14AddToReservoirERNS_9DataChunkE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %common.resume

bb.r:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb9DataChunk7FlattenEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  store i64 %i.j, ptr %i.a, align 8, !tbaa !103
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15ReservoirSampleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !141
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(88) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.s

bb.s:                                             ; preds = %bb.l, %bb.r, %bb.b
  %.not43 = icmp eq i64 %i.j, %i.m                ; 2 uses
  br i1 %.not43, label %bb.ad, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.n)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.preheader unwind label %bb.u

_ZN6duckdb15SelectionVectorC2Em.exit.preheader:   ; preds = %bb.t
  %i.ai = icmp ult i64 %i.m, %i.j
  br i1 %i.ai, label %.lr.ph, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge

.lr.ph:                                           ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  %i.aj = load ptr, ptr %4, align 8, !tbaa !137   ; 2 uses
  %i.ak = add i64 %i.i, %i.j
  %i.al = add i64 %i.ak, -100000                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.al, 8
  br i1 %min.iters.check, label %_ZN6duckdb15SelectionVectorC2Em.exit.preheader80, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.al, -8                      ; 3 uses
  %i.am = add i64 %i.m, %n.vec
  %i.an = trunc i64 %i.m to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.an, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <4 x i32> %vec.ind, ptr %i.ao, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.ap, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !323

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, label %_ZN6duckdb15SelectionVectorC2Em.exit.preheader80

_ZN6duckdb15SelectionVectorC2Em.exit.preheader80: ; preds = %.lr.ph, %middle.block
  %.050.ph = phi i64 [ %i.m, %.lr.ph ], [ %i.am, %middle.block ]
  br label %_ZN6duckdb15SelectionVectorC2Em.exit

common.resume:                                    ; preds = %bb.q, %bb.ac, %bb.ai, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.u ], [ %i.dl, %bb.ai ], [ %i.bn, %bb.ac ], [ %.pn41, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.u:                                             ; preds = %bb.t
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ah) #29
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge:  ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit, %middle.block, %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  invoke void @_ZN6duckdb9DataChunk5SliceERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.n)
          to label %bb.v unwind label %bb.ac

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.preheader80, %_ZN6duckdb15SelectionVectorC2Em.exit
  %.050 = phi i64 [ %i.av, %_ZN6duckdb15SelectionVectorC2Em.exit ], [ %.050.ph, %_ZN6duckdb15SelectionVectorC2Em.exit.preheader80 ] ; 3 uses
  %i.as = sub nuw i64 %.050, %i.m
  %i.at = trunc i64 %.050 to i32
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.as
  store i32 %i.at, ptr %i.au, align 4, !tbaa !3
  %i.av = add nuw i64 %.050, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, %i.j
  br i1 %exitcond.not, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, label %_ZN6duckdb15SelectionVectorC2Em.exit, !llvm.loop !324

bb.v:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !135 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.ay, align 8, !tbaa !138
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !140
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !141
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #29, !inline_history !145
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !141
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #29, !inline_history !145
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i = phi i32 [ %i.bb, %bb.z ], [ %i.bl, %bb.aa ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bm, label %bb.ab, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !40

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #29
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.v, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.ad

bb.ac:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %common.resume

bb.ad:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit, %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !313 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !325
  %.not.i.i = icmp eq ptr %i.br, %i.bt
  br i1 %.not.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bu = load i64, ptr %i.bp, align 8, !tbaa !184
  store i64 %i.bu, ptr %i.br, align 8, !tbaa !184
  store ptr null, ptr %i.bp, align 8, !tbaa !184
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bv, ptr %i.bq, align 8, !tbaa !313
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.af:                                            ; preds = %bb.ad
  %i.bw = load ptr, ptr %i.bo, align 8, !tbaa !312 ; 10 uses
  %i.bx = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.by = ptrtoint ptr %i.bw to i64               ; 3 uses
  %i.bz = sub i64 %i.bx, %i.by                    ; 3 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775800
  br i1 %i.ca, label %bb.ag, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #30
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.af
  %i.cb = ashr exact i64 %i.bz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cb, i64 1)
  %i.cc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cb ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.cb
  %i.ce = call i64 @llvm.umin.i64(i64 %i.cc, i64 1152921504606846975)
  %i.cf = select i1 %i.cd, i64 1152921504606846975, i64 %i.ce ; 3 uses
  %.not.i.i.i.i47 = icmp ne i64 %i.cf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i47)
  %i.cg = shl nuw nsw i64 %i.cf, 3
  %i.ch = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #27 ; 10 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bz
  %i.cj = load i64, ptr %i.bp, align 8, !tbaa !184
  store i64 %i.cj, ptr %i.ci, align 8, !tbaa !184
  store ptr null, ptr %i.bp, align 8, !tbaa !184
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bw, %i.br
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %5 = sub i64 %i.bx, %i.by
  %6 = add i64 %5, -8                             ; 2 uses
  %i.ck = lshr i64 %6, 3
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check66 = icmp ult i64 %6, 152
  br i1 %min.iters.check66, label %.lr.ph.i.i.i.i.i.i.i.preheader79, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.cm = add i64 %i.bx, -8
  %i.cn = sub i64 %i.cm, %i.by
  %i.co = and i64 %i.cn, -8
  %i.cp = add i64 %i.co, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ch, i64 %i.cp
  %scevgep64 = getelementptr i8, ptr %i.bw, i64 %i.cp
  %bound0 = icmp ult ptr %i.ch, %scevgep64
  %bound1 = icmp ult ptr %i.bw, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader79, label %vector.ph67

vector.ph67:                                      ; preds = %vector.memcheck
  %n.vec69 = and i64 %i.cl, 4611686018427387900   ; 3 uses
  %i.cq = shl i64 %n.vec69, 3                     ; 2 uses
  %i.cr = getelementptr i8, ptr %i.ch, i64 %i.cq  ; 2 uses
  %i.cs = getelementptr i8, ptr %i.bw, i64 %i.cq
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph67
  %index71 = phi i64 [ 0, %vector.ph67 ], [ %index.next74, %vector.body70 ] ; 2 uses
  %i.ct = shl i64 %index71, 3                     ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ch, i64 %i.ct ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.bw, i64 %i.ct ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.cu = getelementptr i8, ptr %next.gep72, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep72, align 8, !tbaa !184, !alias.scope !331, !noalias !326
  %wide.load73 = load <2 x i64>, ptr %i.cu, align 8, !tbaa !184, !alias.scope !331, !noalias !326
  %i.cv = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !184, !alias.scope !334, !noalias !331
  store <2 x i64> %wide.load73, ptr %i.cv, align 8, !tbaa !184, !alias.scope !334, !noalias !331
  %i.cw = getelementptr i8, ptr %next.gep72, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep72, align 8, !tbaa !184, !alias.scope !331, !noalias !326
  store <2 x ptr> splat (ptr null), ptr %i.cw, align 8, !tbaa !184, !alias.scope !331, !noalias !326
  %index.next74 = add nuw i64 %index71, 4         ; 2 uses
  %i.cx = icmp eq i64 %index.next74, %n.vec69
  br i1 %i.cx, label %middle.block75, label %vector.body70, !llvm.loop !336

middle.block75:                                   ; preds = %vector.body70
  %cmp.n76 = icmp eq i64 %i.cl, %n.vec69
  br i1 %cmp.n76, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader79

.lr.ph.i.i.i.i.i.i.i.preheader79:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block75
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ch, %vector.memcheck ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cr, %middle.block75 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bw, %vector.memcheck ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cs, %middle.block75 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader79, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader79 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader79 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.cy = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !184, !alias.scope !329, !noalias !326
  store i64 %i.cy, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !184, !alias.scope !326, !noalias !329
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !184, !alias.scope !329, !noalias !326
  %i.cz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cz, %i.br
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !337

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block75, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ch, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cr, %middle.block75 ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i ]
  %i.db = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bw) #28
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.ah, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ch, ptr %i.bo, align 8, !tbaa !312
  store ptr %i.db, ptr %i.bq, align 8, !tbaa !313
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cf
  store ptr %i.dc, ptr %i.bs, align 8, !tbaa !325
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.ae, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !338, !nonnull !165, !align !175
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dg = call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.dh = call noundef i32 @_ZN6duckdb12RandomEngine17NextRandomIntegerEv(ptr noundef nonnull align 8 dereferenceable(48) %i.dg)
  %i.di = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #27, !noalias !339 ; 3 uses
  %i.dj = load i64, ptr %i.df, align 8, !tbaa !46, !noalias !339
  %i.dk = zext i32 %i.dh to i64
  invoke void @_ZN6duckdb15ReservoirSampleC1ERNS_9AllocatorEml(ptr noundef nonnull align 8 dereferenceable(88) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %i.de, i64 noundef %i.dj, i64 noundef %i.dk)
          to label %_ZN6duckdb9make_uniqINS_15ReservoirSampleEJRNS_9AllocatorERmjEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.ai, !noalias !339

bb.ai:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.di) #28, !noalias !339
  br label %common.resume

_ZN6duckdb9make_uniqINS_15ReservoirSampleEJRNS_9AllocatorERmjEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.dm = load ptr, ptr %i.bp, align 8, !tbaa !184 ; 3 uses
  store ptr %i.di, ptr %i.bp, align 8, !tbaa !184
  %.not.i.i.i.i.i48 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i.i48, label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_15ReservoirSampleEJRNS_9AllocatorERmjEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !141
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(88) %i.dm) #29, !inline_history !311
  br label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i.i.i.i.i, %_ZN6duckdb9make_uniqINS_15ReservoirSampleEJRNS_9AllocatorERmjEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  br i1 %.not43, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit
  %i.dq = call noundef ptr @_ZNK6duckdb10unique_ptrINS_15ReservoirSampleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !141
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(88) %i.dq, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit
  store i64 %i.n, ptr %i.h, align 8, !tbaa !322
  br label %bb.am

bb.al:                                            ; preds = %bb.a
  store i64 %i.k, ptr %i.h, align 8, !tbaa !322
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dv = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15ReservoirSampleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.du) ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !141
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  tail call void %i.dy(ptr noundef nonnull align 8 dereferenceable(88) %i.dv, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  ret void
}

declare void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #4

declare void @_ZN6duckdb9DataChunk15InitializeEmptyERKNS_6vectorINS_11LogicalTypeELb1ESaIS2_EEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv() local_unnamed_addr #4

declare void @_ZN6duckdb9DataChunk7FlattenEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #1

declare void @_ZN6duckdb9DataChunk5SliceERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25ReservoirSamplePercentage8GetChunkEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.56") align 8 %0, ptr noundef nonnull align 8 dereferenceable(89) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load i8, ptr %i.a, align 8, !tbaa !342, !range !164, !noundef !165
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !141
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(89) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !343
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !343
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ReservoirSampleESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  %i.m = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15ReservoirSampleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !141
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.56") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %i.m)
  %i.q = load ptr, ptr %0, align 8, !tbaa !172
  %.not15 = icmp eq ptr %i.q, null
  br i1 %.not15, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.r = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !103
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit.thread13

end_hunk_0
begin_hunk_1_@_ZNK6duckdb25ReservoirSamplePercentage4CopyEv:.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #29
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn7 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn8, %bb.c ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn7

bb.e:                                             ; preds = %bb.a
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25ReservoirSamplePercentage8FinalizeEv(ptr noundef nonnull align 8 dereferenceable(89) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::unique_ptr.86", align 8 ; 10 uses
  %2 = alloca %"class.duckdb::unique_ptr.56", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !322  ; 2 uses
  %i.c = uitofp i64 %i.b to double                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load double, ptr %i.d, align 8, !tbaa !292 ; 2 uses
  %i.f = fmul double %i.e, 1.000000e+05
  %i.g = fcmp olt double %i.f, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 6 uses
  %i.l = icmp eq ptr %i.i, %i.k                   ; 2 uses
  %i.m = select i1 %i.g, i1 true, i1 %i.l
  %i.n = icmp ne i64 %i.b, 0
  %or.cond = and i1 %i.n, %i.m
  br i1 %or.cond, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.o = fmul double %i.e, %i.c
  %i.p = tail call double @llvm.round.f64(double %i.o)
  %i.q = fptoui double %i.p to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !338, !nonnull !165, !align !175
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  %i.v = tail call noundef i32 @_ZN6duckdb12RandomEngine17NextRandomIntegerEv(ptr noundef nonnull align 8 dereferenceable(48) %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.w = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #27, !noalias !349 ; 3 uses
  %i.x = zext i32 %i.v to i64
  invoke void @_ZN6duckdb15ReservoirSampleC1ERNS_9AllocatorEml(ptr noundef nonnull align 8 dereferenceable(88) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.q, i64 noundef %i.x)
          to label %_ZN6duckdb9make_uniqINS_15ReservoirSampleEJRNS_9AllocatorERmjEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !349

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit15, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.c ], [ %.pn9, %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit15 ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.w) #28, !noalias !349
  br label %common.resume

_ZN6duckdb9make_uniqINS_15ReservoirSampleEJRNS_9AllocatorERmjEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  store ptr %i.w, ptr %1, align 8, !tbaa !184, !alias.scope !349
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit, %_ZN6duckdb9make_uniqINS_15ReservoirSampleEJRNS_9AllocatorERmjEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.aa = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ReservoirSampleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %bb.e unwind label %bb.i       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !141
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.56") align 8 %2, ptr noundef nonnull align 8 dereferenceable(88) %i.aa)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %2, align 8, !tbaa !172
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit.thread, label %bb.g

_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.af = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !103
  %.not41 = icmp eq i64 %i.ah, 0                  ; 2 uses
  br i1 %.not41, label %bb.n, label %bb.k

bb.i:                                             ; preds = %bb.e, %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.j:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #29
  br label %bb.o

bb.k:                                             ; preds = %bb.h
  %i.ak = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ReservoirSampleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.l unwind label %bb.j       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.al = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.m unwind label %bb.j

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !141
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(88) %i.ak, ptr noundef nonnull align 8 dereferenceable(72) %i.al)
          to label %bb.n unwind label %bb.j

bb.n:                                             ; preds = %bb.m, %bb.h
  %.pr = load ptr, ptr %2, align 8, !tbaa !172    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i: ; preds = %bb.n
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %.pr) #29
  call void @_ZdlPv(ptr noundef nonnull %.pr) #28
  br label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.n, %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.not41, label %.loopexit, label %bb.d

bb.o:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %i.ai, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.t

.loopexit:                                        ; preds = %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit.thread
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !313 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !325
  %.not.i.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i.i, label %bb.p, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %.loopexit
  %i.as = load i64, ptr %1, align 8, !tbaa !184
  store i64 %i.as, ptr %i.ap, align 8, !tbaa !184
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.at, ptr %i.j, align 8, !tbaa !313
  br label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit

bb.p:                                             ; preds = %.loopexit
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !312 ; 10 uses
  %i.av = ptrtoint ptr %i.ap to i64               ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64               ; 3 uses
  %i.ax = sub i64 %i.av, %i.aw                    ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775800
  br i1 %i.ay, label %bb.q, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #30
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.q
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.az = ashr exact i64 %i.ax, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.ba = add nsw i64 %.sroa.speculated.i.i.i.i, %i.az ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.az
  %i.bc = call i64 @llvm.umin.i64(i64 %i.ba, i64 1152921504606846975)
  %i.bd = select i1 %i.bb, i64 1152921504606846975, i64 %i.bc ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #27
          to label %.noexc11 unwind label %bb.s   ; 10 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ax
  %i.bh = load i64, ptr %1, align 8, !tbaa !184
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !184
  store ptr null, ptr %1, align 8, !tbaa !184
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.au, %i.ap
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc11
  %3 = sub i64 %i.av, %i.aw
  %4 = add i64 %3, -8                             ; 2 uses
  %i.bi = lshr i64 %4, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check66 = icmp ult i64 %4, 152
  br i1 %min.iters.check66, label %.lr.ph.i.i.i.i.i.i.i.preheader81, label %vector.memcheck59

vector.memcheck59:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bk = add i64 %i.av, -8
  %i.bl = sub i64 %i.bk, %i.aw
  %i.bm = and i64 %i.bl, -8
  %i.bn = add i64 %i.bm, 8                        ; 2 uses
  %scevgep60 = getelementptr i8, ptr %i.bf, i64 %i.bn
  %scevgep61 = getelementptr i8, ptr %i.au, i64 %i.bn
  %bound062 = icmp ult ptr %i.bf, %scevgep61
  %bound163 = icmp ult ptr %i.au, %scevgep60
  %found.conflict64 = and i1 %bound062, %bound163
  br i1 %found.conflict64, label %.lr.ph.i.i.i.i.i.i.i.preheader81, label %vector.ph67

vector.ph67:                                      ; preds = %vector.memcheck59
  %n.vec69 = and i64 %i.bj, 4611686018427387900   ; 3 uses
  %i.bo = shl i64 %n.vec69, 3                     ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bf, i64 %i.bo  ; 2 uses
  %i.bq = getelementptr i8, ptr %i.au, i64 %i.bo
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph67
  %index71 = phi i64 [ 0, %vector.ph67 ], [ %index.next76, %vector.body70 ] ; 2 uses
  %i.br = shl i64 %index71, 3                     ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.bf, i64 %i.br ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.au, i64 %i.br ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.bs = getelementptr i8, ptr %next.gep73, i64 16
  %wide.load74 = load <2 x i64>, ptr %next.gep73, align 8, !tbaa !184, !alias.scope !357, !noalias !352
  %wide.load75 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !184, !alias.scope !357, !noalias !352
  %i.bt = getelementptr i8, ptr %next.gep72, i64 16
  store <2 x i64> %wide.load74, ptr %next.gep72, align 8, !tbaa !184, !alias.scope !360, !noalias !357
  store <2 x i64> %wide.load75, ptr %i.bt, align 8, !tbaa !184, !alias.scope !360, !noalias !357
  %i.bu = getelementptr i8, ptr %next.gep73, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep73, align 8, !tbaa !184, !alias.scope !357, !noalias !352
  store <2 x ptr> splat (ptr null), ptr %i.bu, align 8, !tbaa !184, !alias.scope !357, !noalias !352
  %index.next76 = add nuw i64 %index71, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next76, %n.vec69
  br i1 %i.bv, label %middle.block77, label %vector.body70, !llvm.loop !362

middle.block77:                                   ; preds = %vector.body70
  %cmp.n78 = icmp eq i64 %i.bj, %n.vec69
  br i1 %cmp.n78, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader81

.lr.ph.i.i.i.i.i.i.i.preheader81:                 ; preds = %vector.memcheck59, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block77
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bf, %vector.memcheck59 ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bp, %middle.block77 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.au, %vector.memcheck59 ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bq, %middle.block77 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader81, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader81 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader81 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.bw = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !184, !alias.scope !355, !noalias !352
  store i64 %i.bw, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !184, !alias.scope !352, !noalias !355
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !184, !alias.scope !355, !noalias !352
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !363

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block77, %.noexc11
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bf, %.noexc11 ], [ %i.bp, %middle.block77 ], [ %i.by, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.au) #28
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.r
  store ptr %i.bf, ptr %i.h, align 8, !tbaa !312
  store ptr %i.bz, ptr %i.j, align 8, !tbaa !313
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd
  store ptr %i.ca, ptr %i.aq, align 8, !tbaa !325
  %.pr39 = load ptr, ptr %1, align 8, !tbaa !184  ; 3 uses
  %.not.i12 = icmp eq ptr %.pr39, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.cb = load ptr, ptr %.pr39, align 8, !tbaa !141
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(88) %.pr39) #29, !inline_history !189
  br label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit29

bb.s:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.q
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o
  %.pn9 = phi { ptr, i32 } [ %i.ce, %bb.s ], [ %.pn, %bb.o ]
  %i.cf = load ptr, ptr %1, align 8, !tbaa !184   ; 3 uses
  %.not.i13 = icmp eq ptr %i.cf, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit15, label %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i14

_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i14: ; preds = %bb.t
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !141
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(88) %i.cf) #29, !inline_history !189
  br label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit15

_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit15: ; preds = %bb.t, %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %common.resume

bb.u:                                             ; preds = %bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !325
  %.not.i.i16 = icmp eq ptr %i.k, %i.cl
  br i1 %.not.i.i16, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cm = load i64, ptr %i.cj, align 8, !tbaa !184
  store i64 %i.cm, ptr %i.k, align 8, !tbaa !184
  store ptr null, ptr %i.cj, align 8, !tbaa !184
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.cn, ptr %i.j, align 8, !tbaa !313
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit29

bb.w:                                             ; preds = %bb.u
  %i.co = ptrtoint ptr %i.k to i64                ; 3 uses
  %i.cp = ptrtoint ptr %i.i to i64                ; 3 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 3 uses
  %i.cr = icmp eq i64 %i.cq, 9223372036854775800
  br i1 %i.cr, label %bb.x, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i17

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #30
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i17: ; preds = %bb.w
  %i.cs = ashr exact i64 %i.cq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i18 = tail call i64 @llvm.umax.i64(i64 %i.cs, i64 1)
  %i.ct = add nsw i64 %.sroa.speculated.i.i.i.i18, %i.cs ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cs
  %i.cv = tail call i64 @llvm.umin.i64(i64 %i.ct, i64 1152921504606846975)
  %i.cw = select i1 %i.cu, i64 1152921504606846975, i64 %i.cv ; 3 uses
  %.not.i.i.i.i19 = icmp ne i64 %i.cw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i19)
  %i.cx = shl nuw nsw i64 %i.cw, 3
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #27 ; 10 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cq
  %i.da = load i64, ptr %i.cj, align 8, !tbaa !184
  store i64 %i.da, ptr %i.cz, align 8, !tbaa !184
  store ptr null, ptr %i.cj, align 8, !tbaa !184
  br i1 %i.l, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i25, label %.lr.ph.i.i.i.i.i.i.i21.preheader

.lr.ph.i.i.i.i.i.i.i21.preheader:                 ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i17
  %5 = sub i64 %i.co, %i.cp
  %6 = add i64 %5, -8                             ; 2 uses
  %i.db = lshr i64 %6, 3
  %i.dc = add nuw nsw i64 %i.db, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i21.preheader82, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i21.preheader
  %i.dd = add i64 %i.co, -8
  %i.de = sub i64 %i.dd, %i.cp
  %i.df = and i64 %i.de, -8
  %i.dg = add i64 %i.df, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cy, i64 %i.dg
  %scevgep55 = getelementptr i8, ptr %i.i, i64 %i.dg
  %bound0 = icmp ult ptr %i.cy, %scevgep55
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i21.preheader82, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dc, 4611686018427387900     ; 3 uses
  %i.dh = shl i64 %n.vec, 3                       ; 2 uses
  %i.di = getelementptr i8, ptr %i.cy, i64 %i.dh  ; 2 uses
  %i.dj = getelementptr i8, ptr %i.i, i64 %i.dh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cy, i64 %i.dk ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.i, i64 %i.dk ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.dl = getelementptr i8, ptr %next.gep56, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep56, align 8, !tbaa !184, !alias.scope !369, !noalias !364
  %wide.load57 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !184, !alias.scope !369, !noalias !364
  %i.dm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !184, !alias.scope !372, !noalias !369
  store <2 x i64> %wide.load57, ptr %i.dm, align 8, !tbaa !184, !alias.scope !372, !noalias !369
  %i.dn = getelementptr i8, ptr %next.gep56, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep56, align 8, !tbaa !184, !alias.scope !369, !noalias !364
  store <2 x ptr> splat (ptr null), ptr %i.dn, align 8, !tbaa !184, !alias.scope !369, !noalias !364
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !374

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i25, label %.lr.ph.i.i.i.i.i.i.i21.preheader82

.lr.ph.i.i.i.i.i.i.i21.preheader82:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i21.preheader, %middle.block
  %.012.i.i.i.i.i.i.i22.ph = phi ptr [ %i.cy, %vector.memcheck ], [ %i.cy, %.lr.ph.i.i.i.i.i.i.i21.preheader ], [ %i.di, %middle.block ]
  %.0911.i.i.i.i.i.i.i23.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.i.i.i21.preheader ], [ %i.dj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i21

.lr.ph.i.i.i.i.i.i.i21:                           ; preds = %.lr.ph.i.i.i.i.i.i.i21.preheader82, %.lr.ph.i.i.i.i.i.i.i21
  %.012.i.i.i.i.i.i.i22 = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i.i.i21 ], [ %.012.i.i.i.i.i.i.i22.ph, %.lr.ph.i.i.i.i.i.i.i21.preheader82 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i23 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i.i21 ], [ %.0911.i.i.i.i.i.i.i23.ph, %.lr.ph.i.i.i.i.i.i.i21.preheader82 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.dp = load i64, ptr %.0911.i.i.i.i.i.i.i23, align 8, !tbaa !184, !alias.scope !367, !noalias !364
  store i64 %i.dp, ptr %.012.i.i.i.i.i.i.i22, align 8, !tbaa !184, !alias.scope !364, !noalias !367
  store ptr null, ptr %.0911.i.i.i.i.i.i.i23, align 8, !tbaa !184, !alias.scope !367, !noalias !364
  %i.dq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i23, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i22, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i24 = icmp eq ptr %i.dq, %i.k
  br i1 %.not.i.i.i.i.i.i.i24, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i25, label %.lr.ph.i.i.i.i.i.i.i21, !llvm.loop !375

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i25: ; preds = %.lr.ph.i.i.i.i.i.i.i21, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i17
  %.0.lcssa.i.i.i.i.i.i.i26 = phi ptr [ %i.cy, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i17 ], [ %i.di, %middle.block ], [ %i.dr, %.lr.ph.i.i.i.i.i.i.i21 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i26, i64 8
  %.not.i23.i.i.i27 = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i.i27, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i28, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i25
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #28
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i28

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i28: ; preds = %bb.y, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i25
  store ptr %i.cy, ptr %i.h, align 8, !tbaa !312
  store ptr %i.ds, ptr %i.j, align 8, !tbaa !313
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cw
  store ptr %i.dt, ptr %i.ck, align 8, !tbaa !325
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit29

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit29: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i28, %bb.v, %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !184 ; 3 uses
  store ptr null, ptr %i.du, align 8, !tbaa !184
  %.not.i.i.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit32, label %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit29
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !141
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(88) %i.dv) #29, !inline_history !311
  br label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit32

_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit32: ; preds = %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i.i.i.i.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit29
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.dz, align 8, !tbaa !342
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb14BlockingSampleD2Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6duckdb14BlockingSampleE, i64 16), ptr %0, align 8, !tbaa !141
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb21BaseReservoirSamplingESt14default_deleteIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb21BaseReservoirSamplingEEclEPS1_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #28
  br label %_ZNKSt14default_deleteIN6duckdb21BaseReservoirSamplingEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb21BaseReservoirSamplingEEclEPS1_.exit.i: ; preds = %bb.c, %bb.b
  tail call void @_ZN6duckdb12RandomEngineD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.b) #29
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #28
  br label %_ZNSt10unique_ptrIN6duckdb21BaseReservoirSamplingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb21BaseReservoirSamplingESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb21BaseReservoirSamplingEEclEPS1_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb14BlockingSampleD0Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #31
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

declare void @_ZNK6duckdb14BlockingSample9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(18), ptr noundef nonnull align 1) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb15ReservoirSampleD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6duckdb15ReservoirSampleE, i64 16), ptr %0, align 8, !tbaa !141
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !138
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !140
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !141
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !145
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !141
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !145
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !40

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !93   ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb14ReservoirChunkESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14ReservoirChunkEEclEPS1_.exit.i
end_hunk_1
begin_hunk_2_@_ZN6duckdb15ReservoirSampleD2Ev:bb.a
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb21BaseReservoirSamplingEEclEPS1_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPv(ptr noundef nonnull %i.w) #28, !inline_history !376
  br label %_ZNKSt14default_deleteIN6duckdb21BaseReservoirSamplingEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb21BaseReservoirSamplingEEclEPS1_.exit.i.i: ; preds = %bb.i, %bb.h
  tail call void @_ZN6duckdb12RandomEngineD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.u) #29, !inline_history !376
  tail call void @_ZdlPv(ptr noundef nonnull %i.u) #28, !inline_history !376
  br label %_ZN6duckdb14BlockingSampleD2Ev.exit

_ZN6duckdb14BlockingSampleD2Ev.exit:              ; preds = %_ZNSt10unique_ptrIN6duckdb14ReservoirChunkESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb21BaseReservoirSamplingEEclEPS1_.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb15ReservoirSampleD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb15ReservoirSampleD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #29
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

declare void @_ZNK6duckdb15ReservoirSample9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 1) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb25ReservoirSamplePercentageD2Ev(ptr noundef nonnull align 8 dereferenceable(89) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6duckdb25ReservoirSamplePercentageE, i64 16), ptr %0, align 8, !tbaa !141
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !313  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !184 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(88) %i.e) #29, !inline_history !377
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !315

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !312
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #28
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !184  ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !141
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(88) %i.l) #29, !inline_history !189
  br label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6duckdb14BlockingSampleE, i64 16), ptr %0, align 8, !tbaa !141
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !10   ; 4 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZN6duckdb14BlockingSampleD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !45   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb21BaseReservoirSamplingEEclEPS1_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #28, !inline_history !376
  br label %_ZNKSt14default_deleteIN6duckdb21BaseReservoirSamplingEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb21BaseReservoirSamplingEEclEPS1_.exit.i.i: ; preds = %bb.d, %bb.c
  tail call void @_ZN6duckdb12RandomEngineD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.q) #29, !inline_history !376
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #28, !inline_history !376
  br label %_ZN6duckdb14BlockingSampleD2Ev.exit

_ZN6duckdb14BlockingSampleD2Ev.exit:              ; preds = %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb21BaseReservoirSamplingEEclEPS1_.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb25ReservoirSamplePercentageD0Ev(ptr noundef nonnull align 8 dereferenceable(89) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6duckdb25ReservoirSamplePercentageE, i64 16), ptr %0, align 8, !tbaa !141
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !313  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !184 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(88) %i.e) #29, !inline_history !378
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !315

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !312
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.j = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #28, !inline_history !379
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !184  ; 3 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !141
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(88) %i.l) #29, !inline_history !380
  br label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6duckdb14BlockingSampleE, i64 16), ptr %0, align 8, !tbaa !141
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !10   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZN6duckdb25ReservoirSamplePercentageD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !45   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb21BaseReservoirSamplingEEclEPS1_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #28, !inline_history !381
  br label %_ZNKSt14default_deleteIN6duckdb21BaseReservoirSamplingEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb21BaseReservoirSamplingEEclEPS1_.exit.i.i.i: ; preds = %bb.d, %bb.c
  tail call void @_ZN6duckdb12RandomEngineD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.q) #29, !inline_history !381
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #28, !inline_history !381
  br label %_ZN6duckdb25ReservoirSamplePercentageD2Ev.exit

_ZN6duckdb25ReservoirSamplePercentageD2Ev.exit:   ; preds = %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb21BaseReservoirSamplingEEclEPS1_.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

declare void @_ZNK6duckdb25ReservoirSamplePercentage9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(89), ptr noundef nonnull align 1) unnamed_addr #4

declare void @_ZN6duckdb12RandomEngineC2El(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIdmESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !45     ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.j = load ptr, ptr %0, align 8, !tbaa !45     ; 11 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE11_M_allocateEm.exit.i, !prof !40

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 4 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt4pairIdmESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE11_M_allocateEm.exit.i
  %i.q = add i64 %i.d, -16
  %i.r = sub i64 %i.q, %i.e
  %i.s = and i64 %i.r, -16
  %i.t = add i64 %i.s, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 8 %i.c, i64 %i.t, i1 false)
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorISt4pairIdmESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #28
  br label %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.u, ptr %i.h, align 8, !tbaa !55
  br label %_ZSt22__uninitialized_copy_aIPSt4pairIdmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !54   ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.l                       ; 3 uses
  %.not24 = icmp ult i64 %i.y, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp sgt i64 %i.g, 0
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIPSt4pairIdmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %xtraiter = and i64 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.012.i.i.i.i.i.prol = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.prol = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.prol = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.prol ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.aa = load double, ptr %.0910.i.i.i.i.i.prol, align 8, !tbaa !48
  store double %i.aa, ptr %.0811.i.i.i.i.i.prol, align 8, !tbaa !48
  %i.ab = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.prol, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !50
  %i.ad = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ag = add nsw i64 %.012.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !382

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.unr = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.i.prol ]
  %i.ah = icmp ult i64 %i.g, 4
  br i1 %i.ah, label %_ZSt22__uninitialized_copy_aIPSt4pairIdmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ai = load double, ptr %.0910.i.i.i.i.i, align 8, !tbaa !48
  store double %i.ai, ptr %.0811.i.i.i.i.i, align 8, !tbaa !48
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !50
  %i.al = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !50
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.ao = load double, ptr %i.am, align 8, !tbaa !48
  store double %i.ao, ptr %i.an, align 8, !tbaa !48
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !50
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !50
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.au = load double, ptr %i.as, align 8, !tbaa !48
  store double %i.au, ptr %i.at, align 8, !tbaa !48
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !50
  %i.ax = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !50
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  %i.ba = load double, ptr %i.ay, align 8, !tbaa !48
  store double %i.ba, ptr %i.az, align 8, !tbaa !48
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 56
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !50
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !50
  %i.be = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64
  %i.bg = add nsw i64 %.012.i.i.i.i.i, -4
  %i.bh = icmp sgt i64 %.012.i.i.i.i.i, 4
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIdmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, !llvm.loop !383

bb.h:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.bj = ashr exact i64 %i.y, 4                  ; 5 uses
  %i.bk = icmp sgt i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIPSt4pairIdmES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.h
  %xtraiter44 = and i64 %i.bj, 3                  ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i26.prol:                          ; preds = %.lr.ph.i.i.i.i.i26.preheader, %.lr.ph.i.i.i.i.i26.prol
  %.012.i.i.i.i.i27.prol = phi i64 [ %i.br, %.lr.ph.i.i.i.i.i26.prol ], [ %i.bj, %.lr.ph.i.i.i.i.i26.preheader ]
  %.0811.i.i.i.i.i28.prol = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i26.prol ], [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ] ; 3 uses
  %.0910.i.i.i.i.i29.prol = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i26.prol ], [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ] ; 3 uses
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i.i.i26.prol ], [ 0, %.lr.ph.i.i.i.i.i26.preheader ]
  %i.bl = load double, ptr %.0910.i.i.i.i.i29.prol, align 8, !tbaa !48
  store double %i.bl, ptr %.0811.i.i.i.i.i28.prol, align 8, !tbaa !48
  %i.bm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29.prol, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28.prol, i64 8
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !50
  %i.bp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29.prol, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28.prol, i64 16 ; 2 uses
  %i.br = add nsw i64 %.012.i.i.i.i.i27.prol, -1  ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i26.prol, !llvm.loop !384

.lr.ph.i.i.i.i.i26.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i26.prol, %.lr.ph.i.i.i.i.i26.preheader
  %.012.i.i.i.i.i27.unr = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.br, %.lr.ph.i.i.i.i.i26.prol ]
  %.0811.i.i.i.i.i28.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bq, %.lr.ph.i.i.i.i.i26.prol ]
  %.0910.i.i.i.i.i29.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bp, %.lr.ph.i.i.i.i.i26.prol ]
  %i.bs = icmp ult i64 %i.bj, 4
  br i1 %i.bs, label %_ZSt4copyIPSt4pairIdmES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i26
  %.012.i.i.i.i.i27 = phi i64 [ %i.cr, %.lr.ph.i.i.i.i.i26 ], [ %.012.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i28 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i26 ], [ %.0811.i.i.i.i.i28.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i29 = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i26 ], [ %.0910.i.i.i.i.i29.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 9 uses
  %i.bt = load double, ptr %.0910.i.i.i.i.i29, align 8, !tbaa !48
  store double %i.bt, ptr %.0811.i.i.i.i.i28, align 8, !tbaa !48
  %i.bu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !50
  %i.bw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 8
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !50
  %i.bx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 16
  %i.bz = load double, ptr %i.bx, align 8, !tbaa !48
  store double %i.bz, ptr %i.by, align 8, !tbaa !48
  %i.ca = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 24
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !50
  %i.cc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 24
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !50
  %i.cd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 32
  %i.cf = load double, ptr %i.cd, align 8, !tbaa !48
  store double %i.cf, ptr %i.ce, align 8, !tbaa !48
  %i.cg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !50
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 40
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !50
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 48
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 48
  %i.cl = load double, ptr %i.cj, align 8, !tbaa !48
  store double %i.cl, ptr %i.ck, align 8, !tbaa !48
  %i.cm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 56
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !50
  %i.co = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 56
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !50
  %i.cp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 64
  %i.cq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 64
  %i.cr = add nsw i64 %.012.i.i.i.i.i27, -4
  %i.cs = icmp sgt i64 %.012.i.i.i.i.i27, 4
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIPSt4pairIdmES2_ET0_T_S4_S3_.exit, !llvm.loop !385

_ZSt4copyIPSt4pairIdmES2_ET0_T_S4_S3_.exit:       ; preds = %.lr.ph.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i26, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.bi, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIdmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPSt4pairIdmES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i ], [ %i.w, %_ZSt4copyIPSt4pairIdmES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i ], [ %i.bi, %_ZSt4copyIPSt4pairIdmES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.ct, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIdmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !386

_ZSt22__uninitialized_copy_aIPSt4pairIdmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !45
  br label %_ZSt22__uninitialized_copy_aIPSt4pairIdmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPSt4pairIdmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_copy_aIPSt4pairIdmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPSt4pairIdmES2_ET0_T_S4_S3_.exit, %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.cv = phi ptr [ %i.p, %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPSt4pairIdmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIPSt4pairIdmES2_ET0_T_S4_S3_.exit ], [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.f
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !54
  br label %bb.i
end_hunk_2
