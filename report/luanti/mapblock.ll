inline.NumInlined: 1708
inline.NumDeleted: 783
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN8MapBlock17deSerialize_pre22ERSihb:bb.a
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %32) #20
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cv
  %.pn200.pn.pn = phi { ptr, i32 } [ %.pn200.pn, %bb.db ], [ %i.sw, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365
  %.pn204.pn.pn = phi { ptr, i32 } [ %.pn204.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365 ], [ %.pn200.pn.pn, %bb.dc ] ; 3 uses
  %.29156 = extractvalue { ptr, i32 } %.pn204.pn.pn, 1
  %i.tg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI18SerializationError) #20
  %i.th = icmp eq i32 %.29156, %i.tg
  br i1 %i.th, label %bb.de, label %bb.do

bb.de:                                            ; preds = %bb.dd
  %.29 = extractvalue { ptr, i32 } %.pn204.pn.pn, 0
  %i.ti = call ptr @__cxa_begin_catch(ptr %.29) #20 ; 0 uses
  %.not.i373 = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i373, label %_ZTW13warningstream.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.de, %bb.df
  %i.tj = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !97, !nonnull !84, !align !110 ; 2 uses
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !111
  %i.tm = load ptr, ptr %i.tl, align 8
  %i.tn = invoke noundef zeroext i1 %i.tm(ptr noundef nonnull align 8 dereferenceable(8) %i.tk)
          to label %.noexc unwind label %bb.dl, !inline_history !244

.noexc:                                           ; preds = %_ZTW13warningstream.exit
  %.v.i = select i1 %i.tn, i64 976, i64 984
  %i.to = getelementptr inbounds nuw i8, ptr %i.tj, i64 %.v.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @.str.24, ptr %i.h, align 8, !tbaa !114
  %i.tp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.to, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.dg unwind label %bb.dl     ; 0 uses

bb.dg:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @.str.34, ptr %i.g, align 8, !tbaa !114
  %i.tq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.to, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.dh unwind label %bb.dl     ; 2 uses

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !115 ; 5 uses
  %.not.i376 = icmp eq ptr %i.tr, null
  br i1 %.not.i376, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !111
  %i.tt = getelementptr i8, ptr %i.ts, i64 -24
  %i.tu = load i64, ptr %i.tt, align 8
  %i.tv = getelementptr inbounds i8, ptr %i.tr, i64 %i.tu
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 32
  %i.tx = load i32, ptr %i.tw, align 8, !tbaa !116
  %i.ty = icmp eq i32 %i.tx, 0
  br i1 %i.ty, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.tr)
          to label %.noexc377 unwind label %bb.dl

.noexc377:                                        ; preds = %bb.dj
  %.pre.i = load ptr, ptr %i.tq, align 8, !tbaa !115
  br label %bb.dk

bb.dk:                                            ; preds = %.noexc377, %bb.di
  %i.tz = phi ptr [ %.pre.i, %.noexc377 ], [ %i.tr, %bb.di ]
  %i.ua = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.tz)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.dl, !inline_history !245 ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.dh, %bb.dk
  invoke void @__cxa_end_catch()
          to label %bb.dn unwind label %bb.dm

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %bb.dg, %.noexc, %_ZTW13warningstream.exit
  %i.ub = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.do unwind label %bb.gc

bb.dm:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.uc = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.dn:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362, %bb.cu, %bb.ce
  %i.ud = load ptr, ptr %26, align 8, !tbaa !89   ; 2 uses
  %i.ue = icmp eq ptr %i.ud, %i.ou
  br i1 %i.ue, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379: ; preds = %bb.dn
  %i.uf = load i64, ptr %i.ou, align 8, !tbaa !93
  %i.ug = add i64 %i.uf, 1
  call void @_ZdlPvm(ptr noundef %i.ud, i64 noundef %i.ug) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  %i.uh = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.uh, ptr %25, align 8, !tbaa !111
  %i.ui = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.uj = getelementptr i8, ptr %i.uh, i64 -24
  %i.uk = load i64, ptr %i.uj, align 8
  %i.ul = getelementptr inbounds i8, ptr %25, i64 %i.uk
  store ptr %i.ui, ptr %i.ul, align 8, !tbaa !111
  %i.um = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.um, align 8, !tbaa !111
  %i.un = getelementptr inbounds nuw i8, ptr %25, i64 80
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !89 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %25, i64 96 ; 2 uses
  %i.uq = icmp eq ptr %i.uo, %i.up
  br i1 %i.uq, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit384, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i382: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381
  %i.ur = load i64, ptr %i.up, align 8, !tbaa !93
  %i.us = add i64 %i.ur, 1
  call void @_ZdlPvm(ptr noundef %i.uo, i64 noundef %i.us) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit384

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit384: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i382
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.um, align 8, !tbaa !111
  %i.ut = getelementptr inbounds nuw i8, ptr %25, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ut) #20
  %i.uu = getelementptr inbounds nuw i8, ptr %25, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.uu) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  br label %bb.ds

bb.do:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359, %bb.dm, %bb.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359.thread554, %bb.dd
  %.merged264 = phi { ptr, i32 } [ %.pn210.pn547, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359.thread554 ], [ %i.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359 ], [ %.pn204.pn.pn, %bb.dd ], [ %i.uc, %bb.dm ], [ %i.ub, %bb.dl ], [ %i.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357 ] ; 2 uses
  %i.uv = load ptr, ptr %26, align 8, !tbaa !89   ; 2 uses
  %i.uw = icmp eq ptr %i.uv, %i.ou
  br i1 %i.uw, label %.body351, label %.body351.sink.split

.body351.sink.split:                              ; preds = %bb.do, %bb.bw
  %.sink762 = phi ptr [ %i.pi, %bb.bw ], [ %i.uv, %bb.do ]
  %.merged263.ph = phi { ptr, i32 } [ %i.ph, %bb.bw ], [ %.merged264, %bb.do ]
  %i.ux = load i64, ptr %i.ou, align 8, !tbaa !93
  %i.uy = add i64 %i.ux, 1
  call void @_ZdlPvm(ptr noundef %.sink762, i64 noundef %i.uy) #29
  br label %.body351

.body351:                                         ; preds = %.body351.sink.split, %bb.do, %bb.bw
  %.merged263 = phi { ptr, i32 } [ %i.ph, %bb.bw ], [ %.merged264, %bb.do ], [ %.merged263.ph, %.body351.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %bb.dp

bb.dp:                                            ; preds = %.body351, %bb.cc
  %.merged262 = phi { ptr, i32 } [ %.merged263, %.body351 ], [ %i.pp, %bb.cc ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %25) #20
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.cb
  %.merged261 = phi { ptr, i32 } [ %.merged262, %bb.dp ], [ %i.po, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.br
  %.merged260 = phi { ptr, i32 } [ %.merged261, %bb.dq ], [ %i.ot, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  br label %bb.gb

bb.ds:                                            ; preds = %bb.bm, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit384, %bb.p
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  br label %bb.du

bb.dt:                                            ; preds = %bb.dv
  br i1 %3, label %bb.dw, label %bb.fa

bb.du:                                            ; preds = %bb.ds, %bb.dv
  %indvars.iv609 = phi i64 [ 0, %bb.ds ], [ %indvars.iv.next610, %bb.dv ] ; 3 uses
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !57
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %indvars.iv609
  %i.vc = trunc nuw nsw i64 %indvars.iv609 to i32
  %i.vd = mul i32 %i.p, %i.vc
  %i.ve = zext i32 %i.vd to i64
  %i.vf = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.ve
  invoke void @_ZN7MapNode11deSerializeEPKhh(ptr noundef nonnull align 4 dereferenceable(4) %i.vb, ptr noundef nonnull %i.vf, i8 noundef zeroext %2)
          to label %bb.dv unwind label %.thread557

bb.dv:                                            ; preds = %bb.du
  %indvars.iv.next610 = add nuw nsw i64 %indvars.iv609, 1 ; 2 uses
  %exitcond613.not = icmp eq i64 %indvars.iv.next610, 4096
  br i1 %exitcond613.not, label %bb.dt, label %bb.du, !llvm.loop !283

.thread557:                                       ; preds = %bb.du
  %i.vg = landingpad { ptr, i32 }
          cleanup
  br label %.thread723

bb.dw:                                            ; preds = %bb.dt
  %i.vh = icmp ugt i8 %2, 8
  br i1 %i.vh, label %bb.dx, label %bb.er

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store i16 0, ptr %i.f, align 2
  %i.vi = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.f, i64 noundef 2)
          to label %.noexc389 unwind label %bb.ek ; 0 uses

.noexc389:                                        ; preds = %bb.dx
  %i.vj = load ptr, ptr %1, align 8, !tbaa !111
  %i.vk = getelementptr i8, ptr %i.vj, i64 -24
  %i.vl = load i64, ptr %i.vk, align 8
  %i.vm = getelementptr inbounds i8, ptr %1, i64 %i.vl
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 32
  %i.vo = load i32, ptr %i.vn, align 8, !tbaa !116
  %i.vp = and i32 %i.vo, 2
  %.not.i388 = icmp eq i32 %i.vp, 0
  br i1 %.not.i388, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %.noexc389
  invoke fastcc void @_ZL19serialize_throw_eofv()
          to label %.noexc390 unwind label %bb.ek

.noexc390:                                        ; preds = %bb.dy
  unreachable

bb.dz:                                            ; preds = %.noexc389
  %.0.copyload.i.i = load i16, ptr %i.f, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  %.not237 = icmp eq i16 %.0.copyload.i.i, 0
  br i1 %.not237, label %.critedge266, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %.not.i391 = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i391, label %_ZTW13warningstream.exit392, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit392

_ZTW13warningstream.exit392:                      ; preds = %bb.ea, %bb.eb
  %i.vq = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !97, !nonnull !84, !align !110 ; 2 uses
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !111
  %i.vt = load ptr, ptr %i.vs, align 8
  %i.vu = invoke noundef zeroext i1 %i.vt(ptr noundef nonnull align 8 dereferenceable(8) %i.vr)
          to label %.noexc394 unwind label %bb.ek, !inline_history !284

.noexc394:                                        ; preds = %_ZTW13warningstream.exit392
  %.v.i393 = select i1 %i.vu, i64 976, i64 984
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vq, i64 %.v.i393 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @.str.35, ptr %i.e, align 8, !tbaa !114
  %i.vw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.vv, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ec unwind label %bb.ek     ; 0 uses

bb.ec:                                            ; preds = %.noexc394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.36, ptr %i.d, align 8, !tbaa !114
  %i.vx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.vv, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.ed unwind label %bb.ek     ; 2 uses

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !115 ; 5 uses
  %.not.i398 = icmp eq ptr %i.vy, null
  br i1 %.not.i398, label %_ZN11StreamProxylsEPFRSoS0_E.exit402.thread, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !111
  %i.wa = getelementptr i8, ptr %i.vz, i64 -24
  %i.wb = load i64, ptr %i.wa, align 8            ; 2 uses
  %i.wc = getelementptr inbounds i8, ptr %i.vy, i64 %i.wb
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 32
  %i.we = load i32, ptr %i.wd, align 8, !tbaa !116
  %i.wf = icmp eq i32 %i.we, 0
  br i1 %i.wf, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.vy)
          to label %.noexc400 unwind label %bb.ek

.noexc400:                                        ; preds = %bb.ef
  %.pre.i399 = load ptr, ptr %i.vx, align 8, !tbaa !115 ; 2 uses
  %.pre = load ptr, ptr %.pre.i399, align 8, !tbaa !111
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre624 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.eg

bb.eg:                                            ; preds = %.noexc400, %bb.ee
  %i.wg = phi i64 [ %.pre624, %.noexc400 ], [ %i.wb, %bb.ee ]
  %i.wh = phi ptr [ %.pre.i399, %.noexc400 ], [ %i.vy, %bb.ee ] ; 2 uses
  %i.wi = getelementptr inbounds i8, ptr %i.wh, i64 %i.wg
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 240
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !123 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.wk, null
  br i1 %.not.i.i.i, label %bb.eh, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.eh:                                            ; preds = %bb.eg
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc463 unwind label %bb.ek

.noexc463:                                        ; preds = %bb.eh
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.eg
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 56
  %i.wm = load i8, ptr %i.wl, align 8, !tbaa !129
  %.not.i1.i.i = icmp eq i8 %i.wm, 0
  br i1 %.not.i1.i.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wk, i64 67
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !93
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.ej:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.wk)
          to label %.noexc464 unwind label %bb.ek

.noexc464:                                        ; preds = %bb.ej
  %i.wp = load ptr, ptr %i.wk, align 8, !tbaa !111
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 48
  %i.wr = load ptr, ptr %i.wq, align 8
  %i.ws = invoke noundef signext i8 %i.wr(ptr noundef nonnull align 8 dereferenceable(570) %i.wk, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.ek, !inline_history !239

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc464, %bb.ei
  %.0.i.i.i = phi i8 [ %i.wo, %bb.ei ], [ %i.ws, %.noexc464 ]
  %i.wt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.wh, i8 noundef signext %.0.i.i.i)
          to label %.noexc466 unwind label %bb.ek

.noexc466:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.wu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.wt)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit402.thread unwind label %bb.ek ; 0 uses

bb.ek:                                            ; preds = %.noexc466, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc464, %bb.ej, %bb.eh, %bb.ef, %bb.ec, %.noexc394, %_ZTW13warningstream.exit392, %bb.dy, %bb.dx
  %i.wv = landingpad { ptr, i32 }
          cleanup
  br label %.thread723

.critedge266:                                     ; preds = %bb.dz
  %i.ww = icmp ugt i8 %2, 14
  br i1 %i.ww, label %bb.el, label %bb.er

bb.el:                                            ; preds = %.critedge266
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke void @_ZN16StaticObjectList11deSerializeERSi(ptr noundef nonnull align 8 dereferenceable(72) %i.wx, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.en unwind label %bb.em

bb.em:                                            ; preds = %bb.ep, %bb.eo, %bb.el
  %i.wy = landingpad { ptr, i32 }
          cleanup
  br label %.thread723

bb.en:                                            ; preds = %bb.el
  %i.wz = icmp ugt i8 %2, 16
  br i1 %i.wz, label %bb.eo, label %bb.er

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 0, ptr %i.c, align 4
  %i.xa = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i64 noundef 4)
          to label %.noexc405 unwind label %bb.em ; 0 uses

.noexc405:                                        ; preds = %bb.eo
  %i.xb = load ptr, ptr %1, align 8, !tbaa !111
  %i.xc = getelementptr i8, ptr %i.xb, i64 -24
  %i.xd = load i64, ptr %i.xc, align 8
  %i.xe = getelementptr inbounds i8, ptr %1, i64 %i.xd
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 32
  %i.xg = load i32, ptr %i.xf, align 8, !tbaa !116
  %i.xh = and i32 %i.xg, 2
  %.not.i403 = icmp eq i32 %i.xh, 0
  br i1 %.not.i403, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %.noexc405
  invoke fastcc void @_ZL19serialize_throw_eofv()
          to label %.noexc406 unwind label %bb.em

.noexc406:                                        ; preds = %bb.ep
  unreachable

bb.eq:                                            ; preds = %.noexc405
  %.0.copyload.i.i404 = load i32, ptr %i.c, align 4
  %i.xi = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i404) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.xi, ptr %i.xj, align 8, !tbaa !65
  br label %bb.er

bb.er:                                            ; preds = %bb.en, %.critedge266, %bb.dw, %bb.eq
  %.sink726 = phi i64 [ 76, %bb.eq ], [ 72, %bb.dw ], [ 72, %.critedge266 ], [ 72, %bb.en ]
  %.sink = phi i32 [ %i.xi, %bb.eq ], [ -1, %bb.dw ], [ -1, %.critedge266 ], [ -1, %bb.en ]
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink726
  store i32 %.sink, ptr %41, align 4, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #20
  %i.xk = getelementptr inbounds nuw i8, ptr %35, i64 48
  store ptr %i.xk, ptr %35, align 8, !tbaa !185
  %i.xl = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 1, ptr %i.xl, align 8, !tbaa !178
  %i.xm = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.xn = getelementptr inbounds nuw i8, ptr %35, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.xn, align 8, !tbaa !208
  %i.xo = getelementptr inbounds nuw i8, ptr %35, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xo, i8 0, i64 16, i1 false)
  %i.xp = getelementptr inbounds nuw i8, ptr %35, i64 56 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %35, i64 104
  store ptr %i.xq, ptr %i.xp, align 8, !tbaa !209
  %i.xr = getelementptr inbounds nuw i8, ptr %35, i64 64
  store i64 1, ptr %i.xr, align 8, !tbaa !211
  %i.xs = getelementptr inbounds nuw i8, ptr %35, i64 72
  %i.xt = getelementptr inbounds nuw i8, ptr %35, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xs, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.xt, align 8, !tbaa !208
  %i.xu = getelementptr inbounds nuw i8, ptr %35, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xu, i8 0, i64 16, i1 false)
  %i.xv = icmp ugt i8 %2, 20
  br i1 %i.xv, label %bb.es, label %bb.ew

bb.es:                                            ; preds = %bb.er
  invoke void @_ZN13NameIdMapping11deSerializeERSi(ptr noundef nonnull align 8 dereferenceable(112) %35, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.et unwind label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.xw = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.xx = load i64, ptr %i.xw, align 8, !tbaa !197
  %i.xy = and i64 %i.xx, 65535
  %i.xz = icmp eq i64 %i.xy, 1
  br i1 %i.xz, label %._crit_edge.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411

._crit_edge.i.i:                                  ; preds = %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #20
  %i.ya = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 6 uses
  store ptr %i.ya, ptr %36, align 8, !tbaa !137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ya, ptr noundef nonnull align 1 dereferenceable(3) @.str.30, i64 3, i1 false)
  %i.yb = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 3, ptr %i.yb, align 8, !tbaa !139
  %i.yc = getelementptr inbounds nuw i8, ptr %36, i64 19
  store i8 0, ptr %i.yc, align 1, !tbaa !93
  %i.yd = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_tESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.xp, ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %.noexc408 unwind label %bb.ev

.noexc408:                                        ; preds = %._crit_edge.i.i
  %i.ye = icmp ne ptr %i.yd, null
  %i.yf = zext i1 %i.ye to i8
  store i8 %i.yf, ptr %i.m, align 8, !tbaa !170
  %i.yg = load ptr, ptr %36, align 8, !tbaa !89   ; 2 uses
  %i.yh = icmp eq ptr %i.yg, %i.ya
  br i1 %i.yh, label %.critedge270, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409: ; preds = %.noexc408
  %i.yi = load i64, ptr %i.ya, align 8, !tbaa !93
  %i.yj = add i64 %i.yi, 1
  call void @_ZdlPvm(ptr noundef %i.yg, i64 noundef %i.yj) #29
  br label %.critedge270

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411: ; preds = %bb.et
  store i8 0, ptr %i.m, align 8, !tbaa !170
  br label %.critedge272

.critedge270:                                     ; preds = %.noexc408, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  br label %.critedge272

bb.eu:                                            ; preds = %.critedge272, %bb.ew, %bb.es
  %i.yk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.ev:                                            ; preds = %._crit_edge.i.i
  %i.yl = landingpad { ptr, i32 }
          cleanup
  %i.ym = load ptr, ptr %36, align 8, !tbaa !89   ; 2 uses
  %i.yn = icmp eq ptr %i.ym, %i.ya
  br i1 %i.yn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412: ; preds = %bb.ev
  %i.yo = load i64, ptr %i.ya, align 8, !tbaa !93
  %i.yp = add i64 %i.yo, 1
  call void @_ZdlPvm(ptr noundef %i.ym, i64 noundef %i.yp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414: ; preds = %bb.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  br label %bb.ez

bb.ew:                                            ; preds = %bb.er
  invoke void @_Z35content_mapnode_get_name_id_mappingP13NameIdMapping(ptr noundef nonnull %35)
          to label %bb.ex unwind label %bb.eu

bb.ex:                                            ; preds = %bb.ew
  store i8 0, ptr %i.m, align 8, !tbaa !170
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 1, ptr %i.yq, align 1, !tbaa !62
  br label %.critedge272

.critedge272:                                     ; preds = %.critedge270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411, %bb.ex
  %i.yr = load ptr, ptr %i.uz, align 8, !tbaa !57
  %i.ys = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !58
  invoke void @_ZN8MapBlock19correctBlockNodeIdsEPK13NameIdMappingP7MapNodeP8IGameDef(ptr noundef nonnull %35, ptr noundef %i.yr, ptr noundef %i.yt)
          to label %bb.ey unwind label %bb.eu

bb.ey:                                            ; preds = %.critedge272
  call void @_ZN13NameIdMappingD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %35) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  br label %bb.fa

bb.ez:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414, %bb.eu
  %.pn240 = phi { ptr, i32 } [ %i.yk, %bb.eu ], [ %i.yl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414 ]
  call void @_ZN13NameIdMappingD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %35) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  br label %.thread723

bb.fa:                                            ; preds = %bb.ey, %bb.dt
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !58 ; 2 uses
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !111
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  %i.yy = load ptr, ptr %i.yx, align 8
  %i.yz = invoke noundef ptr %i.yy(ptr noundef nonnull align 8 dereferenceable(8) %i.yv)
          to label %_ZN8IGameDef4ndefEv.exit.preheader unwind label %bb.fb, !inline_history !196 ; 6 uses

_ZN8IGameDef4ndefEv.exit.preheader:               ; preds = %bb.fa
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  %i.zb = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 8 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.zd = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 8 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.zf = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 6 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.zh = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 6 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.zj = getelementptr inbounds nuw i8, ptr %37, i64 29
  %i.zk = getelementptr inbounds nuw i8, ptr %39, i64 29
  br label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.zl = landingpad { ptr, i32 }
          cleanup
  br label %.thread723

bb.fc:                                            ; preds = %_ZN8IGameDef4ndefEv.exit.preheader, %_ZN8IGameDef4ndefEv.exit
  %indvars.iv619 = phi i64 [ 0, %_ZN8IGameDef4ndefEv.exit.preheader ], [ %indvars.iv.next620, %_ZN8IGameDef4ndefEv.exit ] ; 10 uses
  %i.zm = load ptr, ptr %i.uz, align 8, !tbaa !57
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %indvars.iv619
  %i.zo = load i16, ptr %i.zn, align 4, !tbaa !166
  %i.zp = zext i16 %i.zo to i64                   ; 2 uses
  %i.zq = load ptr, ptr %i.za, align 8, !tbaa !173
  %i.zr = load ptr, ptr %i.yz, align 8, !tbaa !176 ; 3 uses
  %i.zs = ptrtoint ptr %i.zq to i64
  %i.zt = ptrtoint ptr %i.zr to i64
  %i.zu = sub i64 %i.zs, %i.zt
  %i.zv = sdiv exact i64 %i.zu, 2072
  %i.zw = icmp ugt i64 %i.zv, %i.zp
  br i1 %i.zw, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.zx = getelementptr inbounds nuw [2072 x i8], ptr %i.zr, i64 %i.zp ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 16
  %i.zz = load i64, ptr %i.zy, align 8, !tbaa !139
  %i.aaa = icmp eq i64 %i.zz, 0
  br i1 %i.aaa, label %bb.fe, label %_ZNK14NodeDefManager3getEt.exit

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zr, i64 259000
  br label %_ZNK14NodeDefManager3getEt.exit

_ZNK14NodeDefManager3getEt.exit:                  ; preds = %bb.fd, %bb.fe
  %i.aac = phi ptr [ %i.aab, %bb.fe ], [ %i.zx, %bb.fd ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  store ptr %i.zb, ptr %37, align 8, !tbaa !137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.zb, ptr noundef nonnull align 1 dereferenceable(13) @.str.37, i64 13, i1 false)
  store i64 13, ptr %i.zc, align 8, !tbaa !139
  store i8 0, ptr %i.zj, align 1, !tbaa !93
  %i.aad = invoke noundef zeroext i16 @_ZNK14NodeDefManager5getIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(65848) %i.yz, ptr noundef nonnull align 8 dereferenceable(32) %37)
          to label %bb.ff unwind label %bb.fi

bb.ff:                                            ; preds = %_ZNK14NodeDefManager3getEt.exit
  %i.aae = load ptr, ptr %i.uz, align 8, !tbaa !57
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.aae, i64 %indvars.iv619 ; 2 uses
  %i.aag = load i16, ptr %i.aaf, align 4, !tbaa !166
  %i.aah = icmp eq i16 %i.aad, %i.aag
  br i1 %i.aah, label %bb.fg, label %.critedge

bb.fg:                                            ; preds = %bb.ff
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aaf, i64 2
  %i.aaj = load i8, ptr %i.aai, align 2, !tbaa !168
  %i.aak = icmp eq i8 %i.aaj, 1
  %i.aal = load ptr, ptr %37, align 8, !tbaa !89  ; 2 uses
  %i.aam = icmp eq ptr %i.aal, %i.zb
  br i1 %i.aam, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420: ; preds = %bb.fg
end_hunk_0
