Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tflite_importer?download=true
inline.NumInlined: 5833
inline.NumDeleted: 1619
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060514TFLiteImporter12parseEltwiseERKN13opencv_tflite8OperatorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_11LayerParamsE:bb.a
  %i.km = icmp eq ptr %i.kk, %i.kl
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314: ; preds = %bb.ae
  %i.kn = load i64, ptr %i.kl, align 8, !tbaa !21
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.ko) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314, %bb.ad
  %.pn178 = phi { ptr, i32 } [ %i.ki, %bb.ad ], [ %i.kj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314 ], [ %i.kj, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.eu

bb.af:                                            ; preds = %bb.z
  %i.kp = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.38)
  %.not14 = xor i1 %i.kp, true
  %or.cond16 = or i1 %i.av, %.not14
  br i1 %or.cond16, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.107, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.kq = invoke noundef nonnull align 1 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIA4_cEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 1 dereferenceable(4) @.str.115)
          to label %bb.ai unwind label %bb.ak     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %i.kr = load ptr, ptr %16, align 8, !tbaa !17   ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.kt = icmp eq ptr %i.kr, %i.ks
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317: ; preds = %bb.ai
  %i.ku = load i64, ptr %i.ks, align 8, !tbaa !21
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.kv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ag
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322

bb.ak:                                            ; preds = %bb.ah
  %i.kx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ky = load ptr, ptr %16, align 8, !tbaa !17   ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.la = icmp eq ptr %i.ky, %i.kz
  br i1 %i.la, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320: ; preds = %bb.ak
  %i.lb = load i64, ptr %i.kz, align 8, !tbaa !21
  %i.lc = add i64 %i.lb, 1
  call void @_ZdlPvm(ptr noundef %i.ky, i64 noundef %i.lc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320, %bb.aj
  %.pn180 = phi { ptr, i32 } [ %i.kw, %bb.aj ], [ %i.kx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320 ], [ %i.kx, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.eu

bb.al:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %.str.117..str.118 = select i1 %i.av, ptr @.str.117, ptr @.str.118
  %i.ld = load ptr, ptr %2, align 8, !tbaa !17
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull @.str.116, ptr noundef nonnull %.str.117..str.118, ptr noundef %i.ld)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060514TFLiteImporter12parseEltwiseERKN13opencv_tflite8OperatorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_11LayerParamsE, ptr noundef nonnull @.str.1, i32 noundef 692) #27
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.le = landingpad { ptr, i32 }
          cleanup
  %i.lf = load ptr, ptr %18, align 8, !tbaa !17   ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323: ; preds = %bb.an
  %i.li = load i64, ptr %i.lg, align 8, !tbaa !21
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.lj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.eu

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313, %bb.w, %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEmRKS1_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0 = phi i8 [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260 ], [ %i.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277 ], [ 0, %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEmRKS1_.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313 ], [ 0, %bb.y ], [ 0, %bb.w ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307 ], [ %i.ht, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294 ] ; 3 uses
  br i1 %i.av, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i326, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i464

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i326: ; preds = %bb.ao
  %i.lk = load ptr, ptr %i.n, align 8, !tbaa !86
  %i.ll = load i32, ptr %1, align 4, !tbaa !8
  %i.lm = sext i32 %i.ll to i64
  %i.ln = sub nsw i64 0, %i.lm
  %i.lo = getelementptr inbounds i8, ptr %1, i64 %i.ln ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load i16, ptr %i.lp, align 2, !tbaa !9  ; 2 uses
  %.not.i.i.i327 = icmp ne i16 %i.lq, 0
  call void @llvm.assume(i1 %.not.i.i.i327)
  %i.lr = zext i16 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 %i.lr ; 2 uses
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !8
  %i.lu = zext i32 %i.lt to i64
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 4
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %i.lz = shl i32 %i.lx, 2
  %i.ma = zext i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.ma ; 2 uses
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !8
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.md ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !8
  %i.mg = sext i32 %i.mf to i64
  %i.mh = sub nsw i64 0, %i.mg
  %i.mi = getelementptr inbounds i8, ptr %i.me, i64 %i.mh
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 12
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !9  ; 2 uses
  %.not.i.i.i329 = icmp ne i16 %i.mk, 0
  call void @llvm.assume(i1 %.not.i.i.i329)
  %i.ml = zext i16 %i.mk to i64
  %i.mm = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.ml ; 2 uses
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !8
  %i.mo = zext i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mo ; 3 uses
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !8
  %i.mr = sext i32 %i.mq to i64
  %i.ms = sub nsw i64 0, %i.mr
  %i.mt = getelementptr inbounds i8, ptr %i.mp, i64 %i.ms
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load i16, ptr %i.mu, align 2, !tbaa !9  ; 2 uses
  %.not.i.i.i331 = icmp ne i16 %i.mv, 0
  call void @llvm.assume(i1 %.not.i.i.i331)
  %i.mw = zext i16 %i.mv to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.mw ; 2 uses
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !8
  %i.mz = zext i32 %i.my to i64
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.mz
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !348
  store float %i.nc, ptr %i.e, align 4, !tbaa !348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.nd = load i32, ptr %i.me, align 4, !tbaa !8
  %i.ne = sext i32 %i.nd to i64
  %i.nf = sub nsw i64 0, %i.ne
  %i.ng = getelementptr inbounds i8, ptr %i.me, i64 %i.nf
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 12
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !9  ; 2 uses
  %.not.i.i.i333 = icmp ne i16 %i.ni, 0
  call void @llvm.assume(i1 %.not.i.i.i333)
  %i.nj = zext i16 %i.ni to i64
  %i.nk = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.nj ; 2 uses
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !8
  %i.nm = zext i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nm ; 3 uses
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !8
  %i.np = sext i32 %i.no to i64
  %i.nq = sub nsw i64 0, %i.np
  %i.nr = getelementptr inbounds i8, ptr %i.nn, i64 %i.nq
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 10
  %i.nt = load i16, ptr %i.ns, align 2, !tbaa !9  ; 2 uses
  %.not.i.i.i336 = icmp ne i16 %i.nt, 0
  call void @llvm.assume(i1 %.not.i.i.i336)
  %i.nu = zext i16 %i.nt to i64
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.nu ; 2 uses
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !8
  %i.nx = zext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.nx
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 4
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !69
  %i.ob = trunc i64 %i.oa to i32
  store i32 %i.ob, ptr %i.f, align 4, !tbaa !8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.lo, i64 6
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !9  ; 2 uses
  %.not.i.i.i338 = icmp ne i16 %i.od, 0
  call void @llvm.assume(i1 %.not.i.i.i338)
  %i.oe = zext i16 %i.od to i64
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 %i.oe ; 2 uses
  %i.og = load i32, ptr %i.of, align 4, !tbaa !8
  %i.oh = zext i32 %i.og to i64
  %i.oi = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.oh
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !11 ; 7 uses
  %i.ok = zext i32 %i.oj to i64                   ; 21 uses
  %.not.i.i.i.i339 = icmp eq i32 %i.oj, 0
  br i1 %.not.i.i.i.i339, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit351, label %bb.ap

bb.ap:                                            ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i326
  %i.ol = shl nuw nsw i64 %i.ok, 2                ; 3 uses
  %i.om = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ol) #30
          to label %.noexc340 unwind label %bb.as ; 7 uses

.noexc340:                                        ; preds = %bb.ap
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %i.ok ; 3 uses
  store float 0.000000e+00, ptr %i.om, align 4, !tbaa !348
  %i.oo = add nsw i64 %i.ok, -1                   ; 4 uses
  %i.op = icmp eq i64 %i.oo, 0                    ; 3 uses
  br i1 %i.op, label %bb.aq, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc340
  %i.oq = getelementptr i8, ptr %i.om, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.oo, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.oq, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !348
  br label %bb.aq

bb.aq:                                            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc340
  %i.or = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ol) #30
          to label %.noexc344 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit461.thread ; 6 uses

.noexc344:                                        ; preds = %bb.aq
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.ok ; 2 uses
  store i32 0, ptr %i.or, align 4, !tbaa !8
  br i1 %i.op, label %bb.ar, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc344
  %i.ot = getelementptr i8, ptr %i.or, i64 4
  %.idx.i.i.i.i.i.i.i342 = shl nuw nsw i64 %i.oo, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ot, i8 0, i64 %.idx.i.i.i.i.i.i.i342, i1 false), !tbaa !8
  br label %bb.ar

bb.ar:                                            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc344
  %i.ou = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ol) #30
          to label %.noexc350 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit459.thread ; 5 uses

.noexc350:                                        ; preds = %bb.ar
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.ok
  store float 0.000000e+00, ptr %i.ou, align 4, !tbaa !348
  br i1 %i.op, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i356.lr.ph, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i346

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i346: ; preds = %.noexc350
  %i.ow = getelementptr i8, ptr %i.ou, i64 4
  %.idx.i.i.i.i.i.i.i347 = shl nuw nsw i64 %i.oo, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ow, i8 0, i64 %.idx.i.i.i.i.i.i.i347, i1 false), !tbaa !348
  br label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i356.lr.ph

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit351:            ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i326
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  %i.ox = load i32, ptr %i.f, align 4, !tbaa !8
  %i.oy = sitofp i32 %i.ox to float
  store float %i.oy, ptr %i.g, align 4, !tbaa !348
  br label %._crit_edge.i.i352

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i356.lr.ph: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i346, %.noexc350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  %i.oz = load i32, ptr %i.f, align 4, !tbaa !8
  %i.pa = sitofp i32 %i.oz to float               ; 2 uses
  store float %i.pa, ptr %i.g, align 4, !tbaa !348
  %i.pb = load ptr, ptr %i.n, align 8, !tbaa !86
  %i.pc = load i32, ptr %1, align 4, !tbaa !8
  %i.pd = sext i32 %i.pc to i64
  %i.pe = sub nsw i64 0, %i.pd
  %i.pf = getelementptr inbounds i8, ptr %1, i64 %i.pe
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 6
  %i.ph = load i16, ptr %i.pg, align 2, !tbaa !9  ; 2 uses
  %.not.i.i.i357 = icmp ne i16 %i.ph, 0
  call void @llvm.assume(i1 %.not.i.i.i357)
  %i.pi = zext i16 %i.ph to i64
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 %i.pi ; 2 uses
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !8
  %i.pl = zext i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.pl
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 4
  %i.po = getelementptr inbounds nuw i8, ptr %i.pb, i64 4
  %i.pp = load float, ptr %i.e, align 4, !tbaa !348
  br label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i356

._crit_edge.i.i352.loopexit:                      ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i356
  %i.pq = ptrtoint ptr %i.ov to i64
  br label %._crit_edge.i.i352

._crit_edge.i.i352:                               ; preds = %._crit_edge.i.i352.loopexit, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit351
  %.sroa.0631.0911 = phi ptr [ null, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit351 ], [ %i.ou, %._crit_edge.i.i352.loopexit ] ; 9 uses
  %.sroa.12.0907 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit351 ], [ %i.pq, %._crit_edge.i.i352.loopexit ] ; 2 uses
  %.sroa.0645.0678693903 = phi ptr [ null, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit351 ], [ %i.om, %._crit_edge.i.i352.loopexit ] ; 8 uses
  %.sroa.11650.0667695899 = phi ptr [ null, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit351 ], [ %i.on, %._crit_edge.i.i352.loopexit ] ; 3 uses
  %.sroa.11642.0697895 = phi ptr [ null, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit351 ], [ %i.os, %._crit_edge.i.i352.loopexit ] ; 2 uses
  %.sroa.0638.0707891 = phi ptr [ null, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit351 ], [ %i.or, %._crit_edge.i.i352.loopexit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.pr = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.pr, ptr %19, align 8, !tbaa !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.pr, ptr noundef nonnull align 1 dereferenceable(12) @.str.119, i64 12, i1 false)
  %i.ps = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 12, ptr %i.ps, align 8, !tbaa !70
  %i.pt = getelementptr inbounds nuw i8, ptr %19, i64 28
  store i8 0, ptr %i.pt, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.pu = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %.noexc373 unwind label %bb.bi ; 6 uses

bb.as:                                            ; preds = %bb.ap
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit463

_ZNSt6vectorIiSaIiEED2Ev.exit461.thread:          ; preds = %bb.aq
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

_ZNSt6vectorIfSaIfEED2Ev.exit459.thread:          ; preds = %bb.ar
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i356: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i356.lr.ph, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i356
  %indvars.iv = phi i64 [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i356.lr.ph ], [ %indvars.iv.next, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i356 ] ; 5 uses
  %i.py = phi float [ %i.pa, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i356.lr.ph ], [ %i.rv, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i356 ]
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %indvars.iv
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !8
  %i.qb = shl i32 %i.qa, 2
  %i.qc = zext i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.qc ; 2 uses
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !8
  %i.qf = zext i32 %i.qe to i64
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 %i.qf ; 3 uses
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !8
  %i.qi = sext i32 %i.qh to i64
  %i.qj = sub nsw i64 0, %i.qi
  %i.qk = getelementptr inbounds i8, ptr %i.qg, i64 %i.qj
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 12
  %i.qm = load i16, ptr %i.ql, align 2, !tbaa !9  ; 2 uses
  %.not.i.i.i360 = icmp ne i16 %i.qm, 0
  call void @llvm.assume(i1 %.not.i.i.i360)
  %i.qn = zext i16 %i.qm to i64
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qg, i64 %i.qn ; 2 uses
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !8
  %i.qq = zext i32 %i.qp to i64
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qo, i64 %i.qq ; 4 uses
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !8
  %i.qt = sext i32 %i.qs to i64
  %i.qu = sub nsw i64 0, %i.qt
  %i.qv = getelementptr inbounds i8, ptr %i.qr, i64 %i.qu ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !9  ; 2 uses
  %.not.i.i.i363 = icmp ne i16 %i.qx, 0
  call void @llvm.assume(i1 %.not.i.i.i363)
  %i.qy = zext i16 %i.qx to i64
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qr, i64 %i.qy ; 2 uses
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !8
  %i.rb = zext i32 %i.ra to i64
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.rb
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 4
  %i.re = load float, ptr %i.rd, align 4, !tbaa !348 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qv, i64 10
  %i.rg = load i16, ptr %i.rf, align 2, !tbaa !9  ; 2 uses
  %.not.i.i.i369 = icmp ne i16 %i.rg, 0
  call void @llvm.assume(i1 %.not.i.i.i369)
  %i.rh = zext i16 %i.rg to i64
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qr, i64 %i.rh ; 2 uses
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !8
  %i.rk = zext i32 %i.rj to i64
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rk
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 4
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !69
  %i.ro = trunc i64 %i.rn to i32                  ; 2 uses
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %indvars.iv
  store float %i.re, ptr %i.rp, align 4, !tbaa !348
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %indvars.iv
  store i32 %i.ro, ptr %i.rq, align 4, !tbaa !8
  %i.rr = fdiv float %i.re, %i.pp                 ; 2 uses
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv
  store float %i.rr, ptr %i.rs, align 4, !tbaa !348
  %i.rt = sitofp i32 %i.ro to float
  %i.ru = fneg float %i.rr
  %i.rv = call float @llvm.fmuladd.f32(float %i.ru, float %i.rt, float %i.py) ; 2 uses
  store float %i.rv, ptr %i.g, align 4, !tbaa !348
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ok
  br i1 %exitcond.not, label %._crit_edge.i.i352.loopexit, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i356, !llvm.loop !398

.noexc373:                                        ; preds = %._crit_edge.i.i352
  %i.rw = getelementptr inbounds nuw i8, ptr %i.pu, i64 16 ; 2 uses
  store ptr %i.rw, ptr %i.pu, align 8, !tbaa !399, !noalias !395
  %i.rx = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %.not.i.i.i371 = icmp ugt i32 %i.oj, 1          ; 3 uses
  store i64 %i.ok, ptr %i.rx, align 8, !tbaa !402, !noalias !395
  br i1 %.not.i.i.i371, label %bb.at, label %_ZN2cv10AutoBufferIdLm1EEC2Em.exit.i

bb.at:                                            ; preds = %.noexc373
  %i.ry = shl nuw nsw i64 %i.ok, 3
  %i.rz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ry) #30
          to label %.noexc.i372 unwind label %bb.au, !noalias !395 ; 2 uses

.noexc.i372:                                      ; preds = %bb.at
  store ptr %i.rz, ptr %i.pu, align 8, !tbaa !399, !noalias !395
  br label %_ZN2cv10AutoBufferIdLm1EEC2Em.exit.i

_ZN2cv10AutoBufferIdLm1EEC2Em.exit.i:             ; preds = %.noexc.i372, %.noexc373
  %i.sa = phi ptr [ %i.rz, %.noexc.i372 ], [ %i.rw, %.noexc373 ] ; 2 uses
  store i32 2, ptr %20, align 8, !tbaa !403, !alias.scope !395
  %i.sb = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.pu, ptr %i.sb, align 8, !tbaa !21, !alias.scope !395
  %i.sc = icmp sgt i32 %i.oj, 0                   ; 3 uses
  br i1 %i.sc, label %.lr.ph.i.preheader, label %_ZN2cv3dnn14dnn5_v202606059DictValue9arrayRealIPfEES2_T_i.exit

.lr.ph.i.preheader:                               ; preds = %_ZN2cv10AutoBufferIdLm1EEC2Em.exit.i
  %min.iters.check = icmp ult i32 %i.oj, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader957, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ok, 2147483644              ; 4 uses
  %i.sd = shl nuw nsw i64 %n.vec, 2
  %i.se = getelementptr i8, ptr %.sroa.0645.0678693903, i64 %i.sd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.sf = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.0645.0678693903, i64 %i.sf ; 2 uses
  %i.sg = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x float>, ptr %next.gep, align 4, !tbaa !348, !noalias !395
  %wide.load917 = load <2 x float>, ptr %i.sg, align 4, !tbaa !348, !noalias !395
  %i.sh = fpext <2 x float> %wide.load to <2 x double>
  %i.si = fpext <2 x float> %wide.load917 to <2 x double>
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %index ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  store <2 x double> %i.sh, ptr %i.sj, align 8, !tbaa !360, !noalias !395
  store <2 x double> %i.si, ptr %i.sk, align 8, !tbaa !360, !noalias !395
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.sl = icmp eq i64 %index.next, %n.vec
  br i1 %i.sl, label %middle.block, label %vector.body, !llvm.loop !406

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ok
  br i1 %cmp.n, label %_ZN2cv3dnn14dnn5_v202606059DictValue9arrayRealIPfEES2_T_i.exit, label %.lr.ph.i.preheader957

.lr.ph.i.preheader957:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.0910.i.ph = phi ptr [ %.sroa.0645.0678693903, %.lr.ph.i.preheader ], [ %i.se, %middle.block ]
  br label %.lr.ph.i

bb.au:                                            ; preds = %bb.at
  %i.sm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.pu, i64 noundef 24) #28, !noalias !395
  br label %.body

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader957, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader957 ] ; 2 uses
  %.0910.i = phi ptr [ %i.sq, %.lr.ph.i ], [ %.0910.i.ph, %.lr.ph.i.preheader957 ] ; 2 uses
  %i.sn = load float, ptr %.0910.i, align 4, !tbaa !348, !noalias !395
  %i.so = fpext float %i.sn to double
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %indvars.iv.i
  store double %i.so, ptr %i.sp, align 8, !tbaa !360, !noalias !395
  %i.sq = getelementptr inbounds nuw i8, ptr %.0910.i, i64 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ok
  br i1 %exitcond.not.i, label %_ZN2cv3dnn14dnn5_v202606059DictValue9arrayRealIPfEES2_T_i.exit, label %.lr.ph.i, !llvm.loop !407

_ZN2cv3dnn14dnn5_v202606059DictValue9arrayRealIPfEES2_T_i.exit: ; preds = %.lr.ph.i, %middle.block, %_ZN2cv10AutoBufferIdLm1EEC2Em.exit.i
  %i.sr = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setINS1_9DictValueEEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %bb.av unwind label %bb.bj     ; 0 uses

bb.av:                                            ; preds = %_ZN2cv3dnn14dnn5_v202606059DictValue9arrayRealIPfEES2_T_i.exit
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.ss = load ptr, ptr %19, align 8, !tbaa !17   ; 2 uses
  %i.st = icmp eq ptr %i.ss, %i.pr
  br i1 %i.st, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374: ; preds = %bb.av
  %i.su = load i64, ptr %i.pr, align 8, !tbaa !21
  %i.sv = add i64 %i.su, 1
  call void @_ZdlPvm(ptr noundef %i.ss, i64 noundef %i.sv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.sw = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.sw, ptr %21, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i64 16, ptr %i.d, align 8, !tbaa !69
  %i.sx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc379 unwind label %bb.bk ; 2 uses

.noexc379:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376
  store ptr %i.sx, ptr %21, align 8, !tbaa !17
  %i.sy = load i64, ptr %i.d, align 8, !tbaa !69  ; 3 uses
  store i64 %i.sy, ptr %i.sw, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.sx, ptr noundef nonnull align 1 dereferenceable(16) @.str.120, i64 16, i1 false)
  %i.sz = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.sy, ptr %i.sz, align 8, !tbaa !70
  %i.ta = load ptr, ptr %21, align 8, !tbaa !17
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.sy
  store i8 0, ptr %i.tb, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.tc = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %.noexc389 unwind label %bb.bl ; 6 uses

.noexc389:                                        ; preds = %.noexc379
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 16 ; 2 uses
  store ptr %i.td, ptr %i.tc, align 8, !tbaa !411, !noalias !408
  %i.te = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  store i64 %i.ok, ptr %i.te, align 8, !tbaa !413, !noalias !408
  br i1 %.not.i.i.i371, label %bb.aw, label %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i

bb.aw:                                            ; preds = %.noexc389
  %i.tf = shl nuw nsw i64 %i.ok, 3
  %i.tg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.tf) #30
          to label %.noexc.i388 unwind label %bb.ax, !noalias !408 ; 2 uses

.noexc.i388:                                      ; preds = %bb.aw
  store ptr %i.tg, ptr %i.tc, align 8, !tbaa !411, !noalias !408
  br label %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i

_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i:             ; preds = %.noexc.i388, %.noexc389
  %i.th = phi ptr [ %i.tg, %.noexc.i388 ], [ %i.td, %.noexc389 ] ; 2 uses
  store i32 0, ptr %22, align 8, !tbaa !403, !alias.scope !408
  %i.ti = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.tc, ptr %i.ti, align 8, !tbaa !21, !alias.scope !408
  br i1 %i.sc, label %.lr.ph.i382.preheader, label %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit

.lr.ph.i382.preheader:                            ; preds = %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i
  %min.iters.check920 = icmp ult i32 %i.oj, 4
  br i1 %min.iters.check920, label %.lr.ph.i382.preheader956, label %vector.ph921

vector.ph921:                                     ; preds = %.lr.ph.i382.preheader
  %n.vec922 = and i64 %i.ok, 2147483644           ; 4 uses
  %i.tj = shl nuw nsw i64 %n.vec922, 2
  %i.tk = getelementptr i8, ptr %.sroa.0638.0707891, i64 %i.tj
  br label %vector.body923

vector.body923:                                   ; preds = %vector.body923, %vector.ph921
  %index924 = phi i64 [ 0, %vector.ph921 ], [ %index.next928, %vector.body923 ] ; 3 uses
  %i.tl = shl i64 %index924, 2
  %next.gep925 = getelementptr i8, ptr %.sroa.0638.0707891, i64 %i.tl ; 2 uses
  %i.tm = getelementptr i8, ptr %next.gep925, i64 8
  %wide.load926 = load <2 x i32>, ptr %next.gep925, align 4, !tbaa !8, !noalias !408
  %wide.load927 = load <2 x i32>, ptr %i.tm, align 4, !tbaa !8, !noalias !408
  %i.tn = sext <2 x i32> %wide.load926 to <2 x i64>
  %i.to = sext <2 x i32> %wide.load927 to <2 x i64>
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %index924 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  store <2 x i64> %i.tn, ptr %i.tp, align 8, !tbaa !69, !noalias !408
  store <2 x i64> %i.to, ptr %i.tq, align 8, !tbaa !69, !noalias !408
  %index.next928 = add nuw i64 %index924, 4       ; 2 uses
  %i.tr = icmp eq i64 %index.next928, %n.vec922
  br i1 %i.tr, label %middle.block929, label %vector.body923, !llvm.loop !414

middle.block929:                                  ; preds = %vector.body923
  %cmp.n930 = icmp eq i64 %n.vec922, %i.ok
  br i1 %cmp.n930, label %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit, label %.lr.ph.i382.preheader956

.lr.ph.i382.preheader956:                         ; preds = %.lr.ph.i382.preheader, %middle.block929
  %indvars.iv.i384.ph = phi i64 [ 0, %.lr.ph.i382.preheader ], [ %n.vec922, %middle.block929 ]
  %.0910.i385.ph = phi ptr [ %.sroa.0638.0707891, %.lr.ph.i382.preheader ], [ %i.tk, %middle.block929 ]
  br label %.lr.ph.i382

bb.ax:                                            ; preds = %bb.aw
  %i.ts = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.tc, i64 noundef 24) #28, !noalias !408
  br label %.body390

.lr.ph.i382:                                      ; preds = %.lr.ph.i382.preheader956, %.lr.ph.i382
  %indvars.iv.i384 = phi i64 [ %indvars.iv.next.i386, %.lr.ph.i382 ], [ %indvars.iv.i384.ph, %.lr.ph.i382.preheader956 ] ; 2 uses
  %.0910.i385 = phi ptr [ %i.tw, %.lr.ph.i382 ], [ %.0910.i385.ph, %.lr.ph.i382.preheader956 ] ; 2 uses
  %i.tt = load i32, ptr %.0910.i385, align 4, !tbaa !8, !noalias !408
  %i.tu = sext i32 %i.tt to i64
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %indvars.iv.i384
  store i64 %i.tu, ptr %i.tv, align 8, !tbaa !69, !noalias !408
  %i.tw = getelementptr inbounds nuw i8, ptr %.0910.i385, i64 4
  %indvars.iv.next.i386 = add nuw nsw i64 %indvars.iv.i384, 1 ; 2 uses
  %exitcond.not.i387 = icmp eq i64 %indvars.iv.next.i386, %i.ok
  br i1 %exitcond.not.i387, label %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit, label %.lr.ph.i382, !llvm.loop !415

_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit: ; preds = %.lr.ph.i382, %middle.block929, %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i
  %i.tx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setINS1_9DictValueEEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(16) %22)
          to label %bb.ay unwind label %bb.bm     ; 0 uses

bb.ay:                                            ; preds = %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %i.ty = load ptr, ptr %21, align 8, !tbaa !17   ; 2 uses
  %i.tz = icmp eq ptr %i.ty, %i.sw
  br i1 %i.tz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392: ; preds = %bb.ay
  %i.ua = load i64, ptr %i.sw, align 8, !tbaa !21
  %i.ub = add i64 %i.ua, 1
  call void @_ZdlPvm(ptr noundef %i.ty, i64 noundef %i.ub) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.uc = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.uc, ptr %23, align 8, !tbaa !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.uc, ptr noundef nonnull align 1 dereferenceable(5) @.str.121, i64 5, i1 false)
  %i.ud = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 5, ptr %i.ud, align 8, !tbaa !70
  %i.ue = getelementptr inbounds nuw i8, ptr %23, i64 21
  store i8 0, ptr %i.ue, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %i.uf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %.noexc408 unwind label %bb.bn ; 6 uses

.noexc408:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 16 ; 2 uses
  store ptr %i.ug, ptr %i.uf, align 8, !tbaa !399, !noalias !416
  %i.uh = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  store i64 %i.ok, ptr %i.uh, align 8, !tbaa !402, !noalias !416
  br i1 %.not.i.i.i371, label %bb.az, label %_ZN2cv10AutoBufferIdLm1EEC2Em.exit.i400

bb.az:                                            ; preds = %.noexc408
  %i.ui = shl nuw nsw i64 %i.ok, 3
  %i.uj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ui) #30
          to label %.noexc.i407 unwind label %bb.ba, !noalias !416 ; 2 uses

.noexc.i407:                                      ; preds = %bb.az
  store ptr %i.uj, ptr %i.uf, align 8, !tbaa !399, !noalias !416
  br label %_ZN2cv10AutoBufferIdLm1EEC2Em.exit.i400

_ZN2cv10AutoBufferIdLm1EEC2Em.exit.i400:          ; preds = %.noexc.i407, %.noexc408
  %i.uk = phi ptr [ %i.uj, %.noexc.i407 ], [ %i.ug, %.noexc408 ] ; 2 uses
  store i32 2, ptr %24, align 8, !tbaa !403, !alias.scope !416
  %i.ul = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %i.uf, ptr %i.ul, align 8, !tbaa !21, !alias.scope !416
  br i1 %i.sc, label %.lr.ph.i401.preheader, label %_ZN2cv3dnn14dnn5_v202606059DictValue9arrayRealIPfEES2_T_i.exit411

.lr.ph.i401.preheader:                            ; preds = %_ZN2cv10AutoBufferIdLm1EEC2Em.exit.i400
  %min.iters.check934 = icmp ult i32 %i.oj, 4
  br i1 %min.iters.check934, label %.lr.ph.i401.preheader955, label %vector.ph935

vector.ph935:                                     ; preds = %.lr.ph.i401.preheader
  %n.vec936 = and i64 %i.ok, 2147483644           ; 4 uses
  %i.um = shl nuw nsw i64 %n.vec936, 2
  %i.un = getelementptr i8, ptr %.sroa.0631.0911, i64 %i.um
  br label %vector.body937

vector.body937:                                   ; preds = %vector.body937, %vector.ph935
  %index938 = phi i64 [ 0, %vector.ph935 ], [ %index.next942, %vector.body937 ] ; 3 uses
  %i.uo = shl i64 %index938, 2
  %next.gep939 = getelementptr i8, ptr %.sroa.0631.0911, i64 %i.uo ; 2 uses
  %i.up = getelementptr i8, ptr %next.gep939, i64 8
  %wide.load940 = load <2 x float>, ptr %next.gep939, align 4, !tbaa !348, !noalias !416
  %wide.load941 = load <2 x float>, ptr %i.up, align 4, !tbaa !348, !noalias !416
  %i.uq = fpext <2 x float> %wide.load940 to <2 x double>
  %i.ur = fpext <2 x float> %wide.load941 to <2 x double>
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.uk, i64 %index938 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 16
  store <2 x double> %i.uq, ptr %i.us, align 8, !tbaa !360, !noalias !416
  store <2 x double> %i.ur, ptr %i.ut, align 8, !tbaa !360, !noalias !416
  %index.next942 = add nuw i64 %index938, 4       ; 2 uses
  %i.uu = icmp eq i64 %index.next942, %n.vec936
  br i1 %i.uu, label %middle.block943, label %vector.body937, !llvm.loop !419

middle.block943:                                  ; preds = %vector.body937
  %cmp.n944 = icmp eq i64 %n.vec936, %i.ok
  br i1 %cmp.n944, label %_ZN2cv3dnn14dnn5_v202606059DictValue9arrayRealIPfEES2_T_i.exit411, label %.lr.ph.i401.preheader955

.lr.ph.i401.preheader955:                         ; preds = %.lr.ph.i401.preheader, %middle.block943
  %indvars.iv.i403.ph = phi i64 [ 0, %.lr.ph.i401.preheader ], [ %n.vec936, %middle.block943 ]
  %.0910.i404.ph = phi ptr [ %.sroa.0631.0911, %.lr.ph.i401.preheader ], [ %i.un, %middle.block943 ]
  br label %.lr.ph.i401

bb.ba:                                            ; preds = %bb.az
  %i.uv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.uf, i64 noundef 24) #28, !noalias !416
  br label %.body409

.lr.ph.i401:                                      ; preds = %.lr.ph.i401.preheader955, %.lr.ph.i401
  %indvars.iv.i403 = phi i64 [ %indvars.iv.next.i405, %.lr.ph.i401 ], [ %indvars.iv.i403.ph, %.lr.ph.i401.preheader955 ] ; 2 uses
  %.0910.i404 = phi ptr [ %i.uz, %.lr.ph.i401 ], [ %.0910.i404.ph, %.lr.ph.i401.preheader955 ] ; 2 uses
  %i.uw = load float, ptr %.0910.i404, align 4, !tbaa !348, !noalias !416
  %i.ux = fpext float %i.uw to double
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.uk, i64 %indvars.iv.i403
  store double %i.ux, ptr %i.uy, align 8, !tbaa !360, !noalias !416
  %i.uz = getelementptr inbounds nuw i8, ptr %.0910.i404, i64 4
  %indvars.iv.next.i405 = add nuw nsw i64 %indvars.iv.i403, 1 ; 2 uses
  %exitcond.not.i406 = icmp eq i64 %indvars.iv.next.i405, %i.ok
  br i1 %exitcond.not.i406, label %_ZN2cv3dnn14dnn5_v202606059DictValue9arrayRealIPfEES2_T_i.exit411, label %.lr.ph.i401, !llvm.loop !420

_ZN2cv3dnn14dnn5_v202606059DictValue9arrayRealIPfEES2_T_i.exit411: ; preds = %.lr.ph.i401, %middle.block943, %_ZN2cv10AutoBufferIdLm1EEC2Em.exit.i400
  %i.va = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setINS1_9DictValueEEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(16) %24)
          to label %bb.bb unwind label %bb.bo     ; 0 uses

bb.bb:                                            ; preds = %_ZN2cv3dnn14dnn5_v202606059DictValue9arrayRealIPfEES2_T_i.exit411
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  %i.vb = load ptr, ptr %23, align 8, !tbaa !17   ; 2 uses
  %i.vc = icmp eq ptr %i.vb, %i.uc
  br i1 %i.vc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412: ; preds = %bb.bb
  %i.vd = load i64, ptr %i.uc, align 8, !tbaa !21
  %i.ve = add i64 %i.vd, 1
  call void @_ZdlPvm(ptr noundef %i.vb, i64 noundef %i.ve) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  %i.vf = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.vf, ptr %25, align 8, !tbaa !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.vf, ptr noundef nonnull align 1 dereferenceable(6) @.str.122, i64 6, i1 false)
  %i.vg = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 6, ptr %i.vg, align 8, !tbaa !70
  %i.vh = getelementptr inbounds nuw i8, ptr %25, i64 22
  store i8 0, ptr %i.vh, align 2, !tbaa !21
  %i.vi = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIfEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %bb.bc unwind label %bb.bp     ; 0 uses

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414
  %i.vj = load ptr, ptr %25, align 8, !tbaa !17   ; 2 uses
  %i.vk = icmp eq ptr %i.vj, %i.vf
  br i1 %i.vk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419: ; preds = %bb.bc
  %i.vl = load i64, ptr %i.vf, align 8, !tbaa !21
  %i.vm = add i64 %i.vl, 1
  call void @_ZdlPvm(ptr noundef %i.vj, i64 noundef %i.vm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  %i.vn = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.vn, ptr %26, align 8, !tbaa !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.vn, ptr noundef nonnull align 1 dereferenceable(6) @.str.80, i64 6, i1 false)
  %i.vo = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 6, ptr %i.vo, align 8, !tbaa !70
  %i.vp = getelementptr inbounds nuw i8, ptr %26, i64 22
  store i8 0, ptr %i.vp, align 2, !tbaa !21
  %i.vq = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIfEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %bb.bd unwind label %bb.bq     ; 0 uses

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421
  %i.vr = load ptr, ptr %26, align 8, !tbaa !17   ; 2 uses
  %i.vs = icmp eq ptr %i.vr, %i.vn
  br i1 %i.vs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426: ; preds = %bb.bd
  %i.vt = load i64, ptr %i.vn, align 8, !tbaa !21
  %i.vu = add i64 %i.vt, 1
  call void @_ZdlPvm(ptr noundef %i.vr, i64 noundef %i.vu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  %i.vv = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.vv, ptr %27, align 8, !tbaa !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.vv, ptr noundef nonnull align 1 dereferenceable(10) @.str.77, i64 10, i1 false)
  %i.vw = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 10, ptr %i.vw, align 8, !tbaa !70
  %i.vx = getelementptr inbounds nuw i8, ptr %27, i64 26
  store i8 0, ptr %i.vx, align 2, !tbaa !21
  %i.vy = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.be unwind label %bb.br     ; 0 uses

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428
  %i.vz = load ptr, ptr %27, align 8, !tbaa !17   ; 2 uses
  %i.wa = icmp eq ptr %i.vz, %i.vv
  br i1 %i.wa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433: ; preds = %bb.be
  %i.wb = load i64, ptr %i.vv, align 8, !tbaa !21
  %i.wc = add i64 %i.wb, 1
  call void @_ZdlPvm(ptr noundef %i.vz, i64 noundef %i.wc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %.not.i.i.i436 = icmp eq ptr %.sroa.0631.0911, null
  br i1 %.not.i.i.i436, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435
  %i.wd = ptrtoint ptr %.sroa.0631.0911 to i64
  %i.we = sub i64 %.sroa.12.0907, %i.wd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0631.0911, i64 noundef %i.we) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435, %bb.bf
  %.not.i.i.i437 = icmp eq ptr %.sroa.0638.0707891, null
  br i1 %.not.i.i.i437, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.wf = ptrtoint ptr %.sroa.11642.0697895 to i64
  %i.wg = ptrtoint ptr %.sroa.0638.0707891 to i64
  %i.wh = sub i64 %i.wf, %i.wg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0638.0707891, i64 noundef %i.wh) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.bg
  %.not.i.i.i438 = icmp eq ptr %.sroa.0645.0678693903, null
  br i1 %.not.i.i.i438, label %_ZNSt6vectorIfSaIfEED2Ev.exit439, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.wi = ptrtoint ptr %.sroa.11650.0667695899 to i64
  %i.wj = ptrtoint ptr %.sroa.0645.0678693903 to i64
  %i.wk = sub i64 %i.wi, %i.wj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0645.0678693903, i64 noundef %i.wk) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit439

_ZNSt6vectorIfSaIfEED2Ev.exit439:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i464

bb.bi:                                            ; preds = %._crit_edge.i.i352
  %i.wl = landingpad { ptr, i32 }
          cleanup
  br label %.body
end_hunk_0
