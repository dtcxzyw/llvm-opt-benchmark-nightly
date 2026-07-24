inline.NumInlined: 5627
inline.NumDeleted: 1581
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bhw, i64 8
  %i.bie = load ptr, ptr %i.bid, align 8, !tbaa !348
  %.not.i.i168 = icmp eq ptr %i.bie, null
  %i.bif = load ptr, ptr %i.bhw, align 8, !tbaa !46
  %..i.i169 = select i1 %.not.i.i168, i64 8, i64 48
  %i.big = getelementptr inbounds nuw i8, ptr %i.bif, i64 %..i.i169
  %i.bih = load ptr, ptr %i.big, align 8
  invoke void %i.bih(ptr noundef nonnull align 8 dereferenceable(64) %i.bhw)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit170 unwind label %bb.ms, !inline_history !347

bb.ms:                                            ; preds = %.noexc.i167, %.sink.split.i.i166
  %i.bii = landingpad { ptr, i32 }
          catch ptr null
  %i.bij = extractvalue { ptr, i32 } %i.bii, 0
  call void @__clang_call_terminate(ptr %i.bij) #29
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit170: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit164, %bb.mr, %.noexc.i167
  %i.bik = load ptr, ptr %84, align 8, !tbaa !231 ; 7 uses
  %.not.i171 = icmp eq ptr %i.bik, null
  br i1 %.not.i171, label %bb.mv, label %bb.mt

bb.mt:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit170
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bik, i64 40
  %i.bim = atomicrmw sub ptr %i.bil, i32 1 acq_rel, align 4
  %i.bin = icmp eq i32 %i.bim, 1
  br i1 %i.bin, label %.sink.split.i.i172, label %bb.mv

.sink.split.i.i172:                               ; preds = %bb.mt
  %i.bio = load ptr, ptr %i.bik, align 8, !tbaa !46
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bio, i64 64
  %i.biq = load ptr, ptr %i.bip, align 8
  invoke void %i.biq(ptr noundef nonnull align 8 dereferenceable(64) %i.bik)
          to label %.noexc.i173 unwind label %bb.mu, !inline_history !347

.noexc.i173:                                      ; preds = %.sink.split.i.i172
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bik, i64 8
  %i.bis = load ptr, ptr %i.bir, align 8, !tbaa !348
  %.not.i.i174 = icmp eq ptr %i.bis, null
  %i.bit = load ptr, ptr %i.bik, align 8, !tbaa !46
  %..i.i175 = select i1 %.not.i.i174, i64 8, i64 48
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bit, i64 %..i.i175
  %i.biv = load ptr, ptr %i.biu, align 8
  invoke void %i.biv(ptr noundef nonnull align 8 dereferenceable(64) %i.bik)
          to label %bb.mv unwind label %bb.mu, !inline_history !347

bb.mu:                                            ; preds = %.noexc.i173, %.sink.split.i.i172
  %i.biw = landingpad { ptr, i32 }
          catch ptr null
  %i.bix = extractvalue { ptr, i32 } %i.biw, 0
  call void @__clang_call_terminate(ptr %i.bix) #29
  unreachable

bb.mv:                                            ; preds = %.noexc.i173, %bb.mt, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit170
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #25
  %i.biy = load ptr, ptr %4, align 8, !tbaa !187
  %i.biz = load ptr, ptr %i.biy, align 8, !tbaa !202
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.bja = load ptr, ptr %77, align 16, !tbaa !272, !noalias !349
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bja, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !355
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.83") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %i.bjb, i32 noundef %.069, ptr noundef %i.biz)
          to label %.noexc187 unwind label %bb.pv

.noexc187:                                        ; preds = %bb.mv
  call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.bjc = getelementptr inbounds nuw i8, ptr %87, i64 8 ; 2 uses
  %i.bjd = load <2 x ptr>, ptr %12, align 16, !tbaa !41, !noalias !359
  %i.bje = load ptr, ptr %12, align 16, !tbaa !272, !noalias !359 ; 4 uses
  store <2 x ptr> %i.bjd, ptr %87, align 16, !tbaa !41, !alias.scope !359
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !355
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !349
  %i.bjf = getelementptr inbounds nuw i8, ptr %13, i64 37 ; 2 uses
  store i8 0, ptr %i.bjf, align 1, !tbaa !288, !noalias !349
  %i.bjg = sext i32 %.069 to i64                  ; 2 uses
  %i.bjh = add nsw i64 %i.bjg, 63
  %i.bji = lshr i64 %i.bjh, 6                     ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %13, i8 0, i64 36, i1 false), !noalias !349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25, !noalias !349
  store i64 -1, ptr %i.e, align 8, !tbaa !135, !noalias !349
  %.not.i.i177 = icmp eq i64 %i.bji, 0            ; 3 uses
  br i1 %.not.i.i177, label %bb.my, label %bb.mw

bb.mw:                                            ; preds = %.noexc187
  invoke void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(38) %13, ptr null, i64 noundef %i.bji, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.my unwind label %bb.mx, !noalias !349

bb.mx:                                            ; preds = %bb.mw
  %i.bjj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25, !noalias !349
  %i.bjk = load ptr, ptr %13, align 8, !tbaa !289, !noalias !349 ; 2 uses
  %.not.i.i.i.i.i178 = icmp eq ptr %i.bjk, null
  br i1 %.not.i.i.i.i.i178, label %.body.i, label %.body.sink.split.i

bb.my:                                            ; preds = %bb.mw, %.noexc187
  %i.bjl = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 4 uses
  %i.bjm = getelementptr inbounds nuw i8, ptr %13, i64 28 ; 3 uses
  %i.bjn = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %13, i64 36 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25, !noalias !349
  store i32 %.069, ptr %i.bjn, align 8, !tbaa !290, !noalias !349
  store i32 0, ptr %i.bjm, align 4, !tbaa !291, !noalias !349
  store i32 %.069, ptr %i.bjl, align 8, !tbaa !181, !noalias !349
  store i16 257, ptr %i.bjo, align 4, !noalias !349
  %i.bjp = load ptr, ptr %i.gt, align 8, !tbaa !257, !noalias !349
  invoke void @_ZN8facebook5velox17SelectivityVector13deselectNullsEPKmii(ptr noundef nonnull align 8 dereferenceable(38) %13, ptr noundef %i.bjp, i32 noundef 0, i32 noundef %.069)
          to label %bb.mz unwind label %bb.nk, !noalias !349

bb.mz:                                            ; preds = %bb.my
  %i.bjq = load ptr, ptr %77, align 16, !tbaa !272, !noalias !349
  %i.bjr = load ptr, ptr %i.hc, align 8, !tbaa !261, !noalias !349
  %i.bjs = load ptr, ptr %i.bje, align 8, !tbaa !46, !noalias !349
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjs, i64 200
  %i.bju = load ptr, ptr %i.bjt, align 8, !noalias !349
  invoke void %i.bju(ptr noundef nonnull align 8 dereferenceable(94) %i.bje, ptr noundef %i.bjq, ptr noundef nonnull align 8 dereferenceable(38) %13, ptr noundef %i.bjr)
          to label %bb.na unwind label %bb.nk, !noalias !349

bb.na:                                            ; preds = %bb.mz
  %i.bjv = load ptr, ptr %13, align 8, !tbaa !289, !noalias !349 ; 12 uses
  %i.bjw = load i32, ptr %i.bjn, align 8, !tbaa !290, !noalias !349 ; 13 uses
  %.not.i.i.i.i180 = icmp sgt i32 %i.bjw, 0       ; 2 uses
  br i1 %.not.i.i.i.i180, label %bb.nb, label %bb.nd

bb.nb:                                            ; preds = %bb.na
  %i.bjx = and i32 %i.bjw, 2147483584             ; 2 uses
  %.not3347.i.i.i.i = icmp eq i32 %i.bjx, 0
  br i1 %.not3347.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.nb
  %i.bjy = add nsw i32 %i.bjw, -64
  %i.bjz = lshr i32 %i.bjy, 3
  %i.bka = and i32 %i.bjz, 536870904
  %narrow.i.i = add nuw nsw i32 %i.bka, 8
  %i.bkb = zext nneg i32 %narrow.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bjv, i8 -1, i64 %i.bkb, i1 false), !tbaa !135, !noalias !349
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.preheader.i.i, %bb.nb
  %.not34.i.i.i.i = icmp eq i32 %i.bjw, %i.bjx
  br i1 %.not34.i.i.i.i, label %bb.nd, label %bb.nc

bb.nc:                                            ; preds = %._crit_edge.i.i.i.i
  %i.bkc = lshr i32 %i.bjw, 6
  %i.bkd = and i32 %i.bjw, 63
  %i.bke = zext nneg i32 %i.bkd to i64
  %notmask.i37.i.i.i.i = shl nsw i64 -1, %i.bke
  %i.bkf = xor i64 %notmask.i37.i.i.i.i, -1
  %i.bkg = zext nneg i32 %i.bkc to i64
  %i.bkh = getelementptr inbounds nuw [8 x i8], ptr %i.bjv, i64 %i.bkg ; 2 uses
  %i.bki = load i64, ptr %i.bkh, align 8, !tbaa !135, !noalias !349
  %i.bkj = or i64 %i.bki, %i.bkf
  store i64 %i.bkj, ptr %i.bkh, align 8, !tbaa !135, !noalias !349
  br label %bb.nd

bb.nd:                                            ; preds = %bb.nc, %._crit_edge.i.i.i.i, %bb.na
  store i32 %i.bjw, ptr %i.bjl, align 8, !tbaa !181, !noalias !349
  store i16 257, ptr %i.bjo, align 4, !noalias !349
  %i.bkk = load ptr, ptr %i.gt, align 8, !tbaa !257, !noalias !349 ; 6 uses
  %.sroa.speculated.i.i = call i32 @llvm.smin.i32(i32 %.069, i32 %i.bjw) ; 5 uses
  %.not.i.i389 = icmp sgt i32 %.sroa.speculated.i.i, 0
  br i1 %.not.i.i389, label %bb.ne, label %.noexc.i181

bb.ne:                                            ; preds = %bb.nd
  %i.bkl = and i32 %.sroa.speculated.i.i, 2147483584 ; 3 uses
  %.not3337.i.i = icmp eq i32 %i.bkl, 0
  br i1 %.not3337.i.i, label %._crit_edge.i.i391, label %iter.check

iter.check:                                       ; preds = %bb.ne
  %i.bkm = zext nneg i32 %i.bkl to i64            ; 3 uses
  %i.bkn = add nsw i64 %i.bkm, -64                ; 3 uses
  %i.bko = lshr exact i64 %i.bkn, 6
  %i.bkp = add nuw nsw i64 %i.bko, 1              ; 5 uses
  %min.iters.check = icmp ult i64 %i.bkn, 192
  br i1 %min.iters.check, label %.lr.ph.i.i390.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bkq = add nsw i64 %i.bkm, -64
  %i.bkr = lshr exact i64 %i.bkq, 3
  %i.bks = add nuw nsw i64 %i.bkr, 8              ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bjv, i64 %i.bks
  %scevgep944 = getelementptr i8, ptr %i.bkk, i64 %i.bks
  %bound0 = icmp ult ptr %i.bjv, %scevgep944
  %bound1 = icmp ult ptr %i.bkk, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i390.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check945 = icmp ult i64 %i.bkn, 960
  br i1 %min.iters.check945, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bkp, 12
  %n.vec = and i64 %i.bkp, 576460752303423472     ; 4 uses
  %i.bkt = shl i64 %n.vec, 6                      ; 2 uses
  %i.bku = or disjoint i64 %i.bkt, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %99 = and i64 %index, 288230376151711728        ; 2 uses
  %i.bkv = getelementptr inbounds nuw [8 x i8], ptr %i.bjv, i64 %99 ; 5 uses
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bkv, i64 32 ; 2 uses
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bkv, i64 64 ; 2 uses
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bkv, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %i.bkv, align 8, !tbaa !135, !alias.scope !360, !noalias !363
  %wide.load946 = load <4 x i64>, ptr %i.bkw, align 8, !tbaa !135, !alias.scope !360, !noalias !363
  %wide.load947 = load <4 x i64>, ptr %i.bkx, align 8, !tbaa !135, !alias.scope !360, !noalias !363
  %wide.load948 = load <4 x i64>, ptr %i.bky, align 8, !tbaa !135, !alias.scope !360, !noalias !363
  %i.bkz = getelementptr inbounds nuw [8 x i8], ptr %i.bkk, i64 %99 ; 4 uses
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bkz, i64 32
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bkz, i64 64
  %i.blc = getelementptr inbounds nuw i8, ptr %i.bkz, i64 96
  %wide.load949 = load <4 x i64>, ptr %i.bkz, align 8, !tbaa !135, !alias.scope !365, !noalias !349
  %wide.load950 = load <4 x i64>, ptr %i.bla, align 8, !tbaa !135, !alias.scope !365, !noalias !349
  %wide.load951 = load <4 x i64>, ptr %i.blb, align 8, !tbaa !135, !alias.scope !365, !noalias !349
  %wide.load952 = load <4 x i64>, ptr %i.blc, align 8, !tbaa !135, !alias.scope !365, !noalias !349
  %i.bld = xor <4 x i64> %wide.load949, splat (i64 -1)
  %i.ble = xor <4 x i64> %wide.load950, splat (i64 -1)
  %i.blf = xor <4 x i64> %wide.load951, splat (i64 -1)
  %i.blg = xor <4 x i64> %wide.load952, splat (i64 -1)
  %i.blh = and <4 x i64> %wide.load, %i.bld
  %i.bli = and <4 x i64> %wide.load946, %i.ble
  %i.blj = and <4 x i64> %wide.load947, %i.blf
  %i.blk = and <4 x i64> %wide.load948, %i.blg
  store <4 x i64> %i.blh, ptr %i.bkv, align 8, !tbaa !135, !alias.scope !360, !noalias !363
  store <4 x i64> %i.bli, ptr %i.bkw, align 8, !tbaa !135, !alias.scope !360, !noalias !363
  store <4 x i64> %i.blj, ptr %i.bkx, align 8, !tbaa !135, !alias.scope !360, !noalias !363
  store <4 x i64> %i.blk, ptr %i.bky, align 8, !tbaa !135, !alias.scope !360, !noalias !363
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bll = icmp eq i64 %index.next, %n.vec
  br i1 %i.bll, label %middle.block, label %vector.body, !llvm.loop !366

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bkp, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i391, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i390.preheader, label %vec.epilog.ph, !prof !369

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec955 = and i64 %i.bkp, 576460752303423484  ; 3 uses
  %i.blm = shl i64 %n.vec955, 6                   ; 2 uses
  %i.bln = or disjoint i64 %i.blm, 64
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index956 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next959, %vec.epilog.vector.body ] ; 2 uses
  %100 = and i64 %index956, 288230376151711740    ; 2 uses
  %i.blo = getelementptr inbounds nuw [8 x i8], ptr %i.bjv, i64 %100 ; 2 uses
  %wide.load957 = load <4 x i64>, ptr %i.blo, align 8, !tbaa !135, !alias.scope !360, !noalias !363
  %i.blp = getelementptr inbounds nuw [8 x i8], ptr %i.bkk, i64 %100
  %wide.load958 = load <4 x i64>, ptr %i.blp, align 8, !tbaa !135, !alias.scope !365, !noalias !349
  %i.blq = xor <4 x i64> %wide.load958, splat (i64 -1)
  %i.blr = and <4 x i64> %wide.load957, %i.blq
  store <4 x i64> %i.blr, ptr %i.blo, align 8, !tbaa !135, !alias.scope !360, !noalias !363
  %index.next959 = add nuw i64 %index956, 4       ; 2 uses
  %i.bls = icmp eq i64 %index.next959, %n.vec955
  br i1 %i.bls, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !370

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n960 = icmp eq i64 %i.bkp, %n.vec955
  br i1 %cmp.n960, label %._crit_edge.i.i391, label %.lr.ph.i.i390.preheader

.lr.ph.i.i390.preheader:                          ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv499.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.bkt, %vec.epilog.iter.check ], [ %i.blm, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ 64, %vector.memcheck ], [ %i.bku, %vec.epilog.iter.check ], [ %i.bln, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i390

._crit_edge.i.i391:                               ; preds = %.lr.ph.i.i390, %middle.block, %vec.epilog.middle.block, %bb.ne
  %.not34.i.i = icmp eq i32 %.sroa.speculated.i.i, %i.bkl
  br i1 %.not34.i.i, label %.noexc.i181, label %bb.nf

.lr.ph.i.i390:                                    ; preds = %.lr.ph.i.i390.preheader, %.lr.ph.i.i390
  %indvars.iv499 = phi i64 [ %indvars.iv.next500, %.lr.ph.i.i390 ], [ %indvars.iv499.ph, %.lr.ph.i.i390.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i390 ], [ %indvars.iv.ph, %.lr.ph.i.i390.preheader ] ; 2 uses
  %i.blt = lshr exact i64 %indvars.iv499, 6       ; 2 uses
  %i.blu = getelementptr inbounds nuw [8 x i8], ptr %i.bjv, i64 %i.blt ; 2 uses
  %i.blv = load i64, ptr %i.blu, align 8, !tbaa !135, !noalias !349
  %i.blw = getelementptr inbounds nuw [8 x i8], ptr %i.bkk, i64 %i.blt
  %i.blx = load i64, ptr %i.blw, align 8, !tbaa !135, !noalias !349
  %i.bly = xor i64 %i.blx, -1
  %i.blz = and i64 %i.blv, %i.bly
  store i64 %i.blz, ptr %i.blu, align 8, !tbaa !135, !noalias !349
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.not = icmp samesign ult i64 %indvars.iv, %i.bkm
  %indvars.iv.next500 = add nuw nsw i64 %indvars.iv499, 64
  br i1 %.not33.i.i.not, label %.lr.ph.i.i390, label %._crit_edge.i.i391, !llvm.loop !371

bb.nf:                                            ; preds = %._crit_edge.i.i391
  %i.bma = lshr i32 %.sroa.speculated.i.i, 6
  %i.bmb = and i32 %.sroa.speculated.i.i, 63
  %i.bmc = zext nneg i32 %i.bmb to i64
  %notmask.i36.i.i = shl nsw i64 -1, %i.bmc
  %i.bmd = zext nneg i32 %i.bma to i64            ; 2 uses
  %i.bme = getelementptr inbounds nuw [8 x i8], ptr %i.bjv, i64 %i.bmd ; 2 uses
  %i.bmf = load i64, ptr %i.bme, align 8, !tbaa !135, !noalias !349
  %i.bmg = getelementptr inbounds nuw [8 x i8], ptr %i.bkk, i64 %i.bmd
  %i.bmh = load i64, ptr %i.bmg, align 8, !tbaa !135, !noalias !349
  %i.bmi = xor i64 %i.bmh, -1
  %i.bmj = or i64 %notmask.i36.i.i, %i.bmi
  %i.bmk = and i64 %i.bmj, %i.bmf
  store i64 %i.bmk, ptr %i.bme, align 8, !tbaa !135, !noalias !349
  br label %.noexc.i181

.noexc.i181:                                      ; preds = %bb.nf, %._crit_edge.i.i391, %bb.nd
  br i1 %.not.i.i.i.i180, label %bb.ng, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i.i.i

bb.ng:                                            ; preds = %.noexc.i181
  %i.bml = and i32 %i.bjw, 2147483584             ; 4 uses
  %i.bmm = zext nneg i32 %i.bml to i64
  %.not37.i.i.not.i.i.i183932.not = icmp eq i32 %i.bml, 0
  br i1 %.not37.i.i.not.i.i.i183932.not, label %.critedge.i.i.i.i.i184, label %.lr.ph934

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i: ; preds = %.lr.ph934
  %indvars.iv.next.i.i.i186 = add nuw nsw i64 %indvars.iv.i.i.i182933, 64 ; 2 uses
  %.not37.i.i.not.i.i.i183 = icmp samesign ult i64 %indvars.iv.next.i.i.i186, %i.bmm
  br i1 %.not37.i.i.not.i.i.i183, label %.lr.ph934, label %.critedge.i.i.i.i.i184, !llvm.loop !372

.lr.ph934:                                        ; preds = %bb.ng, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i
  %indvars.iv.i.i.i182933 = phi i64 [ %indvars.iv.next.i.i.i186, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i ], [ 0, %bb.ng ] ; 3 uses
  %i.bmn = lshr exact i64 %indvars.iv.i.i.i182933, 3
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bjv, i64 %i.bmn
  %i.bmp = load i64, ptr %i.bmo, align 8, !tbaa !135, !noalias !349 ; 2 uses
  %.not.i42.i.i.i.i.i = icmp eq i64 %i.bmp, 0
  br i1 %.not.i42.i.i.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i.i.i, !llvm.loop !372

.critedge.i.i.i.i.i184:                           ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i, %bb.ng
  %.not38.i.i.i.i.i185 = icmp eq i32 %i.bjw, %i.bml
  br i1 %.not38.i.i.i.i.i185, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i.i.i, label %bb.nh

bb.nh:                                            ; preds = %.critedge.i.i.i.i.i184
  %i.bmq = lshr i32 %i.bjw, 6
  %i.bmr = and i32 %i.bjw, 63
  %i.bms = zext nneg i32 %i.bmr to i64
  %notmask.i43.i.i.i.i.i = shl nsw i64 -1, %i.bms
  %i.bmt = xor i64 %notmask.i43.i.i.i.i.i, -1
  %i.bmu = zext nneg i32 %i.bmq to i64
  %i.bmv = getelementptr inbounds nuw [8 x i8], ptr %i.bjv, i64 %i.bmu
  %i.bmw = load i64, ptr %i.bmv, align 8, !tbaa !135, !noalias !349
  %i.bmx = and i64 %i.bmw, %i.bmt                 ; 2 uses
  %.not.i44.i.i.i.i.i = icmp eq i64 %i.bmx, 0
  br i1 %.not.i44.i.i.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i.i.i: ; preds = %bb.nh, %.critedge.i.i.i.i.i184, %.noexc.i181
  store i32 0, ptr %i.bjm, align 4, !tbaa !291, !noalias !349
  store i32 0, ptr %i.bjl, align 8, !tbaa !181, !noalias !349
  store i16 256, ptr %i.bjo, align 4, !noalias !349
  br label %_ZN8facebook5velox17SelectivityVector16deselectNonNullsEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i.i.i: ; preds = %.lr.ph934
  %i.bmy = trunc nuw nsw i64 %indvars.iv.i.i.i182933 to i32
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i.i.i, %bb.nh
  %.sink67.i.i.i.i.i = phi i64 [ %i.bmx, %bb.nh ], [ %i.bmp, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i.i.i ]
  %.sink65.i.i.i.i.i = phi i32 [ %i.bml, %bb.nh ], [ %i.bmy, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i.i.i ]
  %i.bmz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i.i.i, i1 true)
  %i.bna = trunc nuw nsw i64 %i.bmz to i32
  %i.bnb = or disjoint i32 %.sink65.i.i.i.i.i, %i.bna ; 2 uses
  store i32 %i.bnb, ptr %i.bjm, align 4, !tbaa !291, !noalias !349
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !349
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25, !noalias !349
  store i32 -1, ptr %i.d, align 4, !tbaa !3, !noalias !349
  store ptr %i.bjv, ptr %10, align 8, !tbaa !373, !noalias !349
  %i.bnc = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.d, ptr %i.bnc, align 8, !tbaa !310, !noalias !349
  %i.bnd = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 1, ptr %i.bnd, align 8, !tbaa !375, !noalias !349
  store ptr %i.bjv, ptr %11, align 8, !tbaa !376, !noalias !349
  %i.bne = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.d, ptr %i.bne, align 8, !tbaa !310, !noalias !349
  %i.bnf = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i8 1, ptr %i.bnf, align 8, !tbaa !378, !noalias !349
  %i.bng = invoke noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.bnb, i32 noundef %i.bjw, ptr noundef nonnull byval(%class.anon.589) align 8 %10, ptr noundef nonnull byval(%class.anon.591) align 8 %11)
          to label %.noexc17.i unwind label %bb.nk, !noalias !349 ; 0 uses

.noexc17.i:                                       ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i
  %i.bnh = load i32, ptr %i.d, align 4, !tbaa !3, !noalias !349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25, !noalias !349
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !349
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !349
  %i.bni = add nsw i32 %i.bnh, 1
  store i32 %i.bni, ptr %i.bjl, align 8, !tbaa !181, !noalias !349
  store i8 0, ptr %i.bjf, align 1, !tbaa !288, !noalias !349
  br label %_ZN8facebook5velox17SelectivityVector16deselectNonNullsEPKmii.exit.i

_ZN8facebook5velox17SelectivityVector16deselectNonNullsEPKmii.exit.i: ; preds = %.noexc17.i, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i.i.i
  %i.bnj = load ptr, ptr %78, align 16, !tbaa !272, !noalias !349
  %i.bnk = load ptr, ptr %i.ib, align 8, !tbaa !271, !noalias !349
  %i.bnl = load ptr, ptr %i.bje, align 8, !tbaa !46, !noalias !349
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bnl, i64 200
  %i.bnn = load ptr, ptr %i.bnm, align 8, !noalias !349
  invoke void %i.bnn(ptr noundef nonnull align 8 dereferenceable(94) %i.bje, ptr noundef %i.bnj, ptr noundef nonnull align 8 dereferenceable(38) %13, ptr noundef %i.bnk)
          to label %bb.ni unwind label %bb.nk, !noalias !349

bb.ni:                                            ; preds = %_ZN8facebook5velox17SelectivityVector16deselectNonNullsEPKmii.exit.i
  %i.bno = load ptr, ptr %13, align 8, !tbaa !289, !noalias !349 ; 3 uses
  %.not.i.i.i.i18.i = icmp eq ptr %i.bno, null
  br i1 %.not.i.i.i.i18.i, label %bb.nl, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %i.bnp = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bnq = load ptr, ptr %i.bnp, align 8, !tbaa !316, !noalias !349
  %i.bnr = ptrtoint ptr %i.bnq to i64
  %i.bns = ptrtoint ptr %i.bno to i64
  %i.bnt = sub i64 %i.bnr, %i.bns
  call void @_ZdlPvm(ptr noundef nonnull %i.bno, i64 noundef %i.bnt) #27, !noalias !349
  br label %bb.nl

bb.nk:                                            ; preds = %_ZN8facebook5velox17SelectivityVector16deselectNonNullsEPKmii.exit.i, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i, %bb.mz, %bb.my
  %i.bnu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bnv = load ptr, ptr %13, align 8, !tbaa !289, !noalias !349 ; 2 uses
  %.not.i.i.i.i20.i = icmp eq ptr %i.bnv, null
  br i1 %.not.i.i.i.i20.i, label %.body.i, label %.body.sink.split.i

.body.sink.split.i:                               ; preds = %bb.nk, %bb.mx
  %.sink37.i = phi ptr [ %i.bjk, %bb.mx ], [ %i.bnv, %bb.nk ] ; 2 uses
  %.pn.ph.i = phi { ptr, i32 } [ %i.bjj, %bb.mx ], [ %i.bnu, %bb.nk ]
  %i.bnw = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bnx = load ptr, ptr %i.bnw, align 8, !tbaa !316, !noalias !349
  %i.bny = ptrtoint ptr %i.bnx to i64
  %i.bnz = ptrtoint ptr %.sink37.i to i64
  %i.boa = sub i64 %i.bny, %i.bnz
  call void @_ZdlPvm(ptr noundef nonnull %.sink37.i, i64 noundef %i.boa) #27, !noalias !349
  br label %.body.i

.body.i:                                          ; preds = %.body.sink.split.i, %bb.nk, %bb.mx
  %.pn.i179 = phi { ptr, i32 } [ %i.bjj, %bb.mx ], [ %i.bnu, %bb.nk ], [ %.pn.ph.i, %.body.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !349
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %87) #25
  br label %.body188

bb.nl:                                            ; preds = %bb.nj, %bb.ni
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !349
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #25
  %i.bob = getelementptr inbounds nuw i8, ptr %89, i64 8
  %i.boc = load ptr, ptr %i.bjc, align 8, !tbaa !38 ; 2 uses
  %i.bod = load <2 x ptr>, ptr %87, align 16, !tbaa !41
  store <2 x ptr> %i.bod, ptr %89, align 16, !tbaa !41
  %.not.i.i.i190 = icmp eq ptr %i.boc, null
  br i1 %.not.i.i.i190, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit192, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.boe = getelementptr inbounds nuw i8, ptr %i.boc, i64 8 ; 3 uses
  %i.bof = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i191 = icmp eq i8 %i.bof, 0
  br i1 %.not.i.i.i.i191, label %bb.no, label %bb.nn

end_hunk_0
