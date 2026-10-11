Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/XMPMeta-Serialize?download=true
inline.NumInlined: 581
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK7XMPMeta17SerializeToBufferEPNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEjjPKcS9_i:bb.a
  %i.sd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0157) #19
  %i.se = sext i32 %6 to i64
  %i.sf = mul i64 %i.sd, %i.se
  %i.sg = add i64 %i.sf, 19
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.sg)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.preheader.i:                                     ; preds = %bb.bn
  %i.sh = icmp sgt i32 %6, 0
  br i1 %i.sh, label %.lr.ph252.i, label %._crit_edge253.i

.lr.ph252.i:                                      ; preds = %.preheader.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit192.i
  %.5251.i = phi i32 [ %i.sj, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit192.i ], [ %6, %.preheader.i ] ; 2 uses
  %i.si = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull %.0157)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit192.i unwind label %.loopexit.i ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit192.i: ; preds = %.lr.ph252.i
  %i.sj = add nsw i32 %.5251.i, -1
  %i.sk = icmp sgt i32 %.5251.i, 1
  br i1 %i.sk, label %.lr.ph252.i, label %._crit_edge253.i, !llvm.loop !52

._crit_edge253.i:                                 ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit192.i, %.preheader.i
  %i.sl = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull @.str.69)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit194.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit194.i: ; preds = %._crit_edge253.i
  %i.sm = and i32 %2, 32
  %.not125.i = icmp eq i32 %i.sm, 0
  br i1 %.not125.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit194.i
  %i.sn = load i8, ptr %11, align 8               ; 2 uses
  %i.so = trunc i8 %i.sn to i1                    ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.sq = load i64, ptr %i.sp, align 8
  %i.sr = lshr i8 %i.sn, 1
  %i.ss = zext nneg i8 %i.sr to i64
  %i.st = select i1 %i.so, i64 %i.sq, i64 %i.ss
  %i.su = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.sv = load ptr, ptr %i.su, align 8
  %i.sw = getelementptr inbounds nuw i8, ptr %11, i64 1
  %.pn.i.i = select i1 %i.so, ptr %i.sv, ptr %i.sw
  %i.sx = getelementptr i8, ptr %.pn.i.i, i64 %i.st
  %.0.i.i = getelementptr i8, ptr %i.sx, i64 -4
  store i8 114, ptr %.0.i.i, align 1, !tbaa !18
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit194.i, %bb.bm
  %i.sy = load i8, ptr %7, align 8
  %i.sz = trunc i8 %i.sy to i1
  br i1 %i.sz, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.ta = load ptr, ptr %i.rl, align 8, !tbaa !18
  call void @_ZdlPv(ptr noundef %i.ta) #21
  br label %bb.bs

.loopexit.split-lp.i:                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit178.i, %.loopexit.split-lp218.loopexit.split-lp.i, %.loopexit.split-lp218.loopexit.i, %.loopexit217.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.pn126.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %.pn123.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit178.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit202.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit205.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit208.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit212.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit214.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit224.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit226.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit229.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit219.i, %.loopexit217.i ], [ %lpad.loopexit221.i, %.loopexit.split-lp218.loopexit.i ], [ %lpad.loopexit.split-lp222.i, %.loopexit.split-lp218.loopexit.split-lp.i ]
  %i.tb = load i8, ptr %7, align 8
  %i.tc = trunc i8 %i.tb to i1
  br i1 %i.tc, label %bb.br, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit196.i

bb.br:                                            ; preds = %.loopexit.split-lp.i
  %i.td = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !18
  call void @_ZdlPv(ptr noundef %i.te) #21
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit196.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit196.i: ; preds = %bb.br, %.loopexit.split-lp.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.body

bb.bs:                                            ; preds = %bb.bq, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br i1 %.not181, label %bb.bt, label %bb.ce

bb.bt:                                            ; preds = %bb.bs
  br i1 %.not187, label %bb.by, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.tf = load i8, ptr %1, align 8                ; 2 uses
  %i.tg = trunc i8 %i.tf to i1
  %i.th = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ti = load i64, ptr %i.th, align 8
  %i.tj = lshr i8 %i.tf, 1
  %i.tk = zext nneg i8 %i.tj to i64
  %i.tl = select i1 %i.tg, i64 %i.ti, i64 %i.tk
  %i.tm = load i8, ptr %11, align 8               ; 2 uses
  %i.tn = trunc i8 %i.tm to i1
  %i.to = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.tp = load i64, ptr %i.to, align 8
  %i.tq = lshr i8 %i.tm, 1
  %i.tr = zext nneg i8 %i.tq to i64
  %i.ts = select i1 %i.tn, i64 %i.tp, i64 %i.tr
  %i.tt = add i64 %i.ts, %i.tl                    ; 2 uses
  %i.tu = zext i32 %.1149 to i64
  %i.tv = icmp ugt i64 %i.tt, %i.tu
  br i1 %i.tv, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.tw = call ptr @__cxa_allocate_exception(i64 24) #17 ; 4 uses
  store i32 107, ptr %i.tw, align 8, !tbaa !15
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  store ptr @.str.15, ptr %i.tx, align 8, !tbaa !16
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  store i8 0, ptr %i.ty, align 8, !tbaa !17
  invoke void @__cxa_throw(ptr nonnull %i.tw, ptr nonnull @_ZTI9XMP_Error, ptr null) #18
          to label %bb.ej unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.tz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bx:                                            ; preds = %bb.bu
  %i.ua = trunc nuw i64 %i.tt to i32
  %i.ub = sub nuw i32 %.1149, %i.ua
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bt
  %.2150 = phi i32 [ %i.ub, %bb.bx ], [ %.1149, %bb.bt ] ; 2 uses
  %i.uc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0156) #19 ; 3 uses
  %i.ud = zext i32 %.2150 to i64                  ; 2 uses
  %i.ue = icmp ugt i64 %i.uc, %i.ud
  br i1 %i.ue, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.uf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEmc(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ud, i8 noundef signext 32)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit215 unwind label %.loopexit.split-lp ; 0 uses

.loopexit:                                        ; preds = %bb.cb, %bb.cc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.bz, %._crit_edge327, %bb.cd, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit215
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ca:                                            ; preds = %bb.by
  %i.ug = trunc nuw i64 %i.uc to i32
  %i.uh = sub nuw i32 %.2150, %i.ug               ; 2 uses
  %i.ui = add nuw nsw i64 %i.uc, 100              ; 2 uses
  %i.uj = zext i32 %i.uh to i64                   ; 2 uses
  %.not212323 = icmp samesign ugt i64 %i.ui, %i.uj
  br i1 %.not212323, label %._crit_edge327, label %.lr.ph326

.lr.ph326:                                        ; preds = %bb.ca
  %i.uk = trunc nuw i64 %i.ui to i32              ; 2 uses
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph326, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit
  %.3151324 = phi i32 [ %i.uh, %.lr.ph326 ], [ %i.un, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit ]
  %i.ul = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEmc(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 100, i8 noundef signext 32)
          to label %bb.cc unwind label %.loopexit ; 0 uses

bb.cc:                                            ; preds = %bb.cb
  %i.um = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %.0156)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit unwind label %.loopexit ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit: ; preds = %bb.cc
  %i.un = sub nuw i32 %.3151324, %i.uk            ; 3 uses
  %.not212 = icmp ult i32 %i.un, %i.uk
  br i1 %.not212, label %._crit_edge327.loopexit, label %bb.cb, !llvm.loop !53

._crit_edge327.loopexit:                          ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit
  %i.uo = zext i32 %i.un to i64
  br label %._crit_edge327

._crit_edge327:                                   ; preds = %._crit_edge327.loopexit, %bb.ca
  %.lcssa = phi i64 [ %i.uj, %bb.ca ], [ %i.uo, %._crit_edge327.loopexit ]
  %i.up = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEmc(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.lcssa, i8 noundef signext 32)
          to label %bb.cd unwind label %.loopexit.split-lp ; 0 uses

bb.cd:                                            ; preds = %._crit_edge327
  %i.uq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %.0156)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit215 unwind label %.loopexit.split-lp ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit215: ; preds = %bb.cd, %bb.bz
  %i.ur = load i8, ptr %11, align 8               ; 2 uses
  %i.us = trunc i8 %i.ur to i1                    ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.uu = load ptr, ptr %i.ut, align 8
  %i.uv = getelementptr inbounds nuw i8, ptr %11, i64 1
  %i.uw = select i1 %i.us, ptr %i.uu, ptr %i.uv
  %i.ux = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.uy = load i64, ptr %i.ux, align 8
  %i.uz = lshr i8 %i.ur, 1
  %i.va = zext nneg i8 %i.uz to i64
  %i.vb = select i1 %i.us, i64 %i.uy, i64 %i.va
  %i.vc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.uw, i64 noundef %i.vb)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit unwind label %.loopexit.split-lp ; 0 uses

bb.ce:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.vd = and i32 %2, 1
  %i.ve = icmp eq i32 %i.vd, 0                    ; 7 uses
  %i.vf = and i32 %2, 2
  %.not198 = icmp eq i32 %i.vf, 0
  br i1 %.not198, label %bb.dc, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  store i8 4, ptr %14, align 8
  %i.vg = getelementptr inbounds nuw i8, ptr %14, i64 1 ; 4 uses
  store i16 8192, ptr %i.vg, align 1
  %i.vh = getelementptr inbounds nuw i8, ptr %14, i64 3
  store i8 0, ptr %i.vh, align 1, !tbaa !18
  %i.vi = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.vj = load i8, ptr %12, align 8               ; 2 uses
  %i.vk = trunc i8 %i.vj to i1                    ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.vm = load ptr, ptr %i.vl, align 8
  %i.vn = getelementptr inbounds nuw i8, ptr %12, i64 1 ; 3 uses
  %i.vo = select i1 %i.vk, ptr %i.vm, ptr %i.vn
  %i.vp = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.vq = load i64, ptr %i.vp, align 8
  %i.vr = lshr i8 %i.vj, 1
  %i.vs = zext nneg i8 %i.vr to i64
  %i.vt = select i1 %i.vk, i64 %i.vq, i64 %i.vs
  invoke void @_Z7ToUTF16PKhmPNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEb(ptr noundef %i.vo, i64 noundef %i.vt, ptr noundef nonnull %1, i1 noundef zeroext %i.ve)
          to label %bb.cg unwind label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i219)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i219, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i219, i64 24, i1 false), !tbaa.struct !31
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i219)
  %i.vu = load i8, ptr %12, align 8               ; 2 uses
  %i.vv = trunc i8 %i.vu to i1                    ; 2 uses
  %i.vw = load ptr, ptr %i.vl, align 8
  %i.vx = select i1 %i.vv, ptr %i.vw, ptr %i.vn
  %i.vy = load i64, ptr %i.vp, align 8
  %i.vz = lshr i8 %i.vu, 1
  %i.wa = zext nneg i8 %i.vz to i64
  %i.wb = select i1 %i.vv, i64 %i.vy, i64 %i.wa
  invoke void @_Z7ToUTF16PKhmPNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEb(ptr noundef %i.vx, i64 noundef %i.wb, ptr noundef nonnull %11, i1 noundef zeroext %i.ve)
          to label %bb.ch unwind label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  br i1 %.not187, label %bb.cn, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.wc = load i8, ptr %1, align 8                ; 2 uses
  %i.wd = trunc i8 %i.wc to i1
  %i.we = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.wf = load i64, ptr %i.we, align 8
  %i.wg = lshr i8 %i.wc, 1
  %i.wh = zext nneg i8 %i.wg to i64
  %i.wi = select i1 %i.wd, i64 %i.wf, i64 %i.wh
  %i.wj = load i8, ptr %11, align 8               ; 2 uses
  %i.wk = trunc i8 %i.wj to i1
  %i.wl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.wm = load i64, ptr %i.wl, align 8
  %i.wn = lshr i8 %i.wj, 1
  %i.wo = zext nneg i8 %i.wn to i64
  %i.wp = select i1 %i.wk, i64 %i.wm, i64 %i.wo
  %i.wq = add i64 %i.wp, %i.wi                    ; 2 uses
  %i.wr = zext i32 %.1149 to i64
  %i.ws = icmp ugt i64 %i.wq, %i.wr
  br i1 %i.ws, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  %i.wt = call ptr @__cxa_allocate_exception(i64 24) #17 ; 4 uses
  store i32 107, ptr %i.wt, align 8, !tbaa !15
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  store ptr @.str.15, ptr %i.wu, align 8, !tbaa !16
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  store i8 0, ptr %i.wv, align 8, !tbaa !17
  invoke void @__cxa_throw(ptr nonnull %i.wt, ptr nonnull @_ZTI9XMP_Error, ptr null) #18
          to label %bb.ej unwind label %bb.cl

bb.ck:                                            ; preds = %bb.co, %bb.cn, %bb.cg, %bb.cf
  %i.ww = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cl:                                            ; preds = %bb.cj
  %i.wx = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cm:                                            ; preds = %bb.ci
  %i.wy = trunc nuw i64 %i.wq to i32
  %i.wz = sub nuw i32 %.1149, %i.wy
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.ch
  %.4152 = phi i32 [ %i.wz, %bb.cm ], [ %.1149, %bb.ch ] ; 3 uses
  %i.xa = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef %.0156)
          to label %bb.co unwind label %bb.ck     ; 0 uses

bb.co:                                            ; preds = %bb.cn
  %i.xb = load i8, ptr %12, align 8               ; 2 uses
  %i.xc = trunc i8 %i.xb to i1                    ; 2 uses
  %i.xd = load ptr, ptr %i.vl, align 8
  %i.xe = select i1 %i.xc, ptr %i.xd, ptr %i.vn
  %i.xf = load i64, ptr %i.vp, align 8
  %i.xg = lshr i8 %i.xb, 1
  %i.xh = zext nneg i8 %i.xg to i64
  %i.xi = select i1 %i.xc, i64 %i.xf, i64 %i.xh
  invoke void @_Z7ToUTF16PKhmPNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEb(ptr noundef %i.xe, i64 noundef %i.xi, ptr noundef nonnull %13, i1 noundef zeroext %i.ve)
          to label %bb.cp unwind label %bb.ck

bb.cp:                                            ; preds = %bb.co
  %i.xj = load i8, ptr %13, align 8               ; 2 uses
  %i.xk = trunc i8 %i.xj to i1
  %i.xl = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.xm = load i64, ptr %i.xl, align 8
  %i.xn = lshr i8 %i.xj, 1
  %i.xo = zext nneg i8 %i.xn to i64
  %i.xp = select i1 %i.xk, i64 %i.xm, i64 %i.xo   ; 3 uses
  %i.xq = zext i32 %.4152 to i64
  %i.xr = icmp ugt i64 %i.xp, %i.xq
  br i1 %i.xr, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  %i.xs = lshr i32 %.4152, 1                      ; 2 uses
  %.not330 = icmp eq i32 %i.xs, 0
  br i1 %.not330, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit227, label %.lr.ph310

.lr.ph310:                                        ; preds = %bb.cq
  %i.xt = getelementptr inbounds nuw i8, ptr %14, i64 8
  br label %bb.cr

bb.cr:                                            ; preds = %.lr.ph310, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit221
  %.0137308 = phi i32 [ %i.xs, %.lr.ph310 ], [ %i.yd, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit221 ] ; 2 uses
  %i.xu = load i8, ptr %14, align 8               ; 2 uses
  %i.xv = trunc i8 %i.xu to i1                    ; 2 uses
  %i.xw = load ptr, ptr %i.vi, align 8
  %i.xx = select i1 %i.xv, ptr %i.xw, ptr %i.vg
  %i.xy = load i64, ptr %i.xt, align 8
  %i.xz = lshr i8 %i.xu, 1
  %i.ya = zext nneg i8 %i.xz to i64
  %i.yb = select i1 %i.xv, i64 %i.xy, i64 %i.ya
  %i.yc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.xx, i64 noundef %i.yb)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit221 unwind label %bb.cs ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit221: ; preds = %bb.cr
  %i.yd = add nsw i32 %.0137308, -1
  %i.ye = icmp sgt i32 %.0137308, 1
  br i1 %i.ye, label %bb.cr, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit227, !llvm.loop !54

bb.cs:                                            ; preds = %bb.cr
  %i.yf = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.ct:                                            ; preds = %bb.cp
  %i.yg = trunc nuw i64 %i.xp to i32
  %i.yh = sub nuw i32 %.4152, %i.yg               ; 3 uses
  %i.yi = add nuw nsw i64 %i.xp, 200              ; 2 uses
  %i.yj = zext i32 %i.yh to i64
  %.not205303 = icmp samesign ugt i64 %i.yi, %i.yj
  br i1 %.not205303, label %._crit_edge, label %.preheader289.lr.ph

.preheader289.lr.ph:                              ; preds = %bb.ct
  %i.yk = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.yl = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ym = getelementptr inbounds nuw i8, ptr %13, i64 1
  %i.yn = trunc nuw i64 %i.yi to i32              ; 2 uses
  br label %.preheader289

.preheader289:                                    ; preds = %.preheader289.lr.ph, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit223
  %.5153304 = phi i32 [ %i.yh, %.preheader289.lr.ph ], [ %i.zj, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit223 ]
  br label %bb.cv

bb.cu:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit225
  %i.yo = load i8, ptr %13, align 8               ; 2 uses
  %i.yp = trunc i8 %i.yo to i1                    ; 2 uses
  %i.yq = load ptr, ptr %i.yl, align 8
  %i.yr = select i1 %i.yp, ptr %i.yq, ptr %i.ym
  %i.ys = load i64, ptr %i.xl, align 8
  %i.yt = lshr i8 %i.yo, 1
  %i.yu = zext nneg i8 %i.yt to i64
  %i.yv = select i1 %i.yp, i64 %i.ys, i64 %i.yu
  %i.yw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.yr, i64 noundef %i.yv)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit223 unwind label %.loopexit290 ; 0 uses

bb.cv:                                            ; preds = %.preheader289, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit225
  %.0136302 = phi i32 [ 100, %.preheader289 ], [ %i.zg, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit225 ] ; 2 uses
  %i.yx = load i8, ptr %14, align 8               ; 2 uses
  %i.yy = trunc i8 %i.yx to i1                    ; 2 uses
  %i.yz = load ptr, ptr %i.vi, align 8
  %i.za = select i1 %i.yy, ptr %i.yz, ptr %i.vg
  %i.zb = load i64, ptr %i.yk, align 8
  %i.zc = lshr i8 %i.yx, 1
  %i.zd = zext nneg i8 %i.zc to i64
  %i.ze = select i1 %i.yy, i64 %i.zb, i64 %i.zd
  %i.zf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.za, i64 noundef %i.ze)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit225 unwind label %bb.cw ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit225: ; preds = %bb.cv
  %i.zg = add nsw i32 %.0136302, -1
  %i.zh = icmp samesign ugt i32 %.0136302, 1
  br i1 %i.zh, label %bb.cv, label %bb.cu, !llvm.loop !55

bb.cw:                                            ; preds = %bb.cv
  %i.zi = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit223: ; preds = %bb.cu
  %i.zj = sub i32 %.5153304, %i.yn                ; 3 uses
  %.not205 = icmp ult i32 %i.zj, %i.yn
  br i1 %.not205, label %._crit_edge, label %.preheader289, !llvm.loop !56

.loopexit290:                                     ; preds = %bb.cu
  %lpad.loopexit292 = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

.loopexit.split-lp291:                            ; preds = %._crit_edge307, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit227
  %lpad.loopexit.split-lp293 = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

._crit_edge:                                      ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit223, %bb.ct
  %.5153.lcssa = phi i32 [ %i.yh, %bb.ct ], [ %i.zj, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit223 ]
  %i.zk = lshr i32 %.5153.lcssa, 1                ; 2 uses
  %.not329 = icmp eq i32 %i.zk, 0
  br i1 %.not329, label %._crit_edge307, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge
  %i.zl = getelementptr inbounds nuw i8, ptr %14, i64 8
  br label %bb.cx

._crit_edge307:                                   ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit229, %._crit_edge
  %i.zm = load i8, ptr %13, align 8               ; 2 uses
  %i.zn = trunc i8 %i.zm to i1                    ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.zp = load ptr, ptr %i.zo, align 8
  %i.zq = getelementptr inbounds nuw i8, ptr %13, i64 1
  %i.zr = select i1 %i.zn, ptr %i.zp, ptr %i.zq
  %i.zs = load i64, ptr %i.xl, align 8
  %i.zt = lshr i8 %i.zm, 1
  %i.zu = zext nneg i8 %i.zt to i64
  %i.zv = select i1 %i.zn, i64 %i.zs, i64 %i.zu
  %i.zw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.zr, i64 noundef %i.zv)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit227 unwind label %.loopexit.split-lp291 ; 0 uses

bb.cx:                                            ; preds = %.lr.ph, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit229
  %.0135305 = phi i32 [ %i.zk, %.lr.ph ], [ %i.aag, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit229 ] ; 2 uses
  %i.zx = load i8, ptr %14, align 8               ; 2 uses
  %i.zy = trunc i8 %i.zx to i1                    ; 2 uses
  %i.zz = load ptr, ptr %i.vi, align 8
  %i.aaa = select i1 %i.zy, ptr %i.zz, ptr %i.vg
  %i.aab = load i64, ptr %i.zl, align 8
  %i.aac = lshr i8 %i.zx, 1
  %i.aad = zext nneg i8 %i.aac to i64
  %i.aae = select i1 %i.zy, i64 %i.aab, i64 %i.aad
  %i.aaf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.aaa, i64 noundef %i.aae)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit229 unwind label %bb.cy ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit229: ; preds = %bb.cx
  %i.aag = add nsw i32 %.0135305, -1
  %i.aah = icmp sgt i32 %.0135305, 1
  br i1 %i.aah, label %bb.cx, label %._crit_edge307, !llvm.loop !57

bb.cy:                                            ; preds = %bb.cx
  %i.aai = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit227: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit221, %bb.cq, %._crit_edge307
  %i.aaj = load i8, ptr %11, align 8              ; 2 uses
  %i.aak = trunc i8 %i.aaj to i1                  ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.aam = load ptr, ptr %i.aal, align 8
  %i.aan = getelementptr inbounds nuw i8, ptr %11, i64 1
  %i.aao = select i1 %i.aak, ptr %i.aam, ptr %i.aan
  %i.aap = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aaq = load i64, ptr %i.aap, align 8
  %i.aar = lshr i8 %i.aaj, 1
  %i.aas = zext nneg i8 %i.aar to i64
  %i.aat = select i1 %i.aak, i64 %i.aaq, i64 %i.aas
  %i.aau = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.aao, i64 noundef %i.aat)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit231 unwind label %.loopexit.split-lp291 ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit231: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit227
  %i.aav = load i8, ptr %14, align 8
  %i.aaw = trunc i8 %i.aav to i1
  br i1 %i.aaw, label %bb.cz, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.cz:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit231
  %i.aax = load ptr, ptr %i.vi, align 8, !tbaa !18
  call void @_ZdlPv(ptr noundef %i.aax) #21
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit231, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.eb

bb.da:                                            ; preds = %.loopexit290, %.loopexit.split-lp291, %bb.cs, %bb.cw, %bb.cy, %bb.cl, %bb.ck
  %.pn208 = phi { ptr, i32 } [ %i.wx, %bb.cl ], [ %i.ww, %bb.ck ], [ %i.yf, %bb.cs ], [ %i.aai, %bb.cy ], [ %i.zi, %bb.cw ], [ %lpad.loopexit292, %.loopexit290 ], [ %lpad.loopexit.split-lp293, %.loopexit.split-lp291 ]
  %i.aay = load i8, ptr %14, align 8
  %i.aaz = trunc i8 %i.aay to i1
  br i1 %i.aaz, label %bb.db, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit232

bb.db:                                            ; preds = %bb.da
  %i.aba = load ptr, ptr %i.vi, align 8, !tbaa !18
  call void @_ZdlPv(ptr noundef %i.aba) #21
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit232

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit232: ; preds = %bb.db, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.ee

bb.dc:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  store i8 8, ptr %15, align 8
  %i.abb = getelementptr inbounds nuw i8, ptr %15, i64 1 ; 5 uses
  store i32 536870912, ptr %i.abb, align 1
  %i.abc = getelementptr inbounds nuw i8, ptr %15, i64 5
  store i8 0, ptr %i.abc, align 1, !tbaa !18
  %i.abd = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  br i1 %i.ve, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store <4 x i8> <i8 32, i8 0, i8 0, i8 0>, ptr %i.abb, align 1, !tbaa !18
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.abe = load i8, ptr %12, align 8              ; 2 uses
  %i.abf = trunc i8 %i.abe to i1                  ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.abh = load ptr, ptr %i.abg, align 8
  %i.abi = getelementptr inbounds nuw i8, ptr %12, i64 1 ; 3 uses
  %i.abj = select i1 %i.abf, ptr %i.abh, ptr %i.abi
  %i.abk = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.abl = load i64, ptr %i.abk, align 8
  %i.abm = lshr i8 %i.abe, 1
  %i.abn = zext nneg i8 %i.abm to i64
  %i.abo = select i1 %i.abf, i64 %i.abl, i64 %i.abn
  invoke void @_Z7ToUTF32PKhmPNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEb(ptr noundef %i.abj, i64 noundef %i.abo, ptr noundef nonnull %1, i1 noundef zeroext %i.ve)
          to label %bb.df unwind label %bb.dj

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i254)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i254, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i254, i64 24, i1 false), !tbaa.struct !31
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i254)
  %i.abp = load i8, ptr %12, align 8              ; 2 uses
  %i.abq = trunc i8 %i.abp to i1                  ; 2 uses
  %i.abr = load ptr, ptr %i.abg, align 8
  %i.abs = select i1 %i.abq, ptr %i.abr, ptr %i.abi
  %i.abt = load i64, ptr %i.abk, align 8
  %i.abu = lshr i8 %i.abp, 1
  %i.abv = zext nneg i8 %i.abu to i64
  %i.abw = select i1 %i.abq, i64 %i.abt, i64 %i.abv
  invoke void @_Z7ToUTF32PKhmPNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEb(ptr noundef %i.abs, i64 noundef %i.abw, ptr noundef nonnull %11, i1 noundef zeroext %i.ve)
          to label %bb.dg unwind label %bb.dj

bb.dg:                                            ; preds = %bb.df
  br i1 %.not187, label %bb.dm, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.abx = load i8, ptr %1, align 8               ; 2 uses
  %i.aby = trunc i8 %i.abx to i1
  %i.abz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aca = load i64, ptr %i.abz, align 8
  %i.acb = lshr i8 %i.abx, 1
  %i.acc = zext nneg i8 %i.acb to i64
  %i.acd = select i1 %i.aby, i64 %i.aca, i64 %i.acc
  %i.ace = load i8, ptr %11, align 8              ; 2 uses
  %i.acf = trunc i8 %i.ace to i1
  %i.acg = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ach = load i64, ptr %i.acg, align 8
  %i.aci = lshr i8 %i.ace, 1
  %i.acj = zext nneg i8 %i.aci to i64
  %i.ack = select i1 %i.acf, i64 %i.ach, i64 %i.acj
  %i.acl = add i64 %i.ack, %i.acd                 ; 2 uses
  %i.acm = zext i32 %.1149 to i64
  %i.acn = icmp ugt i64 %i.acl, %i.acm
  br i1 %i.acn, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  %i.aco = call ptr @__cxa_allocate_exception(i64 24) #17 ; 4 uses
  store i32 107, ptr %i.aco, align 8, !tbaa !15
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 8
  store ptr @.str.15, ptr %i.acp, align 8, !tbaa !16
  %i.acq = getelementptr inbounds nuw i8, ptr %i.aco, i64 16
  store i8 0, ptr %i.acq, align 8, !tbaa !17
  invoke void @__cxa_throw(ptr nonnull %i.aco, ptr nonnull @_ZTI9XMP_Error, ptr null) #18
          to label %bb.ej unwind label %bb.dk

bb.dj:                                            ; preds = %bb.dn, %bb.dm, %bb.df, %bb.de
  %i.acr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dk:                                            ; preds = %bb.di
  %i.acs = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dl:                                            ; preds = %bb.dh
  %i.act = trunc nuw i64 %i.acl to i32
  %i.acu = sub nuw i32 %.1149, %i.act
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dg
  %.6154 = phi i32 [ %i.acu, %bb.dl ], [ %.1149, %bb.dg ] ; 3 uses
  %i.acv = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef %.0156)
          to label %bb.dn unwind label %bb.dj     ; 0 uses

bb.dn:                                            ; preds = %bb.dm
  %i.acw = load i8, ptr %12, align 8              ; 2 uses
  %i.acx = trunc i8 %i.acw to i1                  ; 2 uses
  %i.acy = load ptr, ptr %i.abg, align 8
  %i.acz = select i1 %i.acx, ptr %i.acy, ptr %i.abi
  %i.ada = load i64, ptr %i.abk, align 8
  %i.adb = lshr i8 %i.acw, 1
  %i.adc = zext nneg i8 %i.adb to i64
  %i.add = select i1 %i.acx, i64 %i.ada, i64 %i.adc
  invoke void @_Z7ToUTF32PKhmPNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEb(ptr noundef %i.acz, i64 noundef %i.add, ptr noundef nonnull %13, i1 noundef zeroext %i.ve)
          to label %bb.do unwind label %bb.dj

bb.do:                                            ; preds = %bb.dn
  %i.ade = load i8, ptr %13, align 8              ; 2 uses
  %i.adf = trunc i8 %i.ade to i1
  %i.adg = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.adh = load i64, ptr %i.adg, align 8
  %i.adi = lshr i8 %i.ade, 1
  %i.adj = zext nneg i8 %i.adi to i64
  %i.adk = select i1 %i.adf, i64 %i.adh, i64 %i.adj ; 3 uses
  %i.adl = zext i32 %.6154 to i64
  %i.adm = icmp ugt i64 %i.adk, %i.adl
  br i1 %i.adm, label %bb.dp, label %bb.ds

bb.dp:                                            ; preds = %bb.do
  %i.adn = lshr i32 %.6154, 2                     ; 2 uses
  %.not332 = icmp eq i32 %i.adn, 0
  br i1 %.not332, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit262, label %.lr.ph322

.lr.ph322:                                        ; preds = %bb.dp
  %i.ado = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %bb.dq

bb.dq:                                            ; preds = %.lr.ph322, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit256
  %.0134320 = phi i32 [ %i.adn, %.lr.ph322 ], [ %i.ady, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit256 ] ; 2 uses
  %i.adp = load i8, ptr %15, align 8              ; 2 uses
  %i.adq = trunc i8 %i.adp to i1                  ; 2 uses
  %i.adr = load ptr, ptr %i.abd, align 8
  %i.ads = select i1 %i.adq, ptr %i.adr, ptr %i.abb
  %i.adt = load i64, ptr %i.ado, align 8
  %i.adu = lshr i8 %i.adp, 1
  %i.adv = zext nneg i8 %i.adu to i64
  %i.adw = select i1 %i.adq, i64 %i.adt, i64 %i.adv
  %i.adx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.ads, i64 noundef %i.adw)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit256 unwind label %bb.dr ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit256: ; preds = %bb.dq
  %i.ady = add nsw i32 %.0134320, -1
  %i.adz = icmp sgt i32 %.0134320, 1
  br i1 %i.adz, label %bb.dq, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit262, !llvm.loop !58

bb.dr:                                            ; preds = %bb.dq
  %i.aea = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.ds:                                            ; preds = %bb.do
  %i.aeb = trunc nuw i64 %i.adk to i32
  %i.aec = sub nuw i32 %.6154, %i.aeb             ; 3 uses
  %i.aed = add nuw nsw i64 %i.adk, 400            ; 2 uses
  %i.aee = zext i32 %i.aec to i64
  %.not200312 = icmp samesign ugt i64 %i.aed, %i.aee
  br i1 %.not200312, label %._crit_edge314, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.ds
  %i.aef = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.aeg = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.aeh = getelementptr inbounds nuw i8, ptr %13, i64 1
  %i.aei = trunc nuw i64 %i.aed to i32            ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit258
  %.7155313 = phi i32 [ %i.aec, %.preheader.lr.ph ], [ %i.afe, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit258 ]
  br label %bb.du

bb.dt:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit260
  %i.aej = load i8, ptr %13, align 8              ; 2 uses
  %i.aek = trunc i8 %i.aej to i1                  ; 2 uses
  %i.ael = load ptr, ptr %i.aeg, align 8
  %i.aem = select i1 %i.aek, ptr %i.ael, ptr %i.aeh
  %i.aen = load i64, ptr %i.adg, align 8
  %i.aeo = lshr i8 %i.aej, 1
  %i.aep = zext nneg i8 %i.aeo to i64
  %i.aeq = select i1 %i.aek, i64 %i.aen, i64 %i.aep
  %i.aer = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.aem, i64 noundef %i.aeq)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit258 unwind label %.loopexit284 ; 0 uses

bb.du:                                            ; preds = %.preheader, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit260
  %.0133311 = phi i32 [ 100, %.preheader ], [ %i.afb, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit260 ] ; 2 uses
  %i.aes = load i8, ptr %15, align 8              ; 2 uses
  %i.aet = trunc i8 %i.aes to i1                  ; 2 uses
  %i.aeu = load ptr, ptr %i.abd, align 8
  %i.aev = select i1 %i.aet, ptr %i.aeu, ptr %i.abb
  %i.aew = load i64, ptr %i.aef, align 8
  %i.aex = lshr i8 %i.aes, 1
  %i.aey = zext nneg i8 %i.aex to i64
  %i.aez = select i1 %i.aet, i64 %i.aew, i64 %i.aey
  %i.afa = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.aev, i64 noundef %i.aez)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit260 unwind label %bb.dv ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit260: ; preds = %bb.du
  %i.afb = add nsw i32 %.0133311, -1
  %i.afc = icmp samesign ugt i32 %.0133311, 1
  br i1 %i.afc, label %bb.du, label %bb.dt, !llvm.loop !59

bb.dv:                                            ; preds = %bb.du
  %i.afd = landingpad { ptr, i32 }
          cleanup
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
