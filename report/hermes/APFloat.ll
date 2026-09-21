Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/APFloat?download=true
inline.NumInlined: 1816
inline.NumDeleted: 298
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK4llvh6detail9IEEEFloat8toStringERNS_15SmallVectorImplIcEEjjb:bb.a
  %i.ip = icmp ult i32 %i.io, 65
  br i1 %i.ip, label %_ZN4llvh5APIntD2Ev.exit31.i, label %bb.be

bb.be:                                            ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit29.i
  %i.iq = load ptr, ptr %9, align 8, !tbaa !35    ; 2 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %_ZN4llvh5APIntD2Ev.exit31.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_ZdaPv(ptr noundef nonnull %i.iq) #24
  br label %_ZN4llvh5APIntD2Ev.exit31.i

_ZN4llvh5APIntD2Ev.exit31.i:                      ; preds = %bb.bf, %bb.be, %_ZNK4llvh5APInt13getActiveBitsEv.exit29.i
  %i.is = load i64, ptr %8, align 8
  store i64 %i.is, ptr %9, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !38
  store i32 %i.iu, ptr %i.el, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.iv = load i32, ptr %i.hw, align 8, !tbaa !38
  %i.iw = icmp ugt i32 %i.iv, 64
  br i1 %i.iw, label %bb.bg, label %_ZN4llvh5APIntD2Ev.exit32.i

bb.bg:                                            ; preds = %_ZN4llvh5APIntD2Ev.exit31.i
  %i.ix = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %_ZN4llvh5APIntD2Ev.exit32.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZdaPv(ptr noundef nonnull %i.ix) #24
  br label %_ZN4llvh5APIntD2Ev.exit32.i

_ZN4llvh5APIntD2Ev.exit32.i:                      ; preds = %bb.bh, %bb.bg, %_ZN4llvh5APIntD2Ev.exit31.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.iz = load i32, ptr %i.hl, align 8, !tbaa !38
  %i.ja = icmp ugt i32 %i.iz, 64
  br i1 %i.ja, label %bb.bi, label %_ZN4llvh5APIntD2Ev.exit33.i

bb.bi:                                            ; preds = %_ZN4llvh5APIntD2Ev.exit32.i
  %i.jb = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %_ZN4llvh5APIntD2Ev.exit33.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_ZdaPv(ptr noundef nonnull %i.jb) #24
  br label %_ZN4llvh5APIntD2Ev.exit33.i

_ZN4llvh5APIntD2Ev.exit33.i:                      ; preds = %bb.bj, %bb.bi, %_ZN4llvh5APIntD2Ev.exit32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.pre = load i32, ptr %i.el, align 8, !tbaa !38
  br label %_ZN4llvh6detail12_GLOBAL__N_117AdjustToPrecisionERNS_5APIntERij.exit

_ZN4llvh6detail12_GLOBAL__N_117AdjustToPrecisionERNS_5APIntERij.exit: ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i, %bb.as, %_ZN4llvh5APIntD2Ev.exit33.i
  %i.jd = phi i32 [ %i.gw, %bb.as ], [ %.pre, %_ZN4llvh5APIntD2Ev.exit33.i ], [ %i.gw, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i ] ; 5 uses
  %.5 = phi i32 [ %.0285, %bb.as ], [ %i.hk, %_ZN4llvh5APIntD2Ev.exit33.i ], [ %.0285, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.je = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.je, ptr %13, align 8, !tbaa !58
  %i.jf = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 15 uses
  store i32 0, ptr %i.jf, align 8, !tbaa !57
  %i.jg = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 4 uses
  store i32 256, ptr %i.jg, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.jh = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i32 %i.jd, ptr %i.jh, align 8, !tbaa !38
  %i.ji = icmp ult i32 %i.jd, 65
  br i1 %i.ji, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i188, label %bb.bk

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i188:      ; preds = %_ZN4llvh6detail12_GLOBAL__N_117AdjustToPrecisionERNS_5APIntERij.exit
  %i.jj = sub nsw i32 0, %i.jd
  %i.jk = and i32 %i.jj, 63
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = lshr i64 -1, %i.jl
  %i.jn = and i64 %i.jm, 10
  store i64 %i.jn, ptr %14, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.jo = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i32 %i.jd, ptr %i.jo, align 8, !tbaa !38
  store i64 0, ptr %15, align 8, !tbaa !35
  br label %_ZN4llvh5APIntC2Ejmb.exit189

bb.bk:                                            ; preds = %_ZN4llvh6detail12_GLOBAL__N_117AdjustToPrecisionERNS_5APIntERij.exit
  call void @_ZN4llvh5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %14, i64 noundef 10, i1 noundef zeroext false) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.jp = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i32 %i.jd, ptr %i.jp, align 8, !tbaa !38
  call void @_ZN4llvh5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %15, i64 noundef 0, i1 noundef zeroext false) #25
  br label %_ZN4llvh5APIntC2Ejmb.exit189

_ZN4llvh5APIntC2Ejmb.exit189:                     ; preds = %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i188, %bb.bk
  %i.jq = phi ptr [ %i.jo, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i188 ], [ %i.jp, %bb.bk ] ; 3 uses
  br label %.outer

.outer:                                           ; preds = %bb.bo, %_ZN4llvh5APIntC2Ejmb.exit189
  %.1286.ph = phi i32 [ %i.kz, %bb.bo ], [ %.5, %_ZN4llvh5APIntC2Ejmb.exit189 ] ; 3 uses
  %i.jr = load i32, ptr %i.el, align 8, !tbaa !38 ; 2 uses
  %i.js = icmp ult i32 %i.jr, 65                  ; 2 uses
  br i1 %i.js, label %_ZNK4llvh5APIntneEm.exit.peel, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i.peel

_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i.peel:   ; preds = %.outer
  %i.jt = call noundef i32 @_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %9) #26
  %i.ju = sub i32 %i.jr, %i.jt
  %i.jv = icmp ult i32 %i.ju, 65
  br i1 %i.jv, label %_ZNK4llvh5APIntneEm.exit.peel, label %_ZNK4llvh5APIntneEm.exit.thread.peel

_ZNK4llvh5APIntneEm.exit.peel:                    ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i.peel, %.outer
  %i.jw = load ptr, ptr %9, align 8
  %spec.select.i.i.i.peel = select i1 %i.js, ptr %9, ptr %i.jw
  %.0.i.i.i190.peel = load i64, ptr %spec.select.i.i.i.peel, align 8, !tbaa !35
  %.not295.peel = icmp eq i64 %.0.i.i.i190.peel, 0
  br i1 %.not295.peel, label %.loopexit451, label %_ZNK4llvh5APIntneEm.exit.thread.peel

_ZNK4llvh5APIntneEm.exit.thread.peel:             ; preds = %_ZNK4llvh5APIntneEm.exit.peel, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i.peel
  call void @_ZN4llvh5APInt7udivremERKS0_S2_RS0_S3_(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %15) #25
  %i.jx = load i32, ptr %i.jq, align 8, !tbaa !38
  %i.jy = icmp ult i32 %i.jx, 65
  %i.jz = load ptr, ptr %15, align 8
  %spec.select.i.peel = select i1 %i.jy, ptr %15, ptr %i.jz
  %.0.i191.peel = load i64, ptr %spec.select.i.peel, align 8, !tbaa !35 ; 2 uses
  %i.ka = and i64 %.0.i191.peel, 4294967295
  %i.kb = icmp eq i64 %i.ka, 0
  br i1 %i.kb, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %_ZNK4llvh5APIntneEm.exit.thread.peel
  %i.kc = trunc i64 %.0.i191.peel to i8
  %i.kd = add i8 %i.kc, 48
  %i.ke = load i32, ptr %i.jf, align 8, !tbaa !57 ; 2 uses
  %i.kf = load i32, ptr %i.jg, align 4, !tbaa !56
  %.not.i192.peel = icmp ult i32 %i.ke, %i.kf
  br i1 %.not.i192.peel, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit194.peel, label %bb.bm, !prof !59

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %i.je, i64 noundef 0, i64 noundef 1) #25
  %.pre.i193.peel = load i32, ptr %i.jf, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit194.peel

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit194.peel: ; preds = %bb.bm, %bb.bl
  %i.kg = phi i32 [ %.pre.i193.peel, %bb.bm ], [ %i.ke, %bb.bl ]
  %i.kh = load ptr, ptr %13, align 8, !tbaa !58
  %i.ki = zext i32 %i.kg to i64
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.ki
  store i8 %i.kd, ptr %i.kj, align 1
  %i.kk = load i32, ptr %i.jf, align 8, !tbaa !57
  %i.kl = add i32 %i.kk, 1
  store i32 %i.kl, ptr %i.jf, align 8, !tbaa !57
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit194.peel, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit194
  %i.km = load i32, ptr %i.el, align 8, !tbaa !38 ; 2 uses
  %i.kn = icmp ult i32 %i.km, 65                  ; 2 uses
  br i1 %i.kn, label %_ZNK4llvh5APIntneEm.exit, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i

_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.bn
  %i.ko = call noundef i32 @_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %9) #26
  %i.kp = sub i32 %i.km, %i.ko
  %i.kq = icmp ult i32 %i.kp, 65
  br i1 %i.kq, label %_ZNK4llvh5APIntneEm.exit, label %_ZNK4llvh5APIntneEm.exit.thread

_ZNK4llvh5APIntneEm.exit:                         ; preds = %bb.bn, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i
  %i.kr = load ptr, ptr %9, align 8
  %spec.select.i.i.i = select i1 %i.kn, ptr %9, ptr %i.kr
  %.0.i.i.i190 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !35
  %.not295 = icmp eq i64 %.0.i.i.i190, 0
  br i1 %.not295, label %.loopexit451, label %_ZNK4llvh5APIntneEm.exit.thread

_ZNK4llvh5APIntneEm.exit.thread:                  ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, %_ZNK4llvh5APIntneEm.exit
  call void @_ZN4llvh5APInt7udivremERKS0_S2_RS0_S3_(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %15) #25
  %i.ks = load i32, ptr %i.jq, align 8, !tbaa !38
  %i.kt = icmp ult i32 %i.ks, 65
  %i.ku = load ptr, ptr %15, align 8
  %spec.select.i = select i1 %i.kt, ptr %15, ptr %i.ku
  %.0.i191 = load i64, ptr %spec.select.i, align 8, !tbaa !35
  %i.kv = trunc i64 %.0.i191 to i8
  %i.kw = add i8 %i.kv, 48
  %i.kx = load i32, ptr %i.jf, align 8, !tbaa !57 ; 2 uses
  %i.ky = load i32, ptr %i.jg, align 4, !tbaa !56
  %.not.i192 = icmp ult i32 %i.kx, %i.ky
  br i1 %.not.i192, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit194, label %bb.bp, !prof !59

bb.bo:                                            ; preds = %_ZNK4llvh5APIntneEm.exit.thread.peel
  %i.kz = add nsw i32 %.1286.ph, 1
  br label %.outer, !llvm.loop !157

bb.bp:                                            ; preds = %_ZNK4llvh5APIntneEm.exit.thread
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %i.je, i64 noundef 0, i64 noundef 1) #25
  %.pre.i193 = load i32, ptr %i.jf, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit194

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit194: ; preds = %_ZNK4llvh5APIntneEm.exit.thread, %bb.bp
  %i.la = phi i32 [ %.pre.i193, %bb.bp ], [ %i.kx, %_ZNK4llvh5APIntneEm.exit.thread ]
  %i.lb = load ptr, ptr %13, align 8, !tbaa !58
  %i.lc = zext i32 %i.la to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.lc
  store i8 %i.kw, ptr %i.ld, align 1
  %i.le = load i32, ptr %i.jf, align 8, !tbaa !57
  %i.lf = add i32 %i.le, 1
  store i32 %i.lf, ptr %i.jf, align 8, !tbaa !57
  br label %bb.bn, !llvm.loop !158

.loopexit451:                                     ; preds = %_ZNK4llvh5APIntneEm.exit.peel, %_ZNK4llvh5APIntneEm.exit
  %i.lg = load i32, ptr %i.jf, align 8, !tbaa !57 ; 6 uses
  %.not.i195 = icmp ult i32 %.0112, %i.lg
  br i1 %.not.i195, label %bb.bq, label %_ZN4llvh6detail12_GLOBAL__N_117AdjustToPrecisionERNS_15SmallVectorImplIcEERij.exit

bb.bq:                                            ; preds = %.loopexit451
  %i.lh = sub nuw i32 %i.lg, %.0112               ; 2 uses
  %i.li = add i32 %i.lh, -1
  %i.lj = zext i32 %i.li to i64
  %i.lk = load ptr, ptr %13, align 8, !tbaa !58   ; 8 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.lj
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !35
  %i.ln = icmp slt i8 %i.lm, 53
  %17 = zext i32 %i.lh to i64                     ; 3 uses
  %18 = zext i32 %i.lg to i64                     ; 4 uses
  br i1 %i.ln, label %.lr.ph53.preheader.i, label %.lr.ph.i

.lr.ph53.preheader.i:                             ; preds = %bb.bq
  %i.lo = add nuw nsw i64 %17, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.lo, i64 %18)
  br label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %.lr.ph53.preheader.i, %bb.br
  %indvars.iv.i.a = phi i64 [ %indvars.iv.next.i.a, %bb.br ], [ %17, %.lr.ph53.preheader.i ] ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lk, i64 %indvars.iv.i.a
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !35
  %i.lr = icmp eq i8 %i.lq, 48
  br i1 %i.lr, label %bb.br, label %.critedge.i

bb.br:                                            ; preds = %.lr.ph53.i
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv.i.a, 1 ; 2 uses
  %i.ls = icmp samesign ult i64 %indvars.iv.next.i.a, %18
  br i1 %i.ls, label %.lr.ph53.i, label %.critedge.i, !llvm.loop !159

.critedge.i:                                      ; preds = %bb.br, %.lr.ph53.i
  %.038.lcssa.ph.in.i = phi i64 [ %indvars.iv.i.a, %.lr.ph53.i ], [ %umax, %bb.br ] ; 3 uses
  %.038.lcssa.ph.i = trunc nuw i64 %.038.lcssa.ph.in.i to i32
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.038.lcssa.ph.in.i ; 2 uses
  %gepdiff43.i = sub nsw i64 %18, %.038.lcssa.ph.in.i ; 4 uses
  %i.lu = icmp sgt i64 %gepdiff43.i, 1
  br i1 %i.lu, label %bb.bs, label %bb.bt, !prof !59

bb.bs:                                            ; preds = %.critedge.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.lk, ptr nonnull align 1 %i.lt, i64 %gepdiff43.i, i1 false)
  br label %_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit.i

bb.bt:                                            ; preds = %.critedge.i
  %i.lv = icmp eq i64 %gepdiff43.i, 1
  br i1 %i.lv, label %bb.bu, label %_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit.i

bb.bu:                                            ; preds = %bb.bt
  %i.lw = load i8, ptr %i.lt, align 1, !tbaa !35
  store i8 %i.lw, ptr %i.lk, align 1, !tbaa !35
  br label %_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit.i

_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit.i: ; preds = %bb.bu, %bb.bt, %bb.bs
  %i.lx = getelementptr inbounds i8, ptr %i.lk, i64 %gepdiff43.i
  %i.ly = load ptr, ptr %13, align 8, !tbaa !58
  %i.lz = ptrtoint ptr %i.lx to i64
  %i.ma = ptrtoint ptr %i.ly to i64
  %i.mb = sub i64 %i.lz, %i.ma
  %i.mc = trunc i64 %i.mb to i32
  br label %.sink.split.i

.lr.ph.i:                                         ; preds = %bb.bq, %bb.bv
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bv ], [ %17, %bb.bq ] ; 5 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lk, i64 %indvars.iv.i
  %i.me = load i8, ptr %i.md, align 1, !tbaa !35  ; 2 uses
  %i.mf = icmp eq i8 %i.me, 57
  br i1 %i.mf, label %bb.bv, label %.loopexit.i

bb.bv:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not41.i = icmp eq i64 %indvars.iv.next.i, %18
  br i1 %.not41.i, label %.loopexit.thread.i, label %.lr.ph.i, !llvm.loop !160

.loopexit.i:                                      ; preds = %.lr.ph.i
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lk, i64 %indvars.iv.i
  %indvars64.i = trunc i64 %indvars.iv.i to i32   ; 2 uses
  %i.mh = add i8 %i.me, 1
  store i8 %i.mh, ptr %i.mg, align 1, !tbaa !35
  %i.mi = icmp eq i32 %i.lg, %indvars64.i
  br i1 %i.mi, label %.loopexit.thread.i, label %bb.bx

.loopexit.thread.i:                               ; preds = %bb.bv, %.loopexit.i
  store i32 0, ptr %i.jf, align 8, !tbaa !57
  %i.mj = load i32, ptr %i.jg, align 4, !tbaa !56
  %.not.i.not.i = icmp eq i32 %i.mj, 0
  br i1 %.not.i.not.i, label %bb.bw, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit.i, !prof !169

bb.bw:                                            ; preds = %.loopexit.thread.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %i.je, i64 noundef 0, i64 noundef 1) #25
  %.pre.i.i196 = load i32, ptr %i.jf, align 8, !tbaa !57
  %i.mk = zext i32 %.pre.i.i196 to i64
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit.i

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit.i: ; preds = %bb.bw, %.loopexit.thread.i
  %i.ml = phi i64 [ %i.mk, %bb.bw ], [ 0, %.loopexit.thread.i ]
  %i.mm = load ptr, ptr %13, align 8, !tbaa !58
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.ml
  store i8 49, ptr %i.mn, align 1
  %i.mo = load i32, ptr %i.jf, align 8, !tbaa !57
  %i.mp = add i32 %i.mo, 1
  br label %.sink.split.i

bb.bx:                                            ; preds = %.loopexit.i
  %i.mq = load ptr, ptr %13, align 8, !tbaa !58   ; 4 uses
  %19 = and i64 %indvars.iv.i, 4294967295         ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 %19 ; 2 uses
  %i.ms = load i32, ptr %i.jf, align 8, !tbaa !57
  %i.mt = zext i32 %i.ms to i64
  %gepdiff.i = sub nsw i64 %i.mt, %19             ; 4 uses
  %i.mu = icmp sgt i64 %gepdiff.i, 1
  br i1 %i.mu, label %bb.by, label %bb.bz, !prof !59

bb.by:                                            ; preds = %bb.bx
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.mq, ptr nonnull align 1 %i.mr, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit42.i

bb.bz:                                            ; preds = %bb.bx
  %i.mv = icmp eq i64 %gepdiff.i, 1
  br i1 %i.mv, label %bb.ca, label %_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit42.i

bb.ca:                                            ; preds = %bb.bz
  %i.mw = load i8, ptr %i.mr, align 1, !tbaa !35
  store i8 %i.mw, ptr %i.mq, align 1, !tbaa !35
  br label %_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit42.i

_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit42.i: ; preds = %bb.ca, %bb.bz, %bb.by
  %i.mx = getelementptr inbounds i8, ptr %i.mq, i64 %gepdiff.i
  %i.my = load ptr, ptr %13, align 8, !tbaa !58
  %i.mz = ptrtoint ptr %i.mx to i64
  %i.na = ptrtoint ptr %i.my to i64
  %i.nb = sub i64 %i.mz, %i.na
  %i.nc = trunc i64 %i.nb to i32
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit42.i, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit.i, %_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit.i
  %.038.lcssa.ph.i.pn = phi i32 [ %.038.lcssa.ph.i, %_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit.i ], [ %i.lg, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit.i ], [ %indvars64.i, %_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit42.i ]
  %.sink.i = phi i32 [ %i.mc, %_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit.i ], [ %i.mp, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit.i ], [ %i.nc, %_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit42.i ] ; 2 uses
  %.6 = add i32 %.038.lcssa.ph.i.pn, %.1286.ph
  store i32 %.sink.i, ptr %i.jf, align 8, !tbaa !57
  br label %_ZN4llvh6detail12_GLOBAL__N_117AdjustToPrecisionERNS_15SmallVectorImplIcEERij.exit

_ZN4llvh6detail12_GLOBAL__N_117AdjustToPrecisionERNS_15SmallVectorImplIcEERij.exit: ; preds = %.loopexit451, %.sink.split.i
  %i.nd = phi i32 [ %.sink.i, %.sink.split.i ], [ %i.lg, %.loopexit451 ] ; 13 uses
  %.7 = phi i32 [ %.6, %.sink.split.i ], [ %.1286.ph, %.loopexit451 ] ; 7 uses
  %.not131 = icmp eq i32 %3, 0
  br i1 %.not131, label %.critedge, label %bb.cb

bb.cb:                                            ; preds = %_ZN4llvh6detail12_GLOBAL__N_117AdjustToPrecisionERNS_15SmallVectorImplIcEERij.exit
  %i.ne = icmp sgt i32 %.7, -1
  br i1 %i.ne, label %.split, label %bb.cc

.split:                                           ; preds = %bb.cb
  %i.nf = icmp ugt i32 %.7, %3
  %i.ng = add i32 %i.nd, %.7
  %i.nh = icmp ugt i32 %i.ng, %.0112
  %i.ni = select i1 %i.nf, i1 true, i1 %i.nh
  br i1 %i.ni, label %.critedge, label %.preheader301

.preheader301:                                    ; preds = %.split
  %.not135319 = icmp eq i32 %i.nd, 0
  br i1 %.not135319, label %.preheader299, label %.lr.ph321

.lr.ph321:                                        ; preds = %.preheader301
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nm = zext i32 %i.nd to i64
  %.pre351 = load i32, ptr %i.nj, align 8, !tbaa !57
  br label %bb.cz

bb.cc:                                            ; preds = %bb.cb
  %i.nn = add i32 %i.nd, %.7                      ; 6 uses
  %i.no = add i32 %i.nn, -1
  %i.np = icmp slt i32 %i.no, 0
  %i.nq = sub i32 1, %i.nn                        ; 2 uses
  %i.nr = icmp ult i32 %3, %i.nq
  %.0107 = and i1 %i.np, %i.nr
  br i1 %.0107, label %.critedge, label %bb.dd

.critedge:                                        ; preds = %.split, %_ZN4llvh6detail12_GLOBAL__N_117AdjustToPrecisionERNS_15SmallVectorImplIcEERij.exit, %bb.cc
  %i.ns = add i32 %i.nd, -1                       ; 4 uses
  %i.nt = add i32 %i.ns, %.7                      ; 2 uses
  %i.nu = zext i32 %i.ns to i64
  %i.nv = load ptr, ptr %13, align 8, !tbaa !58
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.nu
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 26 uses
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !57 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 8 uses
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !56
  %.not.i197 = icmp ult i32 %i.ny, %i.oa
  br i1 %.not.i197, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit199, label %bb.cd, !prof !59

bb.cd:                                            ; preds = %.critedge
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ob, i64 noundef 0, i64 noundef 1) #25
  %.pre.i198 = load i32, ptr %i.nx, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit199

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit199: ; preds = %.critedge, %bb.cd
  %i.oc = phi i32 [ %.pre.i198, %bb.cd ], [ %i.ny, %.critedge ]
  %i.od = load ptr, ptr %1, align 8, !tbaa !58
  %i.oe = zext i32 %i.oc to i64
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.oe
  %i.og = load i8, ptr %i.nw, align 1
  store i8 %i.og, ptr %i.of, align 1
  %i.oh = load i32, ptr %i.nx, align 8, !tbaa !57
  %i.oi = add i32 %i.oh, 1                        ; 3 uses
  store i32 %i.oi, ptr %i.nx, align 8, !tbaa !57
  %i.oj = load i32, ptr %i.nz, align 4, !tbaa !56
  %.not.i200 = icmp ult i32 %i.oi, %i.oj
  br i1 %.not.i200, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit202, label %bb.ce, !prof !59

bb.ce:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit199
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ok, i64 noundef 0, i64 noundef 1) #25
  %.pre.i201 = load i32, ptr %i.nx, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit202

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit202: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit199, %bb.ce
  %i.ol = phi i32 [ %.pre.i201, %bb.ce ], [ %i.oi, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit199 ]
  %i.om = load ptr, ptr %1, align 8, !tbaa !58
  %i.on = zext i32 %i.ol to i64
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.on
  store i8 46, ptr %i.oo, align 1
  %i.op = load i32, ptr %i.nx, align 8, !tbaa !57
  %i.oq = add i32 %i.op, 1                        ; 5 uses
  store i32 %i.oq, ptr %i.nx, align 8, !tbaa !57
  %i.or = icmp eq i32 %i.nd, 1                    ; 2 uses
  %or.cond3 = and i1 %4, %i.or
  br i1 %or.cond3, label %bb.cf, label %.preheader

.preheader:                                       ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit202
  br i1 %i.or, label %.loopexit, label %.lr.ph327

.lr.ph327:                                        ; preds = %.preheader
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.ch

bb.cf:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit202
  %i.ot = load i32, ptr %i.nz, align 4, !tbaa !56
  %.not.i203 = icmp ult i32 %i.oq, %i.ot
  br i1 %.not.i203, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit205, label %bb.cg, !prof !59

bb.cg:                                            ; preds = %bb.cf
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ou, i64 noundef 0, i64 noundef 1) #25
  %.pre.i204 = load i32, ptr %i.nx, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit205

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit205: ; preds = %bb.cf, %bb.cg
  %i.ov = phi i32 [ %.pre.i204, %bb.cg ], [ %i.oq, %bb.cf ]
  %i.ow = load ptr, ptr %1, align 8, !tbaa !58
  %i.ox = zext i32 %i.ov to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.ox
  store i8 48, ptr %i.oy, align 1
  %i.oz = load i32, ptr %i.nx, align 8, !tbaa !57
  %i.pa = add i32 %i.oz, 1                        ; 2 uses
  store i32 %i.pa, ptr %i.nx, align 8, !tbaa !57
  br label %.loopexit

bb.ch:                                            ; preds = %.lr.ph327, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit208
  %i.pb = phi i32 [ %i.oq, %.lr.ph327 ], [ %i.po, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit208 ] ; 2 uses
  %indvars.iv342 = phi i64 [ 1, %.lr.ph327 ], [ %indvars.iv.next343, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit208 ] ; 2 uses
  %i.pc = trunc nuw i64 %indvars.iv342 to i32
  %i.pd = sub i32 %i.ns, %i.pc
  %i.pe = zext i32 %i.pd to i64
  %i.pf = load ptr, ptr %13, align 8, !tbaa !58
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.pe
  %i.ph = load i32, ptr %i.nz, align 4, !tbaa !56
  %.not.i206 = icmp ult i32 %i.pb, %i.ph
  br i1 %.not.i206, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit208, label %bb.ci, !prof !59

bb.ci:                                            ; preds = %bb.ch
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.os, i64 noundef 0, i64 noundef 1) #25
  %.pre.i207 = load i32, ptr %i.nx, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit208

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit208: ; preds = %bb.ch, %bb.ci
  %i.pi = phi i32 [ %.pre.i207, %bb.ci ], [ %i.pb, %bb.ch ]
  %i.pj = load ptr, ptr %1, align 8, !tbaa !58
  %i.pk = zext i32 %i.pi to i64
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.pk
  %i.pm = load i8, ptr %i.pg, align 1
  store i8 %i.pm, ptr %i.pl, align 1
  %i.pn = load i32, ptr %i.nx, align 8, !tbaa !57
  %i.po = add i32 %i.pn, 1                        ; 3 uses
  store i32 %i.po, ptr %i.nx, align 8, !tbaa !57
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next343 to i32
  %exitcond = icmp eq i32 %i.nd, %lftr.wideiv
  br i1 %exitcond, label %.loopexit, label %bb.ch, !llvm.loop !161

.loopexit:                                        ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit208, %.preheader, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit205
  %i.pp = phi i32 [ %i.pa, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit205 ], [ %i.oq, %.preheader ], [ %i.po, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit208 ] ; 4 uses
  br i1 %4, label %bb.cn, label %bb.cj

bb.cj:                                            ; preds = %.loopexit
  %i.pq = icmp ugt i32 %.0112, %i.ns
  br i1 %i.pq, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  %i.pr = sub i32 %.0112, %i.nd
  %i.ps = add i32 %i.pr, 1                        ; 3 uses
  %i.pt = zext i32 %i.ps to i64                   ; 3 uses
  %i.pu = load i32, ptr %i.nz, align 4, !tbaa !56
  %i.pv = zext i32 %i.pu to i64
  %i.pw = zext i32 %i.pp to i64                   ; 3 uses
  %i.px = sub nsw i64 %i.pv, %i.pw
  %i.py = icmp ult i64 %i.px, %i.pt
  br i1 %i.py, label %.thread.i210, label %bb.cl

.thread.i210:                                     ; preds = %bb.ck
  %i.pz = add nuw nsw i64 %i.pw, %i.pt
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.qa, i64 noundef %i.pz, i64 noundef 1) #25
  %i.qb = load ptr, ptr %1, align 8, !tbaa !58
  %i.qc = load i32, ptr %i.nx, align 8, !tbaa !57
  %i.qd = zext i32 %i.qc to i64
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qb, i64 %i.qd
  br label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.qf = load ptr, ptr %1, align 8, !tbaa !58
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 %i.pw
  %i.qh = icmp eq i32 %i.ps, 0
  br i1 %i.qh, label %_ZN4llvh15SmallVectorImplIcE6appendEmRKc.exit211, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.thread.i210
  %i.qi = phi ptr [ %i.qe, %.thread.i210 ], [ %i.qg, %bb.cl ]
  call void @llvm.memset.p0.i64(ptr align 1 %i.qi, i8 48, i64 %i.pt, i1 false)
  %.pre.i209 = load i32, ptr %i.nx, align 8, !tbaa !57
  br label %_ZN4llvh15SmallVectorImplIcE6appendEmRKc.exit211

_ZN4llvh15SmallVectorImplIcE6appendEmRKc.exit211: ; preds = %bb.cl, %bb.cm
  %i.qj = phi i32 [ %i.pp, %bb.cl ], [ %.pre.i209, %bb.cm ]
  %i.qk = add i32 %i.qj, %i.ps                    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK4llvh6detail9IEEEFloat8toStringERNS_15SmallVectorImplIcEEjjb:bb.a

bb.cp:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit214
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.qy, i64 noundef 0, i64 noundef 1) #25
  %.pre.i216 = load i32, ptr %i.nx, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit217

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit217: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit214, %bb.cp
  %i.qz = phi i32 [ %.pre.i216, %bb.cp ], [ %i.qu, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit214 ]
  %i.ra = load ptr, ptr %1, align 8, !tbaa !58
  %i.rb = zext i32 %i.qz to i64
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.rb
  store i8 %i.qw, ptr %i.rc, align 1
  %i.rd = load i32, ptr %i.nx, align 8, !tbaa !57
  %i.re = add i32 %i.rd, 1
  store i32 %i.re, ptr %i.nx, align 8, !tbaa !57
  %spec.select = call i32 @llvm.abs.i32(i32 %i.nt, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.rf = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store ptr %i.rf, ptr %16, align 8, !tbaa !58
  %i.rg = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 7 uses
  store i32 0, ptr %i.rg, align 8, !tbaa !57
  %i.rh = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 3 uses
  store i32 6, ptr %i.rh, align 4, !tbaa !56
  br label %bb.cq

bb.cq:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit220, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit217
  %i.ri = phi i32 [ 0, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit217 ], [ %i.rt, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit220 ] ; 2 uses
  %.4 = phi i32 [ %spec.select, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit217 ], [ %i.rk, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit220 ] ; 3 uses
  %i.rj = urem i32 %.4, 10
  %i.rk = udiv i32 %.4, 10
  %i.rl = trunc nuw nsw i32 %i.rj to i8
  %i.rm = or disjoint i8 %i.rl, 48
  %i.rn = load i32, ptr %i.rh, align 4, !tbaa !56
  %.not.i218 = icmp ult i32 %i.ri, %i.rn
  br i1 %.not.i218, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit220, label %bb.cr, !prof !59

bb.cr:                                            ; preds = %bb.cq
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull %i.rf, i64 noundef 0, i64 noundef 1) #25
  %.pre.i219 = load i32, ptr %i.rg, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit220

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit220: ; preds = %bb.cq, %bb.cr
  %i.ro = phi i32 [ %.pre.i219, %bb.cr ], [ %i.ri, %bb.cq ]
  %i.rp = load ptr, ptr %16, align 8, !tbaa !58
  %i.rq = zext i32 %i.ro to i64
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rp, i64 %i.rq
  store i8 %i.rm, ptr %i.rr, align 1
  %i.rs = load i32, ptr %i.rg, align 8, !tbaa !57
  %i.rt = add i32 %i.rs, 1                        ; 6 uses
  store i32 %i.rt, ptr %i.rg, align 8, !tbaa !57
  %i.ru = icmp samesign ult i32 %.4, 10
  br i1 %i.ru, label %bb.cs, label %bb.cq, !llvm.loop !162

bb.cs:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit220
  %i.rv = icmp ugt i32 %i.rt, 1
  %or.cond.not297 = select i1 %4, i1 true, i1 %i.rv
  br i1 %or.cond.not297, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.rw = load i32, ptr %i.rh, align 4, !tbaa !56
  %.not.i221 = icmp ult i32 %i.rt, %i.rw
  br i1 %.not.i221, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit223, label %bb.cu, !prof !59

bb.cu:                                            ; preds = %bb.ct
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull %i.rf, i64 noundef 0, i64 noundef 1) #25
  %.pre.i222 = load i32, ptr %i.rg, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit223

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit223: ; preds = %bb.ct, %bb.cu
  %i.rx = phi i32 [ %.pre.i222, %bb.cu ], [ %i.rt, %bb.ct ]
  %i.ry = load ptr, ptr %16, align 8, !tbaa !58
  %i.rz = zext i32 %i.rx to i64
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.rz
  store i8 48, ptr %i.sa, align 1
  %i.sb = load i32, ptr %i.rg, align 8, !tbaa !57
  %i.sc = add i32 %i.sb, 1                        ; 2 uses
  store i32 %i.sc, ptr %i.rg, align 8, !tbaa !57
  br label %bb.cv

bb.cv:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit223, %bb.cs
  %i.sd = phi i32 [ %i.sc, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit223 ], [ %i.rt, %bb.cs ] ; 3 uses
  %.not139328 = icmp eq i32 %i.sd, 0
  br i1 %.not139328, label %._crit_edge, label %.lr.ph330

.lr.ph330:                                        ; preds = %bb.cv
  %i.se = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sf = zext i32 %i.sd to i64
  %.pre353 = load i32, ptr %i.nx, align 8, !tbaa !57
  br label %bb.cx

._crit_edge:                                      ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit226, %bb.cv
  %i.sg = load ptr, ptr %16, align 8, !tbaa !58   ; 2 uses
  %i.sh = icmp eq ptr %i.sg, %i.rf
  br i1 %i.sh, label %_ZN4llvh11SmallVectorIcLj6EED2Ev.exit, label %bb.cw

bb.cw:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %i.sg) #25
  br label %_ZN4llvh11SmallVectorIcLj6EED2Ev.exit

_ZN4llvh11SmallVectorIcLj6EED2Ev.exit:            ; preds = %._crit_edge, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %.loopexit300

bb.cx:                                            ; preds = %.lr.ph330, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit226
  %i.si = phi i32 [ %.pre353, %.lr.ph330 ], [ %i.sw, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit226 ] ; 2 uses
  %indvars.iv345 = phi i64 [ 0, %.lr.ph330 ], [ %indvars.iv.next346, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit226 ] ; 2 uses
  %i.sj = trunc nuw i64 %indvars.iv345 to i32
  %i.sk = xor i32 %i.sj, -1
  %i.sl = add i32 %i.sd, %i.sk
  %i.sm = zext i32 %i.sl to i64
  %i.sn = load ptr, ptr %16, align 8, !tbaa !58
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 %i.sm
  %i.sp = load i32, ptr %i.nz, align 4, !tbaa !56
  %.not.i224 = icmp ult i32 %i.si, %i.sp
  br i1 %.not.i224, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit226, label %bb.cy, !prof !59

bb.cy:                                            ; preds = %bb.cx
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.se, i64 noundef 0, i64 noundef 1) #25
  %.pre.i225 = load i32, ptr %i.nx, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit226

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit226: ; preds = %bb.cx, %bb.cy
  %i.sq = phi i32 [ %.pre.i225, %bb.cy ], [ %i.si, %bb.cx ]
  %i.sr = load ptr, ptr %1, align 8, !tbaa !58
  %i.ss = zext i32 %i.sq to i64
  %i.st = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.ss
  %i.su = load i8, ptr %i.so, align 1
  store i8 %i.su, ptr %i.st, align 1
  %i.sv = load i32, ptr %i.nx, align 8, !tbaa !57
  %i.sw = add i32 %i.sv, 1                        ; 2 uses
  store i32 %i.sw, ptr %i.nx, align 8, !tbaa !57
  %indvars.iv.next346 = add nuw nsw i64 %indvars.iv345, 1 ; 2 uses
  %.not139 = icmp eq i64 %indvars.iv.next346, %i.sf
  br i1 %.not139, label %._crit_edge, label %bb.cx, !llvm.loop !163

.preheader299:                                    ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit229, %.preheader301
  %.not136322 = icmp eq i32 %.7, 0
  br i1 %.not136322, label %.loopexit300, label %.lr.ph324

.lr.ph324:                                        ; preds = %.preheader299
  %i.sx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.sz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre352 = load i32, ptr %i.sx, align 8, !tbaa !57
  br label %bb.db

bb.cz:                                            ; preds = %.lr.ph321, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit229
  %i.ta = phi i32 [ %.pre351, %.lr.ph321 ], [ %i.to, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit229 ] ; 2 uses
  %indvars.iv339 = phi i64 [ 0, %.lr.ph321 ], [ %indvars.iv.next340, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit229 ] ; 2 uses
  %i.tb = trunc nuw i64 %indvars.iv339 to i32
  %i.tc = xor i32 %i.tb, -1
  %i.td = add i32 %i.nd, %i.tc
  %i.te = zext i32 %i.td to i64
  %i.tf = load ptr, ptr %13, align 8, !tbaa !58
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.te
  %i.th = load i32, ptr %i.nk, align 4, !tbaa !56
  %.not.i227 = icmp ult i32 %i.ta, %i.th
  br i1 %.not.i227, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit229, label %bb.da, !prof !59

bb.da:                                            ; preds = %bb.cz
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.nl, i64 noundef 0, i64 noundef 1) #25
  %.pre.i228 = load i32, ptr %i.nj, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit229

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit229: ; preds = %bb.cz, %bb.da
  %i.ti = phi i32 [ %.pre.i228, %bb.da ], [ %i.ta, %bb.cz ]
  %i.tj = load ptr, ptr %1, align 8, !tbaa !58
  %i.tk = zext i32 %i.ti to i64
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.tk
  %i.tm = load i8, ptr %i.tg, align 1
  store i8 %i.tm, ptr %i.tl, align 1
  %i.tn = load i32, ptr %i.nj, align 8, !tbaa !57
  %i.to = add i32 %i.tn, 1                        ; 2 uses
  store i32 %i.to, ptr %i.nj, align 8, !tbaa !57
  %indvars.iv.next340 = add nuw nsw i64 %indvars.iv339, 1 ; 2 uses
  %.not135 = icmp eq i64 %indvars.iv.next340, %i.nm
  br i1 %.not135, label %.preheader299, label %bb.cz, !llvm.loop !164

bb.db:                                            ; preds = %.lr.ph324, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit232
  %i.tp = phi i32 [ %.pre352, %.lr.ph324 ], [ %i.tw, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit232 ] ; 2 uses
  %.0103323 = phi i32 [ 0, %.lr.ph324 ], [ %i.tx, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit232 ]
  %i.tq = load i32, ptr %i.sy, align 4, !tbaa !56
  %.not.i230 = icmp ult i32 %i.tp, %i.tq
  br i1 %.not.i230, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit232, label %bb.dc, !prof !59

bb.dc:                                            ; preds = %bb.db
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.sz, i64 noundef 0, i64 noundef 1) #25
  %.pre.i231 = load i32, ptr %i.sx, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit232

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit232: ; preds = %bb.db, %bb.dc
  %i.tr = phi i32 [ %.pre.i231, %bb.dc ], [ %i.tp, %bb.db ]
  %i.ts = load ptr, ptr %1, align 8, !tbaa !58
  %i.tt = zext i32 %i.tr to i64
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ts, i64 %i.tt
  store i8 48, ptr %i.tu, align 1
  %i.tv = load i32, ptr %i.sx, align 8, !tbaa !57
  %i.tw = add i32 %i.tv, 1                        ; 2 uses
  store i32 %i.tw, ptr %i.sx, align 8, !tbaa !57
  %i.tx = add nuw nsw i32 %.0103323, 1            ; 2 uses
  %.not136 = icmp eq i32 %i.tx, %.7
  br i1 %.not136, label %.loopexit300, label %bb.db, !llvm.loop !165

bb.dd:                                            ; preds = %bb.cc
  %i.ty = icmp sgt i32 %i.nn, 0
  br i1 %i.ty, label %.preheader303, label %bb.dh

.preheader303:                                    ; preds = %bb.dd
  %i.tz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ub = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.uc = zext nneg i32 %i.nn to i64
  %.pre349 = load i32, ptr %i.tz, align 8, !tbaa !57
  br label %bb.de

bb.de:                                            ; preds = %.preheader303, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit235
  %i.ud = phi i32 [ %.pre349, %.preheader303 ], [ %i.ur, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit235 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader303 ], [ %indvars.iv.next, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit235 ] ; 2 uses
  %i.ue = trunc nuw nsw i64 %indvars.iv to i32
  %i.uf = xor i32 %i.ue, -1
  %i.ug = add i32 %i.nd, %i.uf
  %i.uh = zext i32 %i.ug to i64
  %i.ui = load ptr, ptr %13, align 8, !tbaa !58
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 %i.uh
  %i.uk = load i32, ptr %i.ua, align 4, !tbaa !56
  %.not.i233 = icmp ult i32 %i.ud, %i.uk
  br i1 %.not.i233, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit235, label %bb.df, !prof !59

bb.df:                                            ; preds = %bb.de
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ub, i64 noundef 0, i64 noundef 1) #25
  %.pre.i234 = load i32, ptr %i.tz, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit235

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit235: ; preds = %bb.de, %bb.df
  %i.ul = phi i32 [ %.pre.i234, %bb.df ], [ %i.ud, %bb.de ]
  %i.um = load ptr, ptr %1, align 8, !tbaa !58
  %i.un = zext i32 %i.ul to i64
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 %i.un
  %i.up = load i8, ptr %i.uj, align 1
  store i8 %i.up, ptr %i.uo, align 1
  %i.uq = load i32, ptr %i.tz, align 8, !tbaa !57
  %i.ur = add i32 %i.uq, 1                        ; 2 uses
  store i32 %i.ur, ptr %i.tz, align 8, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not133 = icmp eq i64 %indvars.iv.next, %i.uc
  br i1 %.not133, label %bb.dg, label %bb.de, !llvm.loop !166

bb.dg:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 46, ptr %i.a, align 1, !tbaa !35
  call void @_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit304

bb.dh:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i8 48, ptr %i.b, align 1, !tbaa !35
  call void @_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i8 46, ptr %i.c, align 1, !tbaa !35
  call void @_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %.not132313 = icmp eq i32 %i.nn, 0
  br i1 %.not132313, label %.loopexit304, label %.lr.ph

.lr.ph:                                           ; preds = %bb.dh
  %i.us = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.uu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre348 = load i32, ptr %i.us, align 8, !tbaa !57
  br label %bb.di

bb.di:                                            ; preds = %.lr.ph, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit238
  %i.uv = phi i32 [ %.pre348, %.lr.ph ], [ %i.vc, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit238 ] ; 2 uses
  %.0314 = phi i32 [ 1, %.lr.ph ], [ %i.vd, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit238 ]
  %i.uw = load i32, ptr %i.ut, align 4, !tbaa !56
  %.not.i236 = icmp ult i32 %i.uv, %i.uw
  br i1 %.not.i236, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit238, label %bb.dj, !prof !59

bb.dj:                                            ; preds = %bb.di
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.uu, i64 noundef 0, i64 noundef 1) #25
  %.pre.i237 = load i32, ptr %i.us, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit238

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit238: ; preds = %bb.di, %bb.dj
  %i.ux = phi i32 [ %.pre.i237, %bb.dj ], [ %i.uv, %bb.di ]
  %i.uy = load ptr, ptr %1, align 8, !tbaa !58
  %i.uz = zext i32 %i.ux to i64
  %i.va = getelementptr inbounds nuw i8, ptr %i.uy, i64 %i.uz
  store i8 48, ptr %i.va, align 1
  %i.vb = load i32, ptr %i.us, align 8, !tbaa !57
  %i.vc = add i32 %i.vb, 1                        ; 2 uses
  store i32 %i.vc, ptr %i.us, align 8, !tbaa !57
  %i.vd = add i32 %.0314, 1                       ; 2 uses
  %.not132 = icmp eq i32 %i.vd, %i.nq
  br i1 %.not132, label %.loopexit304, label %bb.di, !llvm.loop !167

.loopexit304:                                     ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit238, %bb.dh, %bb.dg
  %.1 = phi i32 [ %i.nn, %bb.dg ], [ 0, %bb.dh ], [ 0, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit238 ] ; 2 uses
  %.not134316 = icmp eq i32 %.1, %i.nd
  br i1 %.not134316, label %.loopexit300, label %.lr.ph318

.lr.ph318:                                        ; preds = %.loopexit304
  %i.ve = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre350 = load i32, ptr %i.ve, align 8, !tbaa !57
  br label %bb.dk

bb.dk:                                            ; preds = %.lr.ph318, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit241
  %i.vh = phi i32 [ %.pre350, %.lr.ph318 ], [ %i.vu, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit241 ] ; 2 uses
  %.2317 = phi i32 [ %.1, %.lr.ph318 ], [ %i.vv, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit241 ] ; 2 uses
  %i.vi = xor i32 %.2317, -1
  %i.vj = add i32 %i.nd, %i.vi
  %i.vk = zext i32 %i.vj to i64
  %i.vl = load ptr, ptr %13, align 8, !tbaa !58
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 %i.vk
  %i.vn = load i32, ptr %i.vf, align 4, !tbaa !56
  %.not.i239 = icmp ult i32 %i.vh, %i.vn
  br i1 %.not.i239, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit241, label %bb.dl, !prof !59

bb.dl:                                            ; preds = %bb.dk
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.vg, i64 noundef 0, i64 noundef 1) #25
  %.pre.i240 = load i32, ptr %i.ve, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit241

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit241: ; preds = %bb.dk, %bb.dl
  %i.vo = phi i32 [ %.pre.i240, %bb.dl ], [ %i.vh, %bb.dk ]
  %i.vp = load ptr, ptr %1, align 8, !tbaa !58
  %i.vq = zext i32 %i.vo to i64
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vp, i64 %i.vq
  %i.vs = load i8, ptr %i.vm, align 1
  store i8 %i.vs, ptr %i.vr, align 1
  %i.vt = load i32, ptr %i.ve, align 8, !tbaa !57
  %i.vu = add i32 %i.vt, 1                        ; 2 uses
  store i32 %i.vu, ptr %i.ve, align 8, !tbaa !57
  %i.vv = add i32 %.2317, 1                       ; 2 uses
  %.not134 = icmp eq i32 %i.vv, %i.nd
  br i1 %.not134, label %.loopexit300, label %bb.dk, !llvm.loop !168

.loopexit300:                                     ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit241, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit232, %.loopexit304, %.preheader299, %_ZN4llvh11SmallVectorIcLj6EED2Ev.exit
  %i.vw = load i32, ptr %i.jq, align 8, !tbaa !38
  %i.vx = icmp ugt i32 %i.vw, 64
  br i1 %i.vx, label %bb.dm, label %_ZN4llvh5APIntD2Ev.exit242

bb.dm:                                            ; preds = %.loopexit300
  %i.vy = load ptr, ptr %15, align 8, !tbaa !35   ; 2 uses
  %i.vz = icmp eq ptr %i.vy, null
  br i1 %i.vz, label %_ZN4llvh5APIntD2Ev.exit242, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @_ZdaPv(ptr noundef nonnull %i.vy) #24
  br label %_ZN4llvh5APIntD2Ev.exit242

_ZN4llvh5APIntD2Ev.exit242:                       ; preds = %.loopexit300, %bb.dm, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.wa = load i32, ptr %i.jh, align 8, !tbaa !38
  %i.wb = icmp ugt i32 %i.wa, 64
  br i1 %i.wb, label %bb.do, label %_ZN4llvh5APIntD2Ev.exit243

bb.do:                                            ; preds = %_ZN4llvh5APIntD2Ev.exit242
  %i.wc = load ptr, ptr %14, align 8, !tbaa !35   ; 2 uses
  %i.wd = icmp eq ptr %i.wc, null
  br i1 %i.wd, label %_ZN4llvh5APIntD2Ev.exit243, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @_ZdaPv(ptr noundef nonnull %i.wc) #24
  br label %_ZN4llvh5APIntD2Ev.exit243

_ZN4llvh5APIntD2Ev.exit243:                       ; preds = %_ZN4llvh5APIntD2Ev.exit242, %bb.do, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.we = load ptr, ptr %13, align 8, !tbaa !58   ; 2 uses
  %i.wf = icmp eq ptr %i.we, %i.je
  br i1 %i.wf, label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit, label %bb.dq

bb.dq:                                            ; preds = %_ZN4llvh5APIntD2Ev.exit243
  call void @free(ptr noundef %i.we) #25
  br label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit

_ZN4llvh11SmallVectorIcLj256EED2Ev.exit:          ; preds = %_ZN4llvh5APIntD2Ev.exit243, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.wg = load i32, ptr %i.el, align 8, !tbaa !38
  %i.wh = icmp ugt i32 %i.wg, 64
  br i1 %i.wh, label %bb.dr, label %_ZN4llvh5APIntD2Ev.exit244

bb.dr:                                            ; preds = %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit
  %i.wi = load ptr, ptr %9, align 8, !tbaa !35    ; 2 uses
  %i.wj = icmp eq ptr %i.wi, null
  br i1 %i.wj, label %_ZN4llvh5APIntD2Ev.exit244, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @_ZdaPv(ptr noundef nonnull %i.wi) #24
  br label %_ZN4llvh5APIntD2Ev.exit244

_ZN4llvh5APIntD2Ev.exit244:                       ; preds = %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit, %bb.dr, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.dt

bb.dt:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit175, %_ZN4llvh6detail12_GLOBAL__N_16appendERNS_15SmallVectorImplIcEENS_9StringRefE.exit172, %_ZN4llvh6detail12_GLOBAL__N_16appendERNS_15SmallVectorImplIcEENS_9StringRefE.exit158, %_ZN4llvh5APIntD2Ev.exit244, %_ZN4llvh6detail12_GLOBAL__N_16appendERNS_15SmallVectorImplIcEENS_9StringRefE.exit152, %_ZN4llvh6detail12_GLOBAL__N_16appendERNS_15SmallVectorImplIcEENS_9StringRefE.exit146, %_ZN4llvh6detail12_GLOBAL__N_16appendERNS_15SmallVectorImplIcEENS_9StringRefE.exit
end_hunk_1
