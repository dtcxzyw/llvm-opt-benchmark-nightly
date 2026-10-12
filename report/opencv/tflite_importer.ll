Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tflite_importer?download=true
inline.NumInlined: 5833
inline.NumDeleted: 1619
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060514TFLiteImporter18parseDeconvolutionERKN13opencv_tflite8OperatorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_11LayerParamsE:_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  store i8 0, ptr %i.iy, align 1, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  %i.iz = load i32, ptr %i.d, align 4, !tbaa !21
  %i.ja = sub nsw i32 %i.fx, %i.iz
  %i.jb = load i32, ptr %i.bh, align 4, !tbaa !562
  %i.jc = srem i32 %i.ja, %i.jb
  store i32 %i.jc, ptr %i.i, align 4, !tbaa !21
  %i.jd = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %bb.aj unwind label %bb.al     ; 0 uses

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  %i.je = load ptr, ptr %24, align 8, !tbaa !33   ; 2 uses
  %i.jf = icmp eq ptr %i.je, %i.iw
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248: ; preds = %bb.aj
  %i.jg = load i64, ptr %i.iw, align 8, !tbaa !34
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.jh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.am

bb.ak:                                            ; preds = %._crit_edge.i.i237
  %i.ji = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  %i.jj = load ptr, ptr %23, align 8, !tbaa !33   ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.ik
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251: ; preds = %bb.ak
  %i.jl = load i64, ptr %i.ik, align 8, !tbaa !34
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %.body165

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243
  %i.jn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  %i.jo = load ptr, ptr %24, align 8, !tbaa !33   ; 2 uses
  %i.jp = icmp eq ptr %i.jo, %i.iw
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254: ; preds = %bb.al
  %i.jq = load i64, ptr %i.iw, align 8, !tbaa !34
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.jr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %.body165

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  store i32 %i.dq, ptr %i.j, align 4, !tbaa !21
  %i.js = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.jt = load i32, ptr %i.c, align 4, !tbaa !21
  store i32 %i.jt, ptr %i.js, align 4, !tbaa !21
  %i.ju = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.jv = load i32, ptr %i.d, align 4, !tbaa !21
  store i32 %i.jv, ptr %i.ju, align 4, !tbaa !21
  %i.jw = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.jx = load i32, ptr %i.e, align 4, !tbaa !21
  store i32 %i.jx, ptr %i.jw, align 4, !tbaa !21
  invoke void @_ZNK2cv3Mat7reshapeEiSt16initializer_listIiE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %25, ptr noundef nonnull align 8 dereferenceable(208) %17, i32 noundef 1, ptr nonnull %i.j, i64 4)
          to label %bb.an unwind label %bb.at

bb.an:                                            ; preds = %bb.am
  %i.jy = load ptr, ptr %i.cb, align 8, !tbaa !86 ; 2 uses
  %.not10.i.i.i.i257 = icmp eq ptr %i.jy, null
  br i1 %.not10.i.i.i.i257, label %.critedge.i268, label %.lr.ph.i.i.i.i258

.lr.ph.i.i.i.i258:                                ; preds = %bb.an
  %i.jz = load i32, ptr %i.b, align 4, !tbaa !21  ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph.i.i.i.i258
  %.012.i.i.i.i259 = phi ptr [ %i.jy, %.lr.ph.i.i.i.i258 ], [ %.1.i.i.i.i264, %bb.ao ] ; 3 uses
  %.0811.i.i.i.i260 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i258 ], [ %.19.i.i.i.i261, %bb.ao ]
  %i.ka = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i259, i64 32
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !21
  %i.kc = icmp slt i32 %i.kb, %i.jz               ; 2 uses
  %.19.i.i.i.i261 = select i1 %i.kc, ptr %.0811.i.i.i.i260, ptr %.012.i.i.i.i259 ; 6 uses
  %.1.in.v.i.i.i.i262 = select i1 %i.kc, i64 24, i64 16
  %.1.in.i.i.i.i263 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i259, i64 %.1.in.v.i.i.i.i262
  %.1.i.i.i.i264 = load ptr, ptr %.1.in.i.i.i.i263, align 8, !tbaa !101 ; 2 uses
  %.not.i.i.i.i265 = icmp eq ptr %.1.i.i.i.i264, null
  br i1 %.not.i.i.i.i265, label %_ZNSt3mapIiN2cv3MatESt4lessIiESaISt4pairIKiS1_EEE11lower_boundERS5_.exit.i266, label %bb.ao, !llvm.loop !0

_ZNSt3mapIiN2cv3MatESt4lessIiESaISt4pairIKiS1_EEE11lower_boundERS5_.exit.i266: ; preds = %bb.ao
  %i.kd = icmp eq ptr %.19.i.i.i.i261, %i.cd
  br i1 %i.kd, label %.critedge.i268, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt3mapIiN2cv3MatESt4lessIiESaISt4pairIKiS1_EEE11lower_boundERS5_.exit.i266
  %i.ke = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i261, i64 32
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !21
  %i.kg = icmp slt i32 %i.jz, %i.kf
  br i1 %i.kg, label %.critedge.i268, label %bb.aq

.critedge.i268:                                   ; preds = %bb.ap, %_ZNSt3mapIiN2cv3MatESt4lessIiESaISt4pairIKiS1_EEE11lower_boundERS5_.exit.i266, %bb.an
  %.08.lcssa.i.i.i11.i269 = phi ptr [ %.19.i.i.i.i261, %bb.ap ], [ %.19.i.i.i.i261, %_ZNSt3mapIiN2cv3MatESt4lessIiESaISt4pairIKiS1_EEE11lower_boundERS5_.exit.i266 ], [ %i.cd, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.b, ptr %4, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.kh = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiN2cv3MatEESt10_Select1stIS4_ESt4lessIiESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ca, ptr %.08.lcssa.i.i.i11.i269, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc270 unwind label %bb.au

.noexc270:                                        ; preds = %.critedge.i268
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.aq

bb.aq:                                            ; preds = %.noexc270, %bb.ap
  %.sroa.06.0.i267 = phi ptr [ %i.kh, %.noexc270 ], [ %.19.i.i.i.i261, %bb.ap ]
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i267, i64 40
  %i.kj = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ki, ptr noundef nonnull align 8 dereferenceable(208) %25)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.kk = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %i.kj)
          to label %bb.as unwind label %bb.au     ; 0 uses

bb.as:                                            ; preds = %bb.ar
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  %i.kl = load i32, ptr %17, align 8, !tbaa !179
  %i.km = and i32 %i.kl, 4095                     ; 2 uses
  %i.kn = icmp eq i32 %i.km, 5
  br i1 %i.kn, label %bb.ay, label %bb.aw

bb.at:                                            ; preds = %bb.am
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %.critedge.i268, %bb.ar, %bb.aq
  %i.kp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #26
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn121 = phi { ptr, i32 } [ %i.kp, %bb.au ], [ %i.ko, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  br label %.body165

bb.aw:                                            ; preds = %bb.as
  invoke void @_ZN2cv6detail20check_failed_MatTypeEiiRKNS0_12CheckContextE(i32 noundef %i.km, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v2026060514TFLiteImporter18parseDeconvolutionERKN13opencv_tflite8OperatorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_11LayerParamsEE16__cv_check__1154) #27
          to label %bb.ax unwind label %bb.af

bb.ax:                                            ; preds = %bb.aw
  unreachable

bb.ay:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %26, ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.kq = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !185 ; 3 uses
  %i.ks = ptrtoaddr ptr %i.kr to i64
  %i.kt = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !185 ; 3 uses
  %i.kv = ptrtoaddr ptr %i.ku to i64
  %i.kw = load i32, ptr %i.c, align 4, !tbaa !21  ; 5 uses
  %i.kx = mul nsw i32 %i.kw, %i.dq
  %i.ky = load i32, ptr %i.d, align 4, !tbaa !21  ; 5 uses
  %i.kz = mul nsw i32 %i.kx, %i.ky
  %i.la = load i32, ptr %i.e, align 4, !tbaa !21  ; 5 uses
  %i.lb = mul nsw i32 %i.kz, %i.la                ; 2 uses
  %i.lc = icmp sgt i32 %i.kw, 0
  %i.ld = icmp sgt i32 %i.dq, 0
  %or.cond = select i1 %i.lc, i1 %i.ld, i1 false
  br i1 %or.cond, label %.preheader283.lr.ph.split.us, label %._crit_edge297

.preheader283.lr.ph.split.us:                     ; preds = %bb.az
  %i.le = icmp slt i32 %i.la, 1
  %i.lf = icmp slt i32 %i.ky, 1
  %brmerge = select i1 %i.lf, i1 true, i1 %i.le
  br i1 %brmerge, label %._crit_edge297, label %.preheader283.us.preheader

.preheader283.us.preheader:                       ; preds = %.preheader283.lr.ph.split.us
  %i.lg = zext nneg i32 %i.lb to i64              ; 2 uses
  %i.lh = zext nneg i32 %i.dq to i64
  %i.li = zext nneg i32 %i.la to i64              ; 8 uses
  %i.lj = zext nneg i32 %i.kw to i64              ; 3 uses
  %i.lk = zext nneg i32 %i.ky to i64              ; 6 uses
  %wide.trip.count324 = zext nneg i32 %i.kw to i64
  %wide.trip.count319 = zext nneg i32 %i.dq to i64
  %wide.trip.count314 = zext nneg i32 %i.ky to i64
  %wide.trip.count = zext nneg i32 %i.la to i64
  %i.ll = sub i64 %i.kv, %i.ks
  %i.lm = mul nuw nsw i64 %i.lj, %i.lk
  %i.ln = mul i64 %i.lm, %i.li
  %i.lo = shl i64 %i.ln, 2
  %i.lp = add i64 %i.lo, -4
  %27 = mul nuw nsw i64 %i.lk, %i.li
  %28 = mul nuw nsw i64 %i.lk, %i.li
  %29 = mul nuw nsw i64 %i.lj, %i.lk
  %i.lq = mul i64 %29, %i.li
  %30 = mul i32 %i.kw, %i.ky
  %31 = mul i32 %30, %i.la
  %32 = zext i32 %31 to i64                       ; 2 uses
  %i.lr = add nsw i64 %i.li, -1
  %ident.check.not = icmp ne i32 %i.dq, 1
  %invariant.op = add i64 %i.ll, -1
  br label %.preheader283.us

.preheader283.us:                                 ; preds = %.preheader283.us.preheader, %._crit_edge292.us
  %indvars.iv321 = phi i64 [ 0, %.preheader283.us.preheader ], [ %indvars.iv.next322, %._crit_edge292.us ] ; 5 uses
  %i.ls = mul i64 %27, %indvars.iv321             ; 2 uses
  %i.lt = mul i64 %28, %indvars.iv321
  %i.lu = mul nuw nsw i64 %indvars.iv321, %i.lk
  br label %.preheader282.us

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.bb
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bb ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.lv = add nuw nsw i64 %indvars.iv, %i.mf      ; 3 uses
  %i.lw = add nuw nsw i64 %indvars.iv, %i.mh
  %i.lx = mul nuw nsw i64 %i.lw, %i.lh
  %i.ly = add nuw nsw i64 %i.lx, %indvars.iv316   ; 3 uses
  %i.lz = icmp slt i64 %i.lv, %i.lg
  br i1 %i.lz, label %bb.ba, label %.split299.us.invoke

bb.ba:                                            ; preds = %scalar.ph
  %i.ma = icmp slt i64 %i.ly, %i.lg
  br i1 %i.ma, label %bb.bb, label %.split299.us.invoke

bb.bb:                                            ; preds = %bb.ba
  %i.mb = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.ly
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !186
  %i.md = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.lv
  store float %i.mc, ptr %i.md, align 4, !tbaa !186
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !554

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader282.us
  %indvars.iv311 = phi i64 [ %indvars.iv.next312, %._crit_edge.us ], [ 0, %.preheader282.us ] ; 4 uses
  %i.me = add nuw nsw i64 %indvars.iv311, %35
  %i.mf = mul nuw nsw i64 %i.me, %i.li            ; 3 uses
  %i.mg = add nuw nsw i64 %indvars.iv311, %i.lu
  %i.mh = mul nuw nsw i64 %i.mg, %i.li            ; 2 uses
  %i.mi = call i64 @llvm.smax.i64(i64 %i.mf, i64 %32)
  %i.mj = mul i64 %indvars.iv311, %i.li           ; 3 uses
  %i.mk = add i64 %i.na, %i.mj
  %i.ml = sub i64 %i.mi, %i.mk
  %i.mm = add i64 %34, %i.mj
  %i.mn = call i64 @llvm.smax.i64(i64 %i.mm, i64 %32)
  %i.mo = add i64 %33, %i.mj
  %i.mp = sub i64 %i.mn, %i.mo
  %i.mq = call i64 @llvm.umin.i64(i64 %i.ml, i64 %i.mp)
  %i.mr = call i64 @llvm.umin.i64(i64 %i.mq, i64 %i.lr)
  %i.ms = add i64 %i.mr, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ms, 9
  %or.cond390.not392 = select i1 %min.iters.check, i1 true, i1 %ident.check.not
  %or.cond391 = select i1 %or.cond390.not392, i1 true, i1 %diff.check
  br i1 %or.cond391, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.preheader.us
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.preheader.us
  %i.mt = and i64 %i.ms, 7                        ; 2 uses
  %i.mu = icmp eq i64 %i.mt, 0
  %i.mv = select i1 %i.mu, i64 8, i64 %i.mt
  %n.vec = sub i64 %i.ms, %i.mv                   ; 2 uses
  %gep397 = getelementptr [4 x i8], ptr %invariant.gep396, i64 %i.mh
  %invariant.gep395 = getelementptr [4 x i8], ptr %i.ku, i64 %i.mf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep394 = getelementptr [4 x i8], ptr %gep397, i64 %index ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %gep394, i64 16
  %wide.load = load <4 x float>, ptr %gep394, align 4, !tbaa !186
  %wide.load389 = load <4 x float>, ptr %i.mw, align 4, !tbaa !186
  %gep = getelementptr [4 x i8], ptr %invariant.gep395, i64 %index ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x float> %wide.load, ptr %gep, align 4, !tbaa !186
  store <4 x float> %wide.load389, ptr %i.mx, align 4, !tbaa !186
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.my = icmp eq i64 %index.next, %n.vec
  br i1 %i.my, label %scalar.ph.preheader, label %vector.body, !llvm.loop !555

.preheader282.us:                                 ; preds = %.preheader283.us, %._crit_edge289.us
  %indvars.iv316 = phi i64 [ 0, %.preheader283.us ], [ %indvars.iv.next317, %._crit_edge289.us ] ; 8 uses
  %33 = add i64 %i.ls, %indvars.iv316
  %34 = add i64 %i.lt, %indvars.iv316
  %i.mz = mul i64 %i.lq, %indvars.iv316
  %i.na = add i64 %i.ls, %i.mz
  %i.nb = mul i64 %i.lp, %indvars.iv316
  %i.nc = mul nuw nsw i64 %indvars.iv316, %i.lj
  %i.nd = add nuw nsw i64 %i.nc, %indvars.iv321
  %35 = mul nuw nsw i64 %i.nd, %i.lk
  %.reass = add i64 %i.nb, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %invariant.gep396 = getelementptr [4 x i8], ptr %i.kr, i64 %indvars.iv316
  br label %.preheader.us

._crit_edge.us:                                   ; preds = %bb.bb
  %indvars.iv.next312 = add nuw nsw i64 %indvars.iv311, 1 ; 2 uses
  %exitcond315.not = icmp eq i64 %indvars.iv.next312, %wide.trip.count314
  br i1 %exitcond315.not, label %._crit_edge289.us, label %.preheader.us, !llvm.loop !556

._crit_edge289.us:                                ; preds = %._crit_edge.us
  %indvars.iv.next317 = add nuw nsw i64 %indvars.iv316, 1 ; 2 uses
  %exitcond320.not = icmp eq i64 %indvars.iv.next317, %wide.trip.count319
  br i1 %exitcond320.not, label %._crit_edge292.us, label %.preheader282.us, !llvm.loop !557

._crit_edge292.us:                                ; preds = %._crit_edge289.us
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %exitcond325.not = icmp eq i64 %indvars.iv.next322, %wide.trip.count324
  br i1 %exitcond325.not, label %._crit_edge297, label %.preheader283.us, !llvm.loop !558

._crit_edge297:                                   ; preds = %._crit_edge292.us, %.preheader283.lr.ph.split.us, %bb.az
  invoke void @_ZN2cv3dnn14dnn5_v2026060514TFLiteImporter8addLayerERNS1_11LayerParamsERKN13opencv_tflite8OperatorEbb(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 1 dereferenceable(1) %1, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.be unwind label %bb.bf

bb.bc:                                            ; preds = %bb.ay
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bd:                                            ; preds = %.split299.us.invoke
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.split299.us.invoke:                              ; preds = %bb.ba, %scalar.ph
  %.lcssa386.sink = phi i64 [ %i.lv, %scalar.ph ], [ %i.ly, %bb.ba ]
  %i.ng = phi ptr [ @_ZZN2cv3dnn14dnn5_v2026060514TFLiteImporter18parseDeconvolutionERKN13opencv_tflite8OperatorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_11LayerParamsEE16__cv_check__1166, %scalar.ph ], [ @_ZZN2cv3dnn14dnn5_v2026060514TFLiteImporter18parseDeconvolutionERKN13opencv_tflite8OperatorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_11LayerParamsEE16__cv_check__1167, %bb.ba ]
  %i.nh = trunc nsw i64 %.lcssa386.sink to i32
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.nh, i32 noundef %i.lb, ptr noundef nonnull align 8 dereferenceable(48) %i.ng) #27
          to label %.split299.us.cont unwind label %bb.bd

.split299.us.cont:                                ; preds = %.split299.us.invoke
  unreachable

bb.be:                                            ; preds = %._crit_edge297
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret void

bb.bf:                                            ; preds = %._crit_edge297
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bd
  %.pn123 = phi { ptr, i32 } [ %i.nf, %bb.bd ], [ %i.ni, %bb.bf ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #26
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bc
  %.pn123.pn = phi { ptr, i32 } [ %.pn123, %bb.bg ], [ %i.ne, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  br label %.body165

.body165:                                         ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i171, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %bb.bh, %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, %bb.af
  %.pn123.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ji, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ], [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i162 ], [ %i.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230 ], [ %i.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ], [ %i.hk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224 ], [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i171 ], [ %i.hj, %bb.ab ], [ %.pn123.pn, %bb.bh ], [ %i.hz, %bb.af ], [ %.pn121, %bb.av ], [ %i.if, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236 ], [ %i.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233 ], [ %i.jn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %i.hi, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %.body

.body:                                            ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.body165
  %.pn123.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn123.pn.pn.pn.pn.pn.pn, %.body165 ], [ %i.hh, %bb.z ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.bi

bb.bi:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %.pn123.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn123.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %i.hc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ], [ %i.gx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218 ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ]
  resume { ptr, i32 } %.pn123.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn14dnn5_v2026060514TFLiteImporter13parseQuantizeERKN13opencv_tflite8OperatorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_11LayerParamsE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(136) %3) #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.e = load i64, ptr %i.d, align 8, !tbaa !83
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.e, ptr noundef nonnull @.str.75, i64 noundef 8) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.g, ptr noundef nonnull align 1 dereferenceable(6) @.str.80, i64 6, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 6, ptr %i.h, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i8 0, ptr %i.i, align 2, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 1, ptr %i.a, align 4, !tbaa !21
  %i.j = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.a unwind label %bb.c       ; 0 uses

bb.a:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.k = load ptr, ptr %4, align 8, !tbaa !33     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.g
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.m = load i64, ptr %i.g, align 8, !tbaa !34
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.o, ptr noundef nonnull align 1 dereferenceable(10) @.str.77, i64 10, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 10, ptr %i.p, align 8, !tbaa !83
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i8 0, ptr %i.q, align 2, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 -128, ptr %i.b, align 4, !tbaa !21
  %i.r = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.s = load ptr, ptr %5, align 8, !tbaa !33     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.o
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.b
  %i.u = load i64, ptr %i.o, align 8, !tbaa !34
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN2cv3dnn14dnn5_v2026060514TFLiteImporter8addLayerERNS1_11LayerParamsERKN13opencv_tflite8OperatorEbb(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 1 dereferenceable(1) %1, i1 noundef zeroext false, i1 noundef zeroext false)
  ret void

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.x = load ptr, ptr %4, align 8, !tbaa !33     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.g
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.c
  %i.z = load i64, ptr %i.g, align 8, !tbaa !34
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.ac = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.o
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.d
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !34
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.pn11.pn = phi { ptr, i32 } [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ]
  resume { ptr, i32 } %.pn11.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn14dnn5_v2026060514TFLiteImporter15parseDequantizeERKN13opencv_tflite8OperatorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_11LayerParamsE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(136) %3) #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
end_hunk_0
