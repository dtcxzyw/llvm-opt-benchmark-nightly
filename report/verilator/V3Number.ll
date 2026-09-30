Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Number?download=true
inline.NumInlined: 2597
inline.NumDeleted: 451
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZNK8V3Number9displayedEP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK11VFormatAttr:bb.a
  %i.sl = load ptr, ptr %0, align 8, !tbaa !35
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.sj
  store i8 0, ptr %i.sm, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %bb.jm

bb.dl:                                            ; preds = %bb.dg
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %.body258

bb.dm:                                            ; preds = %.noexc.i333
  %i.so = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %.body258

bb.dn:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  invoke void @_ZNK8V3Number8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.do unwind label %bb.dr

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, i8 noundef signext 34, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.dp unwind label %bb.ds

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %15, i8 noundef signext 34)
          to label %bb.dq unwind label %bb.dt

bb.dq:                                            ; preds = %bb.dp
  %i.sp = load ptr, ptr %15, align 8, !tbaa !35   ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.sr = icmp eq ptr %i.sp, %i.sq
  br i1 %i.sr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336: ; preds = %bb.dq
  %i.ss = load i64, ptr %i.sq, align 8, !tbaa !29
  %i.st = add i64 %i.ss, 1
  call void @_ZdlPvm(ptr noundef %i.sp, i64 noundef %i.st) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336
  %i.su = load ptr, ptr %16, align 8, !tbaa !35   ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.sw = icmp eq ptr %i.su, %i.sv
  br i1 %i.sw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338
  %i.sx = load i64, ptr %i.sv, align 8, !tbaa !29
  %i.sy = add i64 %i.sx, 1
  call void @_ZdlPvm(ptr noundef %i.su, i64 noundef %i.sy) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %bb.jm

bb.dr:                                            ; preds = %bb.dn
  %i.sz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347

bb.ds:                                            ; preds = %bb.do
  %i.ta = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344

bb.dt:                                            ; preds = %bb.dp
  %i.tb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tc = load ptr, ptr %15, align 8, !tbaa !35   ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.te = icmp eq ptr %i.tc, %i.td
  br i1 %i.te, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342: ; preds = %bb.dt
  %i.tf = load i64, ptr %i.td, align 8, !tbaa !29
  %i.tg = add i64 %i.tf, 1
  call void @_ZdlPvm(ptr noundef %i.tc, i64 noundef %i.tg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342, %bb.ds
  %.pn233 = phi { ptr, i32 } [ %i.ta, %bb.ds ], [ %i.tb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342 ], [ %i.tb, %bb.dt ] ; 2 uses
  %i.th = load ptr, ptr %16, align 8, !tbaa !35   ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.tj = icmp eq ptr %i.th, %i.ti
  br i1 %i.tj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344
  %i.tk = load i64, ptr %i.ti, align 8, !tbaa !29
  %i.tl = add i64 %i.tk, 1
  call void @_ZdlPvm(ptr noundef %i.th, i64 noundef %i.tl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345, %bb.dr
  %.pn233.pn = phi { ptr, i32 } [ %i.sz, %bb.dr ], [ %.pn233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345 ], [ %.pn233, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %.body258

bb.du:                                            ; preds = %bb.df
  invoke void @_ZNK8V3Number8toStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.jm unwind label %bb.h

bb.dv:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.dw unwind label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %bb.jm

bb.dx:                                            ; preds = %bb.dv
  %i.tm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %.body258

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.tn = phi i32 [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ 104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i ]
  %i.to = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.tp = load i32, ptr %i.to, align 8, !tbaa !47
  %.fr.i.i = freeze i32 %i.tp                     ; 2 uses
  %i.tq = add i32 %.fr.i.i, -1                    ; 5 uses
  %i.tr = load i64, ptr %i.u, align 8
  %i.ts = icmp ne i64 %i.tr, 0
  %or.cond974.not = select i1 %i.r, i1 true, i1 %i.ts
  br i1 %or.cond974.not, label %.preheader998, label %.critedge18

.preheader998:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread
  %i.tt = icmp samesign ult i32 %.fr.i.i, 129
  %.not2231035 = icmp eq i32 %i.tq, 0
  br i1 %.not2231035, label %.critedge18, label %.lr.ph1037

.lr.ph1037:                                       ; preds = %.preheader998
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.tv = load i8, ptr %i.tu, align 4, !tbaa !48
  %.fr1052 = freeze i8 %i.tv
  %i.tw = add i8 %.fr1052, -3
  %spec.select.i.i = icmp ult i8 %i.tw, -2
  br i1 %spec.select.i.i, label %.critedge18, label %.lr.ph1037.split.preheader

.lr.ph1037.split.preheader:                       ; preds = %.lr.ph1037
  %smin = call i32 @llvm.smin.i32(i32 %i.tq, i32 -1)
  br label %.lr.ph1037.split

.lr.ph1037.split:                                 ; preds = %.lr.ph1037.split.preheader, %_ZNK8V3Number6bitIs0Ei.exit.thread
  %.01591036 = phi i32 [ %i.uj, %_ZNK8V3Number6bitIs0Ei.exit.thread ], [ %i.tq, %.lr.ph1037.split.preheader ] ; 5 uses
  %i.tx = icmp slt i32 %.01591036, 0
  br i1 %i.tx, label %.critedge18, label %_ZNK8V3Number6bitIs0Ei.exit

_ZNK8V3Number6bitIs0Ei.exit:                      ; preds = %.lr.ph1037.split
  %i.ty = load ptr, ptr %1, align 8
  %spec.select.i9.i = select i1 %i.tt, ptr %1, ptr %i.ty
  %i.tz = lshr i32 %.01591036, 5
  %i.ua = zext nneg i32 %i.tz to i64
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i9.i, i64 %i.ua ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.ub, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ub, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !66
  %i.uc = or i32 %.sroa.4.0.copyload.i, %.sroa.0.0.copyload.i
  %i.ud = zext i32 %i.uc to i64
  %i.ue = and i32 %.01591036, 31
  %i.uf = zext nneg i32 %i.ue to i64
  %i.ug = shl nuw nsw i64 1, %i.uf
  %i.uh = and i64 %i.ug, %i.ud
  %i.ui = icmp eq i64 %i.uh, 0
  br i1 %i.ui, label %_ZNK8V3Number6bitIs0Ei.exit.thread, label %.critedge18

_ZNK8V3Number6bitIs0Ei.exit.thread:               ; preds = %_ZNK8V3Number6bitIs0Ei.exit
  %i.uj = add nsw i32 %.01591036, -1              ; 2 uses
  %.not223 = icmp eq i32 %i.uj, 0
  br i1 %.not223, label %.critedge18, label %.lr.ph1037.split, !llvm.loop !324

bb.dy:                                            ; preds = %bb.eh, %bb.eg, %bb.ee, %bb.ec
  %i.uk = landingpad { ptr, i32 }
          cleanup
  br label %.body258

.critedge18:                                      ; preds = %_ZNK8V3Number6bitIs0Ei.exit.thread, %_ZNK8V3Number6bitIs0Ei.exit, %.lr.ph1037.split, %.preheader998, %.lr.ph1037, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread
  %.1 = phi i32 [ %i.tq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread ], [ 0, %.preheader998 ], [ %i.tq, %.lr.ph1037 ], [ %smin, %.lr.ph1037.split ], [ 0, %_ZNK8V3Number6bitIs0Ei.exit.thread ], [ %.01591036, %_ZNK8V3Number6bitIs0Ei.exit ] ; 4 uses
  switch i32 %i.tn, label %.preheader992 [
    i32 98, label %.preheader993
    i32 111, label %.preheader997
  ]

.preheader993:                                    ; preds = %.critedge18
  %i.ul = icmp sgt i32 %.1, -1
  br i1 %i.ul, label %.lr.ph1046, label %.loopexit991

.lr.ph1046:                                       ; preds = %.preheader993
  %i.um = getelementptr inbounds nuw i8, ptr %1, i64 36
  br label %bb.dz

bb.dz:                                            ; preds = %.lr.ph1046, %bb.ei
  %.21044 = phi i32 [ %.1, %.lr.ph1046 ], [ %i.yd, %bb.ei ] ; 8 uses
  %i.un = load i8, ptr %i.um, align 4, !tbaa !48
  %i.uo = add i8 %i.un, -3
  %spec.select.i.i351 = icmp ult i8 %i.uo, -2
  br i1 %spec.select.i.i351, label %_ZNK8V3Number6bitIsZEi.exit.thread, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.up = load i32, ptr %i.to, align 8, !tbaa !47
  %.fr.i.i353 = freeze i32 %i.up                  ; 8 uses
  %.not.i354 = icmp slt i32 %.21044, %.fr.i.i353
  br i1 %.not.i354, label %_ZNK8V3Number6bitIs0Ei.exit365, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.uq = icmp slt i32 %.fr.i.i353, 1
  br i1 %i.uq, label %_ZNK8V3Number6bitIs0Ei.exit365.thread, label %tailrecurse.preheader.i.i355

tailrecurse.preheader.i.i355:                     ; preds = %bb.eb
  %i.ur = add nsw i32 %.fr.i.i353, -1             ; 2 uses
  %i.us = icmp samesign ult i32 %.fr.i.i353, 129
  %i.ut = load ptr, ptr %1, align 8               ; 2 uses
  %spec.select.i7.i.i356 = select i1 %i.us, ptr %1, ptr %i.ut
  %i.uu = lshr i32 %i.ur, 5
  %i.uv = zext nneg i32 %i.uu to i64
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i7.i.i356, i64 %i.uv
  %.sroa.3.0..sroa_idx.i.i357 = getelementptr inbounds nuw i8, ptr %i.uw, i64 4
  %.sroa.3.0.copyload.i.i358 = load i32, ptr %.sroa.3.0..sroa_idx.i.i357, align 4, !tbaa !66
  %i.ux = zext i32 %.sroa.3.0.copyload.i.i358 to i64
  %i.uy = and i32 %i.ur, 31
  %i.uz = zext nneg i32 %i.uy to i64
  %i.va = shl nuw nsw i64 1, %i.uz
  %i.vb = and i64 %i.va, %i.ux
  %i.vc = icmp eq i64 %i.vb, 0
  br i1 %i.vc, label %_ZNK8V3Number6bitIs0Ei.exit365.thread, label %tailrecurse.preheader.i

_ZNK8V3Number6bitIs0Ei.exit365:                   ; preds = %bb.ea
  %i.vd = icmp samesign ult i32 %.fr.i.i353, 129
  %i.ve = load ptr, ptr %1, align 8               ; 4 uses
  %spec.select.i9.i361 = select i1 %i.vd, ptr %1, ptr %i.ve
  %i.vf = lshr i32 %.21044, 5
  %i.vg = zext nneg i32 %i.vf to i64
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i9.i361, i64 %i.vg ; 2 uses
  %.sroa.0.0.copyload.i362 = load i32, ptr %i.vh, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx.i363 = getelementptr inbounds nuw i8, ptr %i.vh, i64 4
  %.sroa.4.0.copyload.i364 = load i32, ptr %.sroa.4.0..sroa_idx.i363, align 4, !tbaa !66
  %i.vi = or i32 %.sroa.4.0.copyload.i364, %.sroa.0.0.copyload.i362
  %i.vj = zext i32 %i.vi to i64
  %i.vk = and i32 %.21044, 31
  %i.vl = zext nneg i32 %i.vk to i64
  %i.vm = shl nuw nsw i64 1, %i.vl
  %i.vn = and i64 %i.vm, %i.vj
  %i.vo = icmp eq i64 %i.vn, 0
  br i1 %i.vo, label %_ZNK8V3Number6bitIs0Ei.exit365.thread, label %_ZNK12V3NumberData3numEv.exit.i376

_ZNK8V3Number6bitIs0Ei.exit365.thread:            ; preds = %bb.eb, %tailrecurse.preheader.i.i355, %_ZNK8V3Number6bitIs0Ei.exit365
  %i.vp = load i64, ptr %i.aw, align 8, !tbaa !28 ; 4 uses
  %i.vq = add i64 %i.vp, 1                        ; 2 uses
  %i.vr = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.vs = icmp eq ptr %i.vr, %i.av
  br i1 %i.vs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i369, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i366

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i369: ; preds = %_ZNK8V3Number6bitIs0Ei.exit365.thread
  %i.vt = icmp ult i64 %i.vp, 16
  call void @llvm.assume(i1 %i.vt)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i367

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i366: ; preds = %_ZNK8V3Number6bitIs0Ei.exit365.thread
  %i.vu = load i64, ptr %i.av, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i367

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i367: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i366, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i369
  %i.vv = phi i64 [ %i.vu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i366 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i369 ]
  %i.vw = icmp ugt i64 %i.vq, %i.vv
  br i1 %i.vw, label %bb.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit371

bb.ec:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i367
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.vp, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc370 unwind label %bb.dy

.noexc370:                                        ; preds = %bb.ec
  %.pre.i.i368 = load ptr, ptr %6, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit371

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit371: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i367, %.noexc370
  %i.vx = phi ptr [ %.pre.i.i368, %.noexc370 ], [ %i.vr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i367 ]
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 %i.vp
  store i8 48, ptr %i.vy, align 1, !tbaa !29
  br label %bb.ei

_ZNK12V3NumberData3numEv.exit.i376:               ; preds = %_ZNK8V3Number6bitIs0Ei.exit365
  %i.vz = icmp samesign ult i32 %.fr.i.i353, 129
  %spec.select.i10.i = select i1 %i.vz, ptr %1, ptr %i.ve
  %i.wa = lshr i32 %.21044, 5
  %i.wb = zext nneg i32 %i.wa to i64
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i, i64 %i.wb ; 2 uses
  %.sroa.0.0.copyload.i377 = load i32, ptr %i.wc, align 4, !tbaa !66
  %i.wd = zext i32 %.sroa.0.0.copyload.i377 to i64
  %i.we = and i32 %.21044, 31
  %i.wf = zext nneg i32 %i.we to i64
  %i.wg = shl nuw nsw i64 1, %i.wf                ; 2 uses
  %i.wh = and i64 %i.wg, %i.wd
  %.not7.i = icmp eq i64 %i.wh, 0
  br i1 %.not7.i, label %tailrecurse.preheader.i, label %_ZNK8V3Number6bitIs1Ei.exit

_ZNK8V3Number6bitIs1Ei.exit:                      ; preds = %_ZNK12V3NumberData3numEv.exit.i376
  %.sroa.4.0..sroa_idx.i378 = getelementptr inbounds nuw i8, ptr %i.wc, i64 4
  %.sroa.4.0.copyload.i379 = load i32, ptr %.sroa.4.0..sroa_idx.i378, align 4, !tbaa !66
  %i.wi = zext i32 %.sroa.4.0.copyload.i379 to i64
  %i.wj = and i64 %i.wg, %i.wi
  %.not8.i = icmp eq i64 %i.wj, 0
  br i1 %.not8.i, label %bb.ed, label %tailrecurse.preheader.i

bb.ed:                                            ; preds = %_ZNK8V3Number6bitIs1Ei.exit
  %i.wk = load i64, ptr %i.aw, align 8, !tbaa !28 ; 4 uses
  %i.wl = add i64 %i.wk, 1                        ; 2 uses
  %i.wm = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.wn = icmp eq ptr %i.wm, %i.av
  br i1 %i.wn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i383, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i380

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i383: ; preds = %bb.ed
  %i.wo = icmp ult i64 %i.wk, 16
  call void @llvm.assume(i1 %i.wo)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i381

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i380: ; preds = %bb.ed
  %i.wp = load i64, ptr %i.av, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i381

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i381: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i380, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i383
  %i.wq = phi i64 [ %i.wp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i380 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i383 ]
  %i.wr = icmp ugt i64 %i.wl, %i.wq
  br i1 %i.wr, label %bb.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit385

bb.ee:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i381
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.wk, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc384 unwind label %bb.dy

.noexc384:                                        ; preds = %bb.ee
  %.pre.i.i382 = load ptr, ptr %6, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit385

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit385: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i381, %.noexc384
  %i.ws = phi ptr [ %.pre.i.i382, %.noexc384 ], [ %i.wm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i381 ]
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 %i.wk
  store i8 49, ptr %i.wt, align 1, !tbaa !29
  br label %bb.ei

tailrecurse.preheader.i:                          ; preds = %tailrecurse.preheader.i.i355, %_ZNK12V3NumberData3numEv.exit.i376, %_ZNK8V3Number6bitIs1Ei.exit
  %25 = phi ptr [ %i.ve, %_ZNK8V3Number6bitIs1Ei.exit ], [ %i.ve, %_ZNK12V3NumberData3numEv.exit.i376 ], [ %i.ut, %tailrecurse.preheader.i.i355 ]
  %i.wu = add nsw i32 %.fr.i.i353, -1
  %spec.select.i = call i32 @llvm.umin.i32(i32 %.21044, i32 %i.wu) ; 2 uses
  %i.wv = icmp samesign ult i32 %.fr.i.i353, 129
  %spec.select.i9.i387 = select i1 %i.wv, ptr %1, ptr %25
  %i.ww = lshr i32 %spec.select.i, 5
  %i.wx = zext nneg i32 %i.ww to i64
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i9.i387, i64 %i.wx ; 2 uses
  %.sroa.0.0.copyload.i388 = load i32, ptr %i.wy, align 4, !tbaa !66
  %i.wz = xor i32 %.sroa.0.0.copyload.i388, -1
  %i.xa = zext i32 %i.wz to i64
  %i.xb = and i32 %spec.select.i, 31
  %i.xc = zext nneg i32 %i.xb to i64
  %i.xd = shl nuw nsw i64 1, %i.xc                ; 2 uses
  %i.xe = and i64 %i.xd, %i.xa
  %.not7.i389 = icmp eq i64 %i.xe, 0
  br i1 %.not7.i389, label %_ZNK8V3Number6bitIsZEi.exit.thread, label %_ZNK8V3Number6bitIsZEi.exit

_ZNK8V3Number6bitIsZEi.exit:                      ; preds = %tailrecurse.preheader.i
  %.sroa.4.0..sroa_idx.i390 = getelementptr inbounds nuw i8, ptr %i.wy, i64 4
  %.sroa.4.0.copyload.i391 = load i32, ptr %.sroa.4.0..sroa_idx.i390, align 4, !tbaa !66
  %i.xf = zext i32 %.sroa.4.0.copyload.i391 to i64
  %i.xg = and i64 %i.xd, %i.xf
  %.not = icmp eq i64 %i.xg, 0
  br i1 %.not, label %_ZNK8V3Number6bitIsZEi.exit.thread, label %bb.ef

bb.ef:                                            ; preds = %_ZNK8V3Number6bitIsZEi.exit
  %i.xh = load i64, ptr %i.aw, align 8, !tbaa !28 ; 4 uses
  %i.xi = add i64 %i.xh, 1                        ; 2 uses
  %i.xj = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.xk = icmp eq ptr %i.xj, %i.av
  br i1 %i.xk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i396, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i393

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i396: ; preds = %bb.ef
  %i.xl = icmp ult i64 %i.xh, 16
  call void @llvm.assume(i1 %i.xl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i393: ; preds = %bb.ef
  %i.xm = load i64, ptr %i.av, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i394: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i393, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i396
  %i.xn = phi i64 [ %i.xm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i393 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i396 ]
  %i.xo = icmp ugt i64 %i.xi, %i.xn
  br i1 %i.xo, label %bb.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit398

bb.eg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i394
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.xh, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc397 unwind label %bb.dy

.noexc397:                                        ; preds = %bb.eg
  %.pre.i.i395 = load ptr, ptr %6, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit398

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit398: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i394, %.noexc397
  %i.xp = phi ptr [ %.pre.i.i395, %.noexc397 ], [ %i.xj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i394 ]
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 %i.xh
  store i8 122, ptr %i.xq, align 1, !tbaa !29
  br label %bb.ei

_ZNK8V3Number6bitIsZEi.exit.thread:               ; preds = %bb.dz, %tailrecurse.preheader.i, %_ZNK8V3Number6bitIsZEi.exit
  %i.xr = load i64, ptr %i.aw, align 8, !tbaa !28 ; 4 uses
  %i.xs = add i64 %i.xr, 1                        ; 2 uses
  %i.xt = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.xu = icmp eq ptr %i.xt, %i.av
  br i1 %i.xu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i402, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i399

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i402: ; preds = %_ZNK8V3Number6bitIsZEi.exit.thread
  %i.xv = icmp ult i64 %i.xr, 16
  call void @llvm.assume(i1 %i.xv)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i400

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i399: ; preds = %_ZNK8V3Number6bitIsZEi.exit.thread
  %i.xw = load i64, ptr %i.av, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i400

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i400: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i399, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i402
  %i.xx = phi i64 [ %i.xw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i399 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i402 ]
  %i.xy = icmp ugt i64 %i.xs, %i.xx
  br i1 %i.xy, label %bb.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit404

bb.eh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i400
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.xr, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc403 unwind label %bb.dy

.noexc403:                                        ; preds = %bb.eh
  %.pre.i.i401 = load ptr, ptr %6, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit404

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit404: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i400, %.noexc403
  %i.xz = phi ptr [ %.pre.i.i401, %.noexc403 ], [ %i.xt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i400 ]
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 %i.xr
  store i8 120, ptr %i.ya, align 1, !tbaa !29
  br label %bb.ei

bb.ei:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit404, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit398, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit385, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit371
  %.sink1253 = phi i64 [ %i.xs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit404 ], [ %i.xi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit398 ], [ %i.wl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit385 ], [ %i.vq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit371 ] ; 2 uses
  store i64 %.sink1253, ptr %i.aw, align 8, !tbaa !28
  %i.yb = load ptr, ptr %6, align 8, !tbaa !35
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 %.sink1253
  store i8 0, ptr %i.yc, align 1, !tbaa !29
  %i.yd = add nsw i32 %.21044, -1
  %i.ye = icmp sgt i32 %.21044, 0
  br i1 %i.ye, label %bb.dz, label %.loopexit991, !llvm.loop !325

.preheader997:                                    ; preds = %.critedge18, %.preheader997
  %.3 = phi i32 [ %i.yg, %.preheader997 ], [ %.1, %.critedge18 ] ; 4 uses
  %i.yf = srem i32 %.3, 3
  %.not224 = icmp eq i32 %i.yf, 2
  %i.yg = add nsw i32 %.3, 1
  br i1 %.not224, label %.preheader995, label %.preheader997, !llvm.loop !326

.preheader995:                                    ; preds = %.preheader997
  %i.yh = icmp sgt i32 %.3, 0
  br i1 %i.yh, label %.lr.ph1043, label %.loopexit991

.lr.ph1043:                                       ; preds = %.preheader995
  %i.yi = getelementptr inbounds nuw i8, ptr %1, i64 36
  br label %bb.ej

bb.ej:                                            ; preds = %.lr.ph1043, %bb.fc
  %.41042 = phi i32 [ %.3, %.lr.ph1043 ], [ %i.afh, %bb.fc ] ; 16 uses
  %i.yj = add nsw i32 %.41042, -2                 ; 11 uses
  %i.yk = load i32, ptr %i.to, align 8, !tbaa !47
  %.fr.i.i.i = freeze i32 %i.yk                   ; 7 uses
  %i.yl = load i8, ptr %i.yi, align 4
  %.fr29.i = freeze i8 %i.yl
  %i.ym = add i8 %.fr29.i, -3
  %spec.select.i.i.i406 = icmp ult i8 %i.ym, -2
  %i.yn = icmp samesign ult i32 %.fr.i.i.i, 129
  %i.yo = load ptr, ptr %1, align 8
  %spec.select.i11.i.i = select i1 %i.yn, ptr %1, ptr %i.yo ; 9 uses
  br i1 %spec.select.i.i.i406, label %.thread901, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %bb.ej
  %smax.i = call i32 @llvm.smax.i32(i32 %.fr.i.i.i, i32 %i.yj)
  %i.yp = sub i32 %smax.i, %i.yj                  ; 3 uses
  %exitcond.not.i408.not = icmp slt i32 %i.yj, %.fr.i.i.i ; 2 uses
  br i1 %exitcond.not.i408.not, label %bb.ek, label %_ZNK8V3Number6countZEii.exit.thread

bb.ek:                                            ; preds = %.lr.ph.split.preheader.i
  %i.yq = icmp samesign ult i32 %.41042, 2        ; 2 uses
  br i1 %i.yq, label %_ZNK8V3Number6bitIsXEi.exit.thread.i, label %_ZNK12V3NumberData3numEv.exit.i.i409

_ZNK12V3NumberData3numEv.exit.i.i409:             ; preds = %bb.ek
  %i.yr = lshr i32 %i.yj, 5
  %i.ys = zext nneg i32 %i.yr to i64
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i11.i.i, i64 %i.ys ; 2 uses
  %.sroa.0.0.copyload.i.i410 = load i32, ptr %i.yt, align 4, !tbaa !66
  %i.yu = zext i32 %.sroa.0.0.copyload.i.i410 to i64
  %i.yv = and i32 %i.yj, 31
  %i.yw = zext nneg i32 %i.yv to i64
  %i.yx = shl nuw nsw i64 1, %i.yw                ; 2 uses
  %i.yy = and i64 %i.yx, %i.yu
  %.not7.i.i411 = icmp eq i64 %i.yy, 0
  br i1 %.not7.i.i411, label %_ZNK8V3Number6bitIsXEi.exit.thread.i, label %_ZNK8V3Number6bitIsXEi.exit.i

_ZNK8V3Number6bitIsXEi.exit.i:                    ; preds = %_ZNK12V3NumberData3numEv.exit.i.i409
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.yt, i64 4
  %.sroa.4.0.copyload.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !66
  %i.yz = zext i32 %.sroa.4.0.copyload.i.i.i to i64
  %i.za = and i64 %i.yx, %i.yz
  %.fr.i412 = freeze i64 %i.za
  %.not21.i = icmp ne i64 %.fr.i412, 0
  %i.zb = zext i1 %.not21.i to i32
  br label %_ZNK8V3Number6bitIsXEi.exit.thread.i

_ZNK8V3Number6bitIsXEi.exit.thread.i:             ; preds = %_ZNK8V3Number6bitIsXEi.exit.i, %_ZNK12V3NumberData3numEv.exit.i.i409, %bb.ek
  %i.zc = phi i32 [ 0, %_ZNK12V3NumberData3numEv.exit.i.i409 ], [ %i.zb, %_ZNK8V3Number6bitIsXEi.exit.i ], [ 0, %bb.ek ] ; 3 uses
  %exitcond.not.i408.1 = icmp eq i32 %i.yp, 1     ; 2 uses
  br i1 %exitcond.not.i408.1, label %bb.el, label %_ZNK12V3NumberData3numEv.exit.i.i409.1

_ZNK12V3NumberData3numEv.exit.i.i409.1:           ; preds = %_ZNK8V3Number6bitIsXEi.exit.thread.i
  %i.zd = add nsw i32 %.41042, -1                 ; 2 uses
  %i.ze = lshr i32 %i.zd, 5
  %i.zf = zext nneg i32 %i.ze to i64
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i11.i.i, i64 %i.zf ; 2 uses
  %.sroa.0.0.copyload.i.i410.1 = load i32, ptr %i.zg, align 4, !tbaa !66
  %i.zh = zext i32 %.sroa.0.0.copyload.i.i410.1 to i64
  %i.zi = and i32 %i.zd, 31
  %i.zj = zext nneg i32 %i.zi to i64
  %i.zk = shl nuw nsw i64 1, %i.zj                ; 2 uses
  %i.zl = and i64 %i.zk, %i.zh
  %.not7.i.i411.1 = icmp eq i64 %i.zl, 0
  br i1 %.not7.i.i411.1, label %_ZNK8V3Number6bitIsXEi.exit.thread.i.1, label %_ZNK8V3Number6bitIsXEi.exit.i.1

_ZNK8V3Number6bitIsXEi.exit.i.1:                  ; preds = %_ZNK12V3NumberData3numEv.exit.i.i409.1
  %.sroa.4.0..sroa_idx.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.zg, i64 4
  %.sroa.4.0.copyload.i.i.i.1 = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i.1, align 4, !tbaa !66
  %i.zm = zext i32 %.sroa.4.0.copyload.i.i.i.1 to i64
  %i.zn = and i64 %i.zk, %i.zm
  %.fr.i412.1 = freeze i64 %i.zn
  %.not21.i.1 = icmp ne i64 %.fr.i412.1, 0
  %i.zo = zext i1 %.not21.i.1 to i32
  %spec.select.i413.1 = add nuw nsw i32 %i.zc, %i.zo
  br label %_ZNK8V3Number6bitIsXEi.exit.thread.i.1

_ZNK8V3Number6bitIsXEi.exit.thread.i.1:           ; preds = %_ZNK8V3Number6bitIsXEi.exit.i.1, %_ZNK12V3NumberData3numEv.exit.i.i409.1
  %i.zp = phi i32 [ %i.zc, %_ZNK12V3NumberData3numEv.exit.i.i409.1 ], [ %spec.select.i413.1, %_ZNK8V3Number6bitIsXEi.exit.i.1 ] ; 3 uses
  %exitcond.not.i408.2 = icmp eq i32 %i.yp, 2
  br i1 %exitcond.not.i408.2, label %bb.el, label %_ZNK12V3NumberData3numEv.exit.i.i409.2

_ZNK12V3NumberData3numEv.exit.i.i409.2:           ; preds = %_ZNK8V3Number6bitIsXEi.exit.thread.i.1
  %i.zq = lshr i32 %.41042, 5
end_hunk_0
