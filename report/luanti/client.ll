Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/client?download=true
inline.NumInlined: 5006
inline.NumDeleted: 2353
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6Client18initLocalMapSavingERK7AddressRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:.noexc.i
  %i.xd = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @actionstream) ; 2 uses
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !394, !nonnull !395, !align !396 ; 2 uses
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !66
  %i.xg = load ptr, ptr %i.xf, align 8
  %i.xh = invoke noundef zeroext i1 %i.xg(ptr noundef nonnull align 8 dereferenceable(8) %i.xe)
          to label %.noexc286 unwind label %bb.cm, !inline_history !14

.noexc286:                                        ; preds = %_ZTW12actionstream.exit
  %.v.i285 = select i1 %i.xh, i64 976, i64 984
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xd, i64 %.v.i285 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.100, ptr %i.b, align 8, !tbaa !397
  %i.xj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.xi, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.db unwind label %bb.cm     ; 0 uses

bb.db:                                            ; preds = %.noexc286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.xk = load ptr, ptr %i.xi, align 8, !tbaa !398 ; 5 uses
  %.not.i288 = icmp eq ptr %i.xk, null
  br i1 %.not.i288, label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !66
  %i.xm = getelementptr i8, ptr %i.xl, i64 -24
  %i.xn = load i64, ptr %i.xm, align 8
  %i.xo = getelementptr inbounds i8, ptr %i.xk, i64 %i.xn
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 32
  %i.xq = load i32, ptr %i.xp, align 8, !tbaa !399
  %i.xr = icmp eq i32 %i.xq, 0
  br i1 %i.xr, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.xk)
          to label %.noexc290 unwind label %bb.cm

.noexc290:                                        ; preds = %bb.dd
  %.pre.i289 = load ptr, ptr %i.xi, align 8, !tbaa !398
  br label %bb.de

bb.de:                                            ; preds = %.noexc290, %bb.dc
  %i.xs = phi ptr [ %.pre.i289, %.noexc290 ], [ %i.xk, %bb.dc ]
  %i.xt = load ptr, ptr %4, align 8, !tbaa !312
  %i.xu = load i64, ptr %i.bl, align 8, !tbaa !297
  %i.xv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.xs, ptr noundef %i.xt, i64 noundef %i.xu)
          to label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit unwind label %bb.cm ; 0 uses

_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit: ; preds = %bb.db, %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.101, ptr %i.a, align 8, !tbaa !397
  %i.xw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.xi, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.df unwind label %bb.cm     ; 2 uses

bb.df:                                            ; preds = %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !398 ; 5 uses
  %.not.i293 = icmp eq ptr %i.xx, null
  br i1 %.not.i293, label %_ZN11StreamProxylsEPFRSoS0_E.exit297, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !66
  %i.xz = getelementptr i8, ptr %i.xy, i64 -24
  %i.ya = load i64, ptr %i.xz, align 8            ; 2 uses
  %i.yb = getelementptr inbounds i8, ptr %i.xx, i64 %i.ya
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 32
  %i.yd = load i32, ptr %i.yc, align 8, !tbaa !399
  %i.ye = icmp eq i32 %i.yd, 0
  br i1 %i.ye, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.xx)
          to label %.noexc295 unwind label %bb.cm

.noexc295:                                        ; preds = %bb.dh
  %.pre.i294 = load ptr, ptr %i.xw, align 8, !tbaa !398 ; 2 uses
  %.pre322 = load ptr, ptr %.pre.i294, align 8, !tbaa !66
  %.phi.trans.insert323 = getelementptr i8, ptr %.pre322, i64 -24
  %.pre324 = load i64, ptr %.phi.trans.insert323, align 8
  br label %bb.di

bb.di:                                            ; preds = %.noexc295, %bb.dg
  %i.yf = phi i64 [ %.pre324, %.noexc295 ], [ %i.ya, %bb.dg ]
  %i.yg = phi ptr [ %.pre.i294, %.noexc295 ], [ %i.xx, %bb.dg ] ; 2 uses
  %i.yh = getelementptr inbounds i8, ptr %i.yg, i64 %i.yf
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 240
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !82 ; 6 uses
  %.not.i.i.i305 = icmp eq ptr %i.yj, null
  br i1 %.not.i.i.i305, label %bb.dj, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i306

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZSt16__throw_bad_castv() #40
          to label %.noexc309 unwind label %bb.cm

.noexc309:                                        ; preds = %bb.dj
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i306: ; preds = %bb.di
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 56
  %i.yl = load i8, ptr %i.yk, align 8, !tbaa !88
  %.not.i1.i.i307 = icmp eq i8 %i.yl, 0
  br i1 %.not.i1.i.i307, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i306
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yj, i64 67
  %i.yn = load i8, ptr %i.ym, align 1, !tbaa !89
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.dl:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i306
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.yj)
          to label %.noexc310 unwind label %bb.cm

.noexc310:                                        ; preds = %bb.dl
  %i.yo = load ptr, ptr %i.yj, align 8, !tbaa !66
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 48
  %i.yq = load ptr, ptr %i.yp, align 8
  %i.yr = invoke noundef signext i8 %i.yq(ptr noundef nonnull align 8 dereferenceable(570) %i.yj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.cm, !inline_history !400

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc310, %bb.dk
  %.0.i.i.i308 = phi i8 [ %i.yn, %bb.dk ], [ %i.yr, %.noexc310 ]
  %i.ys = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.yg, i8 noundef signext %.0.i.i.i308)
          to label %.noexc312 unwind label %bb.cm

.noexc312:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.yt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ys)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit297 unwind label %bb.cm ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit297:             ; preds = %bb.df, %.noexc312
  %i.yu = load ptr, ptr %4, align 8, !tbaa !312   ; 2 uses
  %i.yv = icmp eq ptr %i.yu, %i.bk
  br i1 %i.yv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298: ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit297
  %i.yw = load i64, ptr %i.bk, align 8, !tbaa !89
  %i.yx = add i64 %i.yw, 1
  call void @_ZdlPvm(ptr noundef %i.yu, i64 noundef %i.yx) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300: ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit297, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZTW10infostream.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300
  ret void

bb.dm:                                            ; preds = %bb.cx
  %i.yy = landingpad { ptr, i32 }
          cleanup
  br label %.body281

.body281:                                         ; preds = %bb.dm, %bb.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, %bb.cm, %.body
  %.pn40 = phi { ptr, i32 } [ %i.vd, %bb.cm ], [ %.pn24.pn.pn.pn.pn.pn, %.body ], [ %.pn31.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279 ], [ %i.yy, %bb.dm ], [ %i.wu, %bb.cy ]
  %i.yz = load ptr, ptr %4, align 8, !tbaa !312   ; 2 uses
  %i.za = icmp eq ptr %i.yz, %i.bk
  br i1 %i.za, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301: ; preds = %.body281
  %i.zb = load i64, ptr %i.bk, align 8, !tbaa !89
  %i.zc = add i64 %i.zb, 1
  call void @_ZdlPvm(ptr noundef %i.yz, i64 noundef %i.zc) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303: ; preds = %.body281, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %bb.dn

bb.dn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %.pn40.pn = phi { ptr, i32 } [ %.pn40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ]
  resume { ptr, i32 } %.pn40.pn
}

; Function Attrs: uwtable
define dso_local void @_ZN6Client4stepEf(ptr noundef nonnull align 8 dereferenceable(1674) %0, float noundef %1) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %class.NetworkPacket, align 8       ; 14 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %i.n = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.std::vector.400", align 8   ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::vector.400", align 8   ; 8 uses
  %8 = alloca %"class.std::unique_ptr.273", align 8 ; 4 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.std::vector.400", align 8   ; 14 uses
  %10 = alloca %struct.MeshUpdateResult, align 8  ; 20 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::vector.674", align 8  ; 14 uses
  %14 = alloca %"class.std::vector.674", align 8  ; 9 uses
  %15 = alloca %"class.core::vector3d.210", align 8 ; 5 uses
  %16 = alloca %"class.core::vector3d.210", align 8 ; 5 uses
  %17 = alloca %"class.std::vector.393", align 8  ; 9 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %i.q = alloca i32, align 4                      ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.r = fcmp nsz ogt float %1, 2.500000e+00
  %spec.store.select = select i1 %i.r, float 2.500000e+00, float %1 ; 13 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.t = load float, ptr %i.s, align 8, !tbaa !305
  %i.u = fadd nsz float %spec.store.select, %i.t
  %i.v = frem nsz float %i.u, 6.000000e+01
  store float %i.v, ptr %i.s, align 8, !tbaa !305
  tail call void @_ZN6Client10ReceiveAllEv(ptr noundef nonnull align 8 dereferenceable(1674) %0)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !283
  %i.y = fsub nsz float %i.x, %spec.store.select  ; 2 uses
  store float %i.y, ptr %i.w, align 4, !tbaa !283
  %i.z = fcmp nsz ugt float %i.y, 0.000000e+00
  br i1 %i.z, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  store float 3.000000e+01, ptr %i.w, align 4, !tbaa !283
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 4 uses
  %.not8.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not8.i, label %_ZNK13PacketCounter3sumEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.010.i = phi i32 [ %i.ag, %.lr.ph.i ], [ 0, %bb.b ]
  %.sroa.05.09.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %i.ac, %bb.b ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 36
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !59
  %i.ag = add i32 %i.af, %.010.i                  ; 2 uses
  %i.ah = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.05.09.i) #38 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, %i.ad
  br i1 %.not.i, label %_ZNK13PacketCounter3sumEv.exit, label %.lr.ph.i

_ZNK13PacketCounter3sumEv.exit:                   ; preds = %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.ag, %.lr.ph.i ] ; 2 uses
  %i.ai = uitofp nsz i32 %.0.lcssa.i to float
  %i.aj = fdiv nsz float %i.ai, 3.000000e+01
  %.not.i211 = icmp eq ptr @_ZTH10infostream, null ; 2 uses
  br i1 %.not.i211, label %_ZTW10infostream.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK13PacketCounter3sumEv.exit
  tail call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %_ZNK13PacketCounter3sumEv.exit, %bb.c
  %i.ak = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !394, !nonnull !395, !align !396 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !66
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.al), !inline_history !881
  %.v.i = select i1 %i.ao, i64 976, i64 984
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.v.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr @.str.38, ptr %i.n, align 8, !tbaa !397
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.n) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !398 ; 5 uses
  %.not.i212 = icmp eq ptr %i.ar, null
  br i1 %.not.i212, label %_ZN11StreamProxylsIRfEERS_OT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZTW10infostream.exit
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !66
  %i.at = getelementptr i8, ptr %i.as, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !399
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
  %.pre.i = load ptr, ptr %i.ap, align 8, !tbaa !398
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.az = phi ptr [ %.pre.i, %bb.e ], [ %i.ar, %bb.d ]
  %i.ba = load float, ptr %i.w, align 4, !tbaa !283
  %i.bb = fpext nsz float %i.ba to double
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.az, double noundef %i.bb) ; 0 uses
  br label %_ZN11StreamProxylsIRfEERS_OT_.exit

_ZN11StreamProxylsIRfEERS_OT_.exit:               ; preds = %_ZTW10infostream.exit, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @.str.39, ptr %i.m, align 8, !tbaa !397
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @.str.40, ptr %i.l, align 8, !tbaa !397
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !398 ; 5 uses
  %.not.i213 = icmp eq ptr %i.bf, null
  br i1 %.not.i213, label %_ZN11StreamProxylsIRjEERS_OT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN11StreamProxylsIRfEERS_OT_.exit
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !66
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !399
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
  %.pre.i214 = load ptr, ptr %i.be, align 8, !tbaa !398
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bn = phi ptr [ %.pre.i214, %bb.h ], [ %i.bf, %bb.g ]
  %i.bo = zext i32 %.0.lcssa.i to i64
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, i64 noundef %i.bo) ; 0 uses
  br label %_ZN11StreamProxylsIRjEERS_OT_.exit

_ZN11StreamProxylsIRjEERS_OT_.exit:               ; preds = %_ZN11StreamProxylsIRfEERS_OT_.exit, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @.str.41, ptr %i.k, align 8, !tbaa !397
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.k) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !398 ; 5 uses
  %.not.i215 = icmp eq ptr %i.br, null
  br i1 %.not.i215, label %_ZN11StreamProxylsIRfEERS_OT_.exit217, label %bb.j

bb.j:                                             ; preds = %_ZN11StreamProxylsIRjEERS_OT_.exit
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !66
  %i.bt = getelementptr i8, ptr %i.bs, i64 -24
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds i8, ptr %i.br, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !399
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.br)
  %.pre.i216 = load ptr, ptr %i.bq, align 8, !tbaa !398
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bz = phi ptr [ %.pre.i216, %bb.k ], [ %i.br, %bb.j ]
  %i.ca = fpext nsz float %i.aj to double
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, double noundef %i.ca) ; 0 uses
  br label %_ZN11StreamProxylsIRfEERS_OT_.exit217

_ZN11StreamProxylsIRfEERS_OT_.exit217:            ; preds = %_ZN11StreamProxylsIRjEERS_OT_.exit, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @.str.42, ptr %i.j, align 8, !tbaa !397
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !398 ; 5 uses
  %.not.i218 = icmp eq ptr %i.cd, null
  br i1 %.not.i218, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.m

bb.m:                                             ; preds = %_ZN11StreamProxylsIRfEERS_OT_.exit217
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !66
  %i.cf = getelementptr i8, ptr %i.ce, i64 -24
  %i.cg = load i64, ptr %i.cf, align 8            ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cd, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !399
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.cd)
  %.pre.i219 = load ptr, ptr %i.cc, align 8, !tbaa !398 ; 2 uses
  %.pre = load ptr, ptr %.pre.i219, align 8, !tbaa !66
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre781 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cl = phi i64 [ %.pre781, %bb.n ], [ %i.cg, %bb.m ]
  %i.cm = phi ptr [ %.pre.i219, %bb.n ], [ %i.cd, %bb.m ] ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.cl
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 240
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !82 ; 6 uses
  %.not.i.i.i411 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i411, label %bb.p, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt16__throw_bad_castv() #40
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !88
  %.not.i1.i.i = icmp eq i8 %i.cr, 0
  br i1 %.not.i1.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN6Client4stepEf:bb.a
_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit351: ; preds = %_ZN16MeshUpdateResultD2Ev.exit, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 5 uses
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !318 ; 3 uses
  %.not564 = icmp eq ptr %i.za, null
  br i1 %.not564, label %_ZNSt10unique_ptrI21ClientMediaDownloaderSt14default_deleteIS0_EE5resetEPS0_.exit, label %bb.eu

bb.eu:                                            ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit351
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !66
  %i.zc = load ptr, ptr %i.zb, align 8
  %i.zd = call noundef zeroext i1 %i.zc(ptr noundef nonnull align 8 dereferenceable(256) %i.za)
  br i1 %i.zd, label %bb.ev, label %_ZNSt10unique_ptrI21ClientMediaDownloaderSt14default_deleteIS0_EE5resetEPS0_.exit

bb.ev:                                            ; preds = %bb.eu
  %i.ze = load ptr, ptr %i.yz, align 8, !tbaa !318 ; 2 uses
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !66
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 32
  %i.zh = load ptr, ptr %i.zg, align 8
  call void %i.zh(ptr noundef nonnull align 8 dereferenceable(256) %i.ze, ptr noundef nonnull %0)
  %i.zi = load ptr, ptr %i.yz, align 8, !tbaa !318 ; 2 uses
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !66
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 8
  %i.zl = load ptr, ptr %i.zk, align 8
  %i.zm = call noundef zeroext i1 %i.zl(ptr noundef nonnull align 8 dereferenceable(256) %i.zi)
  br i1 %i.zm, label %bb.ew, label %_ZNSt10unique_ptrI21ClientMediaDownloaderSt14default_deleteIS0_EE5resetEPS0_.exit

bb.ew:                                            ; preds = %bb.ev
  %i.zn = load ptr, ptr %i.yz, align 8, !tbaa !318 ; 3 uses
  store ptr null, ptr %i.yz, align 8, !tbaa !318
  %.not.i.i352 = icmp eq ptr %i.zn, null
  br i1 %.not.i.i352, label %_ZNSt10unique_ptrI21ClientMediaDownloaderSt14default_deleteIS0_EE5resetEPS0_.exit, label %_ZNKSt14default_deleteI21ClientMediaDownloaderEclEPS0_.exit.i.i

_ZNKSt14default_deleteI21ClientMediaDownloaderEclEPS0_.exit.i.i: ; preds = %bb.ew
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !66
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 56
  %i.zq = load ptr, ptr %i.zp, align 8
  call void %i.zq(ptr noundef nonnull align 8 dereferenceable(256) %i.zn) #39, !inline_history !20
  br label %_ZNSt10unique_ptrI21ClientMediaDownloaderSt14default_deleteIS0_EE5resetEPS0_.exit

_ZNSt6vectorIP15MinimapMapblockSaIS1_EED2Ev.exit327: ; preds = %.loopexit598, %.loopexit.split-lp599, %bb.dd, %bb.de, %bb.ee, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337
  %.pn196.pn.pn.pn = phi { ptr, i32 } [ %.pn174, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337 ], [ %i.rj, %bb.dd ], [ %.pn176, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348 ], [ %i.rk, %bb.de ], [ %.pn196.pn.pn555, %bb.ee ], [ %.pn196.pn.pn, %.body ], [ %lpad.loopexit600, %.loopexit598 ], [ %lpad.loopexit.split-lp601, %.loopexit.split-lp599 ]
  %i.zr = load ptr, ptr %i.qb, align 8, !tbaa !471 ; 3 uses
  %.not.i.i.i.i353 = icmp eq ptr %i.zr, null
  br i1 %.not.i.i.i.i353, label %_ZNSt6vectorIP8MapBlockSaIS1_EED2Ev.exit.i354, label %bb.ex

bb.ex:                                            ; preds = %_ZNSt6vectorIP15MinimapMapblockSaIS1_EED2Ev.exit327
  %i.zs = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !472
  %i.zu = ptrtoint ptr %i.zt to i64
  %i.zv = ptrtoint ptr %i.zr to i64
  %i.zw = sub i64 %i.zu, %i.zv
  call void @_ZdlPvm(ptr noundef nonnull %i.zr, i64 noundef %i.zw) #42
  br label %_ZNSt6vectorIP8MapBlockSaIS1_EED2Ev.exit.i354

_ZNSt6vectorIP8MapBlockSaIS1_EED2Ev.exit.i354:    ; preds = %bb.ex, %_ZNSt6vectorIP15MinimapMapblockSaIS1_EED2Ev.exit327
  %i.zx = load ptr, ptr %i.qa, align 8, !tbaa !420 ; 3 uses
  %.not.i.i.i1.i355 = icmp eq ptr %i.zx, null
  br i1 %.not.i.i.i1.i355, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit.i356, label %bb.ey

bb.ey:                                            ; preds = %_ZNSt6vectorIP8MapBlockSaIS1_EED2Ev.exit.i354
  %i.zy = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !418
  %i.aaa = ptrtoint ptr %i.zz to i64
  %i.aab = ptrtoint ptr %i.zx to i64
  %i.aac = sub i64 %i.aaa, %i.aab
  call void @_ZdlPvm(ptr noundef nonnull %i.zx, i64 noundef %i.aac) #42
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit.i356

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit.i356: ; preds = %bb.ey, %_ZNSt6vectorIP8MapBlockSaIS1_EED2Ev.exit.i354
  %i.aad = load ptr, ptr %i.pz, align 8, !tbaa !445 ; 3 uses
  %.not.i.i357 = icmp eq ptr %i.aad, null
  br i1 %.not.i.i357, label %_ZN16MeshUpdateResultD2Ev.exit359, label %_ZNKSt14default_deleteI12MapBlockMeshEclEPS0_.exit.i.i358

_ZNKSt14default_deleteI12MapBlockMeshEclEPS0_.exit.i.i358: ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit.i356
  call void @_ZN12MapBlockMeshD1Ev(ptr noundef nonnull align 8 dead_on_return(249) dereferenceable(249) %i.aad) #39
  call void @_ZdlPvm(ptr noundef nonnull %i.aad, i64 noundef 256) #42
  br label %_ZN16MeshUpdateResultD2Ev.exit359

_ZN16MeshUpdateResultD2Ev.exit359:                ; preds = %_ZNKSt14default_deleteI12MapBlockMeshEclEPS0_.exit.i.i358, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit.i356
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.aae = load ptr, ptr %9, align 8, !tbaa !420  ; 3 uses
  %.not.i.i.i360 = icmp eq ptr %i.aae, null
  br i1 %.not.i.i.i360, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit361, label %bb.ez

bb.ez:                                            ; preds = %_ZN16MeshUpdateResultD2Ev.exit359
  %i.aaf = load ptr, ptr %i.qp, align 8, !tbaa !418
  %i.aag = ptrtoint ptr %i.aaf to i64
  %i.aah = ptrtoint ptr %i.aae to i64
  %i.aai = sub i64 %i.aag, %i.aah
  call void @_ZdlPvm(ptr noundef nonnull %i.aae, i64 noundef %i.aai) #42
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit361

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit361: ; preds = %_ZN16MeshUpdateResultD2Ev.exit359, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %_ZNSt10unique_ptrI16SSCSMEventOnStepSt14default_deleteIS0_EED2Ev.exit288

_ZNSt10unique_ptrI21ClientMediaDownloaderSt14default_deleteIS0_EE5resetEPS0_.exit: ; preds = %_ZNKSt14default_deleteI21ClientMediaDownloaderEclEPS0_.exit.i.i, %bb.ew, %bb.ev, %bb.eu, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit351
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.aaj = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 3 uses
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !473 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !473
  %.not565691 = icmp eq ptr %i.aak, %i.aam
  br i1 %.not565691, label %_ZNSt6vectorIjSaIjEED2Ev.exit373, label %.lr.ph693

.lr.ph693:                                        ; preds = %_ZNSt10unique_ptrI21ClientMediaDownloaderSt14default_deleteIS0_EE5resetEPS0_.exit
  %i.aan = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  br label %bb.fa

.preheader.a:                                     ; preds = %_ZNSt6vectorIN6Client20PendingMediaDownloadESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit
  %.pre788.a = load ptr, ptr %13, align 8, !tbaa !474 ; 3 uses
  %.pre790 = load ptr, ptr %i.aan, align 8, !tbaa !474 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.aap = icmp eq ptr %.pre788.a, %.pre790
  br i1 %i.aap, label %._crit_edge704, label %.lr.ph703

.lr.ph703:                                        ; preds = %.preheader.a
  %i.aaq = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %14, i64 16
  br label %bb.fj

bb.fa:                                            ; preds = %.lr.ph693, %_ZNSt6vectorIN6Client20PendingMediaDownloadESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit
  %.sroa.0450.0692 = phi ptr [ %i.aak, %.lr.ph693 ], [ %.sroa.0450.1, %_ZNSt6vectorIN6Client20PendingMediaDownloadESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ] ; 5 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %.sroa.0450.0692, i64 56 ; 2 uses
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !1009 ; 2 uses
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !66
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 32
  %i.aaw = load ptr, ptr %i.aav, align 8
  invoke void %i.aaw(ptr noundef nonnull align 8 dereferenceable(168) %i.aat, ptr noundef nonnull %0)
          to label %bb.fb unwind label %bb.ff

bb.fb:                                            ; preds = %bb.fa
  %i.aax = load ptr, ptr %i.aas, align 8, !tbaa !1009 ; 2 uses
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !66
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 8
  %i.aba = load ptr, ptr %i.aaz, align 8
  %i.abb = invoke noundef zeroext i1 %i.aba(ptr noundef nonnull align 8 dereferenceable(168) %i.aax)
          to label %bb.fc unwind label %bb.ff

bb.fc:                                            ; preds = %bb.fb
  br i1 %i.abb, label %bb.fd, label %bb.fi

bb.fd:                                            ; preds = %bb.fc
  %i.abc = load ptr, ptr %i.aan, align 8, !tbaa !474
  %i.abd = load ptr, ptr %.sroa.0450.0692, align 8, !tbaa !474
  %i.abe = getelementptr inbounds nuw i8, ptr %.sroa.0450.0692, i64 8
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !474
  %i.abg = load ptr, ptr %13, align 8, !tbaa !474 ; 2 uses
  %i.abh = ptrtoint ptr %i.abc to i64
  %i.abi = ptrtoint ptr %i.abg to i64
  %i.abj = sub i64 %i.abh, %i.abi
  %i.abk = getelementptr inbounds i8, ptr %i.abg, i64 %i.abj
  invoke void @_ZNSt6vectorIjSaIjEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPjS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.abk, ptr %i.abd, ptr %i.abf)
          to label %bb.fe unwind label %bb.fg

bb.fe:                                            ; preds = %bb.fd
  %i.abl = load ptr, ptr %i.aaj, align 8, !tbaa !473 ; 2 uses
  %i.abm = ptrtoint ptr %.sroa.0450.0692 to i64
  %i.abn = ptrtoint ptr %i.abl to i64
  %i.abo = sub i64 %i.abm, %i.abn
  %i.abp = getelementptr inbounds i8, ptr %i.abl, i64 %i.abo
  %i.abq = invoke ptr @_ZNSt6vectorIN6Client20PendingMediaDownloadESaIS1_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.aaj, ptr %i.abp)
          to label %_ZNSt6vectorIN6Client20PendingMediaDownloadESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit unwind label %bb.fh

bb.ff:                                            ; preds = %bb.fb, %bb.fa
  %i.abr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.fg:                                            ; preds = %bb.fd
  %i.abs = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.fh:                                            ; preds = %bb.fe
  %i.abt = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.fi:                                            ; preds = %bb.fc
  %i.abu = getelementptr inbounds nuw i8, ptr %.sroa.0450.0692, i64 72
  br label %_ZNSt6vectorIN6Client20PendingMediaDownloadESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

_ZNSt6vectorIN6Client20PendingMediaDownloadESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit: ; preds = %bb.fe, %bb.fi
  %.sroa.0450.1 = phi ptr [ %i.abu, %bb.fi ], [ %i.abq, %bb.fe ] ; 2 uses
  %i.abv = load ptr, ptr %i.aal, align 8, !tbaa !473
  %.not565 = icmp eq ptr %.sroa.0450.1, %i.abv
  br i1 %.not565, label %.preheader.a, label %bb.fa, !llvm.loop !902

bb.fj:                                            ; preds = %.lr.ph703, %_ZNSt6vectorIjSaIjEED2Ev.exit371
  %i.abw = phi ptr [ %.pre790, %.lr.ph703 ], [ %i.adk, %_ZNSt6vectorIjSaIjEED2Ev.exit371 ] ; 2 uses
  %i.abx = phi ptr [ %.pre788.a, %.lr.ph703 ], [ %i.adj, %_ZNSt6vectorIjSaIjEED2Ev.exit371 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.aby = icmp eq ptr %i.abx, %i.abw
  br i1 %i.aby, label %.critedge4, label %.lr.ph699

.lr.ph699:                                        ; preds = %bb.fj, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.abz = phi ptr [ %i.acu, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.abx, %bb.fj ]
  %i.aca = phi ptr [ %i.acw, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ null, %bb.fj ] ; 4 uses
  %i.acb = phi ptr [ %i.acx, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ null, %bb.fj ] ; 4 uses
  %i.acc = phi ptr [ %i.acz, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.abw, %bb.fj ] ; 2 uses
  %i.acd = phi ptr [ %i.acy, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ null, %bb.fj ] ; 8 uses
  %i.ace = ptrtoint ptr %i.acb to i64
  %i.acf = ptrtoint ptr %i.acd to i64
  %i.acg = sub i64 %i.ace, %i.acf                 ; 5 uses
  %i.ach = ashr exact i64 %i.acg, 2               ; 3 uses
  %i.aci = icmp ult i64 %i.ach, 255
  br i1 %i.aci, label %bb.fk, label %.critedge4

bb.fk:                                            ; preds = %.lr.ph699
  %i.acj = getelementptr inbounds i8, ptr %i.acc, i64 -4 ; 2 uses
  %.not.i364 = icmp eq ptr %i.acb, %i.aca
  br i1 %.not.i364, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !414
  store i32 %i.ack, ptr %i.acb, align 4, !tbaa !414
  %i.acl = getelementptr inbounds nuw i8, ptr %i.acb, i64 4 ; 2 uses
  store ptr %i.acl, ptr %i.aaq, align 8, !tbaa !478
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.fk
  %.sroa.speculated.i.i.i365 = call i64 @llvm.umax.i64(i64 %i.ach, i64 1)
  %i.acm = add nuw nsw i64 %.sroa.speculated.i.i.i365, %i.ach ; 2 uses
  %i.acn = shl nuw nsw i64 %i.acm, 2
  %i.aco = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acn) #41
          to label %.noexc368 unwind label %.loopexit576 ; 4 uses

.noexc368:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.acp = getelementptr inbounds i8, ptr %i.aco, i64 %i.acg ; 2 uses
  %i.acq = load i32, ptr %i.acj, align 4, !tbaa !414
  store i32 %i.acq, ptr %i.acp, align 4, !tbaa !414
  %i.acr = icmp sgt i64 %i.acg, 0
  br i1 %i.acr, label %bb.fm, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.fm:                                            ; preds = %.noexc368
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aco, ptr align 4 %i.acd, i64 %i.acg, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.fm, %.noexc368
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acp, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.acd, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.fn

bb.fn:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.acd, i64 noundef %i.acg) #42
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.fn, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.acs, ptr %i.aaq, align 8, !tbaa !478
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.aco, i64 %i.acm ; 2 uses
  store ptr %i.act, ptr %i.aar, align 8, !tbaa !479
  %.pre792 = load ptr, ptr %i.aao, align 8, !tbaa !478
  %.pre793 = load ptr, ptr %13, align 8, !tbaa !474
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.fl
  %i.acu = phi ptr [ %.pre793, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.abz, %bb.fl ] ; 2 uses
  %i.acv = phi ptr [ %.pre792, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.acc, %bb.fl ]
  %i.acw = phi ptr [ %i.act, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.aca, %bb.fl ] ; 2 uses
  %i.acx = phi ptr [ %i.acs, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.acl, %bb.fl ]
  %i.acy = phi ptr [ %i.aco, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.acd, %bb.fl ] ; 2 uses
  %i.acz = getelementptr inbounds i8, ptr %i.acv, i64 -4 ; 3 uses
  store ptr %i.acz, ptr %i.aao, align 8, !tbaa !478
  %i.ada = icmp eq ptr %i.acu, %i.acz
  br i1 %i.ada, label %.critedge4, label %.lr.ph699, !llvm.loop !903

.loopexit576:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit578 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.acd, ptr %14, align 8
  br label %.loopexit.split-lp577

.loopexit.split-lp577.loopexit.split-lp:          ; preds = %.critedge4
  %lpad.loopexit.split-lp582 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp577

.loopexit.split-lp577:                            ; preds = %.loopexit.split-lp577.loopexit.split-lp, %.loopexit576
  %19 = phi ptr [ %i.aca, %.loopexit576 ], [ %i.ade, %.loopexit.split-lp577.loopexit.split-lp ]
  %20 = phi ptr [ %i.acd, %.loopexit576 ], [ %i.adf, %.loopexit.split-lp577.loopexit.split-lp ] ; 3 uses
  %lpad.phi580 = phi { ptr, i32 } [ %lpad.loopexit578, %.loopexit576 ], [ %lpad.loopexit.split-lp582, %.loopexit.split-lp577.loopexit.split-lp ]
  %.not.i.i.i369 = icmp eq ptr %20, null
  br i1 %.not.i.i.i369, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.fo

bb.fo:                                            ; preds = %.loopexit.split-lp577
  %i.adb = ptrtoint ptr %19 to i64
  %i.adc = ptrtoint ptr %20 to i64
  %i.add = sub i64 %i.adb, %i.adc
  call void @_ZdlPvm(ptr noundef nonnull %20, i64 noundef %i.add) #42
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %.loopexit.split-lp577, %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  br label %bb.fv

.critedge4:                                       ; preds = %.lr.ph699, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %bb.fj
  %i.ade = phi ptr [ null, %bb.fj ], [ %i.acw, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.aca, %.lr.ph699 ] ; 2 uses
  %i.adf = phi ptr [ null, %bb.fj ], [ %i.acy, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.acd, %.lr.ph699 ] ; 5 uses
  store ptr %i.adf, ptr %14, align 8
  invoke void @_ZN6Client13sendHaveMediaERKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(1674) %0, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.fp unwind label %.loopexit.split-lp577.loopexit.split-lp

bb.fp:                                            ; preds = %.critedge4
  %.not.i.i.i370 = icmp eq ptr %i.adf, null
  br i1 %.not.i.i.i370, label %_ZNSt6vectorIjSaIjEED2Ev.exit371, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.adg = ptrtoint ptr %i.ade to i64
  %i.adh = ptrtoint ptr %i.adf to i64
  %i.adi = sub i64 %i.adg, %i.adh
  call void @_ZdlPvm(ptr noundef nonnull %i.adf, i64 noundef %i.adi) #42
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit371

_ZNSt6vectorIjSaIjEED2Ev.exit371:                 ; preds = %bb.fp, %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  %i.adj = load ptr, ptr %13, align 8, !tbaa !474 ; 3 uses
  %i.adk = load ptr, ptr %i.aao, align 8, !tbaa !474 ; 2 uses
  %i.adl = icmp eq ptr %i.adj, %i.adk
  br i1 %i.adl, label %._crit_edge704, label %bb.fj, !llvm.loop !904

._crit_edge704:                                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit371, %.preheader.a
  %.lcssa = phi ptr [ %.pre788.a, %.preheader.a ], [ %i.adj, %_ZNSt6vectorIjSaIjEED2Ev.exit371 ] ; 3 uses
  %.not.i.i.i372 = icmp eq ptr %.lcssa, null
  br i1 %.not.i.i.i372, label %_ZNSt6vectorIjSaIjEED2Ev.exit373, label %bb.fr

bb.fr:                                            ; preds = %._crit_edge704
  %i.adm = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !479
  %i.ado = ptrtoint ptr %i.adn to i64
  %i.adp = ptrtoint ptr %.lcssa to i64
  %i.adq = sub i64 %i.ado, %i.adp
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa, i64 noundef %i.adq) #42
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit373

_ZNSt6vectorIjSaIjEED2Ev.exit373:                 ; preds = %_ZNSt10unique_ptrI21ClientMediaDownloaderSt14default_deleteIS0_EE5resetEPS0_.exit, %._crit_edge704, %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  %i.adr = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !384 ; 2 uses
  %.not566 = icmp eq ptr %i.ads, null
  br i1 %.not566, label %bb.fx, label %bb.fs

bb.fs:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit373
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.adu = load i8, ptr %i.adt, align 2, !tbaa !282, !range !403, !noundef !395
  %i.adv = trunc nuw i8 %i.adu to i1
  br i1 %i.adv, label %bb.fx, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.adw = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.adx = load float, ptr %i.adw, align 8, !tbaa !1010 ; 2 uses
  %i.ady = fadd nsz float %spec.store.select, %i.adx ; 2 uses
  store float %i.ady, ptr %i.adw, align 8, !tbaa !1010
  %i.adz = insertelement <2 x float> poison, float %i.ady, i64 0
  %i.aea = insertelement <2 x float> %i.adz, float %i.adx, i64 1
  %i.aeb = fdiv nsz <2 x float> %i.aea, splat (float 1.000000e+01)
  %i.aec = call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.aeb) ; 2 uses
  %i.aed = extractelement <2 x float> %i.aec, i64 0
  %i.aee = extractelement <2 x float> %i.aec, i64 1
  %i.aef = fcmp nsz une float %i.aed, %i.aee
  br i1 %i.aef, label %bb.fu, label %bb.fx

bb.fu:                                            ; preds = %bb.ft
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.me, i64 48
  %i.aeh = call noundef nonnull align 8 dereferenceable(33) ptr @_ZN9InventoryaSERKS_(ptr noundef nonnull align 8 dereferenceable(33) %i.aeg, ptr noundef nonnull align 8 dereferenceable(33) %i.ads) ; 0 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %0, i64 644
  store i8 1, ptr %i.aei, align 4, !tbaa !299
  br label %bb.fx

bb.fv:                                            ; preds = %bb.ff, %bb.fg, %bb.fh, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.pn186.pn = phi { ptr, i32 } [ %lpad.phi580, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.abt, %bb.fh ], [ %i.abs, %bb.fg ], [ %i.abr, %bb.ff ]
  %i.aej = load ptr, ptr %13, align 8, !tbaa !480 ; 3 uses
  %.not.i.i.i374 = icmp eq ptr %i.aej, null
  br i1 %.not.i.i.i374, label %_ZNSt6vectorIjSaIjEED2Ev.exit375, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.aek = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !479
  %i.aem = ptrtoint ptr %i.ael to i64
  %i.aen = ptrtoint ptr %i.aej to i64
  %i.aeo = sub i64 %i.aem, %i.aen
  call void @_ZdlPvm(ptr noundef nonnull %i.aej, i64 noundef %i.aeo) #42
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit375

_ZNSt6vectorIjSaIjEED2Ev.exit375:                 ; preds = %bb.fv, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  br label %_ZNSt10unique_ptrI16SSCSMEventOnStepSt14default_deleteIS0_EED2Ev.exit288

bb.fx:                                            ; preds = %bb.ft, %bb.fu, %bb.fs, %_ZNSt6vectorIjSaIjEED2Ev.exit373
  %i.aep = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.aeq = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %.sroa.0443.0706 = load ptr, ptr %i.aeq, align 8, !tbaa !349 ; 2 uses
  %.not567707 = icmp eq ptr %.sroa.0443.0706, null
  br i1 %.not567707, label %._crit_edge711, label %.lr.ph710

.lr.ph710:                                        ; preds = %bb.fx
  %i.aer = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.aes = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.aet = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.aev = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  br label %bb.fy

._crit_edge711:                                   ; preds = %bb.gc, %bb.fx
  %i.aew = getelementptr inbounds nuw i8, ptr %0, i64 1212 ; 3 uses
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !1011
  %i.aey = fadd nsz float %spec.store.select, %i.aex ; 2 uses
  store float %i.aey, ptr %i.aew, align 4, !tbaa !1011
  %i.aez = fpext nsz float %i.aey to double
  %i.afa = fcmp nsz ult double %i.aez, 2.320000e+00
  br i1 %i.afa, label %_ZNSt6vectorIiSaIiEED2Ev.exit395, label %bb.gd

bb.fy:                                            ; preds = %.lr.ph710, %bb.gc
  %.sroa.0443.0708 = phi ptr [ %.sroa.0443.0706, %.lr.ph710 ], [ %.sroa.0443.0, %bb.gc ] ; 3 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %.sroa.0443.0708, i64 8
  %i.afc = load i32, ptr %i.afb, align 4, !tbaa !1013
  %i.afd = getelementptr inbounds nuw i8, ptr %.sroa.0443.0708, i64 12
  %i.afe = load i16, ptr %i.afd, align 4, !tbaa !1014 ; 4 uses
  %i.aff = load i32, ptr %i.aer, align 8, !tbaa !1015
  %.not.i.i.i376 = icmp eq i32 %i.aff, 0
  br i1 %.not.i.i.i376, label %.thread.i.i.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.afg = load ptr, ptr %i.aes, align 8, !tbaa !302 ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.afg, null
  br i1 %.not10.i.i.i.i.i.i, label %.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.fz, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.afg, %bb.fz ] ; 3 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.aet, %bb.fz ]
  %i.afh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32
  %i.afi = load i16, ptr %i.afh, align 2, !tbaa !343
  %i.afj = icmp ult i16 %i.afi, %i.afe            ; 2 uses
  %.19.i.i.i.i.i.i = select i1 %i.afj, ptr %.0811.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i = select i1 %i.afj, i64 24, i64 16
  %.1.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i, align 8, !tbaa !481 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !905

_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.afk = icmp eq ptr %.19.i.i.i.i.i.i, %i.aet
  br i1 %i.afk, label %.thread.i.i.i, label %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i

_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i: ; preds = %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i
  %i.afl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 32
  %i.afm = load i16, ptr %i.afl, align 2, !tbaa !343
  %i.afn = icmp ult i16 %i.afe, %i.afm
  br i1 %i.afn, label %.thread.i.i.i, label %bb.ga

bb.ga:                                            ; preds = %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i
  %i.afo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 40
  br label %_ZN17ClientEnvironment15getActiveObjectEt.exit

.thread.i.i.i:                                    ; preds = %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i, %bb.fz, %bb.fy
  %i.afp = load ptr, ptr %i.aeu, align 8, !tbaa !302 ; 2 uses
  %.not10.i.i.i5.i.i.i = icmp eq ptr %i.afp, null
  br i1 %.not10.i.i.i5.i.i.i, label %_ZN17ClientEnvironment15getActiveObjectEt.exit, label %.lr.ph.i.i.i6.i.i.i

.lr.ph.i.i.i6.i.i.i:                              ; preds = %.thread.i.i.i, %.lr.ph.i.i.i6.i.i.i
  %.012.i.i.i7.i.i.i = phi ptr [ %.1.i.i.i12.i.i.i, %.lr.ph.i.i.i6.i.i.i ], [ %i.afp, %.thread.i.i.i ] ; 3 uses
  %.0811.i.i.i8.i.i.i = phi ptr [ %.19.i.i.i9.i.i.i, %.lr.ph.i.i.i6.i.i.i ], [ %i.aev, %.thread.i.i.i ]
  %i.afq = getelementptr inbounds nuw i8, ptr %.012.i.i.i7.i.i.i, i64 32
  %i.afr = load i16, ptr %i.afq, align 2, !tbaa !343
  %i.afs = icmp ult i16 %i.afr, %i.afe            ; 2 uses
  %.19.i.i.i9.i.i.i = select i1 %i.afs, ptr %.0811.i.i.i8.i.i.i, ptr %.012.i.i.i7.i.i.i ; 4 uses
  %.1.in.v.i.i.i10.i.i.i = select i1 %i.afs, i64 24, i64 16
  %.1.in.i.i.i11.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i7.i.i.i, i64 %.1.in.v.i.i.i10.i.i.i
  %.1.i.i.i12.i.i.i = load ptr, ptr %.1.in.i.i.i11.i.i.i, align 8, !tbaa !481 ; 2 uses
  %.not.i.i.i13.i.i.i = icmp eq ptr %.1.i.i.i12.i.i.i, null
  br i1 %.not.i.i.i13.i.i.i, label %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i, label %.lr.ph.i.i.i6.i.i.i, !llvm.loop !905

_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i: ; preds = %.lr.ph.i.i.i6.i.i.i
  %i.aft = icmp eq ptr %.19.i.i.i9.i.i.i, %i.aev
  br i1 %i.aft, label %_ZN17ClientEnvironment15getActiveObjectEt.exit, label %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i

_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i: ; preds = %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i
  %i.afu = getelementptr inbounds nuw i8, ptr %.19.i.i.i9.i.i.i, i64 32
  %i.afv = load i16, ptr %i.afu, align 2, !tbaa !343
  %i.afw = icmp ult i16 %i.afe, %i.afv
  %i.afx = getelementptr inbounds nuw i8, ptr %.19.i.i.i9.i.i.i, i64 40
  %spec.select.i.i.i = select i1 %i.afw, ptr @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, ptr %i.afx
  br label %_ZN17ClientEnvironment15getActiveObjectEt.exit

_ZN17ClientEnvironment15getActiveObjectEt.exit:   ; preds = %bb.ga, %.thread.i.i.i, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i, %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i
  %.2.i.i.i = phi ptr [ %i.afo, %bb.ga ], [ @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i ], [ %spec.select.i.i.i, %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i ], [ @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, %.thread.i.i.i ]
  %i.afy = load ptr, ptr %.2.i.i.i, align 8, !tbaa !483 ; 5 uses
  %.not185 = icmp eq ptr %i.afy, null
  br i1 %.not185, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %_ZN17ClientEnvironment15getActiveObjectEt.exit
  %i.afz = load ptr, ptr %i.mn, align 8, !tbaa !288 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #39
  %i.aga = load ptr, ptr %i.afy, align 8, !tbaa !66
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 120
  %i.agc = load ptr, ptr %i.agb, align 8
  %i.agd = call { <2 x float>, float } %i.agc(ptr noundef nonnull align 8 dereferenceable(32) %i.afy) ; 2 uses
  %.fca.0.extract18 = extractvalue { <2 x float>, float } %i.agd, 0
  %.fca.1.extract19 = extractvalue { <2 x float>, float } %i.agd, 1
  %i.age = fmul nsz <2 x float> %.fca.0.extract18, splat (float 1.000000e-01)
end_hunk_1
