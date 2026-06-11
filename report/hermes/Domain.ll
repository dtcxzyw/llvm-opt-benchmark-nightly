inline.NumInlined: 605
inline.NumDeleted: 359
begin_hunk_0_@_ZN6hermes2vm6Domain20importCJSModuleTableENS0_6HandleIS1_EERNS0_7RuntimeEPNS0_13RuntimeModuleE:bb.a
  store i64 34, ptr %i.ht, align 8, !tbaa !67
  %i.hu = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.hu, align 8, !tbaa !68
  store ptr @.str.2, ptr %7, align 8, !tbaa !69
  %i.hv = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %i.hv, align 8, !tbaa !70
  %i.hw = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %.thread

bb.ab:                                            ; preds = %._crit_edge298
  %i.hx = load ptr, ptr %5, align 8, !tbaa !60
  %.sroa.0.0.copyload.i.i158 = load i64, ptr %i.hx, align 8, !tbaa !44
  %i.hy = and i64 %.sroa.0.0.copyload.i.i158, 281474976710655
  %i.hz = inttoptr i64 %i.hy to ptr
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ib = load atomic i32, ptr %i.ia monotonic, align 4
  %i.ic = zext i32 %i.ib to i64
  %i.id = icmp samesign ugt i64 %i.gs, %i.ic
  br i1 %i.id, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.ie = trunc nuw i64 %i.gs to i32
  %i.if = call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE5shiftERNS0_13MutableHandleIS3_EERNS0_7RuntimeEjjj(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 0, i32 noundef 0, i32 noundef %i.ie) #11
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %.thread, label %bb.ad, !prof !71

bb.ad:                                            ; preds = %bb.ac
  %.sroa.0.0.copyload.i.i159 = load i64, ptr %0, align 8, !tbaa !44
  %i.ih = and i64 %.sroa.0.0.copyload.i.i159, 281474976710655
  %i.ii = inttoptr i64 %i.ih to ptr               ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 24 ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !19
  %i.im = icmp ugt i64 %i.gr, %i.il
  br i1 %i.im, label %bb.ae, label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE7reserveEm.exit169

bb.ae:                                            ; preds = %bb.ad
  %mul.ov.i.i.i160 = icmp ugt i64 %i.gr, 2305843009213693951
  br i1 %mul.ov.i.i.i160, label %bb.af, label %_ZN6hermes14checkedMalloc2Emm.exit.i.i161, !prof !71

bb.af:                                            ; preds = %bb.ae
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.3) #12
  unreachable

_ZN6hermes14checkedMalloc2Emm.exit.i.i161:        ; preds = %bb.ae
  %mul.val.i.i.i162 = shl nuw i64 %i.gr, 3
  %i.in = call noalias noundef nonnull ptr @_ZN6hermes13checkedMallocEm(i64 noundef %mul.val.i.i.i162) #11 ; 5 uses
  %i.io = load ptr, ptr %i.ij, align 8, !tbaa !7  ; 7 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !13 ; 2 uses
  %.idx.i.i163 = shl i64 %i.iq, 3                 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 %.idx.i.i163
  %.not.i.i164 = icmp eq i64 %i.iq, 0
  br i1 %.not.i.i164, label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit.i168, label %.lr.ph.i.i165.preheader

.lr.ph.i.i165.preheader:                          ; preds = %_ZN6hermes14checkedMalloc2Emm.exit.i.i161
  %i.is = ptrtoaddr ptr %i.io to i64
  %i.it = ptrtoaddr ptr %i.in to i64
  %i.iu = ptrtoint ptr %i.io to i64               ; 3 uses
  %i.iv = add i64 %.idx.i.i163, %i.iu
  %i.iw = add i64 %i.iu, 8
  %umax360 = call i64 @llvm.umax.i64(i64 %i.iv, i64 %i.iw)
  %i.ix = xor i64 %i.iu, -1
  %i.iy = add i64 %umax360, %i.ix                 ; 2 uses
  %i.iz = lshr i64 %i.iy, 3
  %i.ja = add nuw nsw i64 %i.iz, 1                ; 2 uses
  %min.iters.check362 = icmp ult i64 %i.iy, 56
  %i.jb = sub i64 %i.it, %i.is
  %diff.check359 = icmp ult i64 %i.jb, 32
  %or.cond377 = select i1 %min.iters.check362, i1 true, i1 %diff.check359
  br i1 %or.cond377, label %.lr.ph.i.i165.preheader378, label %vector.ph363

vector.ph363:                                     ; preds = %.lr.ph.i.i165.preheader
  %n.vec365 = and i64 %i.ja, 4611686018427387900  ; 3 uses
  %i.jc = shl i64 %n.vec365, 3                    ; 2 uses
  %i.jd = getelementptr i8, ptr %i.in, i64 %i.jc
  %i.je = getelementptr i8, ptr %i.io, i64 %i.jc
  br label %vector.body366

vector.body366:                                   ; preds = %vector.body366, %vector.ph363
  %index367 = phi i64 [ 0, %vector.ph363 ], [ %index.next372, %vector.body366 ] ; 2 uses
  %i.jf = shl i64 %index367, 3                    ; 2 uses
  %next.gep368 = getelementptr i8, ptr %i.in, i64 %i.jf ; 2 uses
  %next.gep369 = getelementptr i8, ptr %i.io, i64 %i.jf ; 2 uses
  %i.jg = getelementptr i8, ptr %next.gep369, i64 16
  %wide.load370 = load <2 x ptr>, ptr %next.gep369, align 8, !tbaa !17
  %wide.load371 = load <2 x ptr>, ptr %i.jg, align 8, !tbaa !17
  %i.jh = getelementptr i8, ptr %next.gep368, i64 16
  store <2 x ptr> %wide.load370, ptr %next.gep368, align 8, !tbaa !17
  store <2 x ptr> %wide.load371, ptr %i.jh, align 8, !tbaa !17
  %index.next372 = add nuw i64 %index367, 4       ; 2 uses
  %i.ji = icmp eq i64 %index.next372, %n.vec365
  br i1 %i.ji, label %middle.block373, label %vector.body366, !llvm.loop !141

middle.block373:                                  ; preds = %vector.body366
  %cmp.n374 = icmp eq i64 %i.ja, %n.vec365
  br i1 %cmp.n374, label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit.i168, label %.lr.ph.i.i165.preheader378

.lr.ph.i.i165.preheader378:                       ; preds = %.lr.ph.i.i165.preheader, %middle.block373
  %.012.i.i166.ph = phi ptr [ %i.in, %.lr.ph.i.i165.preheader ], [ %i.jd, %middle.block373 ]
  %.01011.i.i167.ph = phi ptr [ %i.io, %.lr.ph.i.i165.preheader ], [ %i.je, %middle.block373 ]
  br label %.lr.ph.i.i165

.lr.ph.i.i165:                                    ; preds = %.lr.ph.i.i165.preheader378, %.lr.ph.i.i165
  %.012.i.i166 = phi ptr [ %i.jl, %.lr.ph.i.i165 ], [ %.012.i.i166.ph, %.lr.ph.i.i165.preheader378 ] ; 2 uses
  %.01011.i.i167 = phi ptr [ %i.jk, %.lr.ph.i.i165 ], [ %.01011.i.i167.ph, %.lr.ph.i.i165.preheader378 ] ; 2 uses
  %i.jj = load ptr, ptr %.01011.i.i167, align 8, !tbaa !17
  store ptr %i.jj, ptr %.012.i.i166, align 8, !tbaa !17
  %i.jk = getelementptr inbounds nuw i8, ptr %.01011.i.i167, i64 8 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.012.i.i166, i64 8
  %i.jm = icmp ult ptr %i.jk, %i.ir
  br i1 %i.jm, label %.lr.ph.i.i165, label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit.i168, !llvm.loop !142

_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit.i168: ; preds = %.lr.ph.i.i165, %middle.block373, %_ZN6hermes14checkedMalloc2Emm.exit.i.i161
  call void @free(ptr noundef %i.io) #11
  store ptr %i.in, ptr %i.ij, align 8, !tbaa !7
  store i64 %i.gr, ptr %i.ik, align 8, !tbaa !19
  %.sroa.0.0.copyload.i.i170.pre = load i64, ptr %0, align 8, !tbaa !44
  %.pre324 = and i64 %.sroa.0.0.copyload.i.i170.pre, 281474976710655
  %.pre326 = inttoptr i64 %.pre324 to ptr
  br label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE7reserveEm.exit169

_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE7reserveEm.exit169: ; preds = %bb.ad, %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit.i168
  %.pre-phi327 = phi ptr [ %i.ii, %bb.ad ], [ %.pre326, %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit.i168 ]
  %i.jn = getelementptr inbounds nuw i8, ptr %.pre-phi327, i64 16
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !13 ; 2 uses
  %.not114300 = icmp ugt i64 %i.jo, %.2104.lcssa
  br i1 %.not114300, label %.loopexit, label %.lr.ph302

.lr.ph302:                                        ; preds = %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE7reserveEm.exit169
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 856
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph302, %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE9push_backEOS3_RNS0_7HadesGCE.exit173
  %.0109301 = phi i64 [ %i.jo, %.lr.ph302 ], [ %i.kc, %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE9push_backEOS3_RNS0_7HadesGCE.exit173 ]
  %.sroa.0.0.copyload.i.i171 = load i64, ptr %0, align 8, !tbaa !44
  %i.jq = and i64 %.sroa.0.0.copyload.i.i171, 281474976710655
  %i.jr = inttoptr i64 %i.jq to ptr               ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 3 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !13 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !19
  %i.jx = icmp eq i64 %i.ju, %i.jw
  br i1 %i.jx, label %bb.ah, label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE9push_backEOS3_RNS0_7HadesGCE.exit173, !prof !71

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE4growERNS0_7HadesGCE(ptr noundef nonnull align 8 dereferenceable(24) %i.js, ptr noundef nonnull align 8 dereferenceable(8112) %i.jp)
  %.pre.i172 = load i64, ptr %i.jt, align 8, !tbaa !13
  br label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE9push_backEOS3_RNS0_7HadesGCE.exit173

_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE9push_backEOS3_RNS0_7HadesGCE.exit173: ; preds = %bb.ag, %bb.ah
  %i.jy = phi i64 [ %.pre.i172, %bb.ah ], [ %i.ju, %bb.ag ] ; 2 uses
  %i.jz = load ptr, ptr %i.js, align 8, !tbaa !7
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.jy
  store ptr null, ptr %i.ka, align 8, !tbaa !17
  %i.kb = add i64 %i.jy, 1
  store i64 %i.kb, ptr %i.jt, align 8, !tbaa !13
  %i.kc = add i64 %.0109301, 1                    ; 2 uses
  %.not114 = icmp ugt i64 %i.kc, %.2104.lcssa
  br i1 %.not114, label %.loopexit, label %bb.ag, !llvm.loop !143

.loopexit:                                        ; preds = %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE9push_backEOS3_RNS0_7HadesGCE.exit173, %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE7reserveEm.exit169, %bb.ab
  %.sroa.0.0.copyload.i.i174 = load i64, ptr %0, align 8, !tbaa !44
  %i.kd = and i64 %.sroa.0.0.copyload.i.i174, 281474976710655
  %i.ke = inttoptr i64 %i.kd to ptr               ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 84 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 8 ; 2 uses
  %i.kh = load ptr, ptr %i.b, align 8, !tbaa !39  ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 192
  %.sroa.0.0.copyload.i176 = load ptr, ptr %i.ki, align 8, !tbaa !88 ; 2 uses
  %.sroa.2.0..sroa_idx.i177 = getelementptr inbounds nuw i8, ptr %i.kh, i64 200
  %.sroa.2.0.copyload.i178 = load i64, ptr %.sroa.2.0..sroa_idx.i177, align 8, !tbaa !44 ; 2 uses
  %.idx314 = shl nuw nsw i64 %.sroa.2.0.copyload.i178, 3
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i176, i64 %.idx314
  %.not115303 = icmp eq i64 %.sroa.2.0.copyload.i178, 0
  br i1 %.not115303, label %._crit_edge307, label %.lr.ph306

.lr.ph306:                                        ; preds = %.loopexit
  %i.kk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.kl = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.km = getelementptr inbounds nuw i8, ptr %i.ke, i64 88 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 3 uses
  br label %bb.ai

._crit_edge307.loopexit:                          ; preds = %bb.as
  %.pre320 = load ptr, ptr %i.b, align 8, !tbaa !39
  br label %._crit_edge307

._crit_edge307:                                   ; preds = %._crit_edge307.loopexit, %.loopexit
  %i.kp = phi ptr [ %.pre320, %._crit_edge307.loopexit ], [ %i.kh, %.loopexit ] ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 208
  %.sroa.0.0.copyload.i181 = load ptr, ptr %i.kq, align 8, !tbaa !88 ; 2 uses
  %.sroa.2.0..sroa_idx.i182 = getelementptr inbounds nuw i8, ptr %i.kp, i64 216
  %.sroa.2.0.copyload.i183 = load i64, ptr %.sroa.2.0..sroa_idx.i182, align 8, !tbaa !44 ; 2 uses
  %.idx315 = shl nuw nsw i64 %.sroa.2.0.copyload.i183, 3
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i181, i64 %.idx315
  %.not116308 = icmp eq i64 %.sroa.2.0.copyload.i183, 0
  br i1 %.not116308, label %._crit_edge312, label %.lr.ph311

.lr.ph311:                                        ; preds = %._crit_edge307
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ke, i64 88 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 3 uses
  br label %bb.au

bb.ai:                                            ; preds = %.lr.ph306, %bb.as
  %.0110304 = phi ptr [ %.sroa.0.0.copyload.i176, %.lr.ph306 ], [ %i.nx, %bb.as ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.kv = load i32, ptr %.0110304, align 4, !tbaa !92 ; 2 uses
  %i.kw = zext i32 %i.kv to i64                   ; 2 uses
  %i.kx = load ptr, ptr %i.kk, align 8, !tbaa !94
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.kw
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !3  ; 2 uses
  %i.la = icmp ult i32 %i.kz, 536870910
  br i1 %i.la, label %_ZN6hermes2vm13RuntimeModule34getSymbolIDFromStringIDMayAllocateEj.exit198, label %bb.aj, !prof !59

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.lb = load ptr, ptr %i.b, align 8, !tbaa !39  ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 304
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !97
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.kw
  %i.lf = load i32, ptr %i.le, align 1            ; 5 uses
  %i.lg = icmp ugt i32 %i.lf, -16777217
  br i1 %i.lg, label %bb.ak, label %bb.al, !prof !71

bb.ak:                                            ; preds = %bb.aj
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lb, i64 312
  %i.li = lshr i32 %i.lf, 1
  %i.lj = and i32 %i.li, 8388607
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = load ptr, ptr %i.lh, align 8, !tbaa !137
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %i.lk ; 2 uses
  %.sroa.0.0.copyload.i.i195 = load i32, ptr %i.lm, align 1, !tbaa !3
  %.sroa.4.0..sroa_idx.i.i196 = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %.sroa.4.0.copyload.i.i197 = load i32, ptr %.sroa.4.0..sroa_idx.i.i196, align 1, !tbaa !3
  br label %_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj.exit.i186

bb.al:                                            ; preds = %bb.aj
  %i.ln = lshr i32 %i.lf, 1
  %i.lo = and i32 %i.ln, 8388607
  %i.lp = lshr i32 %i.lf, 24
  br label %_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj.exit.i186

_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj.exit.i186: ; preds = %bb.al, %bb.ak
  %.sink.i.i187 = phi i32 [ %i.lp, %bb.al ], [ %.sroa.4.0.copyload.i.i197, %bb.ak ]
  %.sroa.0.0.i.i188 = phi i32 [ %i.lo, %bb.al ], [ %.sroa.0.0.copyload.i.i195, %bb.ak ]
  %i.lq = shl i32 %i.lf, 31
  %spec.select.i7.i.i189 = or i32 %.sink.i.i187, %i.lq
  %.sroa.3.0.insert.ext.i.i190 = zext i32 %spec.select.i7.i.i189 to i64
  %.sroa.3.0.insert.shift.i.i191 = shl nuw i64 %.sroa.3.0.insert.ext.i.i190, 32
  %.sroa.0.0.insert.ext.i.i192 = zext i32 %.sroa.0.0.i.i188 to i64
  %.sroa.0.0.insert.insert.i.i193 = or disjoint i64 %.sroa.3.0.insert.shift.i.i191, %.sroa.0.0.insert.ext.i.i192
  store i64 %.sroa.0.0.insert.insert.i.i193, ptr %3, align 8
  %i.lr = call i32 @_ZN6hermes2vm13RuntimeModule35createSymbolFromStringIDMayAllocateEjRKNS_16StringTableEntryENS_8OptValueIjEE(ptr noundef nonnull align 8 dereferenceable(192) %2, i32 noundef %i.kv, ptr noundef nonnull align 4 dereferenceable(8) %3, i64 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %_ZN6hermes2vm13RuntimeModule34getSymbolIDFromStringIDMayAllocateEj.exit198

_ZN6hermes2vm13RuntimeModule34getSymbolIDFromStringIDMayAllocateEj.exit198: ; preds = %bb.ai, %_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj.exit.i186
  %.sroa.03.0.i194 = phi i32 [ %i.kz, %bb.ai ], [ %i.lr, %_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj.exit.i186 ]
  store i32 %.sroa.03.0.i194, ptr %8, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %.sroa.0.0.copyload.i.i199 = load i64, ptr %0, align 8, !tbaa !44
  %i.ls = and i64 %.sroa.0.0.copyload.i.i199, 281474976710655
  %i.lt = inttoptr i64 %i.ls to ptr
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 -1, ptr %i.a, align 4, !tbaa !3
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E11try_emplaceIJjEEESt4pairINS_16DenseMapIteratorIS4_jS6_S9_Lb0EEEbERKS4_DpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.214") align 8 %9, ptr noundef nonnull align 1 dereferenceable(1) %i.lu, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.lv = load i8, ptr %i.kl, align 8, !tbaa !144, !range !147, !noundef !148
  %i.lw = trunc nuw i8 %i.lv to i1
  br i1 %i.lw, label %bb.am, label %bb.as

bb.am:                                            ; preds = %_ZN6hermes2vm13RuntimeModule34getSymbolIDFromStringIDMayAllocateEj.exit198
  %.sroa.0.0.copyload.i.i200 = load i64, ptr %0, align 8, !tbaa !44
  %i.lx = and i64 %.sroa.0.0.copyload.i.i200, 281474976710655
  %i.ly = inttoptr i64 %i.lx to ptr
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 40
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !149
  %i.mb = add i32 %i.ma, -1                       ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.0110304, i64 4
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !150
  %i.me = load i8, ptr %i.km, align 4, !tbaa !151, !range !147, !noundef !148
  %i.mf = trunc nuw i8 %i.me to i1
  br i1 %i.mf, label %bb.ao, label %bb.an, !prof !59

bb.an:                                            ; preds = %bb.am
  store i32 %i.mb, ptr %i.kf, align 4, !tbaa !3
  store i8 1, ptr %i.km, align 4, !tbaa !152
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.mg = mul i32 %i.mb, 3                        ; 4 uses
  %i.mh = load ptr, ptr %5, align 8, !tbaa !60    ; 2 uses
  %.sroa.0.0.copyload.i.i.i201 = load i64, ptr %i.mh, align 8, !tbaa !44
  %i.mi = and i64 %.sroa.0.0.copyload.i.i.i201, 281474976710655
  %i.mj = inttoptr i64 %i.mi to ptr
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = zext i32 %i.mg to i64
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.mk, i64 %i.ml ; 3 uses
  %i.mn = load ptr, ptr %i.kn, align 8, !tbaa !87 ; 2 uses
  %i.mo = ptrtoint ptr %i.mm to i64
  %i.mp = and i64 %i.mo, 1125899902648320
  %i.mq = inttoptr i64 %i.mp to ptr
  %i.mr = icmp eq ptr %i.mn, %i.mq
  br i1 %i.mr, label %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i, label %bb.ap, !prof !59

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.ko, ptr noundef nonnull align 8 dereferenceable(8) %i.mm, i64 -1970324836974592) #11
  %.pre13.i = load ptr, ptr %5, align 8, !tbaa !60
  %.pre15.i = load ptr, ptr %i.kn, align 8, !tbaa !87
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i: ; preds = %bb.ap, %bb.ao
  %i.ms = phi ptr [ %i.mn, %bb.ao ], [ %.pre15.i, %bb.ap ] ; 2 uses
  %i.mt = phi ptr [ %i.mh, %bb.ao ], [ %.pre13.i, %bb.ap ] ; 2 uses
  store i64 -1970324836974592, ptr %i.mm, align 8, !tbaa !79
  %.sroa.0.0.copyload.i.i7.i = load i64, ptr %i.mt, align 8, !tbaa !44
  %i.mu = and i64 %.sroa.0.0.copyload.i.i7.i, 281474976710655
  %i.mv = inttoptr i64 %i.mu to ptr
  %i.mw = add i32 %i.mg, 1
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.my = zext i32 %i.mw to i64
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %i.my ; 3 uses
  %i.na = ptrtoint ptr %i.mz to i64
  %i.nb = and i64 %i.na, 1125899902648320
  %i.nc = inttoptr i64 %i.nb to ptr
  %i.nd = icmp eq ptr %i.ms, %i.nc
  br i1 %i.nd, label %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit8.i, label %bb.aq, !prof !59

bb.aq:                                            ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.ko, ptr noundef nonnull align 8 dereferenceable(8) %i.mz, i64 -1548112371908608) #11
  %.pre17.i = load ptr, ptr %5, align 8, !tbaa !60
  %.pre20.i = load ptr, ptr %i.kn, align 8, !tbaa !87
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit8.i

_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit8.i: ; preds = %bb.aq, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i
  %i.ne = phi ptr [ %i.ms, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i ], [ %.pre20.i, %bb.aq ]
  %i.nf = phi ptr [ %i.mt, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i ], [ %.pre17.i, %bb.aq ]
  store i64 -1548112371908608, ptr %i.mz, align 8, !tbaa !79
  %.sroa.0.0.copyload.i.i9.i = load i64, ptr %i.nf, align 8, !tbaa !44
  %i.ng = and i64 %.sroa.0.0.copyload.i.i9.i, 281474976710655
  %i.nh = inttoptr i64 %i.ng to ptr
  %i.ni = add i32 %i.mg, 2
  %i.nj = zext i32 %i.md to i64
  %i.nk = or disjoint i64 %i.nj, -1125899906842624 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nm = zext i32 %i.ni to i64
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %i.nm ; 3 uses
  %i.no = ptrtoint ptr %i.nn to i64
  %i.np = and i64 %i.no, 1125899902648320
  %i.nq = inttoptr i64 %i.np to ptr
  %i.nr = icmp eq ptr %i.ne, %i.nq
  br i1 %i.nr, label %"_ZZN6hermes2vm6Domain20importCJSModuleTableENS0_6HandleIS1_EERNS0_7RuntimeEPNS0_13RuntimeModuleEENK3$_1clEjj.exit", label %bb.ar, !prof !59

bb.ar:                                            ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit8.i
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.ko, ptr noundef nonnull align 8 dereferenceable(8) %i.nn, i64 %i.nk) #11
  br label %"_ZZN6hermes2vm6Domain20importCJSModuleTableENS0_6HandleIS1_EERNS0_7RuntimeEPNS0_13RuntimeModuleEENK3$_1clEjj.exit"

"_ZZN6hermes2vm6Domain20importCJSModuleTableENS0_6HandleIS1_EERNS0_7RuntimeEPNS0_13RuntimeModuleEENK3$_1clEjj.exit": ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit8.i, %bb.ar
  store i64 %i.nk, ptr %i.nn, align 8, !tbaa !79
  %i.ns = zext i32 %i.mb to i64
  %i.nt = load ptr, ptr %i.kg, align 8, !tbaa !7
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.ns
  store ptr %2, ptr %i.nu, align 8, !tbaa !17
  %i.nv = load ptr, ptr %9, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 4
  store i32 %i.mg, ptr %i.nw, align 4, !tbaa !153
  br label %bb.as

bb.as:                                            ; preds = %"_ZZN6hermes2vm6Domain20importCJSModuleTableENS0_6HandleIS1_EERNS0_7RuntimeEPNS0_13RuntimeModuleEENK3$_1clEjj.exit", %_ZN6hermes2vm13RuntimeModule34getSymbolIDFromStringIDMayAllocateEj.exit198
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  %i.nx = getelementptr inbounds nuw i8, ptr %.0110304, i64 8 ; 2 uses
  %.not115 = icmp eq ptr %i.nx, %i.kj
  br i1 %.not115, label %._crit_edge307.loopexit, label %bb.ai

._crit_edge312:                                   ; preds = %bb.bb, %._crit_edge307
  %.sroa.0.0.copyload.i.i203 = load i64, ptr %0, align 8, !tbaa !44
  %i.ny = and i64 %.sroa.0.0.copyload.i.i203, 281474976710655
  %i.nz = inttoptr i64 %i.ny to ptr
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 4 ; 3 uses
  %10 = load ptr, ptr %5, align 8, !tbaa !60
  %.sroa.0.0.copyload.i.i204 = load i64, ptr %10, align 8, !tbaa !44 ; 2 uses
  %i.ob = and i64 %.sroa.0.0.copyload.i.i204, 281474976710655 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !87
  %i.oe = ptrtoint ptr %i.oa to i64
  %i.of = and i64 %i.oe, 562949949227008
  %i.og = inttoptr i64 %i.of to ptr
  %i.oh = icmp eq ptr %i.od, %i.og
  br i1 %i.oh, label %_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_11HermesValueEEEE3setERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit, label %bb.at, !prof !59

bb.at:                                            ; preds = %._crit_edge312
  %i.oi = inttoptr i64 %i.ob to ptr
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 856
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.oj, ptr noundef nonnull align 4 dereferenceable(4) %i.oa, ptr noundef %i.oi) #11
  br label %_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_11HermesValueEEEE3setERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit

_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_11HermesValueEEEE3setERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit: ; preds = %._crit_edge312, %bb.at
  %.not.i.i.i.i.i205 = icmp eq i64 %i.ob, 0
  %i.ok = ptrtoint ptr %1 to i64
  %i.ol = sub i64 %.sroa.0.0.copyload.i.i204, %i.ok
  %i.om = trunc i64 %i.ol to i32
  %.sroa.0.0.i.i.i.i.i206 = select i1 %.not.i.i.i.i.i205, i32 0, i32 %i.om
  store i32 %.sroa.0.0.i.i.i.i.i206, ptr %i.oa, align 4, !tbaa !3
  br label %.thread

bb.au:                                            ; preds = %.lr.ph311, %bb.bb
  %.0106309.a = phi ptr [ %.sroa.0.0.copyload.i181, %.lr.ph311 ], [ %i.qg, %bb.bb ] ; 3 uses
  %11 = load i32, ptr %.0106309.a, align 4, !tbaa !3 ; 3 uses
  %.val.val = load ptr, ptr %5, align 8, !tbaa !60 ; 2 uses
  %.val.val.val = load i64, ptr %.val.val, align 8, !tbaa !44
  %i.on = mul i32 %11, 3                          ; 3 uses
  %i.oo = and i64 %.val.val.val, 281474976710655
  %i.op = inttoptr i64 %i.oo to ptr
  %i.oq = add i32 %i.on, 2
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 8 ; 2 uses
  %i.os = zext i32 %i.oq to i64                   ; 2 uses
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.os
  %.sroa.0.0.copyload.i.i207 = load i64, ptr %i.ot, align 8, !tbaa !44
  %.mask.i.i = and i64 %.sroa.0.0.copyload.i.i207, -140737488355328
  %.not284 = icmp eq i64 %.mask.i.i, -1970324836974592
  br i1 %.not284, label %bb.av, label %bb.bb

bb.av:                                            ; preds = %bb.au
  %i.ou = getelementptr inbounds nuw i8, ptr %.0106309.a, i64 4
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !3
  %i.ow = load i8, ptr %i.ks, align 4, !tbaa !151, !range !147, !noundef !148
  %i.ox = trunc nuw i8 %i.ow to i1
  br i1 %i.ox, label %bb.ax, label %bb.aw, !prof !59

bb.aw:                                            ; preds = %bb.av
  store i32 %11, ptr %i.kf, align 4, !tbaa !3
  store i8 1, ptr %i.ks, align 4, !tbaa !152
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.oy = zext i32 %i.on to i64
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.oy ; 3 uses
  %i.pa = load ptr, ptr %i.kt, align 8, !tbaa !87 ; 2 uses
  %i.pb = ptrtoint ptr %i.oz to i64
  %i.pc = and i64 %i.pb, 1125899902648320
  %i.pd = inttoptr i64 %i.pc to ptr
  %i.pe = icmp eq ptr %i.pa, %i.pd
  br i1 %i.pe, label %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i214, label %bb.ay, !prof !59

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.ku, ptr noundef nonnull align 8 dereferenceable(8) %i.oz, i64 -1970324836974592) #11
  %.pre13.i210 = load ptr, ptr %5, align 8, !tbaa !60
  %.pre15.i213 = load ptr, ptr %i.kt, align 8, !tbaa !87
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i214

_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i214: ; preds = %bb.ay, %bb.ax
  %i.pf = phi ptr [ %i.pa, %bb.ax ], [ %.pre15.i213, %bb.ay ] ; 2 uses
  %i.pg = phi ptr [ %.val.val, %bb.ax ], [ %.pre13.i210, %bb.ay ] ; 2 uses
  store i64 -1970324836974592, ptr %i.oz, align 8, !tbaa !79
  %.sroa.0.0.copyload.i.i7.i215 = load i64, ptr %i.pg, align 8, !tbaa !44
  %i.ph = and i64 %.sroa.0.0.copyload.i.i7.i215, 281474976710655
  %i.pi = inttoptr i64 %i.ph to ptr
  %i.pj = add i32 %i.on, 1
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.pl = zext i32 %i.pj to i64
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %i.pl ; 3 uses
  %i.pn = ptrtoint ptr %i.pm to i64
  %i.po = and i64 %i.pn, 1125899902648320
  %i.pp = inttoptr i64 %i.po to ptr
  %i.pq = icmp eq ptr %i.pf, %i.pp
  br i1 %i.pq, label %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit8.i221, label %bb.az, !prof !59

bb.az:                                            ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i214
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.ku, ptr noundef nonnull align 8 dereferenceable(8) %i.pm, i64 -1548112371908608) #11
  %.pre17.i217 = load ptr, ptr %5, align 8, !tbaa !60
  %.pre20.i220 = load ptr, ptr %i.kt, align 8, !tbaa !87
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit8.i221

_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit8.i221: ; preds = %bb.az, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i214
  %i.pr = phi ptr [ %i.pf, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i214 ], [ %.pre20.i220, %bb.az ]
  %i.ps = phi ptr [ %i.pg, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i214 ], [ %.pre17.i217, %bb.az ]
  store i64 -1548112371908608, ptr %i.pm, align 8, !tbaa !79
  %.sroa.0.0.copyload.i.i9.i222 = load i64, ptr %i.ps, align 8, !tbaa !44
  %i.pt = and i64 %.sroa.0.0.copyload.i.i9.i222, 281474976710655
  %i.pu = inttoptr i64 %i.pt to ptr
  %i.pv = zext i32 %i.ov to i64
  %i.pw = or disjoint i64 %i.pv, -1125899906842624 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %i.os ; 3 uses
  %i.pz = ptrtoint ptr %i.py to i64
  %i.qa = and i64 %i.pz, 1125899902648320
  %i.qb = inttoptr i64 %i.qa to ptr
  %i.qc = icmp eq ptr %i.pr, %i.qb
  br i1 %i.qc, label %"_ZZN6hermes2vm6Domain20importCJSModuleTableENS0_6HandleIS1_EERNS0_7RuntimeEPNS0_13RuntimeModuleEENK3$_1clEjj.exit223", label %bb.ba, !prof !59

bb.ba:                                            ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit8.i221
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.ku, ptr noundef nonnull align 8 dereferenceable(8) %i.py, i64 %i.pw) #11
  br label %"_ZZN6hermes2vm6Domain20importCJSModuleTableENS0_6HandleIS1_EERNS0_7RuntimeEPNS0_13RuntimeModuleEENK3$_1clEjj.exit223"

"_ZZN6hermes2vm6Domain20importCJSModuleTableENS0_6HandleIS1_EERNS0_7RuntimeEPNS0_13RuntimeModuleEENK3$_1clEjj.exit223": ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit8.i221, %bb.ba
  store i64 %i.pw, ptr %i.py, align 8, !tbaa !79
  %i.qd = zext i32 %11 to i64
  %i.qe = load ptr, ptr %i.kg, align 8, !tbaa !7
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %i.qd
  store ptr %2, ptr %i.qf, align 8, !tbaa !17
  br label %bb.bb

bb.bb:                                            ; preds = %"_ZZN6hermes2vm6Domain20importCJSModuleTableENS0_6HandleIS1_EERNS0_7RuntimeEPNS0_13RuntimeModuleEENK3$_1clEjj.exit223", %bb.au
  %i.qg = getelementptr inbounds nuw i8, ptr %.0106309.a, i64 8 ; 2 uses
  %.not116 = icmp eq ptr %i.qg, %i.kr
  br i1 %.not116, label %._crit_edge312, label %bb.au

.thread:                                          ; preds = %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit157, %_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_11HermesValueEEEE3setERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit, %bb.ac
  %.4 = phi i32 [ 0, %bb.ac ], [ %i.hw, %_ZN6hermes2vm11TwineChar16C2EPKc.exit157 ], [ 1, %_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_11HermesValueEEEE3setERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit ], [ 0, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit ], [ 0, %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit ], [ %i.aa, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.bc

bb.bc:                                            ; preds = %bb.b, %.thread
  %.5 = phi i32 [ %.4, %.thread ], [ 1, %bb.b ]
  ret i32 %.5
}

declare noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef, ptr noundef, i32, i32 noundef, i64, i32 noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm14throwTypeErrorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef dead_on_return) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm14RequireContext6createERNS0_7RuntimeENS0_6HandleINS0_6DomainEEENS4_INS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9512
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.e, %i.g
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !71

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.i = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.h, i32 noundef 40) #11
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_14RequireContextELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS7_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.c, align 8, !tbaa !72
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_14RequireContextELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS7_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

_ZN6hermes2vm7Runtime10makeAFixedINS0_14RequireContextELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS7_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit: ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.i, %bb.b ], [ %i.d, %bb.c ] ; 8 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !44 ; 2 uses
  %i.k = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !44 ; 2 uses
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i, 281474976710655
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  %i.o = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.p = sub i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %i.o
  %i.q = trunc i64 %i.p to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.q
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.n, align 4, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i = icmp eq i64 %i.l, 0
  %i.s = sub i64 %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i, %i.o
  %i.t = trunc i64 %i.s to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i, i32 0, i32 %i.t
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i, ptr %i.r, align 4, !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 1073741864, ptr %i.j, align 4, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x i32> <i32 0, i32 0, i32 0, i32 14>, ptr %i.u, align 4
  %.val = load ptr, ptr %i.v, align 8, !tbaa !45  ; 3 uses
  %.01320.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i32 14, ptr %.01320.i.ptr.1.i.i, align 4, !tbaa !3
  %.01320.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  store i32 14, ptr %.01320.i.ptr.2.i.i, align 4, !tbaa !3
  %i.w = ptrtoint ptr %i.j to i64
  %i.x = or i64 %i.w, -281474976710656            ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 192 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !48   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 200
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !58
  %i.ac = icmp ult ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.d, label %bb.e, !prof !59

bb.d:                                             ; preds = %_ZN6hermes2vm7Runtime10makeAFixedINS0_14RequireContextELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS7_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !48
  store i64 %i.x, ptr %i.z, align 8, !tbaa !44
  br label %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_14RequireContextEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit

bb.e:                                             ; preds = %_ZN6hermes2vm7Runtime10makeAFixedINS0_14RequireContextELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS7_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit
  %i.ae = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %.val, i64 %i.x) #11 ; 2 uses
  %.sroa.0.0.copyload.i.i.pre = load i64, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_14RequireContextEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit

_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_14RequireContextEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi i64 [ %i.x, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ]
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.z, %bb.d ], [ %i.ae, %bb.e ] ; 2 uses
  %i.af = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 20 ; 3 uses
  %.sroa.0.0.copyload.i.i.i10 = load i64, ptr %1, align 8, !tbaa !44 ; 2 uses
  %i.ai = and i64 %.sroa.0.0.copyload.i.i.i10, 281474976710655 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !87 ; 2 uses
  %i.am = ptrtoint ptr %i.ah to i64
  %i.an = and i64 %i.am, 562949949227008
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = icmp eq ptr %i.al, %i.ao
  br i1 %i.ap, label %_ZN6hermes2vm9GCPointerINS0_6DomainEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit, label %bb.f, !prof !59

bb.f:                                             ; preds = %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_14RequireContextEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit
  %i.aq = inttoptr i64 %i.ai to ptr
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %i.ah, ptr noundef %i.aq) #11
  %.sroa.0.0.copyload.i.i11.pre = load i64, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !44
  %.pre = load ptr, ptr %i.ak, align 8, !tbaa !87
  %.pre23 = and i64 %.sroa.0.0.copyload.i.i11.pre, 281474976710655
  %.pre24 = inttoptr i64 %.pre23 to ptr
  br label %_ZN6hermes2vm9GCPointerINS0_6DomainEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit

_ZN6hermes2vm9GCPointerINS0_6DomainEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_14RequireContextEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit, %bb.f
  %.pre-phi25 = phi ptr [ %i.ag, %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_14RequireContextEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit ], [ %.pre24, %bb.f ]
  %i.ar = phi ptr [ %i.al, %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_14RequireContextEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit ], [ %.pre, %bb.f ]
  %.not.i.i.i.i.i = icmp eq i64 %i.ai, 0
  %i.as = sub i64 %.sroa.0.0.copyload.i.i.i10, %i.o
  %i.at = trunc i64 %i.as to i32
  %.sroa.0.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %i.at
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.ah, align 4, !tbaa !3
  %i.au = getelementptr inbounds nuw i8, ptr %.pre-phi25, i64 24 ; 3 uses
  %.sroa.0.0.copyload.i.i.i12 = load i64, ptr %2, align 8, !tbaa !44 ; 2 uses
  %i.av = and i64 %.sroa.0.0.copyload.i.i.i12, 281474976710655 ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = and i64 %i.aw, 562949949227008
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = icmp eq ptr %i.ar, %i.ay
  br i1 %i.az, label %_ZN6hermes2vm9GCPointerINS0_15StringPrimitiveEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit, label %bb.g, !prof !59

bb.g:                                             ; preds = %_ZN6hermes2vm9GCPointerINS0_6DomainEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit
  %i.ba = inttoptr i64 %i.av to ptr
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %i.au, ptr noundef %i.ba) #11
  br label %_ZN6hermes2vm9GCPointerINS0_15StringPrimitiveEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit

_ZN6hermes2vm9GCPointerINS0_15StringPrimitiveEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm9GCPointerINS0_6DomainEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit, %bb.g
  %.not.i.i.i.i.i13 = icmp eq i64 %i.av, 0
  %i.bb = sub i64 %.sroa.0.0.copyload.i.i.i12, %i.o
  %i.bc = trunc i64 %i.bb to i32
  %.sroa.0.0.i.i.i.i.i14 = select i1 %.not.i.i.i.i.i13, i32 0, i32 %i.bc
  store i32 %.sroa.0.0.i.i.i.i.i14, ptr %i.au, align 4, !tbaa !3
  ret ptr %.0.i.i.i.i.i.i.i
}

declare noundef i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i16, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E11try_emplaceIJjEEESt4pairINS_16DenseMapIteratorIS4_jS6_S9_Lb0EEEbERKS4_DpOT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.214") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !14     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20   ; 9 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %2, align 4, !tbaa !3 ; 3 uses
  %i.f = mul i32 %.sroa.0.0.copyload.i.i.i, 37
  %i.g = add i32 %i.d, -1                         ; 2 uses
  %.03649.i.i = and i32 %i.f, %i.g                ; 2 uses
  %i.h = zext i32 %.03649.i.i to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.h ; 3 uses
  %.sroa.05.0.copyload50.i.i = load i32, ptr %i.i, align 4, !tbaa !3 ; 2 uses
  %i.j = icmp eq i32 %.sroa.0.0.copyload.i.i.i, %.sroa.05.0.copyload50.i.i
  br i1 %i.j, label %.loopexit, label %.lr.ph.i.i, !prof !138

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.sroa.05.0.copyload54.i.i = phi i32 [ %.sroa.05.0.copyload.i.i, %bb.d ], [ %.sroa.05.0.copyload50.i.i, %bb.b ] ; 2 uses
  %i.k = phi ptr [ %i.s, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %.03653.i.i = phi i32 [ %.036.i.i, %bb.d ], [ %.03649.i.i, %bb.b ]
  %.03352.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %.03851.i.i = phi i32 [ %i.p, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %i.l = icmp eq i32 %.sroa.05.0.copyload54.i.i, 536870911
  br i1 %i.l, label %bb.c, label %bb.d, !prof !59

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.03352.i.i, null
  %i.m = select i1 %.not.i.i, ptr %i.k, ptr %.03352.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.n = icmp eq i32 %.sroa.05.0.copyload54.i.i, 536870910
  %i.o = icmp eq ptr %.03352.i.i, null
  %or.cond.not.i.i = select i1 %i.n, i1 %i.o, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.k, ptr %.03352.i.i
  %i.p = add i32 %.03851.i.i, 1
  %i.q = add i32 %.03851.i.i, %.03653.i.i
  %.036.i.i = and i32 %i.q, %i.g                  ; 2 uses
  %i.r = zext i32 %.036.i.i to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.r ; 3 uses
  %.sroa.05.0.copyload.i.i = load i32, ptr %i.s, align 4, !tbaa !3 ; 2 uses
  %i.t = icmp eq i32 %.sroa.0.0.copyload.i.i.i, %.sroa.05.0.copyload.i.i
  br i1 %i.t, label %.loopexit, label %.lr.ph.i.i, !prof !139, !llvm.loop !140

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %bb.c, %bb.a
end_hunk_0
