Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/secondstage?download=true
inline.NumInlined: 846
inline.NumDeleted: 398
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z17addPostProcessingP14RenderPipelineP10RenderStepN4core8vector2dIfEEP6Client:bb.a

bb.at:                                            ; preds = %_ZN11StreamProxylsIRKbEERS_OT_.exit392
  %i.jo = load ptr, ptr %.pr, align 8, !tbaa !12
  %i.jp = getelementptr i8, ptr %i.jo, i64 -24
  %i.jq = load i64, ptr %i.jp, align 8            ; 2 uses
  %i.jr = getelementptr inbounds i8, ptr %.pr, i64 %i.jq
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !80
  %i.ju = icmp eq i32 %i.jt, 0
  br i1 %i.ju, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
  %.pre.i394 = load ptr, ptr %i.jd, align 8, !tbaa !73 ; 2 uses
  %.pre1195 = load ptr, ptr %.pre.i394, align 8, !tbaa !12
  %.phi.trans.insert1196 = getelementptr i8, ptr %.pre1195, i64 -24
  %.pre1197 = load i64, ptr %.phi.trans.insert1196, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.jv = phi i64 [ %.pre1197, %bb.au ], [ %i.jq, %bb.at ]
  %i.jw = phi ptr [ %.pre.i394, %bb.au ], [ %.pr, %bb.at ] ; 2 uses
  %i.jx = getelementptr inbounds i8, ptr %i.jw, i64 %i.jv
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 240
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !195 ; 6 uses
  %.not.i.i.i979 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i979, label %bb.aw, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i980

bb.aw:                                            ; preds = %bb.av
  call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i980: ; preds = %bb.av
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 56
  %i.kb = load i8, ptr %i.ka, align 8, !tbaa !201
  %.not.i1.i.i981 = icmp eq i8 %i.kb, 0
  br i1 %.not.i1.i.i981, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i980
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 67
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit983

bb.ay:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i980
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.jz)
  %i.ke = load ptr, ptr %i.jz, align 8, !tbaa !12
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 48
  %i.kg = load ptr, ptr %i.kf, align 8
  %i.kh = call noundef signext i8 %i.kg(ptr noundef nonnull align 8 dereferenceable(570) %i.jz, i8 noundef signext 10), !inline_history !131
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit983

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit983: ; preds = %bb.ax, %bb.ay
  %.0.i.i.i982 = phi i8 [ %i.kd, %bb.ax ], [ %i.kh, %bb.ay ]
  %i.ki = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.jw, i8 noundef signext %.0.i.i.i982)
  %i.kj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ki) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit395

_ZN11StreamProxylsEPFRSoS0_E.exit395:             ; preds = %_ZN11StreamProxylsIRKbEERS_OT_.exit, %_ZN11StreamProxylsIRKbEERS_OT_.exit392, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit983
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  %i.kk = load ptr, ptr @g_settings, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  %i.kl = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  store ptr %i.kl, ptr %29, align 8, !tbaa !204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.kl, ptr noundef nonnull align 1 dereferenceable(12) @.str.11, i64 12, i1 false)
  %i.km = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 12, ptr %i.km, align 8, !tbaa !205
  %i.kn = getelementptr inbounds nuw i8, ptr %29, i64 28
  store i8 0, ptr %i.kn, align 4, !tbaa !40
  %i.ko = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8Settings3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.kk, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %bb.az unwind label %bb.bo     ; 2 uses

bb.az:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit395
  %i.kp = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 7 uses
  store ptr %i.kp, ptr %28, align 8, !tbaa !204
  %i.kq = load ptr, ptr %i.ko, align 8, !tbaa !81 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !205 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  store i64 %i.ks, ptr %i.j, align 8, !tbaa !206
  %i.kt = icmp ugt i64 %i.ks, 15
  br i1 %i.kt, label %.noexc.i401, label %._crit_edge.i.i400

.noexc.i401:                                      ; preds = %bb.az
  %i.ku = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc402 unwind label %bb.bo ; 2 uses

.noexc402:                                        ; preds = %.noexc.i401
  store ptr %i.ku, ptr %28, align 8, !tbaa !81
  %i.kv = load i64, ptr %i.j, align 8, !tbaa !206
  store i64 %i.kv, ptr %i.kp, align 8, !tbaa !40
  br label %._crit_edge.i.i400

._crit_edge.i.i400:                               ; preds = %.noexc402, %bb.az
  %i.kw = phi ptr [ %i.ku, %.noexc402 ], [ %i.kp, %bb.az ] ; 2 uses
  switch i64 %i.ks, label %bb.bb [
    i64 1, label %bb.ba
    i64 0, label %bb.bc
  ]

bb.ba:                                            ; preds = %._crit_edge.i.i400
  %i.kx = load i8, ptr %i.kq, align 1, !tbaa !40
  store i8 %i.kx, ptr %i.kw, align 1, !tbaa !40
  br label %bb.bc

bb.bb:                                            ; preds = %._crit_edge.i.i400
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kw, ptr align 1 %i.kq, i64 %i.ks, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %._crit_edge.i.i400
  %i.ky = load i64, ptr %i.j, align 8, !tbaa !206 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  store i64 %i.ky, ptr %i.kz, align 8, !tbaa !205
  %i.la = load ptr, ptr %28, align 8, !tbaa !81
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.ky
  store i8 0, ptr %i.lb, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  %i.lc = load ptr, ptr %29, align 8, !tbaa !81   ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.kl
  br i1 %i.ld, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403: ; preds = %bb.bc
  %i.le = load i64, ptr %i.kl, align 8, !tbaa !40
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  %i.lg = load ptr, ptr @g_settings, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  %i.lh = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  store ptr %i.lh, ptr %30, align 8, !tbaa !204
  store i32 1633776486, ptr %i.lh, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 4, ptr %i.li, align 8, !tbaa !205
  %i.lj = getelementptr inbounds nuw i8, ptr %30, i64 20
  store i8 0, ptr %i.lj, align 4, !tbaa !40
  %i.lk = invoke noundef zeroext i16 @_ZNK8Settings6getU16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.lg, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %bb.bd unwind label %bb.bp

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405
  %i.ll = icmp ugt i16 %i.lk, 1
  br i1 %i.ll, label %._crit_edge.i.i410, label %.critedge329

._crit_edge.i.i410:                               ; preds = %bb.bd
  %i.lm = load ptr, ptr @g_settings, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25
  %i.ln = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 6 uses
  store ptr %i.ln, ptr %31, align 8, !tbaa !204
  store i32 1633776486, ptr %i.ln, align 8
  %i.lo = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 4, ptr %i.lo, align 8, !tbaa !205
  %i.lp = getelementptr inbounds nuw i8, ptr %31, i64 20
  store i8 0, ptr %i.lp, align 4, !tbaa !40
  %i.lq = invoke noundef zeroext i16 @_ZNK8Settings6getU16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.lm, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %.critedge unwind label %bb.bq

.critedge:                                        ; preds = %._crit_edge.i.i410
  %i.lr = load ptr, ptr %31, align 8, !tbaa !81   ; 2 uses
  %i.ls = icmp eq ptr %i.lr, %i.ln
  br i1 %i.ls, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414: ; preds = %.critedge
  %i.lt = load i64, ptr %i.ln, align 8, !tbaa !40
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  br label %.critedge329

.critedge329:                                     ; preds = %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416
  %i.lv = phi i16 [ %i.lq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416 ], [ 2, %bb.bd ] ; 3 uses
  %i.lw = load ptr, ptr %30, align 8, !tbaa !81   ; 2 uses
  %i.lx = icmp eq ptr %i.lw, %i.lh
  br i1 %i.lx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417: ; preds = %.critedge329
  %i.ly = load i64, ptr %i.lh, align 8, !tbaa !40
  %i.lz = add i64 %i.ly, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.lz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419: ; preds = %.critedge329, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  %i.ma = load ptr, ptr %i.ax, align 8, !tbaa !12
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.mc = load ptr, ptr %i.mb, align 8
  %i.md = invoke noundef zeroext i1 %i.mc(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i32 noundef 39)
          to label %bb.be unwind label %bb.bs     ; 2 uses

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419
  %i.me = load i64, ptr %i.kz, align 8, !tbaa !205
  %i.mf = icmp eq i64 %i.me, 4
  br i1 %i.mf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit421, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit442

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit421: ; preds = %bb.be
  %i.mg = load ptr, ptr %28, align 8, !tbaa !81
  %i.mh = load i32, ptr %i.mg, align 1
  %i.mi = icmp ne i32 %i.mh, 1633776486
  %i.mj = zext i1 %i.mi to i32
  %i.mk = icmp eq i32 %i.mj, 0                    ; 2 uses
  %i.ml = and i1 %i.md, %i.mk                     ; 2 uses
  %.not = xor i1 %i.mk, true
  %i.mm = or i1 %i.md, %.not
  br i1 %i.mm, label %_ZN11StreamProxylsEPFRSoS0_E.exit431, label %bb.bf

bb.bf:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit421
  %.not.i422 = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i422, label %_ZTW13warningstream.exit423, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit423

_ZTW13warningstream.exit423:                      ; preds = %bb.bf, %bb.bg
  %i.mn = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !187, !nonnull !188, !align !189 ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !12
  %i.mq = load ptr, ptr %i.mp, align 8
  %i.mr = invoke noundef zeroext i1 %i.mq(ptr noundef nonnull align 8 dereferenceable(8) %i.mo)
          to label %.noexc425 unwind label %bb.bt, !inline_history !134

.noexc425:                                        ; preds = %_ZTW13warningstream.exit423
  %.v.i424 = select i1 %i.mr, i64 976, i64 984
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mn, i64 %.v.i424 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @.str.13, ptr %i.i, align 8, !tbaa !38
  %i.mt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ms, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.bh unwind label %bb.bt     ; 0 uses

bb.bh:                                            ; preds = %.noexc425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.mu = load ptr, ptr %i.ms, align 8, !tbaa !73 ; 5 uses
  %.not.i427 = icmp eq ptr %i.mu, null
  br i1 %.not.i427, label %_ZN11StreamProxylsEPFRSoS0_E.exit431, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !12
  %i.mw = getelementptr i8, ptr %i.mv, i64 -24
  %i.mx = load i64, ptr %i.mw, align 8            ; 2 uses
  %i.my = getelementptr inbounds i8, ptr %i.mu, i64 %i.mx
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 32
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !80
  %i.nb = icmp eq i32 %i.na, 0
  br i1 %i.nb, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.mu)
          to label %.noexc429 unwind label %bb.bt

.noexc429:                                        ; preds = %bb.bj
  %.pre.i428 = load ptr, ptr %i.ms, align 8, !tbaa !73 ; 2 uses
  %.pre1198 = load ptr, ptr %.pre.i428, align 8, !tbaa !12
  %.phi.trans.insert1199 = getelementptr i8, ptr %.pre1198, i64 -24
  %.pre1200 = load i64, ptr %.phi.trans.insert1199, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %.noexc429, %bb.bi
  %i.nc = phi i64 [ %.pre1200, %.noexc429 ], [ %i.mx, %bb.bi ]
  %i.nd = phi ptr [ %.pre.i428, %.noexc429 ], [ %i.mu, %bb.bi ] ; 2 uses
  %i.ne = getelementptr inbounds i8, ptr %i.nd, i64 %i.nc
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 240
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !195 ; 6 uses
  %.not.i.i.i984 = icmp eq ptr %i.ng, null
  br i1 %.not.i.i.i984, label %bb.bl, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i985

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZSt16__throw_bad_castv() #23
          to label %.noexc988 unwind label %bb.bt

.noexc988:                                        ; preds = %bb.bl
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i985: ; preds = %bb.bk
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 56
  %i.ni = load i8, ptr %i.nh, align 8, !tbaa !201
  %.not.i1.i.i986 = icmp eq i8 %i.ni, 0
  br i1 %.not.i1.i.i986, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i985
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 67
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !40
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.bn:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i985
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ng)
          to label %.noexc989 unwind label %bb.bt

.noexc989:                                        ; preds = %bb.bn
  %i.nl = load ptr, ptr %i.ng, align 8, !tbaa !12
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 48
  %i.nn = load ptr, ptr %i.nm, align 8
  %i.no = invoke noundef signext i8 %i.nn(ptr noundef nonnull align 8 dereferenceable(570) %i.ng, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.bt, !inline_history !135

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc989, %bb.bm
  %.0.i.i.i987 = phi i8 [ %i.nk, %bb.bm ], [ %i.no, %.noexc989 ]
  %i.np = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.nd, i8 noundef signext %.0.i.i.i987)
          to label %.noexc991 unwind label %bb.bt

.noexc991:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.nq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.np)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit431 unwind label %bb.bt ; 0 uses

bb.bo:                                            ; preds = %.noexc.i401, %_ZN11StreamProxylsEPFRSoS0_E.exit395
  %i.nr = landingpad { ptr, i32 }
          cleanup
  %i.ns = load ptr, ptr %29, align 8, !tbaa !81   ; 2 uses
  %i.nt = icmp eq ptr %i.ns, %i.kl
  br i1 %i.nt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432: ; preds = %bb.bo
  %i.nu = load i64, ptr %i.kl, align 8, !tbaa !40
  %i.nv = add i64 %i.nu, 1
  call void @_ZdlPvm(ptr noundef %i.ns, i64 noundef %i.nv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit967

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %._crit_edge.i.i410
  %i.nx = landingpad { ptr, i32 }
          cleanup
  %i.ny = load ptr, ptr %31, align 8, !tbaa !81   ; 2 uses
  %i.nz = icmp eq ptr %i.ny, %i.ln
  br i1 %i.nz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435: ; preds = %bb.bq
  %i.oa = load i64, ptr %i.ln, align 8, !tbaa !40
  %i.ob = add i64 %i.oa, 1
  call void @_ZdlPvm(ptr noundef %i.ny, i64 noundef %i.ob) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  br label %bb.br

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437, %bb.bp
  %.pn232.pn = phi { ptr, i32 } [ %i.nx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437 ], [ %i.nw, %bb.bp ]
  %i.oc = load ptr, ptr %30, align 8, !tbaa !81   ; 2 uses
  %i.od = icmp eq ptr %i.oc, %i.lh
  br i1 %i.od, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438: ; preds = %bb.br
  %i.oe = load i64, ptr %i.lh, align 8, !tbaa !40
  %i.of = add i64 %i.oe, 1
  call void @_ZdlPvm(ptr noundef %i.oc, i64 noundef %i.of) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  br label %bb.lq

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %bb.lq

bb.bt:                                            ; preds = %.noexc991, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc989, %bb.bn, %bb.bl, %bb.bj, %.noexc425, %_ZTW13warningstream.exit423
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %bb.lq

_ZN11StreamProxylsEPFRSoS0_E.exit431:             ; preds = %bb.bh, %.noexc991, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit421
  %.pr1431 = load i64, ptr %i.kz, align 8, !tbaa !205
  %i.oi = icmp eq i64 %.pr1431, 4
  br i1 %i.oi, label %bb.bu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit442

bb.bu:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit431
  %i.oj = load ptr, ptr %28, align 8, !tbaa !81
  %i.ok = load i32, ptr %i.oj, align 1
  %i.ol = icmp ne i32 %i.ok, 1633776499
  %i.om = zext i1 %i.ol to i32
  %i.on = icmp eq i32 %i.om, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit442

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit442: ; preds = %bb.be, %bb.bu, %_ZN11StreamProxylsEPFRSoS0_E.exit431
  %i.oo = phi i1 [ %i.ml, %_ZN11StreamProxylsEPFRSoS0_E.exit431 ], [ %i.ml, %bb.bu ], [ false, %bb.be ] ; 3 uses
  %i.op = phi i1 [ false, %_ZN11StreamProxylsEPFRSoS0_E.exit431 ], [ %i.on, %bb.bu ], [ false, %bb.be ] ; 3 uses
  %i.oq = load ptr, ptr @g_settings, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25
  %i.or = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 6 uses
  store ptr %i.or, ptr %32, align 8, !tbaa !204
  store i32 1633777766, ptr %i.or, align 8
  %i.os = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 4, ptr %i.os, align 8, !tbaa !205
  %i.ot = getelementptr inbounds nuw i8, ptr %32, i64 20
  store i8 0, ptr %i.ot, align 4, !tbaa !40
  %i.ou = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.oq, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.bv unwind label %bb.cl     ; 2 uses

bb.bv:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit442
  %i.ov = load ptr, ptr %32, align 8, !tbaa !81   ; 2 uses
  %i.ow = icmp eq ptr %i.ov, %i.or
  br i1 %i.ow, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447: ; preds = %bb.bv
  %i.ox = load i64, ptr %i.or, align 8, !tbaa !40
end_hunk_0
