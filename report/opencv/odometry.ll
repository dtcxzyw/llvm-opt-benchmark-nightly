Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/odometry?download=true
inline.NumInlined: 712
inline.NumDeleted: 321
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN2cv9warpFrameERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_S5_:bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %45)
          to label %bb.ej unwind label %bb.el

bb.ej:                                            ; preds = %bb.ei
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull @__func__._ZN2cv9warpFrameERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_S5_, ptr noundef nonnull @.str.1, i32 noundef 372) #19
          to label %bb.ek unwind label %bb.em

bb.ek:                                            ; preds = %bb.ej
  unreachable

bb.el:                                            ; preds = %bb.ei
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320

bb.em:                                            ; preds = %bb.ej
  %i.iy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iz = load ptr, ptr %44, align 8, !tbaa !59   ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.jb = icmp eq ptr %i.iz, %i.ja
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318: ; preds = %bb.em
  %i.jc = load i64, ptr %i.ja, align 8, !tbaa !22
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jd) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320: ; preds = %bb.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318, %bb.el
  %.pn209 = phi { ptr, i32 } [ %i.ix, %bb.el ], [ %i.iy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318 ], [ %i.iy, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #17
  br label %bb.ib

bb.en:                                            ; preds = %bb.eg
  %i.je = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.eo unwind label %bb.dz

bb.eo:                                            ; preds = %bb.en
  br i1 %i.je, label %bb.eu, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %47)
          to label %bb.eq unwind label %bb.es

bb.eq:                                            ; preds = %bb.ep
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull @__func__._ZN2cv9warpFrameERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_S5_, ptr noundef nonnull @.str.1, i32 noundef 373) #19
          to label %bb.er unwind label %bb.et

bb.er:                                            ; preds = %bb.eq
  unreachable

bb.es:                                            ; preds = %bb.ep
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323

bb.et:                                            ; preds = %bb.eq
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jh = load ptr, ptr %46, align 8, !tbaa !59   ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321: ; preds = %bb.et
  %i.jk = load i64, ptr %i.ji, align 8, !tbaa !22
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jl) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323: ; preds = %bb.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321, %bb.es
  %.pn211 = phi { ptr, i32 } [ %i.jf, %bb.es ], [ %i.jg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321 ], [ %i.jg, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #17
  br label %bb.ib

bb.eu:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #17
  %i.jm = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc324 unwind label %bb.ey

.noexc324:                                        ; preds = %bb.eu
  %i.jn = icmp eq i32 %i.jm, 65536
  br i1 %i.jn, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %.noexc324
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !48, !noalias !153
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %48, ptr noundef nonnull align 8 dereferenceable(208) %i.jp)
          to label %_ZNK2cv11_InputArray6getMatEi.exit327 unwind label %bb.ey

bb.ew:                                            ; preds = %.noexc324
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %48, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit327 unwind label %bb.ey

_ZNK2cv11_InputArray6getMatEi.exit327:            ; preds = %bb.ev, %bb.ew
  %i.jq = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %41, ptr noundef nonnull align 8 dereferenceable(208) %48)
          to label %bb.ex unwind label %bb.ez     ; 0 uses

bb.ex:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit327
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #17
  br label %bb.fb

bb.ey:                                            ; preds = %bb.ew, %bb.ev, %bb.eu
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.ez:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit327
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #17
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.pn213 = phi { ptr, i32 } [ %i.js, %bb.ez ], [ %i.jr, %bb.ey ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #17
  br label %bb.ib

bb.fb:                                            ; preds = %bb.dw, %bb.ex
  %.0173 = phi i32 [ -1, %bb.dw ], [ %i.ij, %bb.ex ] ; 3 uses
  %i.jt = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.fc unwind label %bb.dz

bb.fc:                                            ; preds = %bb.fb
  br i1 %i.jt, label %bb.fm, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ju = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.fe unwind label %bb.dz

bb.fe:                                            ; preds = %bb.fd
  br i1 %i.ju, label %bb.fm, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.jv = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.fg unwind label %bb.dz

bb.fg:                                            ; preds = %bb.ff
  br i1 %i.jv, label %bb.fm, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %50)
          to label %bb.fi unwind label %bb.fk

bb.fi:                                            ; preds = %bb.fh
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull @__func__._ZN2cv9warpFrameERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_S5_, ptr noundef nonnull @.str.1, i32 noundef 377) #19
          to label %bb.fj unwind label %bb.fl

bb.fj:                                            ; preds = %bb.fi
  unreachable

bb.fk:                                            ; preds = %bb.fh
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330

bb.fl:                                            ; preds = %bb.fi
  %i.jx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jy = load ptr, ptr %49, align 8, !tbaa !59   ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  %i.ka = icmp eq ptr %i.jy, %i.jz
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328: ; preds = %bb.fl
  %i.kb = load i64, ptr %i.jz, align 8, !tbaa !22
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kc) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330: ; preds = %bb.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328, %bb.fk
  %.pn215 = phi { ptr, i32 } [ %i.jw, %bb.fk ], [ %i.jx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328 ], [ %i.jx, %bb.fl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #17
  br label %bb.ib

bb.fm:                                            ; preds = %bb.fg, %bb.fe, %bb.fc
  %i.kd = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ke = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.kf = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.kg = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.kh = getelementptr inbounds nuw i8, ptr %24, i64 48
  %i.ki = getelementptr inbounds nuw i8, ptr %24, i64 64
  %i.kj = getelementptr inbounds nuw i8, ptr %24, i64 72
  %i.kk = getelementptr inbounds nuw i8, ptr %24, i64 80
  %i.kl = load double, ptr %i.ay, align 8, !tbaa !70, !noalias !154 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.kn = getelementptr inbounds nuw i8, ptr %24, i64 56
  %i.ko = getelementptr inbounds nuw i8, ptr %24, i64 88
  %i.kp = load double, ptr %24, align 8, !tbaa !70, !noalias !155 ; 2 uses
  %i.kq = load double, ptr %i.kf, align 8, !tbaa !70, !noalias !155 ; 2 uses
  %i.kr = load double, ptr %i.kg, align 8, !tbaa !70, !noalias !155 ; 2 uses
  %61 = load <1 x double>, ptr %i.kh, align 8     ; 2 uses
  %62 = shufflevector <1 x double> %61, <1 x double> poison, <2 x i32> <i32 0, i32 poison>
  %63 = load <1 x double>, ptr %i.ki, align 8     ; 2 uses
  %64 = shufflevector <1 x double> %63, <1 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.ks = load double, ptr %i.kj, align 8, !tbaa !70, !noalias !155 ; 2 uses
  %i.kt = load double, ptr %i.kk, align 8, !tbaa !70, !noalias !155 ; 2 uses
  %i.ku = load <4 x double>, ptr %12, align 8, !tbaa !70, !noalias !154 ; 3 uses
  %i.kv = shufflevector <4 x double> %i.ku, <4 x double> poison, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.kw = insertelement <2 x double> poison, double %i.kp, i64 0
  %i.kx = shufflevector <2 x double> %i.kw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ky = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kv, <2 x double> %i.kx, <2 x double> zeroinitializer)
  %i.kz = load <2 x double>, ptr %i.am, align 8, !tbaa !70, !noalias !154
  %i.la = shufflevector <2 x double> %i.kz, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.lb = shufflevector <4 x double> %i.ku, <4 x double> %i.la, <2 x i32> <i32 1, i32 4> ; 4 uses
  %i.lc = insertelement <2 x double> poison, double %i.kq, i64 0
  %i.ld = shufflevector <2 x double> %i.lc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.le = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lb, <2 x double> %i.ld, <2 x double> %i.ky)
  %i.lf = shufflevector <4 x double> %i.ku, <4 x double> %i.la, <2 x i32> <i32 2, i32 5> ; 4 uses
  %i.lg = shufflevector <1 x double> %63, <1 x double> poison, <2 x i32> zeroinitializer
  %i.lh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lf, <2 x double> %i.lg, <2 x double> %i.le) ; 3 uses
  %i.li = insertelement <2 x double> poison, double %i.kr, i64 0
  %i.lj = shufflevector <2 x double> %i.li, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lk = insertelement <2 x double> poison, double %i.ks, i64 0
  %i.ll = shufflevector <2 x double> %i.lk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lm = shufflevector <1 x double> %61, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ln = insertelement <2 x double> poison, double %i.kt, i64 0
  %i.lo = shufflevector <2 x double> %i.ln, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lp = load <2 x double>, ptr %i.as, align 8, !tbaa !70, !noalias !154 ; 5 uses
  %i.lq = load double, ptr %i.kd, align 8, !tbaa !70, !noalias !155 ; 2 uses
  %65 = load <1 x double>, ptr %i.ke, align 8     ; 2 uses
  %66 = shufflevector <1 x double> %65, <1 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.lr = insertelement <2 x double> poison, double %i.lq, i64 0
  %i.ls = shufflevector <2 x double> %i.lr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kv, <2 x double> %i.ls, <2 x double> zeroinitializer)
  %i.lu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lb, <2 x double> %i.lj, <2 x double> %i.lt)
  %i.lv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lf, <2 x double> %i.ll, <2 x double> %i.lu) ; 3 uses
  %i.lw = shufflevector <1 x double> %65, <1 x double> poison, <2 x i32> zeroinitializer
  %i.lx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kv, <2 x double> %i.lw, <2 x double> zeroinitializer)
  %i.ly = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lb, <2 x double> %i.lm, <2 x double> %i.lx)
  %i.lz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lf, <2 x double> %i.lo, <2 x double> %i.ly) ; 3 uses
  %i.ma = extractelement <2 x double> %i.lp, i64 0 ; 2 uses
  %i.mb = extractelement <2 x double> %i.lp, i64 1 ; 2 uses
  %i.mc = call double @llvm.fmuladd.f64(double %i.ma, double %i.lq, double 0.000000e+00)
  %i.md = insertelement <2 x double> %66, double %i.kr, i64 1
  %i.me = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.mc, i64 1
  %i.mf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lp, <2 x double> %i.md, <2 x double> %i.me)
  %i.mg = shufflevector <2 x double> %i.lp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.mh = insertelement <2 x double> %i.mg, double %i.kl, i64 1
  %i.mi = insertelement <2 x double> %62, double %i.ks, i64 1
  %i.mj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mh, <2 x double> %i.mi, <2 x double> %i.mf) ; 4 uses
  %i.mk = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ml = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lh, <2 x double> %i.mk, <2 x double> zeroinitializer)
  %i.mm = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.mn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> %i.mm, <2 x double> %i.ml)
  %i.mo = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lh, <2 x double> %i.mo, <2 x double> zeroinitializer)
  %i.mq = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> %i.mq, <2 x double> %i.mp)
  %i.ms = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.mt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lh, <2 x double> %i.ms, <2 x double> zeroinitializer)
  %i.mu = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.mv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> %i.mu, <2 x double> %i.mt)
  %i.mw = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.mx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lz, <2 x double> %i.mw, <2 x double> %i.mn) ; 2 uses
  %i.my = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lz, <2 x double> %i.my, <2 x double> %i.mr) ; 2 uses
  %i.na = insertelement <2 x double> poison, double %.sroa.0475.sroa.13.0, i64 0 ; 2 uses
  %i.nb = shufflevector <2 x double> %i.na, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lz, <2 x double> %i.nb, <2 x double> %i.mv) ; 2 uses
  %i.nd = extractelement <2 x double> %i.mj, i64 1
  %i.ne = call double @llvm.fmuladd.f64(double %i.ma, double %i.kp, double 0.000000e+00)
  %i.nf = call double @llvm.fmuladd.f64(double %i.mb, double %i.kq, double %i.ne)
  %i.ng = insertelement <2 x double> poison, double %i.kl, i64 0
  %i.nh = shufflevector <2 x double> %i.ng, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ni = insertelement <2 x double> %64, double %i.kt, i64 1
  %i.nj = shufflevector <2 x double> %i.mj, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.nk = insertelement <2 x double> %i.nj, double %i.nf, i64 0
  %i.nl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nh, <2 x double> %i.ni, <2 x double> %i.nk) ; 5 uses
  %i.nm = extractelement <2 x double> %i.nl, i64 0
  %i.nn = extractelement <2 x double> %i.eb, i64 0
  %i.no = call double @llvm.fmuladd.f64(double %i.nm, double %i.nn, double 0.000000e+00)
  %i.np = extractelement <2 x double> %i.eb, i64 1
  %i.nq = call double @llvm.fmuladd.f64(double %i.nd, double %i.np, double %i.no)
  %i.nr = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.nq, i64 1
  %i.ns = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nl, <2 x double> %i.dy, <2 x double> %i.nr) ; 3 uses
  %i.nt = shufflevector <2 x double> %i.mj, <2 x double> %i.nl, <2 x i32> <i32 1, i32 2>
  %i.nu = insertelement <2 x double> %i.ns, double 0.000000e+00, i64 1
  %i.nv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nt, <2 x double> %i.dz, <2 x double> %i.nu)
  %i.nw = shufflevector <2 x double> %i.nl, <2 x double> %i.mj, <2 x i32> <i32 1, i32 3>
  %i.nx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nw, <2 x double> %i.ea, <2 x double> %i.nv) ; 3 uses
  %i.ny = load double, ptr %i.km, align 8, !tbaa !70, !noalias !156 ; 2 uses
  %i.nz = load double, ptr %i.kn, align 8, !tbaa !70, !noalias !156 ; 2 uses
  %i.oa = load double, ptr %i.ko, align 8, !tbaa !70, !noalias !156 ; 2 uses
  %i.ob = insertelement <2 x double> poison, double %i.ny, i64 0
  %i.oc = shufflevector <2 x double> %i.ob, <2 x double> poison, <2 x i32> zeroinitializer
  %i.od = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kv, <2 x double> %i.oc, <2 x double> zeroinitializer)
  %i.oe = insertelement <2 x double> poison, double %i.nz, i64 0
  %i.of = shufflevector <2 x double> %i.oe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.og = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lb, <2 x double> %i.of, <2 x double> %i.od)
  %i.oh = insertelement <2 x double> poison, double %i.oa, i64 0
  %i.oi = shufflevector <2 x double> %i.oh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lf, <2 x double> %i.oi, <2 x double> %i.og) ; 2 uses
  %i.ok = shufflevector <2 x double> %i.nl, <2 x double> %i.lp, <2 x i32> <i32 1, i32 2>
  %i.ol = insertelement <2 x double> %i.na, double %i.ny, i64 1
  %i.om = shufflevector <2 x double> %i.nx, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.on = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ok, <2 x double> %i.ol, <2 x double> %i.om) ; 3 uses
  %i.oo = extractelement <2 x double> %i.on, i64 1
  %i.op = call double @llvm.fmuladd.f64(double %i.mb, double %i.nz, double %i.oo)
  %i.oq = call double @llvm.fmuladd.f64(double %i.kl, double %i.oa, double %i.op) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #17
  %i.or = invoke i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.fn unwind label %bb.fr     ; 2 uses

bb.fn:                                            ; preds = %bb.fm
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.or to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %i.or, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %51, i32 noundef %.sroa.2.0.extract.trunc.i, i32 noundef %.sroa.0.0.extract.trunc.i, i32 noundef 70)
          to label %_ZN2cv4Mat_INS_3VecIdLi3EEEEC2ENS_5Size_IiEE.exit.preheader unwind label %bb.fr

_ZN2cv4Mat_INS_3VecIdLi3EEEEC2ENS_5Size_IiEE.exit.preheader: ; preds = %bb.fn
  %i.os = icmp sgt i32 %.sroa.13460.0.extract.trunc, 0 ; 2 uses
  br i1 %i.os, label %.lr.ph542, label %_ZN2cv4Mat_INS_3VecIdLi3EEEEC2ENS_5Size_IiEE.exit._crit_edge

.lr.ph542:                                        ; preds = %_ZN2cv4Mat_INS_3VecIdLi3EEEEC2ENS_5Size_IiEE.exit.preheader
  %i.ot = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.ou = getelementptr inbounds nuw i8, ptr %35, i64 128
  %i.ov = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.ow = getelementptr inbounds nuw i8, ptr %32, i64 128
  %i.ox = getelementptr inbounds nuw i8, ptr %51, i64 24
  %i.oy = getelementptr inbounds nuw i8, ptr %51, i64 128
  %i.oz = icmp sgt i32 %.sroa.0448.0.extract.trunc, 0
  br i1 %i.oz, label %.lr.ph542.split.us.preheader, label %.lr.ph542.split

.lr.ph542.split.us.preheader:                     ; preds = %.lr.ph542
  %wide.trip.count = and i64 %.fr, 2147483647
  %wide.trip.count582 = and i64 %.fr, 2147483647
  %i.pa = extractelement <2 x double> %i.ns, i64 1
  %i.pb = extractelement <2 x double> %i.nx, i64 0
  %i.pc = extractelement <2 x double> %i.on, i64 0
  %i.pd = extractelement <2 x double> %i.ns, i64 1
  %i.pe = extractelement <2 x double> %i.nx, i64 0
  %i.pf = extractelement <2 x double> %i.on, i64 0
  br label %.lr.ph542.split.us

.lr.ph542.split.us:                               ; preds = %.lr.ph542.split.us.preheader, %._crit_edge.us
  %indvars.iv584 = phi i64 [ 0, %.lr.ph542.split.us.preheader ], [ %indvars.iv.next585, %._crit_edge.us ] ; 5 uses
  %i.pg = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %35)
          to label %.lr.ph.us unwind label %.split.us

.lr.ph.us:                                        ; preds = %.lr.ph542.split.us
  %i.ph = load ptr, ptr %i.ot, align 8
  %i.pi = load i64, ptr %i.ou, align 8
  %i.pj = mul i64 %i.pi, %indvars.iv584
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.pj
  %.fr568 = freeze ptr %i.pk                      ; 2 uses
  %i.pl = load ptr, ptr %i.ov, align 8, !tbaa !78
  %i.pm = load i64, ptr %i.ow, align 8, !tbaa !57
  %i.pn = mul i64 %i.pm, %indvars.iv584
  %i.po = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pn ; 2 uses
  %i.pp = load ptr, ptr %i.ox, align 8, !tbaa !78
  %i.pq = load i64, ptr %i.oy, align 8, !tbaa !57
  %i.pr = mul i64 %i.pq, %indvars.iv584
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.pr ; 2 uses
  %.not234.us569 = icmp eq ptr %.fr568, null
  %.not234.us = or i1 %i.pg, %.not234.us569
  %i.pt = trunc nuw nsw i64 %indvars.iv584 to i32
  %i.pu = uitofp nneg i32 %i.pt to double         ; 4 uses
  br i1 %.not234.us, label %.lr.ph.split.us.us.preheader, label %.lr.ph.split.us543.preheader

.lr.ph.split.us543.preheader:                     ; preds = %.lr.ph.us
  %i.pv = insertelement <2 x double> poison, double %i.pu, i64 0
  %i.pw = shufflevector <2 x double> %i.pv, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.us543

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us
  %i.px = insertelement <2 x double> poison, double %i.pu, i64 0
  %i.py = shufflevector <2 x double> %i.px, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.us.us

.lr.ph.split.us543:                               ; preds = %.lr.ph.split.us543.preheader, %.thread.us548
  %indvars.iv = phi i64 [ %indvars.iv.next, %.thread.us548 ], [ 0, %.lr.ph.split.us543.preheader ] ; 5 uses
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %indvars.iv
  %i.qa = load double, ptr %i.pz, align 8, !tbaa !70 ; 5 uses
  %i.qb = fcmp ord double %i.qa, 0.000000e+00
  br i1 %i.qb, label %bb.fo, label %.thread.us548

bb.fo:                                            ; preds = %.lr.ph.split.us543
  %or.cond5.us545 = call i1 @llvm.is.fpclass.f64(double %i.qa, /* (psub pnorm) */ i32 384)
  %i.qc = fcmp ult double %i.qa, %.0172
  %or.cond.us546 = and i1 %or.cond5.us545, %i.qc
  br i1 %or.cond.us546, label %bb.fp, label %.thread.us548

bb.fp:                                            ; preds = %bb.fo
  %i.qd = getelementptr inbounds nuw i8, ptr %.fr568, i64 %indvars.iv
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !22
  %.not235.us = icmp eq i8 %i.qe, 0
  br i1 %.not235.us, label %.thread.us548, label %.thread530.us547

.thread530.us547:                                 ; preds = %bb.fp
  %i.qf = trunc nuw nsw i64 %indvars.iv to i32
  %i.qg = uitofp nneg i32 %i.qf to double         ; 2 uses
  %i.qh = call double @llvm.fmuladd.f64(double %i.pa, double %i.qg, double 0.000000e+00)
  %i.qi = call double @llvm.fmuladd.f64(double %i.pb, double %i.pu, double %i.qh)
  %i.qj = fadd double %i.pc, %i.qi
  %i.qk = insertelement <2 x double> poison, double %i.qg, i64 0
  %i.ql = shufflevector <2 x double> %i.qk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mx, <2 x double> %i.ql, <2 x double> zeroinitializer)
  %i.qn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mz, <2 x double> %i.pw, <2 x double> %i.qm)
  %i.qo = fadd <2 x double> %i.nc, %i.qn
  %i.qp = insertelement <2 x double> poison, double %i.qa, i64 0
  %i.qq = shufflevector <2 x double> %i.qp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qr = fmul <2 x double> %i.qo, %i.qq
  %i.qs = fmul double %i.qj, %i.qa
  %i.qt = fadd <2 x double> %i.oj, %i.qr
  %i.qu = fadd double %i.oq, %i.qs
  br label %.thread.us548

.thread.us548:                                    ; preds = %.thread530.us547, %bb.fp, %bb.fo, %.lr.ph.split.us543
  %.sroa.8.0.us551 = phi double [ %i.qu, %.thread530.us547 ], [ 0.000000e+00, %bb.fp ], [ 0.000000e+00, %.lr.ph.split.us543 ], [ 0.000000e+00, %bb.fo ]
  %i.qv = phi <2 x double> [ %i.qt, %.thread530.us547 ], [ zeroinitializer, %bb.fp ], [ zeroinitializer, %.lr.ph.split.us543 ], [ zeroinitializer, %bb.fo ]
  %i.qw = getelementptr inbounds nuw [24 x i8], ptr %i.ps, i64 %indvars.iv ; 2 uses
  store <2 x double> %i.qv, ptr %i.qw, align 8
  %.sroa.8.0..sroa_idx.us553 = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  store double %.sroa.8.0.us551, ptr %.sroa.8.0..sroa_idx.us553, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond578.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond578.not, label %._crit_edge.us, label %.lr.ph.split.us543, !llvm.loop !141

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %.thread.us.us
  %indvars.iv579 = phi i64 [ %indvars.iv.next580, %.thread.us.us ], [ 0, %.lr.ph.split.us.us.preheader ] ; 4 uses
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %indvars.iv579
  %i.qy = load double, ptr %i.qx, align 8, !tbaa !70 ; 5 uses
  %i.qz = fcmp ord double %i.qy, 0.000000e+00
  br i1 %i.qz, label %bb.fq, label %.thread.us.us

bb.fq:                                            ; preds = %.lr.ph.split.us.us
  %or.cond5.us.us = call i1 @llvm.is.fpclass.f64(double %i.qy, /* (psub pnorm) */ i32 384)
  %i.ra = fcmp ult double %i.qy, %.0172
  %or.cond.us.us = and i1 %or.cond5.us.us, %i.ra
  br i1 %or.cond.us.us, label %.thread530.us.us, label %.thread.us.us

.thread530.us.us:                                 ; preds = %bb.fq
  %i.rb = trunc nuw nsw i64 %indvars.iv579 to i32
  %i.rc = uitofp nneg i32 %i.rb to double         ; 2 uses
  %i.rd = call double @llvm.fmuladd.f64(double %i.pd, double %i.rc, double 0.000000e+00)
  %i.re = call double @llvm.fmuladd.f64(double %i.pe, double %i.pu, double %i.rd)
  %i.rf = fadd double %i.pf, %i.re
  %i.rg = insertelement <2 x double> poison, double %i.rc, i64 0
  %i.rh = shufflevector <2 x double> %i.rg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ri = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mx, <2 x double> %i.rh, <2 x double> zeroinitializer)
  %i.rj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mz, <2 x double> %i.py, <2 x double> %i.ri)
  %i.rk = fadd <2 x double> %i.nc, %i.rj
  %i.rl = insertelement <2 x double> poison, double %i.qy, i64 0
  %i.rm = shufflevector <2 x double> %i.rl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rn = fmul <2 x double> %i.rk, %i.rm
  %i.ro = fmul double %i.rf, %i.qy
  %i.rp = fadd <2 x double> %i.oj, %i.rn
  %i.rq = fadd double %i.oq, %i.ro
  br label %.thread.us.us

.thread.us.us:                                    ; preds = %.thread530.us.us, %bb.fq, %.lr.ph.split.us.us
  %.sroa.8.0.us.us = phi double [ %i.rq, %.thread530.us.us ], [ 0.000000e+00, %bb.fq ], [ 0.000000e+00, %.lr.ph.split.us.us ]
  %i.rr = phi <2 x double> [ %i.rp, %.thread530.us.us ], [ zeroinitializer, %bb.fq ], [ zeroinitializer, %.lr.ph.split.us.us ]
  %i.rs = getelementptr inbounds nuw [24 x i8], ptr %i.ps, i64 %indvars.iv579 ; 2 uses
  store <2 x double> %i.rr, ptr %i.rs, align 8
  %.sroa.8.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  store double %.sroa.8.0.us.us, ptr %.sroa.8.0..sroa_idx.us.us, align 8
  %indvars.iv.next580 = add nuw nsw i64 %indvars.iv579, 1 ; 2 uses
  %exitcond583.not = icmp eq i64 %indvars.iv.next580, %wide.trip.count582
  br i1 %exitcond583.not, label %._crit_edge.us, label %.lr.ph.split.us.us, !llvm.loop !141

._crit_edge.us:                                   ; preds = %.thread.us548, %.thread.us.us
  %indvars.iv.next585 = add nuw nsw i64 %indvars.iv584, 1 ; 2 uses
  %exitcond588.not = icmp eq i64 %indvars.iv.next585, %.sroa.13460.0.extract.shift
end_hunk_0
