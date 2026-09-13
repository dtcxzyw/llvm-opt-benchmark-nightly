Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CGUITTFont?download=true
inline.NumInlined: 1171
inline.NumDeleted: 570
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3gui10CGUITTFont4drawERK14EnrichedStringRKN4core4rectIiEEbbPS7_:bb.a
  %i.pc = phi ptr [ %i.nz, %_ZSt27__uninitialized_default_n_aIPN4core8vector2dIiEEmS2_ET_S4_T0_RSaIT1_E.exit.i ], [ %i.op, %_ZNSt12_Vector_baseIN4core8vector2dIiEESaIS2_EE13_M_deallocateEPS2_m.exit37.i ], [ %i.nz, %_ZSt8_DestroyIPN4core8vector2dIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i ], [ %i.nz, %bb.bo ], [ %i.nz, %bb.bn ] ; 2 uses
  %i.pd = icmp ugt i32 %i.nw, 1                   ; 2 uses
  br i1 %i.pd, label %bb.bp, label %bb.bq, !prof !326

bb.bp:                                            ; preds = %_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE6resizeEm.exit.i
  %.idx.i = shl nuw nsw i64 %i.nx, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.pc, ptr nonnull align 4 %i.nu, i64 %.idx.i, i1 false)
  br label %bb.bs

bb.bq:                                            ; preds = %_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE6resizeEm.exit.i
  %i.pe = icmp eq i32 %i.nw, 1
  br i1 %i.pe, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.pf = load i64, ptr %i.nu, align 4
  store i64 %i.pf, ptr %i.pc, align 4
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bp
  store i8 0, ptr %i.lv, align 8, !tbaa !307
  %i.pg = load ptr, ptr %i.ne, align 8, !tbaa !200
  %i.ph = getelementptr inbounds nuw [16 x i8], ptr %i.pg, i64 %.0105 ; 2 uses
  %i.pi = load ptr, ptr %i.lz, align 8, !tbaa !299 ; 6 uses
  %i.pj = load ptr, ptr %10, align 8, !tbaa !200  ; 9 uses
  %i.pk = ptrtoint ptr %i.pi to i64               ; 2 uses
  %i.pl = ptrtoint ptr %i.pj to i64               ; 2 uses
  %i.pm = sub i64 %i.pk, %i.pl                    ; 2 uses
  %i.pn = ashr exact i64 %i.pm, 4                 ; 6 uses
  %i.po = icmp ult i64 %i.pn, %i.nx
  br i1 %i.po, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.pp = sub nuw nsw i64 %i.nx, %i.pn            ; 5 uses
  %i.pq = load ptr, ptr %i.ma, align 8, !tbaa !201
  %i.pr = ptrtoint ptr %i.pq to i64
  %i.ps = sub i64 %i.pr, %i.pk
  %i.pt = ashr exact i64 %i.ps, 4                 ; 2 uses
  %i.pu = xor i64 %i.pn, 576460752303423487
  %i.pv = icmp ule i64 %i.pt, %i.pu
  call void @llvm.assume(i1 %i.pv)
  %.not28.i211 = icmp ult i64 %i.pt, %i.pp
  br i1 %.not28.i211, label %_ZNKSt6vectorIN4core4rectIiEESaIS2_EE12_M_check_lenEmPKc.exit.i, label %_ZSt27__uninitialized_default_n_aIPN4core4rectIiEEmS2_ET_S4_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN4core4rectIiEEmS2_ET_S4_T0_RSaIT1_E.exit.i: ; preds = %bb.bt
  %i.pw = shl nuw nsw i64 %i.pp, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.pi, i8 0, i64 %i.pw, i1 false)
  %scevgep.i.i.i.i212 = getelementptr i8, ptr %i.pi, i64 %i.pw
  store ptr %scevgep.i.i.i.i212, ptr %i.lz, align 8, !tbaa !299
  %.pre342 = load ptr, ptr %10, align 8, !tbaa !327
  br label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE6resizeEm.exit.i

_ZNKSt6vectorIN4core4rectIiEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bt
  %.sroa.speculated.i.i213 = call i64 @llvm.umax.i64(i64 %i.pn, i64 %i.pp)
  %i.px = add nuw nsw i64 %.sroa.speculated.i.i213, %i.pn ; 2 uses
  %i.py = shl nuw nsw i64 %i.px, 4
  %i.pz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.py) #27
          to label %.noexc221 unwind label %bb.cb ; 5 uses

.noexc221:                                        ; preds = %_ZNKSt6vectorIN4core4rectIiEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.pm ; 2 uses
  %i.qb = shl nuw nsw i64 %i.pp, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.qa, i8 0, i64 %i.qb, i1 false)
  %.not10.i.i.i.i214 = icmp eq ptr %i.pj, %i.pi
  br i1 %.not10.i.i.i.i214, label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i215

.lr.ph.i.i.i.i215:                                ; preds = %.noexc221, %.lr.ph.i.i.i.i215
  %.012.i.i.i.i216 = phi ptr [ %i.qd, %.lr.ph.i.i.i.i215 ], [ %i.pz, %.noexc221 ] ; 2 uses
  %.0911.i.i.i.i217 = phi ptr [ %i.qc, %.lr.ph.i.i.i.i215 ], [ %i.pj, %.noexc221 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i216, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i217, i64 16, i1 false), !tbaa.struct !313, !alias.scope !328
  %i.qc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i217, i64 16 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i216, i64 16
  %.not.i.i.i.i218 = icmp eq ptr %i.qc, %i.pi
  br i1 %.not.i.i.i.i218, label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i215, !llvm.loop !278

_ZNSt6vectorIN4core4rectIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i215, %.noexc221
  %.not.i36.i219 = icmp eq ptr %i.pj, null
  br i1 %.not.i36.i219, label %_ZNSt12_Vector_baseIN4core4rectIiEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIN4core4rectIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.qe = load ptr, ptr %i.ma, align 8, !tbaa !201
  %i.qf = ptrtoint ptr %i.qe to i64
  %i.qg = sub i64 %i.qf, %i.pl
  call void @_ZdlPvm(ptr noundef nonnull %i.pj, i64 noundef %i.qg) #25
  br label %_ZNSt12_Vector_baseIN4core4rectIiEESaIS2_EE13_M_deallocateEPS2_m.exit37.i

_ZNSt12_Vector_baseIN4core4rectIiEESaIS2_EE13_M_deallocateEPS2_m.exit37.i: ; preds = %bb.bu, %_ZNSt6vectorIN4core4rectIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.pz, ptr %10, align 8, !tbaa !200
  %i.qh = getelementptr inbounds nuw [16 x i8], ptr %i.qa, i64 %i.pp
  store ptr %i.qh, ptr %i.lz, align 8, !tbaa !299
  %i.qi = getelementptr inbounds nuw [16 x i8], ptr %i.pz, i64 %i.px
  store ptr %i.qi, ptr %i.ma, align 8, !tbaa !201
  br label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE6resizeEm.exit.i

bb.bv:                                            ; preds = %bb.bs
  %i.qj = icmp ugt i64 %i.pn, %i.nx
  br i1 %i.qj, label %bb.bw, label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE6resizeEm.exit.i

bb.bw:                                            ; preds = %bb.bv
  %i.qk = getelementptr inbounds nuw [16 x i8], ptr %i.pj, i64 %i.nx ; 2 uses
  %.not.i.i.i193 = icmp eq ptr %i.pi, %i.qk
  br i1 %.not.i.i.i193, label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE6resizeEm.exit.i, label %_ZSt8_DestroyIPN4core4rectIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4core4rectIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.bw
  store ptr %i.qk, ptr %i.lz, align 8, !tbaa !299
  br label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE6resizeEm.exit.i

_ZNSt6vectorIN4core4rectIiEESaIS2_EE6resizeEm.exit.i: ; preds = %_ZSt27__uninitialized_default_n_aIPN4core4rectIiEEmS2_ET_S4_T0_RSaIT1_E.exit.i, %_ZNSt12_Vector_baseIN4core4rectIiEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, %_ZSt8_DestroyIPN4core4rectIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i, %bb.bw, %bb.bv
  %i.ql = phi ptr [ %.pre342, %_ZSt27__uninitialized_default_n_aIPN4core4rectIiEEmS2_ET_S4_T0_RSaIT1_E.exit.i ], [ %i.pz, %_ZNSt12_Vector_baseIN4core4rectIiEESaIS2_EE13_M_deallocateEPS2_m.exit37.i ], [ %i.pj, %_ZSt8_DestroyIPN4core4rectIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i ], [ %i.pj, %bb.bw ], [ %i.pj, %bb.bv ] ; 2 uses
  br i1 %i.pd, label %bb.bx, label %bb.by, !prof !326

bb.bx:                                            ; preds = %_ZNSt6vectorIN4core4rectIiEESaIS2_EE6resizeEm.exit.i
  %.idx.i192 = shl nuw nsw i64 %i.nx, 4
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ql, ptr nonnull align 4 %i.ph, i64 %.idx.i192, i1 false)
  br label %bb.ca

bb.by:                                            ; preds = %_ZNSt6vectorIN4core4rectIiEESaIS2_EE6resizeEm.exit.i
  %i.qm = icmp eq i32 %i.nw, 1
  br i1 %i.qm, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ql, ptr noundef nonnull align 4 dereferenceable(16) %i.ph, i64 16, i1 false), !tbaa.struct !313
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bx
  store i8 0, ptr %i.lw, align 8, !tbaa !322
  %i.qn = load i32, ptr %i.mb, align 8, !tbaa !172 ; 3 uses
  %.not131 = icmp eq i32 %i.qn, 0
  br i1 %.not131, label %.loopexit, label %.preheader285

.preheader285:                                    ; preds = %bb.ca
  %i.qo = load ptr, ptr %i.lx, align 8, !tbaa !298
  %i.qp = load ptr, ptr %9, align 8, !tbaa !202   ; 4 uses
  %i.qq = ptrtoint ptr %i.qo to i64
  %i.qr = ptrtoint ptr %i.qp to i64
  %i.qs = sub i64 %i.qq, %i.qr
  %i.qt = lshr exact i64 %i.qs, 3                 ; 2 uses
  %i.qu = and i64 %i.qt, 4294967295               ; 4 uses
  %.not323 = icmp eq i64 %i.qu, 0
  br i1 %.not323, label %._crit_edge314, label %.lr.ph313.preheader

.lr.ph313.preheader:                              ; preds = %.preheader285
  %min.iters.check463 = icmp samesign ult i64 %i.qu, 4
  br i1 %min.iters.check463, label %.lr.ph313.preheader486, label %vector.ph464

vector.ph464:                                     ; preds = %.lr.ph313.preheader
  %n.vec465 = and i64 %i.qt, 4294967292           ; 3 uses
  %broadcast.splatinsert466 = insertelement <2 x i32> poison, i32 %i.qn, i64 0 ; 2 uses
  %i.qv = shufflevector <2 x i32> %broadcast.splatinsert466, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.qw = shufflevector <2 x i32> %broadcast.splatinsert466, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body468

vector.body468:                                   ; preds = %vector.body468, %vector.ph464
  %index469 = phi i64 [ 0, %vector.ph464 ], [ %index.next478, %vector.body468 ] ; 3 uses
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.qp, i64 %index469 ; 2 uses
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.qp, i64 %index469
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16 ; 2 uses
  %wide.vec470 = load <4 x i32>, ptr %i.qx, align 4, !tbaa !82
  %wide.vec473 = load <4 x i32>, ptr %i.qz, align 4, !tbaa !82
  %interleaved.vec476 = add nsw <4 x i32> %wide.vec470, %i.qv
  store <4 x i32> %interleaved.vec476, ptr %i.qx, align 4, !tbaa !82
  %interleaved.vec477 = add nsw <4 x i32> %wide.vec473, %i.qw
  store <4 x i32> %interleaved.vec477, ptr %i.qz, align 4, !tbaa !82
  %index.next478 = add nuw i64 %index469, 4       ; 2 uses
  %i.ra = icmp eq i64 %index.next478, %n.vec465
  br i1 %i.ra, label %middle.block479, label %vector.body468, !llvm.loop !292

middle.block479:                                  ; preds = %vector.body468
  %cmp.n480 = icmp eq i64 %i.qu, %n.vec465
  br i1 %cmp.n480, label %._crit_edge314, label %.lr.ph313.preheader486

.lr.ph313.preheader486:                           ; preds = %.lr.ph313.preheader, %middle.block479
  %.0104312.ph = phi i64 [ 0, %.lr.ph313.preheader ], [ %n.vec465, %middle.block479 ]
  %i.rb = insertelement <2 x i32> poison, i32 %i.qn, i64 0
  %i.rc = shufflevector <2 x i32> %i.rb, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.lr.ph313

bb.cb:                                            ; preds = %_ZNKSt6vectorIN4core4rectIiEESaIS2_EE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorIN4core8vector2dIiEESaIS2_EE12_M_check_lenEmPKc.exit.i, %.loopexit
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

.lr.ph313:                                        ; preds = %.lr.ph313.preheader486, %.lr.ph313
  %.0104312 = phi i64 [ %i.rh, %.lr.ph313 ], [ %.0104312.ph, %.lr.ph313.preheader486 ] ; 2 uses
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.qp, i64 %.0104312 ; 2 uses
  %i.rf = load <2 x i32>, ptr %i.re, align 4, !tbaa !82
  %i.rg = add nsw <2 x i32> %i.rf, %i.rc
  store <2 x i32> %i.rg, ptr %i.re, align 4, !tbaa !82
  %i.rh = add nuw nsw i64 %.0104312, 1            ; 2 uses
  %exitcond331.not = icmp eq i64 %i.rh, %i.qu
  br i1 %exitcond331.not, label %._crit_edge314, label %.lr.ph313, !llvm.loop !293

._crit_edge314:                                   ; preds = %.lr.ph313, %middle.block479, %.preheader285
  %i.ri = load i32, ptr %i.mc, align 4, !tbaa !173
  %i.rj = lshr i32 %i.no, 24
  %i.rk = mul i32 %i.ri, %i.rj
  %i.rl = uitofp nsz i32 %i.rk to float
  %i.rm = fdiv nsz float %i.rl, 2.550000e+02
  %i.rn = fadd nsz float %i.rm, 5.000000e-01
  %i.ro = call nsz noundef float @llvm.floor.f32(float %i.rn)
  %i.rp = fptosi float %i.ro to i32
  %11 = call i32 @llvm.smax.i32(i32 %i.rp, i32 0)
  %i.rq = call i32 @llvm.umin.i32(i32 %11, i32 255)
  %i.rr = shl nuw i32 %i.rq, 24
  %i.rs = load ptr, ptr %i.d, align 8, !tbaa !169 ; 2 uses
  %i.rt = load ptr, ptr %i.mx, align 8, !tbaa !59
  %i.ru = load ptr, ptr %i.rs, align 8, !tbaa !22
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 408
  %i.rw = load ptr, ptr %i.rv, align 8
  invoke void %i.rw(ptr noundef nonnull align 8 dereferenceable(8) %i.rs, ptr noundef %i.rt, ptr noundef nonnull align 8 dereferenceable(25) %9, ptr noundef nonnull align 8 dereferenceable(25) %10, ptr noundef %5, i32 %i.rr, i1 noundef zeroext true)
          to label %.preheader unwind label %bb.cc

.preheader:                                       ; preds = %._crit_edge314
  %i.rx = load ptr, ptr %i.lx, align 8, !tbaa !298
  %i.ry = load ptr, ptr %9, align 8, !tbaa !202   ; 4 uses
  %i.rz = ptrtoint ptr %i.rx to i64
  %i.sa = ptrtoint ptr %i.ry to i64
  %i.sb = sub i64 %i.rz, %i.sa
  %i.sc = lshr exact i64 %i.sb, 3                 ; 2 uses
  %i.sd = and i64 %i.sc, 4294967295               ; 4 uses
  %.not324 = icmp eq i64 %i.sd, 0
  br i1 %.not324, label %.loopexit, label %.lr.ph316

.lr.ph316:                                        ; preds = %.preheader
  %i.se = load i32, ptr %i.mb, align 8, !tbaa !172 ; 2 uses
  %min.iters.check448 = icmp samesign ult i64 %i.sd, 4
  br i1 %min.iters.check448, label %scalar.ph447.preheader, label %vector.ph449

vector.ph449:                                     ; preds = %.lr.ph316
  %n.vec450 = and i64 %i.sc, 4294967292           ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.se, i64 0 ; 2 uses
  %i.sf = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.sg = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body451

vector.body451:                                   ; preds = %vector.body451, %vector.ph449
  %index452 = phi i64 [ 0, %vector.ph449 ], [ %index.next458, %vector.body451 ] ; 3 uses
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %index452 ; 2 uses
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %index452
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 16 ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.sh, align 4, !tbaa !82
  %wide.vec454 = load <4 x i32>, ptr %i.sj, align 4, !tbaa !82
  %interleaved.vec = sub nsw <4 x i32> %wide.vec, %i.sf
  store <4 x i32> %interleaved.vec, ptr %i.sh, align 4, !tbaa !82
  %interleaved.vec457 = sub nsw <4 x i32> %wide.vec454, %i.sg
  store <4 x i32> %interleaved.vec457, ptr %i.sj, align 4, !tbaa !82
  %index.next458 = add nuw i64 %index452, 4       ; 2 uses
  %i.sk = icmp eq i64 %index.next458, %n.vec450
  br i1 %i.sk, label %middle.block459, label %vector.body451, !llvm.loop !294

middle.block459:                                  ; preds = %vector.body451
  %cmp.n460 = icmp eq i64 %i.sd, %n.vec450
  br i1 %cmp.n460, label %.loopexit, label %scalar.ph447.preheader

scalar.ph447.preheader:                           ; preds = %.lr.ph316, %middle.block459
  %.0315.ph = phi i64 [ 0, %.lr.ph316 ], [ %n.vec450, %middle.block459 ]
  %i.sl = insertelement <2 x i32> poison, i32 %i.se, i64 0
  %i.sm = shufflevector <2 x i32> %i.sl, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %scalar.ph447

bb.cc:                                            ; preds = %._crit_edge314
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

scalar.ph447:                                     ; preds = %scalar.ph447.preheader, %scalar.ph447
  %.0315 = phi i64 [ %i.sr, %scalar.ph447 ], [ %.0315.ph, %scalar.ph447.preheader ] ; 2 uses
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %.0315 ; 2 uses
  %i.sp = load <2 x i32>, ptr %i.so, align 4, !tbaa !82
  %i.sq = sub nsw <2 x i32> %i.sp, %i.sm
  store <2 x i32> %i.sq, ptr %i.so, align 4, !tbaa !82
  %i.sr = add nuw nsw i64 %.0315, 1               ; 2 uses
  %exitcond332.not = icmp eq i64 %i.sr, %i.sd
  br i1 %exitcond332.not, label %.loopexit, label %scalar.ph447, !llvm.loop !295

.loopexit:                                        ; preds = %scalar.ph447, %middle.block459, %.preheader, %bb.ca
  %i.ss = load ptr, ptr %i.d, align 8, !tbaa !169 ; 2 uses
  %i.st = load ptr, ptr %i.mx, align 8, !tbaa !59
  %i.su = load ptr, ptr %i.ss, align 8, !tbaa !22
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 408
  %i.sw = load ptr, ptr %i.sv, align 8
  invoke void %i.sw(ptr noundef nonnull align 8 dereferenceable(8) %i.ss, ptr noundef %i.st, ptr noundef nonnull align 8 dereferenceable(25) %9, ptr noundef nonnull align 8 dereferenceable(25) %10, ptr noundef %5, i32 %i.no, i1 noundef zeroext true)
          to label %bb.bi unwind label %bb.cb, !llvm.loop !296

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn135 = phi { ptr, i32 } [ %i.rd, %bb.cb ], [ %i.sn, %bb.cc ]
  %i.sx = load ptr, ptr %10, align 8, !tbaa !200  ; 3 uses
  %.not.i.i.i.i195 = icmp eq ptr %i.sx, null
  br i1 %.not.i.i.i.i195, label %_ZN4core5arrayINS_4rectIiEEED2Ev.exit196, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.sy = load ptr, ptr %i.ma, align 8, !tbaa !201
  %i.sz = ptrtoint ptr %i.sy to i64
  %i.ta = ptrtoint ptr %i.sx to i64
  %i.tb = sub i64 %i.sz, %i.ta
  call void @_ZdlPvm(ptr noundef nonnull %i.sx, i64 noundef %i.tb) #25
  br label %_ZN4core5arrayINS_4rectIiEEED2Ev.exit196

_ZN4core5arrayINS_4rectIiEEED2Ev.exit196:         ; preds = %bb.cd, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.tc = load ptr, ptr %9, align 8, !tbaa !202   ; 3 uses
  %.not.i.i.i.i197 = icmp eq ptr %i.tc, null
  br i1 %.not.i.i.i.i197, label %_ZN4core5arrayINS_8vector2dIiEEED2Ev.exit198, label %bb.cf

bb.cf:                                            ; preds = %_ZN4core5arrayINS_4rectIiEEED2Ev.exit196
  %i.td = load ptr, ptr %i.ly, align 8, !tbaa !203
  %i.te = ptrtoint ptr %i.td to i64
  %i.tf = ptrtoint ptr %i.tc to i64
  %i.tg = sub i64 %i.te, %i.tf
  call void @_ZdlPvm(ptr noundef nonnull %i.tc, i64 noundef %i.tg) #25
  br label %_ZN4core5arrayINS_8vector2dIiEEED2Ev.exit198

_ZN4core5arrayINS_8vector2dIiEEED2Ev.exit198:     ; preds = %_ZN4core5arrayINS_4rectIiEEED2Ev.exit196, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ch

.loopexit287.loopexit:                            ; preds = %bb.bi
  %.pre343 = load ptr, ptr %i.g, align 8, !tbaa !142
  %.pre344 = load ptr, ptr %i.f, align 8, !tbaa !143
  br label %.loopexit287

.loopexit287:                                     ; preds = %.loopexit287.loopexit, %bb.bh
  %i.th = phi ptr [ %.pre344, %.loopexit287.loopexit ], [ %i.mu, %bb.bh ] ; 2 uses
  %i.ti = phi ptr [ %.pre343, %.loopexit287.loopexit ], [ %i.mv, %bb.bh ] ; 2 uses
  %indvars.iv.next334 = add nuw nsw i64 %indvars.iv333, 1 ; 2 uses
  %i.tj = ptrtoint ptr %i.ti to i64
  %i.tk = ptrtoint ptr %i.th to i64
  %i.tl = sub i64 %i.tj, %i.tk
  %i.tm = lshr exact i64 %i.tl, 3
  %i.tn = and i64 %i.tm, 4294967295
  %i.to = icmp samesign ult i64 %indvars.iv.next334, %i.tn
  br i1 %i.to, label %bb.bh, label %._crit_edge319, !llvm.loop !297

bb.cg:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit
  ret void

bb.ch:                                            ; preds = %.loopexit288, %.loopexit.split-lp, %.loopexit289, %.loopexit.split-lp290, %bb.z, %bb.af, %bb.bc, %bb.at, %_ZN4core5arrayINS_8vector2dIiEEED2Ev.exit198, %bb.bg
  %.pn144.pn.pn.pn = phi { ptr, i32 } [ %i.mt, %bb.bg ], [ %.pn135, %_ZN4core5arrayINS_8vector2dIiEEED2Ev.exit198 ], [ %i.eo, %bb.z ], [ %.pn141.pn, %bb.bc ], [ %i.fa, %bb.af ], [ %lpad.loopexit.split-lp292, %.loopexit.split-lp290 ], [ %i.ka, %bb.at ], [ %lpad.loopexit291, %.loopexit289 ], [ %lpad.loopexit, %.loopexit288 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.tp = load ptr, ptr %6, align 8, !tbaa !186   ; 2 uses
  %i.tq = icmp eq ptr %i.tp, %i.ax
  br i1 %i.tq, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i199: ; preds = %bb.ch
  %i.tr = load i64, ptr %i.ax, align 8, !tbaa !30
  %i.ts = shl i64 %i.tr, 2
  %i.tt = add i64 %i.ts, 4
  call void @_ZdlPvm(ptr noundef %i.tp, i64 noundef %i.tt) #25
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit201: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  resume { ptr, i32 } %.pn144.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14EnrichedStringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !198  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !199
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !207    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !30
  %i.l = shl i64 %i.k, 2
  %i.m = add i64 %i.l, 4
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #25
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK14EnrichedString9getColorsEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local i64 @_ZNK3gui10CGUITTFont12getDimensionEPKw(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string.30", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !181, !alias.scope !331
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #24
end_hunk_0
begin_hunk_1_@_ZN4core6stringIcEC2Ej:bb.a
  %i.k = add i32 %.030.i.i, 4                     ; 2 uses
  %i.l = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.l, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !361

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %.022.i.i = phi i32 [ %i.i, %bb.f ], [ %i.e, %bb.b ], [ %i.g, %bb.d ], [ 1, %bb.a ], [ %i.k, %bb.g ]
  %i.m = zext i32 %.022.i.i to i64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !25, !alias.scope !363
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.m, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.o = load ptr, ptr %2, align 8, !tbaa !28, !alias.scope !363 ; 4 uses
  %i.p = icmp ugt i32 %1, 99
  br i1 %i.p, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !29, !alias.scope !363
  %i.s = trunc i64 %i.r to i32
  %i.t = add i32 %i.s, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.w, %.lr.ph.i2.i ], [ %1, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.ah, %.lr.ph.i2.i ], [ %i.t, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.u = urem i32 %.020.i.i, 100
  %i.v = shl nuw nsw i32 %i.u, 1
  %i.w = udiv i32 %.020.i.i, 100                  ; 2 uses
  %i.x = zext nneg i32 %i.v to i64
  %i.y = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !30, !noalias !363
  %i.ab = zext i32 %.01819.i.i to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ab
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !30
  %i.ad = load i8, ptr %i.y, align 2, !tbaa !30, !noalias !363
  %i.ae = add i32 %.01819.i.i, -1
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.af
  store i8 %i.ad, ptr %i.ag, align 1, !tbaa !30
  %i.ah = add i32 %.01819.i.i, -2
  %i.ai = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.ai, label %.lr.ph.i2.i, label %._crit_edge.i.i, !llvm.loop !362

._crit_edge.i.i:                                  ; preds = %.lr.ph.i2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i32 [ %1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ], [ %i.w, %.lr.ph.i2.i ] ; 3 uses
  %i.aj = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ak = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !30, !noalias !363
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !30
  %i.aq = load i8, ptr %i.am, align 2, !tbaa !30, !noalias !363
  br label %_ZNSt7__cxx119to_stringEj.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ar = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.as = or disjoint i8 %i.ar, 48
  br label %_ZNSt7__cxx119to_stringEj.exit

bb.j:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #26
  unreachable

_ZNSt7__cxx119to_stringEj.exit:                   ; preds = %bb.h, %bb.i
  %storemerge.i.i = phi i8 [ %i.as, %bb.i ], [ %i.aq, %bb.h ]
  store i8 %storemerge.i.i, ptr %i.o, align 1, !tbaa !30
  %i.av = load ptr, ptr %0, align 8, !tbaa !28    ; 6 uses
  %i.aw = icmp eq ptr %i.av, %i.a
  %i.ax = load ptr, ptr %2, align 8, !tbaa !28    ; 5 uses
  %i.ay = icmp eq ptr %i.ax, %i.n                 ; 2 uses
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx119to_stringEj.exit
  br i1 %i.ay, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx119to_stringEj.exit
  br i1 %i.ay, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !29 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.bb)
  switch i64 %i.ba, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bc = load i8, ptr %i.ax, align 1, !tbaa !30
  store i8 %i.bc, ptr %i.av, align 1, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.ax, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.bd = load i64, ptr %i.az, align 8, !tbaa !29 ; 2 uses
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !29
  %i.be = load ptr, ptr %0, align 8, !tbaa !28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd
  store i8 0, ptr %i.bf, align 1, !tbaa !30
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ax, ptr %0, align 8, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load <2 x i64>, ptr %i.bg, align 8, !tbaa !30
  store <2 x i64> %i.bh, ptr %i.b, align 8, !tbaa !30
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !30
  store ptr %i.ax, ptr %0, align 8, !tbaa !28
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bk = load <2 x i64>, ptr %i.bj, align 8, !tbaa !30
  store <2 x i64> %i.bk, ptr %i.b, align 8, !tbaa !30
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.av, ptr %2, align 8, !tbaa !28
  store i64 %i.bi, ptr %i.n, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.n, ptr %2, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.bl = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.av, %bb.n ], [ %i.n, %bb.o ]
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bm, align 8, !tbaa !29
  store i8 0, ptr %i.bl, align 1, !tbaa !30
  %i.bn = load ptr, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.n
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bp = load i64, ptr %i.n, align 8, !tbaa !30
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i32 noundef signext) local_unnamed_addr #2

declare extern_weak void @_ZTH11errorstream() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #20

declare extern_weak void @_ZTH13warningstream() #2

declare extern_weak void @_ZTH13verbosestream() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{null, null, null}
!1 = distinct !{null}
!2 = distinct !{!2, !71}
!3 = distinct !{null, null, null, null, null}
!4 = distinct !{null, null, null}
!5 = distinct !{!5, !71}
!6 = distinct !{null}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"p1 _ZTS14FT_LibraryRec_", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"_ZTS17IReferenceCounted", !13, i64 8}
!20 = !{!19, !13, i64 8}
!21 = !{!"vtable pointer", !11, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"p1 omnipotent char", !16, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!25 = !{!24, !23, i64 0}
!26 = !{!"long", !12, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !26, i64 8, !12, i64 16}
!28 = !{!27, !23, i64 0}
!29 = !{!27, !26, i64 8}
!30 = !{!12, !12, i64 0}
!31 = !{!26, !26, i64 0}
!32 = !{!"p1 _ZTS11FT_FaceRec_", !16, i64 0}
!33 = !{!"_ZTSN3gui10SGUITTFaceE", !19, i64 0, !27, i64 16, !32, i64 48}
!34 = !{!33, !32, i64 48}
!35 = !{!"p1 _ZTSN5video8ITextureE", !16, i64 0}
!36 = !{!"p1 _ZTSN4core8vector2dIiEE", !16, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIN4core8vector2dIiEESaIS2_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!38 = !{!"_ZTSNSt12_Vector_baseIN4core8vector2dIiEESaIS2_EE12_Vector_implE", !37, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseIN4core8vector2dIiEESaIS2_EE", !38, i64 0}
!40 = !{!"_ZTSSt6vectorIN4core8vector2dIiEESaIS2_EE", !39, i64 0}
!41 = !{!"p1 _ZTSN4core4rectIiEE", !16, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIN4core4rectIiEESaIS2_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!43 = !{!"_ZTSNSt12_Vector_baseIN4core4rectIiEESaIS2_EE12_Vector_implE", !42, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseIN4core4rectIiEESaIS2_EE", !43, i64 0}
!45 = !{!"_ZTSSt6vectorIN4core4rectIiEESaIS2_EE", !44, i64 0}
!46 = !{!"p1 _ZTSN5video6SColorE", !16, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIN5video6SColorESaIS1_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!48 = !{!"_ZTSNSt12_Vector_baseIN5video6SColorESaIS1_EE12_Vector_implE", !47, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseIN5video6SColorESaIS1_EE", !48, i64 0}
!50 = !{!"_ZTSSt6vectorIN5video6SColorESaIS1_EE", !49, i64 0}
!51 = !{!"p1 _ZTSN3gui18SGUITTGlyphPendingE", !16, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIN3gui18SGUITTGlyphPendingESaIS1_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!53 = !{!"_ZTSNSt12_Vector_baseIN3gui18SGUITTGlyphPendingESaIS1_EE12_Vector_implE", !52, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseIN3gui18SGUITTGlyphPendingESaIS1_EE", !53, i64 0}
!55 = !{!"_ZTSSt6vectorIN3gui18SGUITTGlyphPendingESaIS1_EE", !54, i64 0}
!56 = !{!"p1 _ZTSN5video12IVideoDriverE", !16, i64 0}
!57 = !{!"_ZTSN4core6stringIcEE", !27, i64 0}
!58 = !{!"_ZTSN3gui15CGUITTGlyphPageE", !35, i64 0, !13, i64 8, !13, i64 12, !40, i64 16, !45, i64 40, !50, i64 64, !55, i64 88, !56, i64 112, !57, i64 120}
!59 = !{!58, !35, i64 0}
!60 = !{!58, !56, i64 112}
!61 = !{!51, !51, i64 0}
!62 = !{!"_ZTSN4core11dimension2dIjEE", !13, i64 0, !13, i64 4}
!63 = !{!"_ZTSN5video13ECOLOR_FORMATE", !12, i64 0}
!64 = !{!"bool", !12, i64 0}
!65 = !{!52, !51, i64 0}
!66 = !{!52, !51, i64 8}
!67 = !{!"p1 _ZTSN3gui11SGUITTGlyphE", !16, i64 0}
!68 = !{!"p1 _ZTSN5video6IImageE", !16, i64 0}
!69 = !{!"_ZTSN3gui18SGUITTGlyphPendingE", !67, i64 0, !68, i64 8}
!70 = !{!69, !68, i64 8}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!69, !67, i64 0}
!73 = !{!"short", !12, i64 0}
!74 = !{!"_ZTS10FT_Bitmap_", !13, i64 0, !13, i64 4, !13, i64 8, !23, i64 16, !73, i64 24, !12, i64 26, !12, i64 27, !16, i64 32}
!75 = !{!74, !13, i64 0}
!76 = !{!74, !13, i64 4}
!77 = !{!62, !13, i64 0}
!78 = !{!74, !12, i64 26}
!79 = !{!"_ZTSN5video6SColorE", !13, i64 0}
!80 = !{!79, !13, i64 0}
!81 = !{!73, !73, i64 0}
!82 = !{!13, !13, i64 0}
!83 = !{!"p1 _ZTS9LogTarget", !16, i64 0}
!84 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!85 = !{!"_ZTSSt6locale", !84, i64 0}
!86 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !23, i64 48, !85, i64 56}
!87 = !{!"_ZTSSt14_Function_base", !12, i64 0, !16, i64 16}
!88 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !87, i64 0, !16, i64 24}
!89 = !{!"_ZTS18StringStreamBufferILj256ESt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE", !86, i64 0, !88, i64 64, !13, i64 96, !12, i64 100}
!90 = !{!"_ZTS17DummyStreamBuffer", !86, i64 0}
!91 = !{!"_ZTSSo"}
!92 = !{!"p1 _ZTSSo", !16, i64 0}
!93 = !{!"_ZTS11StreamProxy", !92, i64 0}
!94 = !{!"_ZTS9LogStream", !83, i64 0, !89, i64 8, !90, i64 368, !91, i64 432, !91, i64 704, !93, i64 976, !93, i64 984}
!95 = !{!94, !83, i64 0}
!96 = !{}
!97 = !{i64 8}
!98 = !{!23, !23, i64 0}
!99 = !{!93, !92, i64 0}
!100 = !{!"_ZTSSt13_Ios_Fmtflags", !12, i64 0}
!101 = !{!"_ZTSSt12_Ios_Iostate", !12, i64 0}
!102 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!103 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !26, i64 8}
!104 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!105 = !{!"_ZTSSt8ios_base", !26, i64 8, !26, i64 16, !100, i64 24, !101, i64 28, !101, i64 32, !102, i64 40, !103, i64 48, !12, i64 64, !13, i64 192, !104, i64 200, !85, i64 208}
!106 = !{!105, !101, i64 32}
!107 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!108 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!109 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!110 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!111 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !105, i64 0, !92, i64 216, !12, i64 224, !64, i64 225, !107, i64 232, !108, i64 240, !109, i64 248, !110, i64 256}
!112 = !{!111, !108, i64 240}
!113 = !{!"_ZTSNSt6locale5facetE", !13, i64 8}
!114 = !{!"p1 _ZTS15__locale_struct", !16, i64 0}
!115 = !{!"p1 int", !16, i64 0}
!116 = !{!"p1 short", !16, i64 0}
!117 = !{!"_ZTSSt5ctypeIcE", !113, i64 0, !114, i64 16, !64, i64 24, !115, i64 32, !115, i64 40, !116, i64 48, !12, i64 56, !12, i64 57, !12, i64 313, !12, i64 569}
!118 = !{!117, !12, i64 56}
!119 = !{!"p1 _ZTS15FT_Bitmap_Size_", !16, i64 0}
!120 = !{!"any p2 pointer", !16, i64 0}
!121 = !{!"p2 _ZTS14FT_CharMapRec_", !120, i64 0}
!122 = !{!"_ZTS11FT_Generic_", !16, i64 0, !16, i64 8}
!123 = !{!"_ZTS8FT_BBox_", !26, i64 0, !26, i64 8, !26, i64 16, !26, i64 24}
!124 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !16, i64 0}
!125 = !{!"p1 _ZTS11FT_SizeRec_", !16, i64 0}
!126 = !{!"p1 _ZTS14FT_CharMapRec_", !16, i64 0}
!127 = !{!"p1 _ZTS13FT_DriverRec_", !16, i64 0}
!128 = !{!"p1 _ZTS13FT_MemoryRec_", !16, i64 0}
!129 = !{!"p1 _ZTS13FT_StreamRec_", !16, i64 0}
!130 = !{!"p1 _ZTS15FT_ListNodeRec_", !16, i64 0}
!131 = !{!"_ZTS11FT_ListRec_", !130, i64 0, !130, i64 8}
!132 = !{!"p1 _ZTS20FT_Face_InternalRec_", !16, i64 0}
!133 = !{!"_ZTS11FT_FaceRec_", !26, i64 0, !26, i64 8, !26, i64 16, !26, i64 24, !26, i64 32, !23, i64 40, !23, i64 48, !13, i64 56, !119, i64 64, !13, i64 72, !121, i64 80, !122, i64 88, !123, i64 104, !73, i64 136, !73, i64 138, !73, i64 140, !73, i64 142, !73, i64 144, !73, i64 146, !73, i64 148, !73, i64 150, !124, i64 152, !125, i64 160, !126, i64 168, !127, i64 176, !128, i64 184, !129, i64 192, !131, i64 200, !122, i64 216, !16, i64 232, !132, i64 240}
!134 = !{!133, !124, i64 152}
!135 = !{!"_ZTS10FT_Vector_", !26, i64 0, !26, i64 8}
!136 = !{!"p2 _ZTSN3gui15CGUITTGlyphPageE", !120, i64 0}
!137 = !{!136, !136, i64 0}
!138 = !{!"p1 _ZTSN3gui15CGUITTGlyphPageE", !16, i64 0}
!139 = !{!138, !138, i64 0}
!140 = !{!58, !13, i64 8}
!141 = !{!"_ZTSNSt12_Vector_baseIPN3gui15CGUITTGlyphPageESaIS2_EE17_Vector_impl_dataE", !136, i64 0, !136, i64 8, !136, i64 16}
!142 = !{!141, !136, i64 8}
!143 = !{!141, !136, i64 0}
!144 = !{!"_ZTSN4core8vector2dIiEE", !13, i64 0, !13, i64 4}
!145 = !{!"_ZTSN4core4rectIiEE", !144, i64 0, !144, i64 8}
!146 = !{!"_ZTSN3gui11SGUITTGlyphE", !13, i64 0, !145, i64 4, !144, i64 20, !144, i64 28}
!147 = !{!146, !13, i64 0}
!148 = !{!"_ZTSN3gui8IGUIFontE"}
!149 = !{!"p1 _ZTSN3gui10SGUITTFaceE", !16, i64 0}
!150 = !{!"_ZTS7irr_ptrIN3gui10SGUITTFaceEE", !149, i64 0}
!151 = !{!"_ZTS16FT_Size_Metrics_", !73, i64 0, !73, i64 2, !26, i64 8, !26, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48}
!152 = !{!"_ZTSNSt12_Vector_baseIPN3gui15CGUITTGlyphPageESaIS2_EE12_Vector_implE", !141, i64 0}
!153 = !{!"_ZTSSt12_Vector_baseIPN3gui15CGUITTGlyphPageESaIS2_EE", !152, i64 0}
!154 = !{!"_ZTSSt6vectorIPN3gui15CGUITTGlyphPageESaIS2_EE", !153, i64 0}
!155 = !{!"_ZTSN4core5arrayIPN3gui15CGUITTGlyphPageEEE", !154, i64 0, !64, i64 24}
!156 = !{!"_ZTSNSt12_Vector_baseIN3gui11SGUITTGlyphESaIS1_EE17_Vector_impl_dataE", !67, i64 0, !67, i64 8, !67, i64 16}
!157 = !{!"_ZTSNSt12_Vector_baseIN3gui11SGUITTGlyphESaIS1_EE12_Vector_implE", !156, i64 0}
!158 = !{!"_ZTSSt12_Vector_baseIN3gui11SGUITTGlyphESaIS1_EE", !157, i64 0}
!159 = !{!"_ZTSSt6vectorIN3gui11SGUITTGlyphESaIS1_EE", !158, i64 0}
!160 = !{!"_ZTSN4core5arrayIN3gui11SGUITTGlyphEEE", !159, i64 0, !64, i64 24}
!161 = !{!"p1 char32_t", !16, i64 0}
!162 = !{!"_ZTSNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE12_Alloc_hiderE", !161, i64 0}
!163 = !{!"_ZTSNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE", !162, i64 0, !26, i64 8, !12, i64 16}
!164 = !{!"p1 _ZTSN3gui8IGUIFontE", !16, i64 0}
end_hunk_1
