Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/GenericWriter?download=true
inline.NumInlined: 65567
inline.NumDeleted: 20577
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 112
loop-unroll.NumUnrolled: 123
begin_hunk_0_@_ZN8facebook5velox4exec12VectorReaderINS0_10DynamicRowEEC2EPKNS0_13DecodedVectorE:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.i, label %.loopexit22, label %_ZNSt12_Vector_baseIN8facebook5velox13DecodedVectorESaIS2_EEC2EmRKS3_.exit.i

_ZNSt12_Vector_baseIN8facebook5velox13DecodedVectorESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.i = mul nuw nsw i64 %i.g, 120
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #40 ; 4 uses
  store ptr %i.j, ptr %i.e, align 8, !tbaa !5350
  %i.k = getelementptr inbounds nuw [120 x i8], ptr %i.j, i64 %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.k, ptr %i.l, align 8, !tbaa !5351
  %xtraiter = and i64 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseIN8facebook5velox13DecodedVectorESaIS2_EEC2EmRKS3_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.prol ], [ %i.j, %_ZNSt12_Vector_baseIN8facebook5velox13DecodedVectorESaIS2_EEC2EmRKS3_.exit.i ] ; 6 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.g, %_ZNSt12_Vector_baseIN8facebook5velox13DecodedVectorESaIS2_EEC2EmRKS3_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN8facebook5velox13DecodedVectorESaIS2_EEC2EmRKS3_.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.08.i.i.i.i.i.prol, i8 0, i64 72, i1 false)
  store i8 1, ptr %i.m, align 8, !tbaa !2413
  %i.n = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.n, i8 0, i64 13, i1 false)
  store i8 1, ptr %i.o, align 1, !tbaa !2414
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i8 0, i64 48, i1 false)
  %i.q = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 120 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !20637

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN8facebook5velox13DecodedVectorESaIS2_EEC2EmRKS3_.exit.i
  %.lcssa69.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN8facebook5velox13DecodedVectorESaIS2_EEC2EmRKS3_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.j, %_ZNSt12_Vector_baseIN8facebook5velox13DecodedVectorESaIS2_EEC2EmRKS3_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.g, %_ZNSt12_Vector_baseIN8facebook5velox13DecodedVectorESaIS2_EEC2EmRKS3_.exit.i ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %i.s = icmp ult i64 %i.g, 4
  br i1 %i.s, label %.loopexit22.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.08.i.i.i.i.i, i8 0, i64 72, i1 false)
  store i8 1, ptr %i.t, align 8, !tbaa !2413
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.u, i8 0, i64 13, i1 false)
  store i8 1, ptr %i.v, align 1, !tbaa !2414
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, i8 0, i64 48, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 120
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.x, i8 0, i64 72, i1 false)
  store i8 1, ptr %i.y, align 8, !tbaa !2413
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 168
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 181
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.z, i8 0, i64 13, i1 false)
  store i8 1, ptr %i.aa, align 1, !tbaa !2414
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 0, i64 48, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 240
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ac, i8 0, i64 72, i1 false)
  store i8 1, ptr %i.ad, align 8, !tbaa !2413
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 288
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 301
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ae, i8 0, i64 13, i1 false)
  store i8 1, ptr %i.af, align 1, !tbaa !2414
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i8 0, i64 48, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 360
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, i8 0, i64 72, i1 false)
  store i8 1, ptr %i.ai, align 8, !tbaa !2413
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 408
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 421
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.aj, i8 0, i64 13, i1 false)
  store i8 1, ptr %i.ak, align 1, !tbaa !2414
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 432
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.al, i8 0, i64 48, i1 false)
  %i.am = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 480 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit22.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !20638

.loopexit22.loopexit:                             ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa69 = phi ptr [ %.lcssa69.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !20652
  br label %.loopexit22

.loopexit22:                                      ; preds = %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %.loopexit22.loopexit
  %i.ao = phi ptr [ %.pre, %.loopexit22.loopexit ], [ %i.d, %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %.lcssa69, %.loopexit22.loopexit ], [ null, %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ap, align 8, !tbaa !5352
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !5349
  %.not = icmp eq i64 %i.as, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit22
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN8facebook5velox4exec12VectorReaderINS1_7GenericINS1_7AnyTypeELb0ELb0EEEEESt14default_deleteIS7_EED2Ev.exit, %.loopexit22
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN8facebook5velox4exec12VectorReaderINS1_7GenericINS1_7AnyTypeELb0ELb0EEEEESt14default_deleteIS7_EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt10unique_ptrIN8facebook5velox4exec12VectorReaderINS1_7GenericINS1_7AnyTypeELb0ELb0EEEEESt14default_deleteIS7_EED2Ev.exit ] ; 3 uses
  %i.av = phi ptr [ %i.ao, %.lr.ph ], [ %i.dd, %_ZNSt10unique_ptrIN8facebook5velox4exec12VectorReaderINS1_7GenericINS1_7AnyTypeELb0ELb0EEEEESt14default_deleteIS7_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !5350
  %i.ax = getelementptr inbounds nuw [120 x i8], ptr %i.aw, i64 %indvars.iv ; 2 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8facebook5velox9RowVector7childAtEj(ptr noundef nonnull align 8 dereferenceable(152) %i.av, i32 noundef %i.ay)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !866
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.ax, ptr noundef nonnull align 8 dereferenceable(94) %i.ba, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit unwind label %bb.i

_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20653)
  %i.bb = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #40
          to label %.noexc15 unwind label %bb.i   ; 4 uses

.noexc15:                                         ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit
  invoke void @_ZN8facebook5velox4exec12VectorReaderINS0_7GenericINS0_7AnyTypeELb0ELb0EEEEC2EPKNS0_13DecodedVectorE(ptr noundef nonnull align 8 dereferenceable(72) %i.bb, ptr noundef nonnull %i.ax)
          to label %bb.e unwind label %bb.d, !noalias !20653

bb.d:                                             ; preds = %.noexc15
  %i.bc = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 72) #39, !noalias !20653
  br label %.body

bb.e:                                             ; preds = %.noexc15
  store ptr %i.bb, ptr %2, align 8, !tbaa !2370, !alias.scope !20653
  %i.bd = load ptr, ptr %i.at, align 8, !tbaa !2368 ; 6 uses
  %i.be = load ptr, ptr %i.au, align 8, !tbaa !5353
  %.not.i.i = icmp eq ptr %i.bd, %i.be
  %i.bf = ptrtoint ptr %i.bb to i64               ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_7GenericINS2_7AnyTypeELb0ELb0EEEEESt14default_deleteIS8_EESaISB_EE9push_backEOSB_.exit.thread

_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_7GenericINS2_7AnyTypeELb0ELb0EEEEESt14default_deleteIS8_EESaISB_EE9push_backEOSB_.exit.thread: ; preds = %bb.e
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !2370
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.bg, ptr %i.at, align 8, !tbaa !2368
  br label %_ZNSt10unique_ptrIN8facebook5velox4exec12VectorReaderINS1_7GenericINS1_7AnyTypeELb0ELb0EEEEESt14default_deleteIS7_EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.bh = load ptr, ptr %i.aq, align 8, !tbaa !2369 ; 12 uses
  %i.bi = ptrtoint ptr %i.bd to i64               ; 3 uses
  %i.bj = ptrtoint ptr %i.bh to i64               ; 4 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 3 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775800
  br i1 %i.bl, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_7GenericINS2_7AnyTypeELb0ELb0EEEEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.187) #38
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc19:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_7GenericINS2_7AnyTypeELb0ELb0EEEEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.f
  %i.bm = ashr exact i64 %i.bk, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i, %i.bm ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  %i.bp = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 1152921504606846975)
  %i.bq = select i1 %i.bo, i64 1152921504606846975, i64 %i.bp ; 3 uses
  %.not.i.i17 = icmp ne i64 %i.bq, 0
  tail call void @llvm.assume(i1 %.not.i.i17)
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #40
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 12 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_7GenericINS2_7AnyTypeELb0ELb0EEEEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bk
  store i64 %i.bf, ptr %i.bt, align 8, !tbaa !2370
  %.not10.i.i.i.i = icmp eq ptr %i.bh, %i.bd
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_7GenericINS2_7AnyTypeELb0ELb0EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc20
  %i.bu = add i64 %i.bi, -8
  %i.bv = sub i64 %i.bu, %i.bj                    ; 3 uses
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.bv, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.bs, i64 8
  %i.by = add i64 %i.bi, -8
  %i.bz = sub i64 %i.by, %i.bj
  %i.ca = and i64 %i.bz, -8                       ; 2 uses
  %scevgep48 = getelementptr i8, ptr %scevgep, i64 %i.ca
  %scevgep49 = getelementptr i8, ptr %i.bh, i64 8
  %scevgep50 = getelementptr i8, ptr %scevgep49, i64 %i.ca
  %bound0 = icmp ult ptr %i.bs, %scevgep50
  %bound1 = icmp ult ptr %i.bh, %scevgep48
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check51 = icmp ult i64 %i.bv, 120
  br i1 %min.iters.check51, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cb = and i64 %i.bx, 12
  %n.vec = and i64 %i.bx, 4611686018427387888     ; 4 uses
  %i.cc = shl i64 %n.vec, 3                       ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bs, i64 %i.cc  ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bh, i64 %i.cc
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bs, i64 %i.cf ; 4 uses
  %next.gep52 = getelementptr i8, ptr %i.bh, i64 %i.cf ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20655)
  %i.cg = getelementptr i8, ptr %next.gep52, i64 32
  %i.ch = getelementptr i8, ptr %next.gep52, i64 64
  %i.ci = getelementptr i8, ptr %next.gep52, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep52, align 8, !tbaa !2370, !alias.scope !20656
  %wide.load53 = load <4 x i64>, ptr %i.cg, align 8, !tbaa !2370, !alias.scope !20656
  %wide.load54 = load <4 x i64>, ptr %i.ch, align 8, !tbaa !2370, !alias.scope !20656
  %wide.load55 = load <4 x i64>, ptr %i.ci, align 8, !tbaa !2370, !alias.scope !20656
  %i.cj = getelementptr i8, ptr %next.gep, i64 32
  %i.ck = getelementptr i8, ptr %next.gep, i64 64
  %i.cl = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !2370, !alias.scope !20657, !noalias !20658
  store <4 x i64> %wide.load53, ptr %i.cj, align 8, !tbaa !2370, !alias.scope !20657, !noalias !20658
  store <4 x i64> %wide.load54, ptr %i.ck, align 8, !tbaa !2370, !alias.scope !20657, !noalias !20658
  store <4 x i64> %wide.load55, ptr %i.cl, align 8, !tbaa !2370, !alias.scope !20657, !noalias !20658
  %i.cm = getelementptr i8, ptr %next.gep52, i64 32
  %i.cn = getelementptr i8, ptr %next.gep52, i64 64
  %i.co = getelementptr i8, ptr %next.gep52, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !2370, !alias.scope !20656
  store <4 x ptr> splat (ptr null), ptr %i.cm, align 8, !tbaa !2370, !alias.scope !20656
  store <4 x ptr> splat (ptr null), ptr %i.cn, align 8, !tbaa !2370, !alias.scope !20656
  store <4 x ptr> splat (ptr null), ptr %i.co, align 8, !tbaa !2370, !alias.scope !20656
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !20647

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_7GenericINS2_7AnyTypeELb0ELb0EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !940

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec56 = and i64 %i.bx, 4611686018427387900   ; 3 uses
  %i.cq = shl i64 %n.vec56, 3                     ; 2 uses
  %i.cr = getelementptr i8, ptr %i.bs, i64 %i.cq  ; 2 uses
  %i.cs = getelementptr i8, ptr %i.bh, i64 %i.cq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index57 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next61, %vec.epilog.vector.body ] ; 2 uses
  %i.ct = shl i64 %index57, 3                     ; 2 uses
  %next.gep58 = getelementptr i8, ptr %i.bs, i64 %i.ct
  %next.gep59 = getelementptr i8, ptr %i.bh, i64 %i.ct ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20655)
  %wide.load60 = load <4 x i64>, ptr %next.gep59, align 8, !tbaa !2370, !alias.scope !20656
  store <4 x i64> %wide.load60, ptr %next.gep58, align 8, !tbaa !2370, !alias.scope !20657, !noalias !20658
  store <4 x ptr> splat (ptr null), ptr %next.gep59, align 8, !tbaa !2370, !alias.scope !20656
  %index.next61 = add nuw i64 %index57, 4         ; 2 uses
  %i.cu = icmp eq i64 %index.next61, %n.vec56
  br i1 %i.cu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20648

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n62 = icmp eq i64 %i.bx, %n.vec56
  br i1 %cmp.n62, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_7GenericINS2_7AnyTypeELb0ELb0EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bs, %iter.check ], [ %i.bs, %vector.memcheck ], [ %i.cd, %vec.epilog.iter.check ], [ %i.cr, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bh, %iter.check ], [ %i.bh, %vector.memcheck ], [ %i.ce, %vec.epilog.iter.check ], [ %i.cs, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20655)
  %i.cv = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !2370, !alias.scope !20655
  store i64 %i.cv, ptr %.012.i.i.i.i, align 8, !tbaa !2370, !alias.scope !20654
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !2370, !alias.scope !20655
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cw, %i.bd
  br i1 %.not.i.i.i.i18, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_7GenericINS2_7AnyTypeELb0ELb0EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !20649

_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_7GenericINS2_7AnyTypeELb0ELb0EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc20
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bs, %.noexc20 ], [ %i.cr, %vec.epilog.middle.block ], [ %i.cd, %middle.block ], [ %i.cx, %.lr.ph.i.i.i.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bh, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_7GenericINS2_7AnyTypeELb0ELb0EEEEESt14default_deleteIS8_EESaISB_EE9push_backEOSB_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_7GenericINS2_7AnyTypeELb0ELb0EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i
  %i.cz = load ptr, ptr %i.au, align 8, !tbaa !5353
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.db) #39
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_7GenericINS2_7AnyTypeELb0ELb0EEEEESt14default_deleteIS8_EESaISB_EE9push_backEOSB_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_7GenericINS2_7AnyTypeELb0ELb0EEEEESt14default_deleteIS8_EESaISB_EE9push_backEOSB_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_7GenericINS2_7AnyTypeELb0ELb0EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i, %bb.h
  store ptr %i.bs, ptr %i.aq, align 8, !tbaa !2369
  store ptr %i.cy, ptr %i.at, align 8, !tbaa !2368
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bq
  store ptr %i.dc, ptr %i.au, align 8, !tbaa !5353
  br label %_ZNSt10unique_ptrIN8facebook5velox4exec12VectorReaderINS1_7GenericINS1_7AnyTypeELb0ELb0EEEEESt14default_deleteIS7_EED2Ev.exit

_ZNSt10unique_ptrIN8facebook5velox4exec12VectorReaderINS1_7GenericINS1_7AnyTypeELb0ELb0EEEEESt14default_deleteIS7_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_7GenericINS2_7AnyTypeELb0ELb0EEEEESt14default_deleteIS8_EESaISB_EE9push_backEOSB_.exit, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_7GenericINS2_7AnyTypeELb0ELb0EEEEESt14default_deleteIS8_EESaISB_EE9push_backEOSB_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !20652, !nonnull !604, !align !605 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 96
  %i.df = load i64, ptr %i.de, align 8, !tbaa !5349
  %i.dg = icmp ugt i64 %i.df, %indvars.iv.next
  br i1 %i.dg, label %bb.b, label %._crit_edge, !llvm.loop !20650

bb.i:                                             ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit, %bb.c, %bb.b
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_7GenericINS2_7AnyTypeELb0ELb0EEEEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i, %bb.g
  %lpad.loopexit.split-lp64 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox4exec12VectorReaderINS1_7GenericINS1_7AnyTypeELb0ELb0EEEEESt14default_deleteIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #34
  br label %.body

.body:                                            ; preds = %bb.i, %bb.d, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp64, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.dh, %bb.i ], [ %i.bc, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_7GenericINS2_7AnyTypeELb0ELb0EEEEESt14default_deleteIS8_EESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aq) #34
  call void @_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.e) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8facebook5velox9RowVector7childAtEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.5965", align 16 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !5349
  %.not = icmp ugt i64 %i.c, %i.a
  br i1 %.not, label %bb.g, label %bb.b, !prof !730

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZNK8facebook5velox10BaseVector8toStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(94) %0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !20663
  call void @llvm.experimental.noalias.scope.decl(metadata !20664)
  store i32 %1, ptr %2, align 16, !tbaa !602, !noalias !20663
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i64, ptr %i.b, align 8, !tbaa !636, !noalias !20665
  store i64 %i.e, ptr %i.d, align 16, !tbaa !602, !alias.scope !20664, !noalias !20663
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %4, align 8, !tbaa !704, !noalias !20663
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !714, !noalias !20663
  store ptr %i.g, ptr %i.f, align 16, !tbaa !602, !noalias !20663
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.i, ptr %i.j, align 8, !tbaa !602, !noalias !20663
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.219, i64 64, i64 3394, ptr nonnull %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !20663
  %i.k = load ptr, ptr %4, align 8, !tbaa !704    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8, !tbaa !602
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9RowVector7childAtEjE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.219) #38
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable

end_hunk_0
