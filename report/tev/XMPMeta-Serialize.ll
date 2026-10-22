Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/XMPMeta-Serialize?download=true
inline.NumInlined: 581
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK7XMPMeta17SerializeToBufferEPNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEjjPKcS9_i:bb.a
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit190.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.s631 ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit190.i: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit188.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit184.i
  %i.sb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 0, i64 noundef -1)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.s631 ; 0 uses

bb.bm:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit190.i
  br i1 %.not116.i, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.sc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0157) #19
  %i.sd = sext i32 %6 to i64
  %i.se = mul i64 %i.sc, %i.sd
  %i.sf = add i64 %i.se, 19
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.sf)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.s631

.preheader.i:                                     ; preds = %bb.bn
  %i.sg = icmp sgt i32 %6, 0
  br i1 %i.sg, label %.lr.ph250.i, label %._crit_edge251.i

.lr.ph250.i:                                      ; preds = %.preheader.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit192.i
  %.5249.i = phi i32 [ %i.si, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit192.i ], [ %6, %.preheader.i ] ; 2 uses
  %i.sh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull %.0157)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit192.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.s631 ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit192.i: ; preds = %.lr.ph250.i
  %i.si = add nsw i32 %.5249.i, -1
  %i.sj = icmp sgt i32 %.5249.i, 1
  br i1 %i.sj, label %.lr.ph250.i, label %._crit_edge251.i, !llvm.loop !52

._crit_edge251.i:                                 ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit192.i, %.preheader.i
  %i.sk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull @.str.69)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit194.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.s631 ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit194.i: ; preds = %._crit_edge251.i
  %i.sl = and i32 %2, 32
  %.not125.i = icmp eq i32 %i.sl, 0
  br i1 %.not125.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit194.i
  %i.sm = load i8, ptr %11, align 8               ; 2 uses
  %i.sn = trunc i8 %i.sm to i1                    ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.sp = load i64, ptr %i.so, align 8
  %i.sq = lshr i8 %i.sm, 1
  %i.sr = zext nneg i8 %i.sq to i64
  %i.ss = select i1 %i.sn, i64 %i.sp, i64 %i.sr
  %i.st = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.su = load ptr, ptr %i.st, align 8
  %i.sv = getelementptr inbounds nuw i8, ptr %11, i64 1
  %.pn.i.i = select i1 %i.sn, ptr %i.su, ptr %i.sv
  %i.sw = getelementptr i8, ptr %.pn.i.i, i64 %i.ss
  %.0.i.i = getelementptr i8, ptr %i.sw, i64 -4
  store i8 114, ptr %.0.i.i, align 1, !tbaa !18
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit194.i, %bb.bm
  %i.sx = load i8, ptr %7, align 8
  %i.sy = trunc i8 %i.sx to i1
  br i1 %i.sy, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.sz = load ptr, ptr %i.rk, align 8, !tbaa !18
  call void @_ZdlPv(ptr noundef %i.sz) #21
  br label %bb.bs

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.s631, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit178.i
  %.pn126.i = phi { ptr, i32 } [ %.pn123.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit178.i ], [ %lpad.loopexit.split-lp633, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.s631 ]
  %i.ta = load i8, ptr %7, align 8
  %i.tb = trunc i8 %i.ta to i1
  br i1 %i.tb, label %bb.br, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit196.i

bb.br:                                            ; preds = %.loopexit.split-lp.i
  %i.tc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !18
  call void @_ZdlPv(ptr noundef %i.td) #21
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit196.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit196.i: ; preds = %bb.br, %.loopexit.split-lp.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.body

bb.bs:                                            ; preds = %bb.bq, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br i1 %.not181, label %bb.bt, label %bb.cd

bb.bt:                                            ; preds = %bb.bs
  br i1 %.not187, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.te = load i8, ptr %1, align 8                ; 2 uses
  %i.tf = trunc i8 %i.te to i1
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.th = load i64, ptr %i.tg, align 8
  %i.ti = lshr i8 %i.te, 1
  %i.tj = zext nneg i8 %i.ti to i64
  %i.tk = select i1 %i.tf, i64 %i.th, i64 %i.tj
  %i.tl = load i8, ptr %11, align 8               ; 2 uses
  %i.tm = trunc i8 %i.tl to i1
  %i.tn = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.to = load i64, ptr %i.tn, align 8
  %i.tp = lshr i8 %i.tl, 1
  %i.tq = zext nneg i8 %i.tp to i64
  %i.tr = select i1 %i.tm, i64 %i.to, i64 %i.tq
  %i.ts = add i64 %i.tr, %i.tk                    ; 2 uses
  %i.tt = zext i32 %.1149 to i64
  %i.tu = icmp ugt i64 %i.ts, %i.tt
  br i1 %i.tu, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.tv = call ptr @__cxa_allocate_exception(i64 24) #17 ; 4 uses
  store i32 107, ptr %i.tv, align 8, !tbaa !15
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  store ptr @.str.15, ptr %i.tw, align 8, !tbaa !16
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  store i8 0, ptr %i.tx, align 8, !tbaa !17
  invoke void @__cxa_throw(ptr nonnull %i.tv, ptr nonnull @_ZTI9XMP_Error, ptr null) #18
          to label %bb.dw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %bb.bu
  %i.ty = trunc nuw i64 %i.ts to i32
  %i.tz = sub nuw i32 %.1149, %i.ty
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bt
  %.2150 = phi i32 [ %i.tz, %bb.bw ], [ %.1149, %bb.bt ] ; 2 uses
  %i.ua = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0156) #19 ; 3 uses
  %i.ub = zext i32 %.2150 to i64                  ; 2 uses
  %i.uc = icmp ugt i64 %i.ua, %i.ub
  br i1 %i.uc, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ud = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEmc(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ub, i8 noundef signext 32)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit215 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cb, %bb.ca, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit215, %bb.cc, %bb.bv, %._crit_edge379, %bb.by
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bz:                                            ; preds = %bb.bx
  %i.ue = trunc nuw i64 %i.ua to i32
  %i.uf = sub nuw i32 %.2150, %i.ue               ; 2 uses
  %i.ug = add nuw nsw i64 %i.ua, 100              ; 2 uses
  %i.uh = zext i32 %i.uf to i64                   ; 2 uses
  %.not212375 = icmp samesign ugt i64 %i.ug, %i.uh
  br i1 %.not212375, label %._crit_edge379, label %.lr.ph378

.lr.ph378:                                        ; preds = %bb.bz
  %i.ui = trunc nuw i64 %i.ug to i32              ; 2 uses
  br label %bb.ca

bb.ca:                                            ; preds = %.lr.ph378, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit
  %.3151376 = phi i32 [ %i.uf, %.lr.ph378 ], [ %i.ul, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit ]
  %i.uj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEmc(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 100, i8 noundef signext 32)
          to label %bb.cb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cb:                                            ; preds = %bb.ca
  %i.uk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %.0156)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit: ; preds = %bb.cb
  %i.ul = sub nuw i32 %.3151376, %i.ui            ; 3 uses
  %.not212 = icmp ult i32 %i.ul, %i.ui
  br i1 %.not212, label %._crit_edge379.loopexit, label %bb.ca, !llvm.loop !53

._crit_edge379.loopexit:                          ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit
  %i.um = zext i32 %i.ul to i64
  br label %._crit_edge379

._crit_edge379:                                   ; preds = %._crit_edge379.loopexit, %bb.bz
  %.lcssa = phi i64 [ %i.uh, %bb.bz ], [ %i.um, %._crit_edge379.loopexit ]
  %i.un = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEmc(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.lcssa, i8 noundef signext 32)
          to label %bb.cc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cc:                                            ; preds = %._crit_edge379
  %i.uo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %.0156)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit215 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit215: ; preds = %bb.cc, %bb.by
  %i.up = load i8, ptr %11, align 8               ; 2 uses
  %i.uq = trunc i8 %i.up to i1                    ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.us = load ptr, ptr %i.ur, align 8
  %i.ut = getelementptr inbounds nuw i8, ptr %11, i64 1
  %i.uu = select i1 %i.uq, ptr %i.us, ptr %i.ut
  %i.uv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.uw = load i64, ptr %i.uv, align 8
  %i.ux = lshr i8 %i.up, 1
  %i.uy = zext nneg i8 %i.ux to i64
  %i.uz = select i1 %i.uq, i64 %i.uw, i64 %i.uy
  %i.va = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.uu, i64 noundef %i.uz)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cd:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.vb = and i32 %2, 1
  %i.vc = icmp eq i32 %i.vb, 0                    ; 7 uses
  %i.vd = and i32 %2, 2
  %.not198 = icmp eq i32 %i.vd, 0
  br i1 %.not198, label %bb.cv, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  store i8 4, ptr %14, align 8
  %i.ve = getelementptr inbounds nuw i8, ptr %14, i64 1 ; 4 uses
  store i16 8192, ptr %i.ve, align 1
  %i.vf = getelementptr inbounds nuw i8, ptr %14, i64 3
  store i8 0, ptr %i.vf, align 1, !tbaa !18
  %i.vg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.vh = load i8, ptr %12, align 8               ; 2 uses
  %i.vi = trunc i8 %i.vh to i1                    ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.vk = load ptr, ptr %i.vj, align 8
  %i.vl = getelementptr inbounds nuw i8, ptr %12, i64 1 ; 3 uses
  %i.vm = select i1 %i.vi, ptr %i.vk, ptr %i.vl
  %i.vn = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.vo = load i64, ptr %i.vn, align 8
  %i.vp = lshr i8 %i.vh, 1
  %i.vq = zext nneg i8 %i.vp to i64
  %i.vr = select i1 %i.vi, i64 %i.vo, i64 %i.vq
  invoke void @_Z7ToUTF16PKhmPNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEb(ptr noundef %i.vm, i64 noundef %i.vr, ptr noundef nonnull %1, i1 noundef zeroext %i.vc)
          to label %bb.cf unwind label %.loopexit.split-lp299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i219)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i219, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i219, i64 24, i1 false), !tbaa.struct !31
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i219)
  %i.vs = load i8, ptr %12, align 8               ; 2 uses
  %i.vt = trunc i8 %i.vs to i1                    ; 2 uses
  %i.vu = load ptr, ptr %i.vj, align 8
  %i.vv = select i1 %i.vt, ptr %i.vu, ptr %i.vl
  %i.vw = load i64, ptr %i.vn, align 8
  %i.vx = lshr i8 %i.vs, 1
  %i.vy = zext nneg i8 %i.vx to i64
  %i.vz = select i1 %i.vt, i64 %i.vw, i64 %i.vy
  invoke void @_Z7ToUTF16PKhmPNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEb(ptr noundef %i.vv, i64 noundef %i.vz, ptr noundef nonnull %11, i1 noundef zeroext %i.vc)
          to label %bb.cg unwind label %.loopexit.split-lp299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cg:                                            ; preds = %bb.cf
  br i1 %.not187, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.wa = load i8, ptr %1, align 8                ; 2 uses
  %i.wb = trunc i8 %i.wa to i1
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.wd = load i64, ptr %i.wc, align 8
  %i.we = lshr i8 %i.wa, 1
  %i.wf = zext nneg i8 %i.we to i64
  %i.wg = select i1 %i.wb, i64 %i.wd, i64 %i.wf
  %i.wh = load i8, ptr %11, align 8               ; 2 uses
  %i.wi = trunc i8 %i.wh to i1
  %i.wj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.wk = load i64, ptr %i.wj, align 8
  %i.wl = lshr i8 %i.wh, 1
  %i.wm = zext nneg i8 %i.wl to i64
  %i.wn = select i1 %i.wi, i64 %i.wk, i64 %i.wm
  %i.wo = add i64 %i.wn, %i.wg                    ; 2 uses
  %i.wp = zext i32 %.1149 to i64
  %i.wq = icmp ugt i64 %i.wo, %i.wp
  br i1 %i.wq, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.wr = call ptr @__cxa_allocate_exception(i64 24) #17 ; 4 uses
  store i32 107, ptr %i.wr, align 8, !tbaa !15
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  store ptr @.str.15, ptr %i.ws, align 8, !tbaa !16
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  store i8 0, ptr %i.wt, align 8, !tbaa !17
  invoke void @__cxa_throw(ptr nonnull %i.wr, ptr nonnull @_ZTI9XMP_Error, ptr null) #18
          to label %bb.dw unwind label %.loopexit.split-lp299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cj:                                            ; preds = %bb.ch
  %i.wu = trunc nuw i64 %i.wo to i32
  %i.wv = sub nuw i32 %.1149, %i.wu
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.cg
  %.4152 = phi i32 [ %i.wv, %bb.cj ], [ %.1149, %bb.cg ] ; 3 uses
  %i.ww = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef %.0156)
          to label %bb.cl unwind label %.loopexit.split-lp299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cl:                                            ; preds = %bb.ck
  %i.wx = load i8, ptr %12, align 8               ; 2 uses
  %i.wy = trunc i8 %i.wx to i1                    ; 2 uses
  %i.wz = load ptr, ptr %i.vj, align 8
  %i.xa = select i1 %i.wy, ptr %i.wz, ptr %i.vl
  %i.xb = load i64, ptr %i.vn, align 8
  %i.xc = lshr i8 %i.wx, 1
  %i.xd = zext nneg i8 %i.xc to i64
  %i.xe = select i1 %i.wy, i64 %i.xb, i64 %i.xd
  invoke void @_Z7ToUTF16PKhmPNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEb(ptr noundef %i.xa, i64 noundef %i.xe, ptr noundef nonnull %13, i1 noundef zeroext %i.vc)
          to label %bb.cm unwind label %.loopexit.split-lp299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cm:                                            ; preds = %bb.cl
  %i.xf = load i8, ptr %13, align 8               ; 2 uses
  %i.xg = trunc i8 %i.xf to i1
  %i.xh = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.xi = load i64, ptr %i.xh, align 8
  %i.xj = lshr i8 %i.xf, 1
  %i.xk = zext nneg i8 %i.xj to i64
  %i.xl = select i1 %i.xg, i64 %i.xi, i64 %i.xk   ; 3 uses
  %i.xm = zext i32 %.4152 to i64
  %i.xn = icmp ugt i64 %i.xl, %i.xm
  br i1 %i.xn, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.xo = lshr i32 %.4152, 1                      ; 2 uses
  %.not382 = icmp eq i32 %i.xo, 0
  br i1 %.not382, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit227, label %.lr.ph362

.lr.ph362:                                        ; preds = %bb.cn
  %i.xp = getelementptr inbounds nuw i8, ptr %14, i64 8
  br label %bb.co

bb.co:                                            ; preds = %.lr.ph362, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit221
  %.0137360 = phi i32 [ %i.xo, %.lr.ph362 ], [ %i.xz, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit221 ] ; 2 uses
  %i.xq = load i8, ptr %14, align 8               ; 2 uses
  %i.xr = trunc i8 %i.xq to i1                    ; 2 uses
  %i.xs = load ptr, ptr %i.vg, align 8
  %i.xt = select i1 %i.xr, ptr %i.xs, ptr %i.ve
  %i.xu = load i64, ptr %i.xp, align 8
  %i.xv = lshr i8 %i.xq, 1
  %i.xw = zext nneg i8 %i.xv to i64
  %i.xx = select i1 %i.xr, i64 %i.xu, i64 %i.xw
  %i.xy = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.xt, i64 noundef %i.xx)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit221 unwind label %.loopexit.split-lp299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit221: ; preds = %bb.co
  %i.xz = add nsw i32 %.0137360, -1
  %i.ya = icmp sgt i32 %.0137360, 1
  br i1 %i.ya, label %bb.co, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit227, !llvm.loop !54

bb.cp:                                            ; preds = %bb.cm
  %i.yb = trunc nuw i64 %i.xl to i32
  %i.yc = sub nuw i32 %.4152, %i.yb               ; 3 uses
  %i.yd = add nuw nsw i64 %i.xl, 200              ; 2 uses
  %i.ye = zext i32 %i.yc to i64
  %.not205355 = icmp samesign ugt i64 %i.yd, %i.ye
  br i1 %.not205355, label %._crit_edge, label %.preheader306.lr.ph

.preheader306.lr.ph:                              ; preds = %bb.cp
  %i.yf = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.yg = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.yh = getelementptr inbounds nuw i8, ptr %13, i64 1
  %i.yi = trunc nuw i64 %i.yd to i32              ; 2 uses
  br label %.preheader306

.preheader306:                                    ; preds = %.preheader306.lr.ph, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit223
  %.5153356 = phi i32 [ %i.yc, %.preheader306.lr.ph ], [ %i.zd, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit223 ]
  br label %bb.cr

bb.cq:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit225
  %i.yj = load i8, ptr %13, align 8               ; 2 uses
  %i.yk = trunc i8 %i.yj to i1                    ; 2 uses
  %i.yl = load ptr, ptr %i.yg, align 8
  %i.ym = select i1 %i.yk, ptr %i.yl, ptr %i.yh
  %i.yn = load i64, ptr %i.xh, align 8
  %i.yo = lshr i8 %i.yj, 1
  %i.yp = zext nneg i8 %i.yo to i64
  %i.yq = select i1 %i.yk, i64 %i.yn, i64 %i.yp
  %i.yr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.ym, i64 noundef %i.yq)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit223 unwind label %.loopexit.split-lp299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cr:                                            ; preds = %.preheader306, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit225
  %.0136354 = phi i32 [ 100, %.preheader306 ], [ %i.zb, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit225 ] ; 2 uses
  %i.ys = load i8, ptr %14, align 8               ; 2 uses
  %i.yt = trunc i8 %i.ys to i1                    ; 2 uses
  %i.yu = load ptr, ptr %i.vg, align 8
  %i.yv = select i1 %i.yt, ptr %i.yu, ptr %i.ve
  %i.yw = load i64, ptr %i.yf, align 8
  %i.yx = lshr i8 %i.ys, 1
  %i.yy = zext nneg i8 %i.yx to i64
  %i.yz = select i1 %i.yt, i64 %i.yw, i64 %i.yy
  %i.za = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.yv, i64 noundef %i.yz)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit225 unwind label %.loopexit.split-lp299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit225: ; preds = %bb.cr
  %i.zb = add nsw i32 %.0136354, -1
  %i.zc = icmp samesign ugt i32 %.0136354, 1
  br i1 %i.zc, label %bb.cr, label %bb.cq, !llvm.loop !55

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit223: ; preds = %bb.cq
  %i.zd = sub i32 %.5153356, %i.yi                ; 3 uses
  %.not205 = icmp ult i32 %i.zd, %i.yi
  br i1 %.not205, label %._crit_edge, label %.preheader306, !llvm.loop !56

._crit_edge:                                      ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit223, %bb.cp
  %.5153.lcssa = phi i32 [ %i.yc, %bb.cp ], [ %i.zd, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit223 ]
  %i.ze = lshr i32 %.5153.lcssa, 1                ; 2 uses
  %.not381 = icmp eq i32 %i.ze, 0
  br i1 %.not381, label %._crit_edge359, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge
  %i.zf = getelementptr inbounds nuw i8, ptr %14, i64 8
  br label %bb.cs

._crit_edge359:                                   ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit229, %._crit_edge
  %i.zg = load i8, ptr %13, align 8               ; 2 uses
  %i.zh = trunc i8 %i.zg to i1                    ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.zj = load ptr, ptr %i.zi, align 8
  %i.zk = getelementptr inbounds nuw i8, ptr %13, i64 1
  %i.zl = select i1 %i.zh, ptr %i.zj, ptr %i.zk
  %i.zm = load i64, ptr %i.xh, align 8
  %i.zn = lshr i8 %i.zg, 1
  %i.zo = zext nneg i8 %i.zn to i64
  %i.zp = select i1 %i.zh, i64 %i.zm, i64 %i.zo
  %i.zq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.zl, i64 noundef %i.zp)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit227 unwind label %.loopexit.split-lp299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cs:                                            ; preds = %.lr.ph, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit229
  %.0135357 = phi i32 [ %i.ze, %.lr.ph ], [ %i.aaa, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit229 ] ; 2 uses
  %i.zr = load i8, ptr %14, align 8               ; 2 uses
  %i.zs = trunc i8 %i.zr to i1                    ; 2 uses
  %i.zt = load ptr, ptr %i.vg, align 8
  %i.zu = select i1 %i.zs, ptr %i.zt, ptr %i.ve
  %i.zv = load i64, ptr %i.zf, align 8
  %i.zw = lshr i8 %i.zr, 1
  %i.zx = zext nneg i8 %i.zw to i64
  %i.zy = select i1 %i.zs, i64 %i.zv, i64 %i.zx
  %i.zz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.zu, i64 noundef %i.zy)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit229 unwind label %.loopexit.split-lp299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit229: ; preds = %bb.cs
  %i.aaa = add nsw i32 %.0135357, -1
  %i.aab = icmp sgt i32 %.0135357, 1
  br i1 %i.aab, label %bb.cs, label %._crit_edge359, !llvm.loop !57

.loopexit.split-lp299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cr, %bb.cs, %bb.co, %bb.cq, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit227, %._crit_edge359, %bb.ci, %bb.cl, %bb.ck, %bb.cf, %bb.ce
  %lpad.loopexit.split-lp562 = landingpad { ptr, i32 }
          cleanup
  %i.aac = load i8, ptr %14, align 8
  %i.aad = trunc i8 %i.aac to i1
  br i1 %i.aad, label %bb.ct, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.ct:                                            ; preds = %.loopexit.split-lp299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.aae = load ptr, ptr %i.vg, align 8, !tbaa !18
  call void @_ZdlPv(ptr noundef %i.aae) #21
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit227: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit221, %bb.cn, %._crit_edge359
  %i.aaf = load i8, ptr %11, align 8              ; 2 uses
  %i.aag = trunc i8 %i.aaf to i1                  ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.aai = load ptr, ptr %i.aah, align 8
  %i.aaj = getelementptr inbounds nuw i8, ptr %11, i64 1
  %i.aak = select i1 %i.aag, ptr %i.aai, ptr %i.aaj
  %i.aal = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aam = load i64, ptr %i.aal, align 8
  %i.aan = lshr i8 %i.aaf, 1
  %i.aao = zext nneg i8 %i.aan to i64
  %i.aap = select i1 %i.aag, i64 %i.aam, i64 %i.aao
  %i.aaq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.aak, i64 noundef %i.aap)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit231 unwind label %.loopexit.split-lp299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit231: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit227
  %i.aar = load i8, ptr %14, align 8
  %i.aas = trunc i8 %i.aar to i1
  br i1 %i.aas, label %bb.cu, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit232

bb.cu:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit231
  %i.aat = load ptr, ptr %i.vg, align 8, !tbaa !18
  call void @_ZdlPv(ptr noundef %i.aat) #21
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit232

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit232: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit231, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.do

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.ct, %.loopexit.split-lp299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.dr

bb.cv:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  store i8 8, ptr %15, align 8
  %i.aau = getelementptr inbounds nuw i8, ptr %15, i64 1 ; 5 uses
  store i32 536870912, ptr %i.aau, align 1
  %i.aav = getelementptr inbounds nuw i8, ptr %15, i64 5
  store i8 0, ptr %i.aav, align 1, !tbaa !18
  %i.aaw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  br i1 %i.vc, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  store <4 x i8> <i8 32, i8 0, i8 0, i8 0>, ptr %i.aau, align 1, !tbaa !18
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.aax = load i8, ptr %12, align 8              ; 2 uses
  %i.aay = trunc i8 %i.aax to i1                  ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.aba = load ptr, ptr %i.aaz, align 8
  %i.abb = getelementptr inbounds nuw i8, ptr %12, i64 1 ; 3 uses
  %i.abc = select i1 %i.aay, ptr %i.aba, ptr %i.abb
  %i.abd = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.abe = load i64, ptr %i.abd, align 8
  %i.abf = lshr i8 %i.aax, 1
  %i.abg = zext nneg i8 %i.abf to i64
  %i.abh = select i1 %i.aay, i64 %i.abe, i64 %i.abg
  invoke void @_Z7ToUTF32PKhmPNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEb(ptr noundef %i.abc, i64 noundef %i.abh, ptr noundef nonnull %1, i1 noundef zeroext %i.vc)
          to label %bb.cy unwind label %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i254)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i254, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i254, i64 24, i1 false), !tbaa.struct !31
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i254)
  %i.abi = load i8, ptr %12, align 8              ; 2 uses
  %i.abj = trunc i8 %i.abi to i1                  ; 2 uses
  %i.abk = load ptr, ptr %i.aaz, align 8
  %i.abl = select i1 %i.abj, ptr %i.abk, ptr %i.abb
  %i.abm = load i64, ptr %i.abd, align 8
  %i.abn = lshr i8 %i.abi, 1
  %i.abo = zext nneg i8 %i.abn to i64
  %i.abp = select i1 %i.abj, i64 %i.abm, i64 %i.abo
  invoke void @_Z7ToUTF32PKhmPNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEb(ptr noundef %i.abl, i64 noundef %i.abp, ptr noundef nonnull %11, i1 noundef zeroext %i.vc)
          to label %bb.cz unwind label %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cz:                                            ; preds = %bb.cy
  br i1 %.not187, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.abq = load i8, ptr %1, align 8               ; 2 uses
  %i.abr = trunc i8 %i.abq to i1
  %i.abs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.abt = load i64, ptr %i.abs, align 8
  %i.abu = lshr i8 %i.abq, 1
  %i.abv = zext nneg i8 %i.abu to i64
  %i.abw = select i1 %i.abr, i64 %i.abt, i64 %i.abv
  %i.abx = load i8, ptr %11, align 8              ; 2 uses
  %i.aby = trunc i8 %i.abx to i1
  %i.abz = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aca = load i64, ptr %i.abz, align 8
  %i.acb = lshr i8 %i.abx, 1
  %i.acc = zext nneg i8 %i.acb to i64
  %i.acd = select i1 %i.aby, i64 %i.aca, i64 %i.acc
  %i.ace = add i64 %i.acd, %i.abw                 ; 2 uses
  %i.acf = zext i32 %.1149 to i64
  %i.acg = icmp ugt i64 %i.ace, %i.acf
  br i1 %i.acg, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.ach = call ptr @__cxa_allocate_exception(i64 24) #17 ; 4 uses
  store i32 107, ptr %i.ach, align 8, !tbaa !15
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 8
  store ptr @.str.15, ptr %i.aci, align 8, !tbaa !16
  %i.acj = getelementptr inbounds nuw i8, ptr %i.ach, i64 16
  store i8 0, ptr %i.acj, align 8, !tbaa !17
  invoke void @__cxa_throw(ptr nonnull %i.ach, ptr nonnull @_ZTI9XMP_Error, ptr null) #18
          to label %bb.dw unwind label %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dc:                                            ; preds = %bb.da
  %i.ack = trunc nuw i64 %i.ace to i32
  %i.acl = sub nuw i32 %.1149, %i.ack
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.cz
  %.6154 = phi i32 [ %i.acl, %bb.dc ], [ %.1149, %bb.cz ] ; 3 uses
  %i.acm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef %.0156)
          to label %bb.de unwind label %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.de:                                            ; preds = %bb.dd
  %i.acn = load i8, ptr %12, align 8              ; 2 uses
  %i.aco = trunc i8 %i.acn to i1                  ; 2 uses
  %i.acp = load ptr, ptr %i.aaz, align 8
  %i.acq = select i1 %i.aco, ptr %i.acp, ptr %i.abb
  %i.acr = load i64, ptr %i.abd, align 8
  %i.acs = lshr i8 %i.acn, 1
  %i.act = zext nneg i8 %i.acs to i64
  %i.acu = select i1 %i.aco, i64 %i.acr, i64 %i.act
  invoke void @_Z7ToUTF32PKhmPNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEb(ptr noundef %i.acq, i64 noundef %i.acu, ptr noundef nonnull %13, i1 noundef zeroext %i.vc)
          to label %bb.df unwind label %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.df:                                            ; preds = %bb.de
  %i.acv = load i8, ptr %13, align 8              ; 2 uses
  %i.acw = trunc i8 %i.acv to i1
  %i.acx = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.acy = load i64, ptr %i.acx, align 8
  %i.acz = lshr i8 %i.acv, 1
  %i.ada = zext nneg i8 %i.acz to i64
  %i.adb = select i1 %i.acw, i64 %i.acy, i64 %i.ada ; 3 uses
  %i.adc = zext i32 %.6154 to i64
  %i.add = icmp ugt i64 %i.adb, %i.adc
  br i1 %i.add, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %bb.df
  %i.ade = lshr i32 %.6154, 2                     ; 2 uses
  %.not384 = icmp eq i32 %i.ade, 0
  br i1 %.not384, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit262, label %.lr.ph374

.lr.ph374:                                        ; preds = %bb.dg
  %i.adf = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %bb.dh

bb.dh:                                            ; preds = %.lr.ph374, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit256
  %.0134372 = phi i32 [ %i.ade, %.lr.ph374 ], [ %i.adp, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit256 ] ; 2 uses
  %i.adg = load i8, ptr %15, align 8              ; 2 uses
  %i.adh = trunc i8 %i.adg to i1                  ; 2 uses
  %i.adi = load ptr, ptr %i.aaw, align 8
  %i.adj = select i1 %i.adh, ptr %i.adi, ptr %i.aau
  %i.adk = load i64, ptr %i.adf, align 8
  %i.adl = lshr i8 %i.adg, 1
  %i.adm = zext nneg i8 %i.adl to i64
  %i.adn = select i1 %i.adh, i64 %i.adk, i64 %i.adm
  %i.ado = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.adj, i64 noundef %i.adn)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit256 unwind label %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit256: ; preds = %bb.dh
  %i.adp = add nsw i32 %.0134372, -1
  %i.adq = icmp sgt i32 %.0134372, 1
  br i1 %i.adq, label %bb.dh, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit262, !llvm.loop !58

bb.di:                                            ; preds = %bb.df
  %i.adr = trunc nuw i64 %i.adb to i32
  %i.ads = sub nuw i32 %.6154, %i.adr             ; 3 uses
  %i.adt = add nuw nsw i64 %i.adb, 400            ; 2 uses
  %i.adu = zext i32 %i.ads to i64
  %.not200364 = icmp samesign ugt i64 %i.adt, %i.adu
  br i1 %.not200364, label %._crit_edge366, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.di
  %i.adv = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.adw = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.adx = getelementptr inbounds nuw i8, ptr %13, i64 1
  %i.ady = trunc nuw i64 %i.adt to i32            ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit258
  %.7155365 = phi i32 [ %i.ads, %.preheader.lr.ph ], [ %i.aet, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit258 ]
  br label %bb.dk

bb.dj:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit260
  %i.adz = load i8, ptr %13, align 8              ; 2 uses
  %i.aea = trunc i8 %i.adz to i1                  ; 2 uses
  %i.aeb = load ptr, ptr %i.adw, align 8
  %i.aec = select i1 %i.aea, ptr %i.aeb, ptr %i.adx
  %i.aed = load i64, ptr %i.acx, align 8
  %i.aee = lshr i8 %i.adz, 1
  %i.aef = zext nneg i8 %i.aee to i64
  %i.aeg = select i1 %i.aea, i64 %i.aed, i64 %i.aef
  %i.aeh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.aec, i64 noundef %i.aeg)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit258 unwind label %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.dk:                                            ; preds = %.preheader, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit260
  %.0133363 = phi i32 [ 100, %.preheader ], [ %i.aer, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit260 ] ; 2 uses
  %i.aei = load i8, ptr %15, align 8              ; 2 uses
  %i.aej = trunc i8 %i.aei to i1                  ; 2 uses
  %i.aek = load ptr, ptr %i.aaw, align 8
  %i.ael = select i1 %i.aej, ptr %i.aek, ptr %i.aau
  %i.aem = load i64, ptr %i.adv, align 8
  %i.aen = lshr i8 %i.aei, 1
  %i.aeo = zext nneg i8 %i.aen to i64
  %i.aep = select i1 %i.aej, i64 %i.aem, i64 %i.aeo
  %i.aeq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.ael, i64 noundef %i.aep)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit260 unwind label %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit260: ; preds = %bb.dk
  %i.aer = add nsw i32 %.0133363, -1
  %i.aes = icmp samesign ugt i32 %.0133363, 1
  br i1 %i.aes, label %bb.dk, label %bb.dj, !llvm.loop !59

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit258: ; preds = %bb.dj
  %i.aet = sub i32 %.7155365, %i.ady              ; 3 uses
  %.not200 = icmp ult i32 %i.aet, %i.ady
  br i1 %.not200, label %._crit_edge366, label %.preheader, !llvm.loop !60

._crit_edge366:                                   ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit258, %bb.di
  %.7155.lcssa = phi i32 [ %i.ads, %bb.di ], [ %i.aet, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit258 ]
  %i.aeu = lshr i32 %.7155.lcssa, 2               ; 2 uses
  %.not383 = icmp eq i32 %i.aeu, 0
  br i1 %.not383, label %._crit_edge371, label %.lr.ph370

.lr.ph370:                                        ; preds = %._crit_edge366
  %i.aev = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %bb.dl

._crit_edge371:                                   ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit264, %._crit_edge366
  %i.aew = load i8, ptr %13, align 8              ; 2 uses
  %i.aex = trunc i8 %i.aew to i1                  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL28SerializeCompactRDFElemPropsPK8XMP_NodeRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKcSB_i:bb.a
  %i.gt = load i32, ptr %i.ak, align 8, !tbaa !37
  %i.gu = lshr i32 %i.gt, 6
  %.lobit = and i32 %i.gu, 1
  %spec.select198 = zext nneg i32 %.lobit to i64  ; 2 uses
  %i.gv = icmp ugt i64 %i.gs, %spec.select198
  br i1 %i.gv, label %.lr.ph264, label %.critedge200

.lr.ph264:                                        ; preds = %bb.r, %.lr.ph264
  %.1180262 = phi i64 [ %i.gz, %.lr.ph264 ], [ %spec.select198, %bb.r ] ; 2 uses
  %i.gw = load ptr, ptr %i.ar, align 8, !tbaa !27
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %.1180262
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !29
  call fastcc void @_ZL29SerializeCanonicalRDFPropertyPK8XMP_NodeRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKcSB_ibb(ptr noundef %i.gy, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.o, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.gz = add i64 %.1180262, 1                    ; 2 uses
  %exitcond280.not = icmp eq i64 %i.gz, %i.gs
  br i1 %exitcond280.not, label %.critedge200, label %.lr.ph264, !llvm.loop !71

._crit_edge239.thread:                            ; preds = %._crit_edge, %._crit_edge239
  %.0182.lcssa291 = phi i8 [ %.2184, %._crit_edge239 ], [ 0, %._crit_edge ]
  %i.ha = icmp eq i32 %i.am, 0
  br i1 %i.ha, label %bb.s, label %bb.x

bb.s:                                             ; preds = %._crit_edge239.thread
  %i.hb = load i32, ptr %i.ak, align 8, !tbaa !37
  %i.hc = and i32 %i.hb, 2
  %.not196 = icmp eq i32 %i.hc, 0
  br i1 %.not196, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hd = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.48) ; 0 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  call fastcc void @_ZL15AppendNodeValueRNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKS5_b(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.he, i1 noundef zeroext true)
  %i.hf = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.49) ; 0 uses
  br label %.critedge.sink.split

bb.u:                                             ; preds = %bb.s
  %i.hg = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 8             ; 2 uses
  %i.hi = trunc i8 %i.hh to i1
  %i.hj = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.hk = load i64, ptr %i.hj, align 8
  %i.hl = lshr i8 %i.hh, 1
  %i.hm = zext nneg i8 %i.hl to i64
  %i.hn = select i1 %i.hi, i64 %i.hk, i64 %i.hm
  %i.ho = icmp eq i64 %i.hn, 0
  br i1 %i.ho, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.hp = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.33) ; 0 uses
  br label %.critedge.sink.split

bb.w:                                             ; preds = %bb.u
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 62)
  call fastcc void @_ZL15AppendNodeValueRNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKS5_b(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.hg, i1 noundef zeroext false)
  br label %.loopexit

bb.x:                                             ; preds = %._crit_edge239.thread
  %i.hq = and i32 %i.al, 512
  %.not193 = icmp eq i32 %i.hq, 0
  br i1 %.not193, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 62)
  %i.hr = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !26
  %i.hv = load ptr, ptr %i.hs, align 8, !tbaa !27
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = and i64 %i.hy, 34359738360
  %i.ia = icmp eq i64 %i.hz, 0
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.y
  %i.ib = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.62) ; 0 uses
  %i.ic = and i32 %i.al, 2048
  %.not23.i = icmp eq i32 %i.ic, 0
  %i.id = and i32 %i.al, 1024
  %.not24.i = icmp eq i32 %i.id, 0
  %.str.66..str.65.i = select i1 %.not24.i, ptr @.str.66, ptr @.str.65
  %.str.65.sink.i = select i1 %.not23.i, ptr %.str.66..str.65.i, ptr @.str.64 ; 2 uses
  %i.ie = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %.str.65.sink.i) ; 0 uses
  br i1 %i.ia, label %bb.z, label %_ZL15EmitRDFArrayTagjRNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPKcS8_iib.exit

.lr.ph.i:                                         ; preds = %bb.y, %.lr.ph.i
  %.025.i = phi i32 [ %i.ig, %.lr.ph.i ], [ %i.o, %bb.y ] ; 2 uses
  %i.if = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %3) ; 0 uses
  %i.ig = add nsw i32 %.025.i, -1
  %i.ih = icmp samesign ugt i32 %.025.i, 1
  br i1 %i.ih, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2

bb.z:                                             ; preds = %._crit_edge.i
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 47)
  br label %_ZL15EmitRDFArrayTagjRNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPKcS8_iib.exit

_ZL15EmitRDFArrayTagjRNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPKcS8_iib.exit: ; preds = %._crit_edge.i, %bb.z
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 62)
  %i.ii = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  %i.ij = load i32, ptr %i.ak, align 8, !tbaa !37
  %i.ik = and i32 %i.ij, 4096
  %.not195 = icmp eq i32 %i.ik, 0
  br i1 %.not195, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZL15EmitRDFArrayTagjRNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPKcS8_iib.exit
  call void @_Z18NormalizeLangArrayP8XMP_Node(ptr noundef nonnull %i.t)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZL15EmitRDFArrayTagjRNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPKcS8_iib.exit
  call fastcc void @_ZL28SerializeCompactRDFElemPropsPK8XMP_NodeRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKcSB_i(ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.q)
  %i.il = load ptr, ptr %i.ht, align 8, !tbaa !26
  %i.im = load ptr, ptr %i.hs, align 8, !tbaa !27
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = sub i64 %i.in, %i.io
  %i.iq = and i64 %i.ip, 34359738360
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %.critedge200, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ab
  br i1 %i.p, label %.lr.ph.i209, label %._crit_edge.i204

._crit_edge.i204:                                 ; preds = %.lr.ph.i209, %.preheader.i
  %i.is = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.63) ; 0 uses
  %i.it = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %.str.65.sink.i) ; 0 uses
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 62)
  %i.iu = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  br label %.critedge200

.lr.ph.i209:                                      ; preds = %.preheader.i, %.lr.ph.i209
  %.025.i210 = phi i32 [ %i.iw, %.lr.ph.i209 ], [ %i.o, %.preheader.i ] ; 2 uses
  %i.iv = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %3) ; 0 uses
  %i.iw = add nsw i32 %.025.i210, -1
  %i.ix = icmp samesign ugt i32 %.025.i210, 1
  br i1 %i.ix, label %.lr.ph.i209, label %._crit_edge.i204, !llvm.loop !2

bb.ac:                                            ; preds = %bb.x
  %i.iy = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.iz = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !26 ; 2 uses
  %i.jb = load ptr, ptr %i.iy, align 8, !tbaa !27 ; 3 uses
  %i.jc = ptrtoint ptr %i.ja to i64
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = sub i64 %i.jc, %i.jd
  %i.jf = ashr exact i64 %i.je, 3
  %.not194241 = icmp eq ptr %i.ja, %i.jb
  br i1 %.not194241, label %.thread296, label %.lr.ph246

.lr.ph246:                                        ; preds = %bb.ac, %bb.ag
  %.0244 = phi i64 [ %i.ka, %bb.ag ], [ 0, %bb.ac ] ; 2 uses
  %.0170243 = phi i8 [ %.1, %bb.ag ], [ 0, %bb.ac ]
  %.0171242 = phi i8 [ %.1172, %bb.ag ], [ 0, %bb.ac ]
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %.0244
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !29 ; 6 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jj = load i8, ptr %i.ji, align 8
  %i.jk = trunc i8 %i.jj to i1
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jh, i64 17
  %.pn.i.i212 = select i1 %i.jk, ptr %i.jm, ptr %i.jn
  %i.jo = load i8, ptr %.pn.i.i212, align 1, !tbaa !18
  %i.jp = icmp eq i8 %i.jo, 91
  br i1 %i.jp, label %_ZL16CanBeRDFAttrPropPK8XMP_Node.exit216.thread, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph246
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jh, i64 96
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !27
  %i.js = getelementptr inbounds nuw i8, ptr %i.jh, i64 104
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !26
  %i.ju = icmp eq ptr %i.jr, %i.jt
  br i1 %i.ju, label %bb.ae, label %_ZL16CanBeRDFAttrPropPK8XMP_Node.exit216.thread

bb.ae:                                            ; preds = %bb.ad
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !37
  %i.jx = and i32 %i.jw, 7938
  %or.cond225 = icmp eq i32 %i.jx, 0
  br i1 %or.cond225, label %bb.af, label %_ZL16CanBeRDFAttrPropPK8XMP_Node.exit216.thread

bb.af:                                            ; preds = %bb.ae
  %i.jy = trunc nuw i8 %.0170243 to i1
  br i1 %i.jy, label %.thread, label %bb.ag

_ZL16CanBeRDFAttrPropPK8XMP_Node.exit216.thread:  ; preds = %bb.ae, %bb.ad, %.lr.ph246
  %i.jz = trunc nuw i8 %.0171242 to i1
  br i1 %i.jz, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %_ZL16CanBeRDFAttrPropPK8XMP_Node.exit216.thread, %bb.af
  %.1172 = phi i8 [ 1, %bb.af ], [ 0, %_ZL16CanBeRDFAttrPropPK8XMP_Node.exit216.thread ] ; 2 uses
  %.1 = phi i8 [ 0, %bb.af ], [ 1, %_ZL16CanBeRDFAttrPropPK8XMP_Node.exit216.thread ] ; 2 uses
  %i.ka = add i64 %.0244, 1                       ; 2 uses
  %.not194 = icmp eq i64 %i.ka, %i.jf
  br i1 %.not194, label %.thread, label %.lr.ph246, !llvm.loop !72

.thread:                                          ; preds = %bb.ag, %bb.af, %_ZL16CanBeRDFAttrPropPK8XMP_Node.exit216.thread
  %.3174.ph = phi i8 [ %.1172, %bb.ag ], [ 1, %_ZL16CanBeRDFAttrPropPK8XMP_Node.exit216.thread ], [ 1, %bb.af ]
  %.3.ph = phi i8 [ %.1, %bb.ag ], [ 1, %_ZL16CanBeRDFAttrPropPK8XMP_Node.exit216.thread ], [ 1, %bb.af ] ; 2 uses
  %i.kb = trunc nuw i8 %.3174.ph to i1
  %i.kc = and i8 %.0182.lcssa291, %.3.ph
  %or.cond.not = icmp eq i8 %i.kc, 0
  br i1 %or.cond.not, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.thread
  %i.kd = call ptr @__cxa_allocate_exception(i64 24) #17 ; 4 uses
  store i32 202, ptr %i.kd, align 8, !tbaa !15
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store ptr @.str.50, ptr %i.ke, align 8, !tbaa !16
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  store i8 0, ptr %i.kf, align 8, !tbaa !17
  call void @__cxa_throw(ptr nonnull %i.kd, ptr nonnull @_ZTI9XMP_Error, ptr null) #18
  unreachable

.thread296:                                       ; preds = %bb.ac
  %i.kg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.51) ; 0 uses
  br label %.critedge.sink.split

bb.ai:                                            ; preds = %.thread
  %i.kh = trunc nuw i8 %.3.ph to i1
  br i1 %i.kh, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ki = call fastcc noundef zeroext i1 @_ZL28SerializeCompactRDFAttrPropsPK8XMP_NodeRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKcSB_i(ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.o) ; 0 uses
  %i.kj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.33) ; 0 uses
  br label %.critedge.sink.split

bb.ak:                                            ; preds = %bb.ai
  br i1 %i.kb, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kk = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.47) ; 0 uses
  %i.kl = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  call fastcc void @_ZL28SerializeCompactRDFElemPropsPK8XMP_NodeRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKcSB_i(ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.o)
  br label %.critedge200

bb.am:                                            ; preds = %bb.ak
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 62)
  %i.km = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  br i1 %i.p, label %.lr.ph256, label %._crit_edge261.critedge

.lr.ph256:                                        ; preds = %bb.am, %.lr.ph256
  %.1176254 = phi i32 [ %i.ko, %.lr.ph256 ], [ %i.o, %bb.am ] ; 2 uses
  %i.kn = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %3) ; 0 uses
  %i.ko = add nsw i32 %.1176254, -1
  %i.kp = icmp sgt i32 %.1176254, 1
  br i1 %i.kp, label %.lr.ph256, label %._crit_edge257, !llvm.loop !73

._crit_edge257:                                   ; preds = %.lr.ph256
  %i.kq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.52) ; 0 uses
  %i.kr = call fastcc noundef zeroext i1 @_ZL28SerializeCompactRDFAttrPropsPK8XMP_NodeRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKcSB_i(ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.q) ; 0 uses
  %i.ks = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.23) ; 0 uses
  %i.kt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  call fastcc void @_ZL28SerializeCompactRDFElemPropsPK8XMP_NodeRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKcSB_i(ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.o)
  br label %.lr.ph260

.lr.ph260:                                        ; preds = %._crit_edge257, %.lr.ph260
  %.2177258 = phi i32 [ %i.kv, %.lr.ph260 ], [ %i.o, %._crit_edge257 ] ; 2 uses
  %i.ku = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %3) ; 0 uses
  %i.kv = add nsw i32 %.2177258, -1
  %i.kw = icmp sgt i32 %.2177258, 1
  br i1 %i.kw, label %.lr.ph260, label %._crit_edge261, !llvm.loop !74

._crit_edge261.critedge:                          ; preds = %bb.am
  %i.kx = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.52) ; 0 uses
  %i.ky = call fastcc noundef zeroext i1 @_ZL28SerializeCompactRDFAttrPropsPK8XMP_NodeRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKcSB_i(ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.q) ; 0 uses
  %i.kz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.23) ; 0 uses
  %i.la = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  call fastcc void @_ZL28SerializeCompactRDFElemPropsPK8XMP_NodeRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKcSB_i(ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.o)
  br label %._crit_edge261

._crit_edge261:                                   ; preds = %.lr.ph260, %._crit_edge261.critedge
  %i.lb = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.28) ; 0 uses
  %i.lc = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  br label %.critedge200

.critedge200:                                     ; preds = %.lr.ph264, %bb.r, %._crit_edge.i204, %bb.ab, %._crit_edge261, %bb.al
  br i1 %i.j, label %.lr.ph266, label %.loopexit

.lr.ph266:                                        ; preds = %.critedge200, %.lr.ph266
  %.3178265 = phi i32 [ %i.le, %.lr.ph266 ], [ %4, %.critedge200 ] ; 2 uses
  %i.ld = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %3) ; 0 uses
  %i.le = add nsw i32 %.3178265, -1
  %i.lf = icmp samesign ugt i32 %.3178265, 1
  br i1 %i.lf, label %.lr.ph266, label %.loopexit, !llvm.loop !75

.loopexit:                                        ; preds = %.lr.ph266, %.critedge200, %bb.w
  %i.lg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.53) ; 0 uses
  %i.lh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %spec.store.select) ; 0 uses
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 62)
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.t, %bb.v, %.thread296, %bb.aj, %.loopexit
  %i.li = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.d
  %i.lj = add i64 %.0191268, 1                    ; 2 uses
  %.not = icmp eq i64 %i.lj, %i.i
  br i1 %.not, label %._crit_edge271, label %bb.b, !llvm.loop !76
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL21DeclareUsedNamespacesPK8XMP_NodeRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES9_PKcSB_i(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %4, i32 noundef range(i32 -2147483644, -2147483648) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %.not = icmp sgt i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i8, ptr %i.c, align 8
  %i.e = trunc i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.i = select i1 %i.e, ptr %i.g, ptr %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i8, ptr %i.j, align 8
  %i.l = trunc i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.p = select i1 %i.l, ptr %i.n, ptr %i.o
  tail call fastcc void @_ZL19DeclareOneNamespacePKcS0_RNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES8_S0_S0_i(ptr noundef %i.i, ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.q = and i32 %i.b, 256
  %.not52 = icmp eq i32 %i.q, 0
  br i1 %.not52, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26   ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %.not60 = icmp eq ptr %i.t, %i.u
  br i1 %.not60, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.053 = phi i64 [ %i.ad, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.053
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  tail call fastcc void @_ZL20DeclareElemNamespaceRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERS5_S8_PKcSA_i(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  %i.ad = add nuw i64 %.053, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.y
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !77

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !26 ; 2 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !27 ; 2 uses
  %.not61 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not61, label %._crit_edge, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %.loopexit
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  br label %.lr.ph55

._crit_edge:                                      ; preds = %.lr.ph55, %.loopexit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !26 ; 2 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !27 ; 2 uses
  %.not62 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not62, label %._crit_edge59, label %.lr.ph58.preheader

.lr.ph58.preheader:                               ; preds = %._crit_edge
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3
  br label %.lr.ph58

.lr.ph55:                                         ; preds = %.lr.ph55.preheader, %.lr.ph55
  %.05154 = phi i64 [ %i.ax, %.lr.ph55 ], [ 0, %.lr.ph55.preheader ] ; 2 uses
  %i.au = load ptr, ptr %i.ae, align 8, !tbaa !27
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.05154
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !29
  tail call fastcc void @_ZL21DeclareUsedNamespacesPK8XMP_NodeRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES9_PKcSB_i(ptr noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  %i.ax = add nuw i64 %.05154, 1                  ; 2 uses
  %exitcond64.not = icmp eq i64 %i.ax, %i.al
  br i1 %exitcond64.not, label %._crit_edge, label %.lr.ph55, !llvm.loop !78

._crit_edge59:                                    ; preds = %.lr.ph58, %._crit_edge
  ret void

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %.lr.ph58
end_hunk_1
