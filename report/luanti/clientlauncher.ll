Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientlauncher?download=true
inline.NumInlined: 1515
inline.NumDeleted: 695
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN14ClientLauncher11launch_gameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbR13GameStartDataRK8Settings:bb.a
  store i8 %i.e, ptr %i.hd, align 8, !tbaa !393
  invoke void @_ZN14ClientLauncher9main_menuEP12MainMenuData(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %15)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit223
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !49
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !121 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !25
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = invoke noundef zeroext i1 %i.km(ptr noundef nonnull align 8 dereferenceable(8) %i.kk)
          to label %_ZN15RenderingEngine3runEv.exit unwind label %bb.bf, !inline_history !5

_ZN15RenderingEngine3runEv.exit:                  ; preds = %bb.bc
  br i1 %i.kn, label %bb.bd, label %.critedge

bb.bd:                                            ; preds = %_ZN15RenderingEngine3runEv.exit
  %i.ko = invoke noundef ptr @_ZN7porting25signal_handler_killstatusEv()
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.kp = load volatile i32, ptr %i.ko, align 4, !tbaa !62
  %.not = icmp eq i32 %i.kp, 0
  br i1 %.not, label %bb.bg, label %.critedge

bb.bf:                                            ; preds = %bb.bh, %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit200, %bb.al, %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit223
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bg:                                            ; preds = %bb.be
  %i.kr = load i64, ptr %i.hg, align 8, !tbaa !124
  %i.ks = icmp eq i64 %i.kr, 0
  br i1 %i.ks, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.he)
          to label %.critedge unwind label %bb.bf

bb.bi:                                            ; preds = %bb.bg
  %i.kt = load ptr, ptr %i.gr, align 8, !tbaa !108
  %i.ku = call i64 @__isoc23_strtol(ptr noundef nonnull %i.kt, ptr noundef null, i32 noundef 10) #27, !inline_history !375 ; 2 uses
  %i.kv = and i64 %i.ku, 4294967295
  %.not117 = icmp eq i64 %i.kv, 0
  br i1 %.not117, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kw = trunc i64 %i.ku to i16
  store i16 %i.kw, ptr %3, align 8, !tbaa !389
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  invoke void @_Z18getAvailableWorldsv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.301") align 8 %17)
          to label %bb.bl unwind label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  %i.kx = load i32, ptr %i.hb, align 4, !tbaa !384 ; 3 uses
  %i.ky = icmp sgt i32 %i.kx, -1
  br i1 %i.ky, label %bb.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit228

bb.bm:                                            ; preds = %bb.bl
  %i.kz = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !173
  %i.lb = load ptr, ptr %17, align 8, !tbaa !174  ; 2 uses
  %i.lc = ptrtoint ptr %i.la to i64
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = sub i64 %i.lc, %i.ld
  %i.lf = sdiv exact i64 %i.le, 96
  %i.lg = trunc i64 %i.lf to i32
  %i.lh = icmp slt i32 %i.kx, %i.lg
  br i1 %i.lh, label %bb.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit228

bb.bn:                                            ; preds = %bb.bm
  %i.li = zext nneg i32 %i.kx to i64
  %i.lj = getelementptr inbounds nuw [96 x i8], ptr %i.lb, i64 %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %3, i64 520 ; 2 uses
  %i.ll = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZN9WorldSpecaSERKS_(ptr noundef nonnull align 8 dereferenceable(96) %i.lk, ptr noundef nonnull align 8 dereferenceable(96) %i.lj)
          to label %bb.bo unwind label %bb.bq     ; 0 uses

bb.bo:                                            ; preds = %bb.bn
  %i.lm = getelementptr inbounds nuw i8, ptr %3, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.lm, ptr noundef nonnull align 8 dereferenceable(32) %i.lk)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit228 unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bk
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit242, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit240, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit230, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit228, %bb.bo, %bb.bn
  %i.lo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorI9WorldSpecSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #27
  br label %bb.bz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit228: ; preds = %bb.bo, %bb.bm, %bb.bl
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.hj, ptr noundef nonnull align 8 dereferenceable(32) %i.gu)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit230 unwind label %bb.bq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit230: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit228
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.hk, ptr noundef nonnull align 8 dereferenceable(32) %i.gx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit232 unwind label %bb.bq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit232: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit230
  %i.lp = load ptr, ptr %i.hi, align 8, !tbaa !108 ; 6 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %3, i64 496 ; 2 uses
  %i.lr = icmp eq ptr %i.lp, %i.lq
  %i.ls = load ptr, ptr %i.go, align 8, !tbaa !108 ; 5 uses
  %i.lt = icmp eq ptr %i.ls, %i.gp                ; 2 uses
  br i1 %i.lr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i238: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit232
  br i1 %i.lt, label %bb.br, label %.thread.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i233: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit232
  br i1 %i.lt, label %bb.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i234

bb.br:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i238
  %i.lu = load i64, ptr %i.gq, align 8, !tbaa !124 ; 3 uses
  %i.lv = icmp ult i64 %i.lu, 16
  call void @llvm.assume(i1 %i.lv)
  switch i64 %i.lu, label %bb.bt [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i236
    i64 1, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br
  %i.lw = load i8, ptr %i.ls, align 1, !tbaa !61
  store i8 %i.lw, ptr %i.lp, align 1, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i236

bb.bt:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lp, ptr align 1 %i.ls, i64 %i.lu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i236: ; preds = %bb.bt, %bb.bs, %bb.br
  %i.lx = load i64, ptr %i.gq, align 8, !tbaa !124 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %3, i64 488
  store i64 %i.lx, ptr %i.ly, align 8, !tbaa !124
  %i.lz = load ptr, ptr %i.hi, align 8, !tbaa !108
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.lx
  store i8 0, ptr %i.ma, align 1, !tbaa !61
  %.pre.i237 = load ptr, ptr %i.go, align 8, !tbaa !108
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit240

.thread.i239:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i238
  %i.mb = getelementptr inbounds nuw i8, ptr %3, i64 488
  store ptr %i.ls, ptr %i.hi, align 8, !tbaa !108
  %i.mc = load <2 x i64>, ptr %i.gq, align 8, !tbaa !61
  store <2 x i64> %i.mc, ptr %i.mb, align 8, !tbaa !61
  br label %bb.bv

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i234: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i233
  %i.md = load i64, ptr %i.lq, align 8, !tbaa !61
  store ptr %i.ls, ptr %i.hi, align 8, !tbaa !108
  %i.me = getelementptr inbounds nuw i8, ptr %3, i64 488
  %i.mf = load <2 x i64>, ptr %i.gq, align 8, !tbaa !61
  store <2 x i64> %i.mf, ptr %i.me, align 8, !tbaa !61
  %.not.i235 = icmp eq ptr %i.lp, null
  br i1 %.not.i235, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i234
  store ptr %i.lp, ptr %i.go, align 8, !tbaa !108
  store i64 %i.md, ptr %i.gp, align 8, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit240

bb.bv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i234, %.thread.i239
  store ptr %i.gp, ptr %i.go, align 8, !tbaa !108
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit240: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i236, %bb.bu, %bb.bv
  %i.mg = phi ptr [ %.pre.i237, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i236 ], [ %i.lp, %bb.bu ], [ %i.gp, %bb.bv ]
  store i64 0, ptr %i.gq, align 8, !tbaa !124
  store i8 0, ptr %i.mg, align 1, !tbaa !61
  %i.mh = load i32, ptr %i.hh, align 8, !tbaa !387
  %i.mi = getelementptr inbounds nuw i8, ptr %3, i64 516
  store i32 %i.mh, ptr %i.mi, align 4, !tbaa !396
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit242 unwind label %bb.bq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit242: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit240
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.gl)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit244 unwind label %bb.bq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit244: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit242
  %i.mj = load i8, ptr %i.hc, align 8, !tbaa !385, !range !131, !noundef !95
  %i.mk = trunc nuw i8 %i.mj to i1
  br i1 %i.mk, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit244
  %i.ml = getelementptr inbounds nuw i8, ptr %3, i64 488
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !124
  %i.mn = icmp eq i64 %i.mm, 0
  %i.mo = zext i1 %i.mn to i8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit244
  %i.mp = phi i8 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit244 ], [ %i.mo, %bb.bw ]
  %i.mq = getelementptr inbounds nuw i8, ptr %3, i64 512
  store i8 %i.mp, ptr %i.mq, align 8, !tbaa !397
  %i.mr = load ptr, ptr %17, align 8, !tbaa !174  ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !173 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.mr, %i.mt
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP9WorldSpecS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i245

.lr.ph.i.i.i245:                                  ; preds = %bb.bx, %_ZSt8_DestroyI9WorldSpecEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.nl, %_ZSt8_DestroyI9WorldSpecEvPT_.exit.i.i.i ], [ %i.mr, %bb.bx ] ; 7 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !108 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80 ; 2 uses
  %i.mx = icmp eq ptr %i.mv, %i.mw
  br i1 %i.mx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i245
  %i.my = load i64, ptr %i.mw, align 8, !tbaa !61
  %i.mz = add i64 %i.my, 1
  call void @_ZdlPvm(ptr noundef %i.mv, i64 noundef %i.mz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.na = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !108 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.nd = icmp eq ptr %i.nb, %i.nc
  br i1 %i.nd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ne = load i64, ptr %i.nc, align 8, !tbaa !61
  %i.nf = add i64 %i.ne, 1
  call void @_ZdlPvm(ptr noundef %i.nb, i64 noundef %i.nf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.ng = load ptr, ptr %.05.i.i.i, align 8, !tbaa !108 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ni = icmp eq ptr %i.ng, %i.nh
  br i1 %i.ni, label %_ZSt8_DestroyI9WorldSpecEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i
  %i.nj = load i64, ptr %i.nh, align 8, !tbaa !61
  %i.nk = add i64 %i.nj, 1
  call void @_ZdlPvm(ptr noundef %i.ng, i64 noundef %i.nk) #26
  br label %_ZSt8_DestroyI9WorldSpecEvPT_.exit.i.i.i

_ZSt8_DestroyI9WorldSpecEvPT_.exit.i.i.i:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i
  %i.nl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i246 = icmp eq ptr %i.nl, %i.mt
  br i1 %.not.i.i.i246, label %_ZSt8_DestroyIP9WorldSpecS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i245, !llvm.loop !7

_ZSt8_DestroyIP9WorldSpecS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyI9WorldSpecEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 8, !tbaa !174
  br label %_ZSt8_DestroyIP9WorldSpecS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP9WorldSpecS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIP9WorldSpecS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %bb.bx
  %i.nm = phi ptr [ %.pr.i, %_ZSt8_DestroyIP9WorldSpecS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.mr, %bb.bx ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.nm, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI9WorldSpecSaIS0_EED2Ev.exit, label %bb.by

bb.by:                                            ; preds = %_ZSt8_DestroyIP9WorldSpecS0_EvT_S2_RSaIT0_E.exit.i
  %i.nn = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !175
  %i.np = ptrtoint ptr %i.no to i64
  %i.nq = ptrtoint ptr %i.nm to i64
  %i.nr = sub i64 %i.np, %i.nq
  call void @_ZdlPvm(ptr noundef nonnull %i.nm, i64 noundef %i.nr) #26
  br label %_ZNSt6vectorI9WorldSpecSaIS0_EED2Ev.exit

_ZNSt6vectorI9WorldSpecSaIS0_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIP9WorldSpecS0_EvT_S2_RSaIT0_E.exit.i, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  call void @_ZN12MainMenuDataD2Ev(ptr noundef nonnull align 8 dead_on_return(252) dereferenceable(252) %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.cf

bb.bz:                                            ; preds = %bb.bq, %bb.bp
  %.pn118 = phi { ptr, i32 } [ %i.lo, %bb.bq ], [ %i.ln, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bf
  %.pn118.pn = phi { ptr, i32 } [ %.pn118, %bb.bz ], [ %i.kq, %bb.bf ]
  call void @_ZN12MainMenuDataD2Ev(ptr noundef nonnull align 8 dead_on_return(252) dereferenceable(252) %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.er

bb.cb:                                            ; preds = %bb.ak
  %i.ns = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !124
  %i.nu = icmp eq i64 %i.nt, 0
  br i1 %i.nu, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.nv = getelementptr inbounds nuw i8, ptr %3, i64 488
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !124
  %i.nx = icmp eq i64 %i.nw, 0
  br i1 %i.nx, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.ny = getelementptr inbounds nuw i8, ptr %3, i64 424
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !124
  %i.oa = icmp ne i64 %i.nz, 0
  %i.ob = zext i1 %i.oa to i8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.cb
  %i.oc = phi i8 [ 0, %bb.cc ], [ 0, %bb.cb ], [ %i.ob, %bb.cd ]
  %i.od = getelementptr inbounds nuw i8, ptr %3, i64 512
  store i8 %i.oc, ptr %i.od, align 8, !tbaa !397
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorI9WorldSpecSaIS0_EED2Ev.exit, %bb.ce
  %i.oe = getelementptr inbounds nuw i8, ptr %3, i64 488 ; 2 uses
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !124
  %22 = icmp eq i64 %i.of, 0
  br i1 %22, label %_ZNK13GameStartData14isSinglePlayerEv.exit, label %bb.cg

_ZNK13GameStartData14isSinglePlayerEv.exit:       ; preds = %bb.cf
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 512
  %24 = load i8, ptr %23, align 8, !tbaa !397, !range !131, !noundef !95
  %25 = trunc nuw i8 %24 to i1
  br i1 %25, label %26, label %bb.cq

26:                                               ; preds = %_ZNK13GameStartData14isSinglePlayerEv.exit
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 424
  %28 = load i64, ptr %27, align 8, !tbaa !124
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %bb.ch, label %._crit_edge.i.i266

bb.cg:                                            ; preds = %bb.cf
  %i.og = getelementptr inbounds nuw i8, ptr %3, i64 424
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !124
  %i.oi = icmp eq i64 %i.oh, 0
  br i1 %i.oi, label %bb.ch, label %._crit_edge.i.i266

bb.ch:                                            ; preds = %bb.cg, %26
  %i.oj = call ptr @gettext(ptr noundef nonnull @.str.32) #27 ; 2 uses
  %i.ok = load i64, ptr %i.h, align 8, !tbaa !124
  %i.ol = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.oj) #27
  %i.om = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.ok, ptr noundef nonnull %i.oj, i64 noundef %i.ol)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.ed ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.ch
  %.not.i248 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i248, label %_ZTW11errorstream.exit249, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit249

_ZTW11errorstream.exit249:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.ci
  %i.on = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !94, !nonnull !95, !align !96 ; 2 uses
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !25
  %i.oq = load ptr, ptr %i.op, align 8
  %i.or = invoke noundef zeroext i1 %i.oq(ptr noundef nonnull align 8 dereferenceable(8) %i.oo)
          to label %.noexc253 unwind label %bb.ed, !inline_history !379

.noexc253:                                        ; preds = %_ZTW11errorstream.exit249
  %.v.i250 = select i1 %i.or, i64 976, i64 984
  %i.os = getelementptr inbounds nuw i8, ptr %i.on, i64 %.v.i250 ; 4 uses
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !98 ; 5 uses
  %.not.i.i251 = icmp eq ptr %i.ot, null
  br i1 %.not.i.i251, label %.critedge135, label %bb.cj

bb.cj:                                            ; preds = %.noexc253
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !25
  %i.ov = getelementptr i8, ptr %i.ou, i64 -24
  %i.ow = load i64, ptr %i.ov, align 8
  %i.ox = getelementptr inbounds i8, ptr %i.ot, i64 %i.ow
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 32
  %i.oz = load i32, ptr %i.oy, align 8, !tbaa !105
  %i.pa = icmp eq i32 %i.oz, 0
  br i1 %i.pa, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ot)
          to label %.noexc254 unwind label %bb.ed

.noexc254:                                        ; preds = %bb.ck
  %.pre.i.i252 = load ptr, ptr %i.os, align 8, !tbaa !98
  br label %bb.cl

bb.cl:                                            ; preds = %.noexc254, %bb.cj
  %i.pb = phi ptr [ %.pre.i.i252, %.noexc254 ], [ %i.ot, %bb.cj ]
  %i.pc = load ptr, ptr %1, align 8, !tbaa !108
  %i.pd = load i64, ptr %i.h, align 8, !tbaa !124
  %i.pe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pb, ptr noundef %i.pc, i64 noundef %i.pd)
          to label %_ZN9LogStreamlsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_.exit256 unwind label %bb.ed ; 0 uses

_ZN9LogStreamlsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_.exit256: ; preds = %bb.cl
  %.pr404 = load ptr, ptr %i.os, align 8, !tbaa !98 ; 5 uses
  %.not.i257 = icmp eq ptr %.pr404, null
  br i1 %.not.i257, label %.critedge135, label %bb.cm

bb.cm:                                            ; preds = %_ZN9LogStreamlsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_.exit256
  %i.pf = load ptr, ptr %.pr404, align 8, !tbaa !25
  %i.pg = getelementptr i8, ptr %i.pf, i64 -24
  %i.ph = load i64, ptr %i.pg, align 8            ; 2 uses
  %i.pi = getelementptr inbounds i8, ptr %.pr404, i64 %i.ph
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 32
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !105
  %i.pl = icmp eq i32 %i.pk, 0
  br i1 %i.pl, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr404)
          to label %.noexc259 unwind label %bb.ed

.noexc259:                                        ; preds = %bb.cn
  %.pre.i258 = load ptr, ptr %i.os, align 8, !tbaa !98 ; 2 uses
  %.pre421 = load ptr, ptr %.pre.i258, align 8, !tbaa !25
  %.phi.trans.insert422 = getelementptr i8, ptr %.pre421, i64 -24
  %.pre423 = load i64, ptr %.phi.trans.insert422, align 8
  br label %bb.co

bb.co:                                            ; preds = %.noexc259, %bb.cm
  %i.pm = phi i64 [ %.pre423, %.noexc259 ], [ %i.ph, %bb.cm ]
  %i.pn = phi ptr [ %.pre.i258, %.noexc259 ], [ %.pr404, %bb.cm ] ; 3 uses
  %i.po = getelementptr inbounds i8, ptr %i.pn, i64 %i.pm
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 240
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !144 ; 6 uses
  %.not.i.i.i364 = icmp eq ptr %i.pq, null
  br i1 %.not.i.i.i364, label %.invoke531, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i365

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i365: ; preds = %bb.co
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 56
  %i.ps = load i8, ptr %i.pr, align 8, !tbaa !150
  %.not.i1.i.i366 = icmp eq i8 %i.ps, 0
  br i1 %.not.i1.i.i366, label %bb.cp, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i378.invoke.sink.split

bb.cp:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i365
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.pq)
          to label %.noexc370 unwind label %bb.ed

.noexc370:                                        ; preds = %bb.cp
  %i.pt = load ptr, ptr %i.pq, align 8, !tbaa !25
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 48
  %i.pv = load ptr, ptr %i.pu, align 8
  %i.pw = invoke noundef signext i8 %i.pv(ptr noundef nonnull align 8 dereferenceable(570) %i.pq, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i378.invoke unwind label %bb.ed, !inline_history !6

bb.cq:                                            ; preds = %_ZNK13GameStartData14isSinglePlayerEv.exit
  %i.px = getelementptr inbounds nuw i8, ptr %3, i64 416
  %i.py = getelementptr inbounds nuw i8, ptr %3, i64 424
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !124
  %i.qa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.px, i64 noundef 0, i64 noundef %i.pz, ptr noundef nonnull @.str.33, i64 noundef 12)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit263 unwind label %bb.ed ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit263: ; preds = %bb.cq
  %i.qb = getelementptr inbounds nuw i8, ptr %3, i64 448
  %i.qc = getelementptr inbounds nuw i8, ptr %3, i64 456
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !124
  %i.qe = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.qb, i64 noundef 0, i64 noundef %i.qd, ptr noundef nonnull @.str.18, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit265 unwind label %bb.ed ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit265: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit263
  %i.qf = invoke noundef i32 @_Z12myrand_rangeii(i32 noundef 49152, i32 noundef 65535)
          to label %bb.cr unwind label %bb.ed

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit265
  %i.qg = trunc i32 %i.qf to i16
  store i16 %i.qg, ptr %3, align 8, !tbaa !389
  br label %bb.cu

._crit_edge.i.i266:                               ; preds = %26, %bb.cg
  %i.qh = load ptr, ptr @g_settings, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.qi = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.qi, ptr %18, align 8, !tbaa !122
  store i32 1701667182, ptr %i.qi, align 8
  %i.qj = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 4, ptr %i.qj, align 8, !tbaa !124
  %i.qk = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i8 0, ptr %i.qk, align 4, !tbaa !61
  %i.ql = getelementptr inbounds nuw i8, ptr %3, i64 416
  %i.qm = invoke noundef zeroext i1 @_ZN8Settings3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(236) %i.qh, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %i.ql)
          to label %bb.cs unwind label %bb.ct     ; 0 uses

bb.cs:                                            ; preds = %._crit_edge.i.i266
  %i.qn = load ptr, ptr %18, align 8, !tbaa !108  ; 2 uses
  %i.qo = icmp eq ptr %i.qn, %i.qi
  br i1 %i.qo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270: ; preds = %bb.cs
  %i.qp = load i64, ptr %i.qi, align 8, !tbaa !61
  %i.qq = add i64 %i.qp, 1
  call void @_ZdlPvm(ptr noundef %i.qn, i64 noundef %i.qq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %bb.cu

bb.ct:                                            ; preds = %._crit_edge.i.i266
  %i.qr = landingpad { ptr, i32 }
          cleanup
  %i.qs = load ptr, ptr %18, align 8, !tbaa !108  ; 2 uses
  %i.qt = icmp eq ptr %i.qs, %i.qi
  br i1 %i.qt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %bb.ct
  %i.qu = load i64, ptr %i.qi, align 8, !tbaa !61
  %i.qv = add i64 %i.qu, 1
  call void @_ZdlPvm(ptr noundef %i.qs, i64 noundef %i.qv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %bb.er

bb.cu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, %bb.cr
  %i.qw = getelementptr inbounds nuw i8, ptr %3, i64 416 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %3, i64 424
  %i.qy = load i64, ptr %i.qx, align 8, !tbaa !124
  %i.qz = icmp ugt i64 %i.qy, 19
  br i1 %i.qz, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.ra = call ptr @gettext(ptr noundef nonnull @.str.34) #27 ; 2 uses
  %i.rb = load i64, ptr %i.h, align 8, !tbaa !124
  %i.rc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ra) #27
  %i.rd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.rb, ptr noundef nonnull %i.ra, i64 noundef %i.rc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit277 unwind label %bb.ed ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit277: ; preds = %bb.cv
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.qw, i64 noundef 20, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.ed

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit277
  %i.re = load ptr, ptr @g_settings, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.rf = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.rf, ptr %19, align 8, !tbaa !122
  store i32 1701667182, ptr %i.rf, align 8
  %i.rg = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 4, ptr %i.rg, align 8, !tbaa !124
  %i.rh = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i8 0, ptr %i.rh, align 4, !tbaa !61
  %i.ri = invoke noundef zeroext i1 @_ZN8Settings3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(236) %i.re, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %i.qw)
          to label %bb.cw unwind label %bb.cx     ; 0 uses

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.rj = load ptr, ptr %19, align 8, !tbaa !108  ; 2 uses
  %i.rk = icmp eq ptr %i.rj, %i.rf
  br i1 %i.rk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283: ; preds = %bb.cw
  %i.rl = load i64, ptr %i.rf, align 8, !tbaa !61
  %i.rm = add i64 %i.rl, 1
  call void @_ZdlPvm(ptr noundef %i.rj, i64 noundef %i.rm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %.critedge135

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.rn = landingpad { ptr, i32 }
          cleanup
  %i.ro = load ptr, ptr %19, align 8, !tbaa !108  ; 2 uses
  %i.rp = icmp eq ptr %i.ro, %i.rf
  br i1 %i.rp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286: ; preds = %bb.cx
  %i.rq = load i64, ptr %i.rf, align 8, !tbaa !61
  %i.rr = add i64 %i.rq, 1
  call void @_ZdlPvm(ptr noundef %i.ro, i64 noundef %i.rr) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.er

bb.cy:                                            ; preds = %bb.cu
  %i.rs = load i64, ptr %i.oe, align 8, !tbaa !124
  %i.rt = icmp eq i64 %i.rs, 0
  br i1 %i.rt, label %bb.cz, label %.critedge135

bb.cz:                                            ; preds = %bb.cy
  %i.ru = getelementptr inbounds nuw i8, ptr %3, i64 520 ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %3, i64 528 ; 2 uses
  %i.rw = load i64, ptr %i.rv, align 8, !tbaa !124
  %i.rx = icmp eq i64 %i.rw, 0
  br i1 %i.rx, label %bb.da, label %bb.dj

bb.da:                                            ; preds = %bb.cz
  %i.ry = call ptr @gettext(ptr noundef nonnull @.str.35) #27 ; 2 uses
  %i.rz = load i64, ptr %i.h, align 8, !tbaa !124
  %i.sa = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ry) #27
  %i.sb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.rz, ptr noundef nonnull %i.ry, i64 noundef %i.sa)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit290 unwind label %bb.ed ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit290: ; preds = %bb.da
  %.not.i291 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i291, label %_ZTW11errorstream.exit292, label %bb.db

bb.db:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit290
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit292

_ZTW11errorstream.exit292:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit290, %bb.db
  %i.sc = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !94, !nonnull !95, !align !96 ; 2 uses
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !25
  %i.sf = load ptr, ptr %i.se, align 8
  %i.sg = invoke noundef zeroext i1 %i.sf(ptr noundef nonnull align 8 dereferenceable(8) %i.sd)
          to label %.noexc296 unwind label %bb.ed, !inline_history !379

.noexc296:                                        ; preds = %_ZTW11errorstream.exit292
  %.v.i293 = select i1 %i.sg, i64 976, i64 984
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sc, i64 %.v.i293 ; 4 uses
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !98 ; 5 uses
  %.not.i.i294 = icmp eq ptr %i.si, null
  br i1 %.not.i.i294, label %.critedge135, label %bb.dc

bb.dc:                                            ; preds = %.noexc296
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !25
  %i.sk = getelementptr i8, ptr %i.sj, i64 -24
  %i.sl = load i64, ptr %i.sk, align 8
  %i.sm = getelementptr inbounds i8, ptr %i.si, i64 %i.sl
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 32
  %i.so = load i32, ptr %i.sn, align 8, !tbaa !105
  %i.sp = icmp eq i32 %i.so, 0
  br i1 %i.sp, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.si)
          to label %.noexc297 unwind label %bb.ed

.noexc297:                                        ; preds = %bb.dd
  %.pre.i.i295 = load ptr, ptr %i.sh, align 8, !tbaa !98
  br label %bb.de

bb.de:                                            ; preds = %.noexc297, %bb.dc
  %i.sq = phi ptr [ %.pre.i.i295, %.noexc297 ], [ %i.si, %bb.dc ]
  %i.sr = load ptr, ptr %1, align 8, !tbaa !108
  %i.ss = load i64, ptr %i.h, align 8, !tbaa !124
  %i.st = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.sq, ptr noundef %i.sr, i64 noundef %i.ss)
          to label %_ZN9LogStreamlsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_.exit299 unwind label %bb.ed ; 0 uses

_ZN9LogStreamlsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_.exit299: ; preds = %bb.de
  %.pr406 = load ptr, ptr %i.sh, align 8, !tbaa !98 ; 5 uses
  %.not.i300 = icmp eq ptr %.pr406, null
  br i1 %.not.i300, label %.critedge135, label %bb.df

bb.df:                                            ; preds = %_ZN9LogStreamlsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_.exit299
  %i.su = load ptr, ptr %.pr406, align 8, !tbaa !25
  %i.sv = getelementptr i8, ptr %i.su, i64 -24
  %i.sw = load i64, ptr %i.sv, align 8            ; 2 uses
  %i.sx = getelementptr inbounds i8, ptr %.pr406, i64 %i.sw
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 32
  %i.sz = load i32, ptr %i.sy, align 8, !tbaa !105
  %i.ta = icmp eq i32 %i.sz, 0
  br i1 %i.ta, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr406)
          to label %.noexc302 unwind label %bb.ed

.noexc302:                                        ; preds = %bb.dg
  %.pre.i301 = load ptr, ptr %i.sh, align 8, !tbaa !98 ; 2 uses
  %.pre418 = load ptr, ptr %.pre.i301, align 8, !tbaa !25
  %.phi.trans.insert419 = getelementptr i8, ptr %.pre418, i64 -24
  %.pre420 = load i64, ptr %.phi.trans.insert419, align 8
  br label %bb.dh
end_hunk_0
