inline.NumInlined: 1843
inline.NumDeleted: 893
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6duckdb25ReservoirSamplePercentage14AddToReservoirERNS_9DataChunkE:bb.a
bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6duckdb9DataChunk7FlattenEv(ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ReservoirSampleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.k unwind label %bb.p       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !141
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(88) %i.v, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.s

bb.m:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.n ], [ %i.z, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.q

bb.p:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn41 = phi { ptr, i32 } [ %i.ab, %bb.p ], [ %.pn, %bb.o ]
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #29
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
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.u ], [ %i.dn, %bb.ai ], [ %i.bn, %bb.ac ], [ %.pn41, %bb.q ]
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
  %i.ck = sub i64 %i.bx, %i.by
  %i.cl = add i64 %i.ck, -8                       ; 2 uses
  %i.cm = lshr i64 %i.cl, 3
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check66 = icmp ult i64 %i.cl, 152
  br i1 %min.iters.check66, label %.lr.ph.i.i.i.i.i.i.i.preheader79, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.co = add i64 %i.bx, -8
  %i.cp = sub i64 %i.co, %i.by
  %i.cq = and i64 %i.cp, -8
  %i.cr = add i64 %i.cq, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ch, i64 %i.cr
  %scevgep64 = getelementptr i8, ptr %i.bw, i64 %i.cr
  %bound0 = icmp ult ptr %i.ch, %scevgep64
  %bound1 = icmp ult ptr %i.bw, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader79, label %vector.ph67

vector.ph67:                                      ; preds = %vector.memcheck
  %n.vec69 = and i64 %i.cn, 4611686018427387900   ; 3 uses
  %i.cs = shl i64 %n.vec69, 3                     ; 2 uses
  %i.ct = getelementptr i8, ptr %i.ch, i64 %i.cs  ; 2 uses
  %i.cu = getelementptr i8, ptr %i.bw, i64 %i.cs
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph67
  %index71 = phi i64 [ 0, %vector.ph67 ], [ %index.next74, %vector.body70 ] ; 2 uses
  %i.cv = shl i64 %index71, 3                     ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ch, i64 %i.cv ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.bw, i64 %i.cv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.cw = getelementptr i8, ptr %next.gep72, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep72, align 8, !tbaa !184, !alias.scope !331, !noalias !326
  %wide.load73 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !184, !alias.scope !331, !noalias !326
  %i.cx = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !184, !alias.scope !334, !noalias !331
  store <2 x i64> %wide.load73, ptr %i.cx, align 8, !tbaa !184, !alias.scope !334, !noalias !331
  %i.cy = getelementptr i8, ptr %next.gep72, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep72, align 8, !tbaa !184, !alias.scope !331, !noalias !326
  store <2 x ptr> splat (ptr null), ptr %i.cy, align 8, !tbaa !184, !alias.scope !331, !noalias !326
  %index.next74 = add nuw i64 %index71, 4         ; 2 uses
  %i.cz = icmp eq i64 %index.next74, %n.vec69
  br i1 %i.cz, label %middle.block75, label %vector.body70, !llvm.loop !336

middle.block75:                                   ; preds = %vector.body70
  %cmp.n76 = icmp eq i64 %i.cn, %n.vec69
  br i1 %cmp.n76, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader79

.lr.ph.i.i.i.i.i.i.i.preheader79:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block75
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ch, %vector.memcheck ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ct, %middle.block75 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bw, %vector.memcheck ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cu, %middle.block75 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader79, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader79 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader79 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.da = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !184, !alias.scope !329, !noalias !326
  store i64 %i.da, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !184, !alias.scope !326, !noalias !329
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !184, !alias.scope !329, !noalias !326
  %i.db = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.db, %i.br
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !337

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block75, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ch, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ct, %middle.block75 ], [ %i.dc, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bw) #28
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.ah, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ch, ptr %i.bo, align 8, !tbaa !312
  store ptr %i.dd, ptr %i.bq, align 8, !tbaa !313
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cf
  store ptr %i.de, ptr %i.bs, align 8, !tbaa !325
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.ae, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !338, !nonnull !165, !align !175
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.di = call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.dj = call noundef i32 @_ZN6duckdb12RandomEngine17NextRandomIntegerEv(ptr noundef nonnull align 8 dereferenceable(48) %i.di)
  %i.dk = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #27, !noalias !339 ; 3 uses
  %i.dl = load i64, ptr %i.dh, align 8, !tbaa !46, !noalias !339
  %i.dm = zext i32 %i.dj to i64
  invoke void @_ZN6duckdb15ReservoirSampleC1ERNS_9AllocatorEml(ptr noundef nonnull align 8 dereferenceable(88) %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %i.dg, i64 noundef %i.dl, i64 noundef %i.dm)
          to label %_ZN6duckdb9make_uniqINS_15ReservoirSampleEJRNS_9AllocatorERmjEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.ai, !noalias !339

bb.ai:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.dk) #28, !noalias !339
  br label %common.resume

_ZN6duckdb9make_uniqINS_15ReservoirSampleEJRNS_9AllocatorERmjEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.do = load ptr, ptr %i.bp, align 8, !tbaa !184 ; 3 uses
  store ptr %i.dk, ptr %i.bp, align 8, !tbaa !184
  %.not.i.i.i.i.i48 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i.i48, label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_15ReservoirSampleEJRNS_9AllocatorERmjEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !141
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(88) %i.do) #29, !inline_history !311
  br label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i.i.i.i.i, %_ZN6duckdb9make_uniqINS_15ReservoirSampleEJRNS_9AllocatorERmjEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  br i1 %.not43, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit
  %i.ds = call noundef ptr @_ZNK6duckdb10unique_ptrINS_15ReservoirSampleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !141
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(88) %i.ds, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit
  store i64 %i.n, ptr %i.h, align 8, !tbaa !322
  br label %bb.am

bb.al:                                            ; preds = %bb.a
  store i64 %i.k, ptr %i.h, align 8, !tbaa !322
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dx = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15ReservoirSampleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dw) ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !141
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  tail call void %i.ea(ptr noundef nonnull align 8 dereferenceable(88) %i.dx, ptr noundef nonnull align 8 dereferenceable(72) %1)
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
begin_hunk_1_@_ZN6duckdb25ReservoirSamplePercentage8GetChunkEv:bb.a
_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS2_15ReservoirSampleESt14default_deleteIS4_ELb1EEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS2_15ReservoirSampleESt14default_deleteIS4_ELb1EEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.loopexit.i.i, %bb.h, %bb.g
  %i.am = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS2_15ReservoirSampleESt14default_deleteIS4_ELb1EEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.loopexit.i.i ], [ %i.x, %bb.h ], [ %i.x, %bb.g ]
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8 ; 2 uses
  store ptr %i.an, ptr %i.h, align 8, !tbaa !313
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !184 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %bb.i, label %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS2_15ReservoirSampleESt14default_deleteIS4_ELb1EEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !141
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(88) %i.ao) #29, !inline_history !346
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS2_15ReservoirSampleESt14default_deleteIS4_ELb1EEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i
  %i.as = load ptr, ptr %0, align 8, !tbaa !172   ; 3 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i: ; preds = %bb.i
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.as) #29
  tail call void @_ZdlPv(ptr noundef nonnull %i.as) #28
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i, %bb.i
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !343
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !343
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !166
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit.thread13

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit.thread13: ; preds = %bb.e, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ReservoirSampleESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.52", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !313  ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !312    ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.a, align 8, !tbaa !46
  store i64 %i.i, ptr %i.b, align 8, !tbaa !46
  %.not.i.i.not = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.not, label %bb.b, label %_ZN6duckdb6vectorINS_10unique_ptrINS_15ReservoirSampleESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !41     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10unique_ptrINS_15ReservoirSampleESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.e
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZNK6duckdb25ReservoirSamplePercentage4CopyEv(ptr dead_on_unwind noalias nofree readnone sret(%"class.duckdb::unique_ptr.77") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 46, ptr %i.a, align 8, !tbaa !46
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %2, align 8, !tbaa !41
  %i.e = load i64, ptr %i.a, align 8, !tbaa !46   ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(46) %i.d, ptr noundef nonnull align 1 dereferenceable(46) @.str.2, i64 46, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !348
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !41     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.j) #28
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
  %i.bi = sub i64 %i.av, %i.aw
  %i.bj = add i64 %i.bi, -8                       ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check66 = icmp ult i64 %i.bj, 152
  br i1 %min.iters.check66, label %.lr.ph.i.i.i.i.i.i.i.preheader81, label %vector.memcheck59

vector.memcheck59:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bm = add i64 %i.av, -8
  %i.bn = sub i64 %i.bm, %i.aw
  %i.bo = and i64 %i.bn, -8
  %i.bp = add i64 %i.bo, 8                        ; 2 uses
  %scevgep60 = getelementptr i8, ptr %i.bf, i64 %i.bp
  %scevgep61 = getelementptr i8, ptr %i.au, i64 %i.bp
  %bound062 = icmp ult ptr %i.bf, %scevgep61
  %bound163 = icmp ult ptr %i.au, %scevgep60
  %found.conflict64 = and i1 %bound062, %bound163
  br i1 %found.conflict64, label %.lr.ph.i.i.i.i.i.i.i.preheader81, label %vector.ph67

vector.ph67:                                      ; preds = %vector.memcheck59
  %n.vec69 = and i64 %i.bl, 4611686018427387900   ; 3 uses
  %i.bq = shl i64 %n.vec69, 3                     ; 2 uses
  %i.br = getelementptr i8, ptr %i.bf, i64 %i.bq  ; 2 uses
  %i.bs = getelementptr i8, ptr %i.au, i64 %i.bq
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph67
  %index71 = phi i64 [ 0, %vector.ph67 ], [ %index.next76, %vector.body70 ] ; 2 uses
  %i.bt = shl i64 %index71, 3                     ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.bf, i64 %i.bt ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.au, i64 %i.bt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.bu = getelementptr i8, ptr %next.gep73, i64 16
  %wide.load74 = load <2 x i64>, ptr %next.gep73, align 8, !tbaa !184, !alias.scope !357, !noalias !352
  %wide.load75 = load <2 x i64>, ptr %i.bu, align 8, !tbaa !184, !alias.scope !357, !noalias !352
  %i.bv = getelementptr i8, ptr %next.gep72, i64 16
  store <2 x i64> %wide.load74, ptr %next.gep72, align 8, !tbaa !184, !alias.scope !360, !noalias !357
  store <2 x i64> %wide.load75, ptr %i.bv, align 8, !tbaa !184, !alias.scope !360, !noalias !357
  %i.bw = getelementptr i8, ptr %next.gep73, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep73, align 8, !tbaa !184, !alias.scope !357, !noalias !352
  store <2 x ptr> splat (ptr null), ptr %i.bw, align 8, !tbaa !184, !alias.scope !357, !noalias !352
  %index.next76 = add nuw i64 %index71, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next76, %n.vec69
  br i1 %i.bx, label %middle.block77, label %vector.body70, !llvm.loop !362

middle.block77:                                   ; preds = %vector.body70
  %cmp.n78 = icmp eq i64 %i.bl, %n.vec69
  br i1 %cmp.n78, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader81

.lr.ph.i.i.i.i.i.i.i.preheader81:                 ; preds = %vector.memcheck59, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block77
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bf, %vector.memcheck59 ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.br, %middle.block77 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.au, %vector.memcheck59 ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bs, %middle.block77 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader81, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader81 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader81 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.by = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !184, !alias.scope !355, !noalias !352
  store i64 %i.by, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !184, !alias.scope !352, !noalias !355
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !184, !alias.scope !355, !noalias !352
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bz, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !363

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block77, %.noexc11
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bf, %.noexc11 ], [ %i.br, %middle.block77 ], [ %i.ca, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.au) #28
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.r
  store ptr %i.bf, ptr %i.h, align 8, !tbaa !312
  store ptr %i.cb, ptr %i.j, align 8, !tbaa !313
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd
  store ptr %i.cc, ptr %i.aq, align 8, !tbaa !325
  %.pr39 = load ptr, ptr %1, align 8, !tbaa !184  ; 3 uses
  %.not.i12 = icmp eq ptr %.pr39, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.cd = load ptr, ptr %.pr39, align 8, !tbaa !141
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(88) %.pr39) #29, !inline_history !189
  br label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit29

bb.s:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.q
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o
  %.pn9 = phi { ptr, i32 } [ %i.cg, %bb.s ], [ %.pn, %bb.o ]
  %i.ch = load ptr, ptr %1, align 8, !tbaa !184   ; 3 uses
  %.not.i13 = icmp eq ptr %i.ch, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit15, label %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i14

_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i14: ; preds = %bb.t
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !141
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(88) %i.ch) #29, !inline_history !189
  br label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit15

_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit15: ; preds = %bb.t, %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %common.resume

bb.u:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !325
  %.not.i.i16 = icmp eq ptr %i.k, %i.cn
  br i1 %.not.i.i16, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = load i64, ptr %i.cl, align 8, !tbaa !184
  store i64 %i.co, ptr %i.k, align 8, !tbaa !184
  store ptr null, ptr %i.cl, align 8, !tbaa !184
  %i.cp = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.cp, ptr %i.j, align 8, !tbaa !313
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit29

bb.w:                                             ; preds = %bb.u
  %i.cq = ptrtoint ptr %i.k to i64                ; 3 uses
  %i.cr = ptrtoint ptr %i.i to i64                ; 3 uses
  %i.cs = sub i64 %i.cq, %i.cr                    ; 3 uses
  %i.ct = icmp eq i64 %i.cs, 9223372036854775800
  br i1 %i.ct, label %bb.x, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i17

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #30
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i17: ; preds = %bb.w
  %i.cu = ashr exact i64 %i.cs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i18 = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 1)
  %i.cv = add nsw i64 %.sroa.speculated.i.i.i.i18, %i.cu ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cu
  %i.cx = tail call i64 @llvm.umin.i64(i64 %i.cv, i64 1152921504606846975)
  %i.cy = select i1 %i.cw, i64 1152921504606846975, i64 %i.cx ; 3 uses
  %.not.i.i.i.i19 = icmp ne i64 %i.cy, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i19)
  %i.cz = shl nuw nsw i64 %i.cy, 3
  %i.da = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #27 ; 10 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cs
  %i.dc = load i64, ptr %i.cl, align 8, !tbaa !184
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !184
  store ptr null, ptr %i.cl, align 8, !tbaa !184
  br i1 %i.l, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i25, label %.lr.ph.i.i.i.i.i.i.i21.preheader

.lr.ph.i.i.i.i.i.i.i21.preheader:                 ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i17
  %i.dd = sub i64 %i.cq, %i.cr
  %i.de = add i64 %i.dd, -8                       ; 2 uses
  %i.df = lshr i64 %i.de, 3
  %i.dg = add nuw nsw i64 %i.df, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.de, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i21.preheader82, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i21.preheader
  %i.dh = add i64 %i.cq, -8
  %i.di = sub i64 %i.dh, %i.cr
  %i.dj = and i64 %i.di, -8
  %i.dk = add i64 %i.dj, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.da, i64 %i.dk
  %scevgep55 = getelementptr i8, ptr %i.i, i64 %i.dk
  %bound0 = icmp ult ptr %i.da, %scevgep55
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i21.preheader82, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dg, 4611686018427387900     ; 3 uses
  %i.dl = shl i64 %n.vec, 3                       ; 2 uses
  %i.dm = getelementptr i8, ptr %i.da, i64 %i.dl  ; 2 uses
  %i.dn = getelementptr i8, ptr %i.i, i64 %i.dl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.do = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.da, i64 %i.do ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.i, i64 %i.do ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.dp = getelementptr i8, ptr %next.gep56, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep56, align 8, !tbaa !184, !alias.scope !369, !noalias !364
  %wide.load57 = load <2 x i64>, ptr %i.dp, align 8, !tbaa !184, !alias.scope !369, !noalias !364
  %i.dq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !184, !alias.scope !372, !noalias !369
  store <2 x i64> %wide.load57, ptr %i.dq, align 8, !tbaa !184, !alias.scope !372, !noalias !369
  %i.dr = getelementptr i8, ptr %next.gep56, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep56, align 8, !tbaa !184, !alias.scope !369, !noalias !364
  store <2 x ptr> splat (ptr null), ptr %i.dr, align 8, !tbaa !184, !alias.scope !369, !noalias !364
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !374

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dg, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i25, label %.lr.ph.i.i.i.i.i.i.i21.preheader82

.lr.ph.i.i.i.i.i.i.i21.preheader82:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i21.preheader, %middle.block
  %.012.i.i.i.i.i.i.i22.ph = phi ptr [ %i.da, %vector.memcheck ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i21.preheader ], [ %i.dm, %middle.block ]
  %.0911.i.i.i.i.i.i.i23.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.i.i.i21.preheader ], [ %i.dn, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i21

.lr.ph.i.i.i.i.i.i.i21:                           ; preds = %.lr.ph.i.i.i.i.i.i.i21.preheader82, %.lr.ph.i.i.i.i.i.i.i21
  %.012.i.i.i.i.i.i.i22 = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i.i21 ], [ %.012.i.i.i.i.i.i.i22.ph, %.lr.ph.i.i.i.i.i.i.i21.preheader82 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i23 = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i.i.i21 ], [ %.0911.i.i.i.i.i.i.i23.ph, %.lr.ph.i.i.i.i.i.i.i21.preheader82 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.dt = load i64, ptr %.0911.i.i.i.i.i.i.i23, align 8, !tbaa !184, !alias.scope !367, !noalias !364
  store i64 %i.dt, ptr %.012.i.i.i.i.i.i.i22, align 8, !tbaa !184, !alias.scope !364, !noalias !367
  store ptr null, ptr %.0911.i.i.i.i.i.i.i23, align 8, !tbaa !184, !alias.scope !367, !noalias !364
  %i.du = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i23, i64 8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i22, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i24 = icmp eq ptr %i.du, %i.k
  br i1 %.not.i.i.i.i.i.i.i24, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i25, label %.lr.ph.i.i.i.i.i.i.i21, !llvm.loop !375

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i25: ; preds = %.lr.ph.i.i.i.i.i.i.i21, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i17
  %.0.lcssa.i.i.i.i.i.i.i26 = phi ptr [ %i.da, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i17 ], [ %i.dm, %middle.block ], [ %i.dv, %.lr.ph.i.i.i.i.i.i.i21 ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i26, i64 8
  %.not.i23.i.i.i27 = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i.i27, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i28, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i25
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #28
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i28

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i28: ; preds = %bb.y, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i25
  store ptr %i.da, ptr %i.h, align 8, !tbaa !312
  store ptr %i.dw, ptr %i.j, align 8, !tbaa !313
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cy
  store ptr %i.dx, ptr %i.cm, align 8, !tbaa !325
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit29

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit29: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i28, %bb.v, %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !184 ; 3 uses
  store ptr null, ptr %i.dy, align 8, !tbaa !184
  %.not.i.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit32, label %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit29
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !141
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(88) %i.dz) #29, !inline_history !311
  br label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit32

_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit32: ; preds = %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i.i.i.i.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ReservoirSampleESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit29
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.ed, align 8, !tbaa !342
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
end_hunk_1
