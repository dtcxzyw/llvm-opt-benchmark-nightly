Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/testzfp?download=true
begin_hunk_0_@main:bb.a

.noexc.i290:                                      ; preds = %bb.ch
  %i.ni = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.ni, ptr %11, align 8, !tbaa !44
  %i.nj = load i64, ptr %i.b, align 8, !tbaa !40
  store i64 %i.nj, ptr %i.es, align 8, !tbaa !38
  br label %._crit_edge.i.i289

._crit_edge.i.i289:                               ; preds = %.noexc.i290, %bb.ch
  %i.nk = phi ptr [ %i.ni, %.noexc.i290 ], [ %i.es, %bb.ch ] ; 2 uses
  switch i64 %i.ng, label %bb.cj [
    i64 1, label %bb.ci
    i64 0, label %bb.ck
  ]

bb.ci:                                            ; preds = %._crit_edge.i.i289
  %i.nl = load i8, ptr %i.ne, align 1, !tbaa !38
  store i8 %i.nl, ptr %i.nk, align 1, !tbaa !38
  br label %bb.ck

bb.cj:                                            ; preds = %._crit_edge.i.i289
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nk, ptr nonnull align 1 %i.ne, i64 %i.ng, i1 false)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %._crit_edge.i.i289
  %i.nm = load i64, ptr %i.b, align 8, !tbaa !40  ; 2 uses
  store i64 %i.nm, ptr %i.et, align 8, !tbaa !45
  %i.nn = load ptr, ptr %11, align 8, !tbaa !44
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.nm
  store i8 0, ptr %i.no, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.np = load i64, ptr %i.et, align 8, !tbaa !45 ; 2 uses
  %i.nq = icmp eq i64 %i.np, 2
  %.pre525 = load ptr, ptr %11, align 8, !tbaa !44 ; 3 uses
  br i1 %i.nq, label %bb.cl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit295

bb.cl:                                            ; preds = %bb.ck
  %i.nr = load i16, ptr %.pre525, align 1
  %i.ns = icmp ne i16 %i.nr, 25652
  %i.nt = zext i1 %i.ns to i32
  %i.nu = icmp eq i32 %i.nt, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit295

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit295: ; preds = %bb.cl, %bb.ck
  %i.nv = phi i1 [ false, %bb.ck ], [ %i.nu, %bb.cl ]
  %i.nw = icmp eq ptr %.pre525, %i.es
  br i1 %i.nw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i297: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit295
  %i.nx = icmp ult i64 %i.np, 16
  call void @llvm.assume(i1 %i.nx)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit295
  call void @_ZdlPv(ptr noundef %.pre525) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i297
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br i1 %i.nv, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298
  %i.ny = or i32 %.0123471, 16
  br label %bb.cu

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.nz = load ptr, ptr %i.ew, align 8, !tbaa !312 ; 4 uses
  store ptr %i.eu, ptr %12, align 8, !tbaa !42
  %i.oa = icmp eq ptr %i.nz, null
  br i1 %i.oa, label %.noexc304, label %bb.co

.noexc304:                                        ; preds = %bb.cn
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.29) #25
  unreachable

bb.co:                                            ; preds = %bb.cn
  %i.ob = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.nz) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.ob, ptr %i.a, align 8, !tbaa !40
  %i.oc = icmp ugt i64 %i.ob, 15
  br i1 %i.oc, label %.noexc.i303, label %._crit_edge.i.i302

.noexc.i303:                                      ; preds = %bb.co
  %i.od = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.od, ptr %12, align 8, !tbaa !44
  %i.oe = load i64, ptr %i.a, align 8, !tbaa !40
  store i64 %i.oe, ptr %i.eu, align 8, !tbaa !38
  br label %._crit_edge.i.i302

._crit_edge.i.i302:                               ; preds = %.noexc.i303, %bb.co
  %i.of = phi ptr [ %i.od, %.noexc.i303 ], [ %i.eu, %bb.co ] ; 2 uses
  switch i64 %i.ob, label %bb.cq [
    i64 1, label %bb.cp
    i64 0, label %bb.cr
  ]

bb.cp:                                            ; preds = %._crit_edge.i.i302
  %i.og = load i8, ptr %i.nz, align 1, !tbaa !38
  store i8 %i.og, ptr %i.of, align 1, !tbaa !38
  br label %bb.cr

bb.cq:                                            ; preds = %._crit_edge.i.i302
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.of, ptr nonnull align 1 %i.nz, i64 %i.ob, i1 false)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %._crit_edge.i.i302
  %i.oh = load i64, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  store i64 %i.oh, ptr %i.ev, align 8, !tbaa !45
  %i.oi = load ptr, ptr %12, align 8, !tbaa !44
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.oh
  store i8 0, ptr %i.oj, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ok = load i64, ptr %i.ev, align 8, !tbaa !45 ; 2 uses
  %i.ol = icmp eq i64 %i.ok, 3
  %.pre526 = load ptr, ptr %12, align 8, !tbaa !44 ; 4 uses
  br i1 %i.ol, label %bb.cs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit308

bb.cs:                                            ; preds = %bb.cr
  %i.om = load i16, ptr %.pre526, align 1
  %i.on = xor i16 %i.om, 27745
  %i.oo = getelementptr i8, ptr %.pre526, i64 2
  %i.op = load i8, ptr %i.oo, align 1
  %i.oq = zext i8 %i.op to i16
  %i.or = xor i16 %i.oq, 108
  %i.os = or i16 %i.on, %i.or
  %i.ot = icmp ne i16 %i.os, 0
  %i.ou = zext i1 %i.ot to i32
  %i.ov = icmp eq i32 %i.ou, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit308

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit308: ; preds = %bb.cs, %bb.cr
  %i.ow = phi i1 [ false, %bb.cr ], [ %i.ov, %bb.cs ]
  %i.ox = icmp eq ptr %.pre526, %i.eu
  br i1 %i.ox, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i310, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i310: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit308
  %i.oy = icmp ult i64 %i.ok, 16
  call void @llvm.assume(i1 %i.oy)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit308
  call void @_ZdlPv(ptr noundef %.pre526) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i310
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br i1 %i.ow, label %bb.ct, label %.thread

bb.ct:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311
  %i.oz = or i32 %.0123471, 30
  br label %bb.cu

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311
  %i.pa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.22, i64 noundef 73) ; 0 uses
  %i.pb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr), !inline_history !311 ; 0 uses
  br label %bb.ec

bb.cu:                                            ; preds = %bb.ab, %bb.aw, %bb.br, %bb.cf, %bb.ct, %bb.cm, %bb.by, %bb.bk, %bb.ai
  %.1130 = phi i32 [ %i.fx, %bb.ab ], [ %i.gy, %bb.ai ], [ %.0129469, %bb.aw ], [ %.0129469, %bb.bk ], [ %.0129469, %bb.br ], [ %.0129469, %bb.by ], [ %.0129469, %bb.cf ], [ %.0129469, %bb.cm ], [ 3, %bb.ct ] ; 2 uses
  %.1127 = phi i32 [ %.0126470, %bb.ab ], [ %.0126470, %bb.ai ], [ %i.it, %bb.aw ], [ %i.kq, %bb.bk ], [ %.0126470, %bb.br ], [ %.0126470, %bb.by ], [ %.0126470, %bb.cf ], [ %.0126470, %bb.cm ], [ 3, %bb.ct ] ; 2 uses
  %.1124 = phi i32 [ %.0123471, %bb.ab ], [ %.0123471, %bb.ai ], [ %.0123471, %bb.aw ], [ %.0123471, %bb.bk ], [ %i.ln, %bb.br ], [ %i.mi, %bb.by ], [ %i.nd, %bb.cf ], [ %i.ny, %bb.cm ], [ %i.oz, %bb.ct ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.v

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223
  %.pn157.pn = phi { ptr, i32 } [ %.pn142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223 ], [ %.pn147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249 ]
  resume { ptr, i32 } %.pn157.pn

._crit_edge:                                      ; preds = %bb.cu
  %i.pc = call i32 @llvm.umax.i32(i32 %.1130, i32 1)
  %.not162 = icmp eq i32 %.1124, 0
  %spec.select = select i1 %.not162, i32 30, i32 %.1124
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit339
  %.0126.lcssa558 = phi i32 [ %.1127, %._crit_edge ], [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit339 ] ; 2 uses
  %.0129.lcssa556 = phi i32 [ %i.pc, %._crit_edge ], [ 1, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit339 ] ; 5 uses
  %i.pd = phi i32 [ %spec.select, %._crit_edge ], [ 30, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit339 ] ; 24 uses
  %i.pe = call noundef i32 @_Z12common_testsv()
  %.not163 = icmp eq i32 %i.pe, 0
  br i1 %.not163, label %.preheader364, label %bb.ec

.preheader364:                                    ; preds = %._crit_edge.thread
  %.not161 = icmp eq i32 %.0126.lcssa558, 0
  %.2128 = select i1 %.not161, i32 3, i32 %.0126.lcssa558
  %.2128.fr = freeze i32 %.2128                   ; 2 uses
  %i.pf = and i32 %.2128.fr, 1
  %.not167 = icmp eq i32 %i.pf, 0
  %i.pg = and i32 %.2128.fr, 2
  %.not168 = icmp eq i32 %i.pg, 0                 ; 2 uses
  br i1 %.not167, label %.preheader364.split.us, label %.preheader364.split

.preheader364.split.us:                           ; preds = %.preheader364
  br i1 %.not168, label %.split.us.thread, label %.preheader364.split.us.split.preheader

.preheader364.split.us.split.preheader:           ; preds = %.preheader364.split.us
  %i.ph = and i32 %.0129.lcssa556, 1
  %.not165.us = icmp eq i32 %i.ph, 0
  br i1 %.not165.us, label %.loopexit.split.us.split.us491, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader364.split.us.split.preheader
  %i.pi = and i32 %i.pd, 2
  %.not166.us.us490 = icmp eq i32 %i.pi, 0
  br i1 %.not166.us.us490, label %.preheader.us.1, label %bb.da

.loopexit.split.us.split.us491:                   ; preds = %.preheader.us.3, %bb.dd, %.preheader364.split.us.split.preheader
  %.4.us = phi i32 [ 0, %.preheader364.split.us.split.preheader ], [ %i.qc, %bb.dd ], [ %.3.us.us.2, %.preheader.us.3 ] ; 3 uses
  %13 = and i32 %.0129.lcssa556, 2
  %.not165.us.1 = icmp eq i32 %13, 0
  br i1 %.not165.us.1, label %.split.us, label %.preheader.us.preheader.1.a

.preheader.us.preheader.1.a:                      ; preds = %.loopexit.split.us.split.us491
  %i.pj = and i32 %i.pd, 2
  %.not166.us.us490.1514 = icmp eq i32 %i.pj, 0
  br i1 %.not166.us.us490.1514, label %.preheader.us.1.1.a, label %bb.cw

bb.cw:                                            ; preds = %.preheader.us.preheader.1.a
  %i.pk = call noundef i32 @_Z4testIdEjj9ArraySize(i32 noundef 1, i32 noundef 1)
  %i.pl = add i32 %i.pk, %.4.us
  br label %.preheader.us.1.1.a

.preheader.us.1.1.a:                              ; preds = %bb.cw, %.preheader.us.preheader.1.a
  %.3.us.us.1516.a = phi i32 [ %i.pl, %bb.cw ], [ %.4.us, %.preheader.us.preheader.1.a ] ; 2 uses
  %i.pm = and i32 %i.pd, 4
  %.not166.us.us490.1.1 = icmp eq i32 %i.pm, 0
  br i1 %.not166.us.us490.1.1, label %.preheader.us.2.1.a, label %bb.cx

bb.cx:                                            ; preds = %.preheader.us.1.1.a
  %i.pn = call noundef i32 @_Z4testIdEjj9ArraySize(i32 noundef 2, i32 noundef 1)
  %i.po = add i32 %i.pn, %.3.us.us.1516.a
  br label %.preheader.us.2.1.a

.preheader.us.2.1.a:                              ; preds = %bb.cx, %.preheader.us.1.1.a
  %.3.us.us.1.1.a = phi i32 [ %i.po, %bb.cx ], [ %.3.us.us.1516.a, %.preheader.us.1.1.a ] ; 2 uses
  %i.pp = and i32 %i.pd, 8
  %.not166.us.us490.2.1 = icmp eq i32 %i.pp, 0
  br i1 %.not166.us.us490.2.1, label %.preheader.us.3.1.a, label %bb.cy

bb.cy:                                            ; preds = %.preheader.us.2.1.a
  %i.pq = call noundef i32 @_Z4testIdEjj9ArraySize(i32 noundef 3, i32 noundef 1)
  %i.pr = add i32 %i.pq, %.3.us.us.1.1.a
  br label %.preheader.us.3.1.a

.preheader.us.3.1.a:                              ; preds = %bb.cy, %.preheader.us.2.1.a
  %.3.us.us.2.1 = phi i32 [ %i.pr, %bb.cy ], [ %.3.us.us.1.1.a, %.preheader.us.2.1.a ] ; 2 uses
  %i.ps = and i32 %i.pd, 16
  %.not166.us.us490.3.1 = icmp eq i32 %i.ps, 0
  br i1 %.not166.us.us490.3.1, label %.split.us, label %bb.cz

bb.cz:                                            ; preds = %.preheader.us.3.1.a
  %14 = call noundef i32 @_Z4testIdEjj9ArraySize(i32 noundef 4, i32 noundef 1)
  %15 = add i32 %14, %.3.us.us.2.1
  br label %.split.us

bb.da:                                            ; preds = %.preheader.us.preheader
  %i.pt = call noundef i32 @_Z4testIdEjj9ArraySize(i32 noundef 1, i32 noundef 0)
  br label %.preheader.us.1

.preheader.us.1:                                  ; preds = %bb.da, %.preheader.us.preheader
  %.3.us.us.a = phi i32 [ %i.pt, %bb.da ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %i.pu = and i32 %i.pd, 4
  %.not166.us.us490.1 = icmp eq i32 %i.pu, 0
  br i1 %.not166.us.us490.1, label %.preheader.us.2, label %bb.db

bb.db:                                            ; preds = %.preheader.us.1
  %i.pv = call noundef i32 @_Z4testIdEjj9ArraySize(i32 noundef 2, i32 noundef 0)
  %i.pw = add i32 %i.pv, %.3.us.us.a
  br label %.preheader.us.2

.preheader.us.2:                                  ; preds = %bb.db, %.preheader.us.1
  %.3.us.us.1 = phi i32 [ %i.pw, %bb.db ], [ %.3.us.us.a, %.preheader.us.1 ] ; 2 uses
  %i.px = and i32 %i.pd, 8
  %.not166.us.us490.2 = icmp eq i32 %i.px, 0
  br i1 %.not166.us.us490.2, label %.preheader.us.3, label %bb.dc

bb.dc:                                            ; preds = %.preheader.us.2
  %i.py = call noundef i32 @_Z4testIdEjj9ArraySize(i32 noundef 3, i32 noundef 0)
  %i.pz = add i32 %i.py, %.3.us.us.1
  br label %.preheader.us.3

.preheader.us.3:                                  ; preds = %bb.dc, %.preheader.us.2
  %.3.us.us.2 = phi i32 [ %i.pz, %bb.dc ], [ %.3.us.us.1, %.preheader.us.2 ] ; 2 uses
  %i.qa = and i32 %i.pd, 16
  %.not166.us.us490.3 = icmp eq i32 %i.qa, 0
  br i1 %.not166.us.us490.3, label %.loopexit.split.us.split.us491, label %bb.dd

bb.dd:                                            ; preds = %.preheader.us.3
  %i.qb = call noundef i32 @_Z4testIdEjj9ArraySize(i32 noundef 4, i32 noundef 0)
  %i.qc = add i32 %i.qb, %.3.us.us.2
  br label %.loopexit.split.us.split.us491

.preheader364.split:                              ; preds = %.preheader364
  %i.qd = and i32 %.0129.lcssa556, 1
  %.not165.us496 = icmp eq i32 %i.qd, 0           ; 2 uses
  br i1 %.not168, label %.preheader364.split.split.us.preheader, label %.preheader364.split.split.preheader

.preheader364.split.split.preheader:              ; preds = %.preheader364.split
  br i1 %.not165.us496, label %.loopexit.split.split, label %.preheader.preheader

.preheader364.split.split.us.preheader:           ; preds = %.preheader364.split
  br i1 %.not165.us496, label %.loopexit.split.split.us.us.a, label %.preheader.us498.preheader

.preheader.us498.preheader:                       ; preds = %.preheader364.split.split.us.preheader
  %i.qe = and i32 %i.pd, 2
  %.not166.us479.us = icmp eq i32 %i.qe, 0
  br i1 %.not166.us479.us, label %.preheader.us498.1, label %bb.di

.loopexit.split.split.us.us.a:                    ; preds = %.preheader.us498.3, %bb.dl, %.preheader364.split.split.us.preheader
  %.4.us497 = phi i32 [ 0, %.preheader364.split.split.us.preheader ], [ %.3.us480.us.2, %.preheader.us498.3 ], [ %i.qy, %bb.dl ] ; 3 uses
  %16 = and i32 %.0129.lcssa556, 2
  %.not165.us496.1 = icmp eq i32 %16, 0
  br i1 %.not165.us496.1, label %.split.us, label %.preheader.us498.preheader.1

.preheader.us498.preheader.1:                     ; preds = %.loopexit.split.split.us.us.a
  %i.qf = and i32 %i.pd, 2
  %.not166.us479.us.1510.a = icmp eq i32 %i.qf, 0
  br i1 %.not166.us479.us.1510.a, label %.preheader.us498.1.1, label %bb.de

bb.de:                                            ; preds = %.preheader.us498.preheader.1
  %i.qg = call noundef i32 @_Z4testIfEjj9ArraySize(i32 noundef 1, i32 noundef 1)
  %i.qh = add i32 %i.qg, %.4.us497
  br label %.preheader.us498.1.1

.preheader.us498.1.1:                             ; preds = %bb.de, %.preheader.us498.preheader.1
  %.3.us480.us.1512.a = phi i32 [ %.4.us497, %.preheader.us498.preheader.1 ], [ %i.qh, %bb.de ] ; 2 uses
  %i.qi = and i32 %i.pd, 4
  %.not166.us479.us.1.1.a = icmp eq i32 %i.qi, 0
  br i1 %.not166.us479.us.1.1.a, label %.preheader.us498.2.1, label %bb.df

bb.df:                                            ; preds = %.preheader.us498.1.1
  %i.qj = call noundef i32 @_Z4testIfEjj9ArraySize(i32 noundef 2, i32 noundef 1)
  %i.qk = add i32 %i.qj, %.3.us480.us.1512.a
  br label %.preheader.us498.2.1

.preheader.us498.2.1:                             ; preds = %bb.df, %.preheader.us498.1.1
  %.3.us480.us.1.1.a = phi i32 [ %.3.us480.us.1512.a, %.preheader.us498.1.1 ], [ %i.qk, %bb.df ] ; 2 uses
  %i.ql = and i32 %i.pd, 8
  %.not166.us479.us.2.1.a = icmp eq i32 %i.ql, 0
  br i1 %.not166.us479.us.2.1.a, label %.preheader.us498.3.1, label %bb.dg

bb.dg:                                            ; preds = %.preheader.us498.2.1
  %i.qm = call noundef i32 @_Z4testIfEjj9ArraySize(i32 noundef 3, i32 noundef 1)
  %i.qn = add i32 %i.qm, %.3.us480.us.1.1.a
  br label %.preheader.us498.3.1

.preheader.us498.3.1:                             ; preds = %bb.dg, %.preheader.us498.2.1
  %.3.us480.us.2.1 = phi i32 [ %.3.us480.us.1.1.a, %.preheader.us498.2.1 ], [ %i.qn, %bb.dg ] ; 2 uses
  %i.qo = and i32 %i.pd, 16
  %.not166.us479.us.3.1.a = icmp eq i32 %i.qo, 0
  br i1 %.not166.us479.us.3.1.a, label %.split.us, label %bb.dh

bb.dh:                                            ; preds = %.preheader.us498.3.1
  %17 = call noundef i32 @_Z4testIfEjj9ArraySize(i32 noundef 4, i32 noundef 1)
  %18 = add i32 %17, %.3.us480.us.2.1
  br label %.split.us

bb.di:                                            ; preds = %.preheader.us498.preheader
  %i.qp = call noundef i32 @_Z4testIfEjj9ArraySize(i32 noundef 1, i32 noundef 0)
  br label %.preheader.us498.1

.preheader.us498.1:                               ; preds = %bb.di, %.preheader.us498.preheader
  %.3.us480.us.a = phi i32 [ 0, %.preheader.us498.preheader ], [ %i.qp, %bb.di ] ; 2 uses
  %i.qq = and i32 %i.pd, 4
  %.not166.us479.us.1 = icmp eq i32 %i.qq, 0
  br i1 %.not166.us479.us.1, label %.preheader.us498.2, label %bb.dj

bb.dj:                                            ; preds = %.preheader.us498.1
  %i.qr = call noundef i32 @_Z4testIfEjj9ArraySize(i32 noundef 2, i32 noundef 0)
  %i.qs = add i32 %i.qr, %.3.us480.us.a
  br label %.preheader.us498.2

.preheader.us498.2:                               ; preds = %bb.dj, %.preheader.us498.1
  %.3.us480.us.1 = phi i32 [ %.3.us480.us.a, %.preheader.us498.1 ], [ %i.qs, %bb.dj ] ; 2 uses
  %i.qt = and i32 %i.pd, 8
  %.not166.us479.us.2 = icmp eq i32 %i.qt, 0
  br i1 %.not166.us479.us.2, label %.preheader.us498.3, label %bb.dk

bb.dk:                                            ; preds = %.preheader.us498.2
  %i.qu = call noundef i32 @_Z4testIfEjj9ArraySize(i32 noundef 3, i32 noundef 0)
  %i.qv = add i32 %i.qu, %.3.us480.us.1
  br label %.preheader.us498.3

.preheader.us498.3:                               ; preds = %bb.dk, %.preheader.us498.2
  %.3.us480.us.2 = phi i32 [ %.3.us480.us.1, %.preheader.us498.2 ], [ %i.qv, %bb.dk ] ; 2 uses
  %i.qw = and i32 %i.pd, 16
  %.not166.us479.us.3 = icmp eq i32 %i.qw, 0
  br i1 %.not166.us479.us.3, label %.loopexit.split.split.us.us.a, label %bb.dl

bb.dl:                                            ; preds = %.preheader.us498.3
  %i.qx = call noundef i32 @_Z4testIfEjj9ArraySize(i32 noundef 4, i32 noundef 0)
  %i.qy = add i32 %i.qx, %.3.us480.us.2
  br label %.loopexit.split.split.us.us.a

.split.us:                                        ; preds = %.loopexit.split.split, %bb.dt, %.preheader.3.1, %.loopexit.split.split.us.us.a, %bb.dh, %.preheader.us498.3.1, %.loopexit.split.us.split.us491, %bb.cz, %.preheader.us.3.1.a
  %.us-phi493 = phi i32 [ %.3.us480.us.2.1, %.preheader.us498.3.1 ], [ %.3.us.us.2.1, %.preheader.us.3.1.a ], [ %18, %bb.dh ], [ %.4.us, %.loopexit.split.us.split.us491 ], [ %15, %bb.cz ], [ %.4.us497, %.loopexit.split.split.us.us.a ], [ %.4, %.loopexit.split.split ], [ %i.sm, %bb.dt ], [ %.3.2.1, %.preheader.3.1 ] ; 2 uses
  %.not164.not = icmp eq i32 %.us-phi493, 0
  br i1 %.not164.not, label %.split.us.thread, label %bb.du

.preheader.preheader:                             ; preds = %.preheader364.split.split.preheader
  %i.qz = and i32 %i.pd, 2
  %.not166 = icmp eq i32 %i.qz, 0
  br i1 %.not166, label %.preheader.1, label %bb.dm

bb.dm:                                            ; preds = %.preheader.preheader
  %i.ra = call noundef i32 @_Z4testIfEjj9ArraySize(i32 noundef 1, i32 noundef 0)
  %i.rb = call noundef i32 @_Z4testIdEjj9ArraySize(i32 noundef 1, i32 noundef 0)
  %i.rc = add i32 %i.rb, %i.ra
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.dm
  %.3 = phi i32 [ %i.rc, %bb.dm ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.rd = and i32 %i.pd, 4
  %.not166.1 = icmp eq i32 %i.rd, 0
  br i1 %.not166.1, label %.preheader.2, label %bb.dn

bb.dn:                                            ; preds = %.preheader.1
  %i.re = call noundef i32 @_Z4testIfEjj9ArraySize(i32 noundef 2, i32 noundef 0)
  %i.rf = add i32 %i.re, %.3
  %i.rg = call noundef i32 @_Z4testIdEjj9ArraySize(i32 noundef 2, i32 noundef 0)
  %i.rh = add i32 %i.rg, %i.rf
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.dn, %.preheader.1
  %.3.1 = phi i32 [ %i.rh, %bb.dn ], [ %.3, %.preheader.1 ] ; 2 uses
  %i.ri = and i32 %i.pd, 8
  %.not166.2 = icmp eq i32 %i.ri, 0
  br i1 %.not166.2, label %.preheader.3, label %bb.do

bb.do:                                            ; preds = %.preheader.2
  %i.rj = call noundef i32 @_Z4testIfEjj9ArraySize(i32 noundef 3, i32 noundef 0)
  %i.rk = add i32 %i.rj, %.3.1
  %i.rl = call noundef i32 @_Z4testIdEjj9ArraySize(i32 noundef 3, i32 noundef 0)
  %i.rm = add i32 %i.rl, %i.rk
  br label %.preheader.3

.preheader.3:                                     ; preds = %bb.do, %.preheader.2
  %.3.2 = phi i32 [ %i.rm, %bb.do ], [ %.3.1, %.preheader.2 ] ; 2 uses
  %i.rn = and i32 %i.pd, 16
  %.not166.3 = icmp eq i32 %i.rn, 0
  br i1 %.not166.3, label %.loopexit.split.split, label %bb.dp

bb.dp:                                            ; preds = %.preheader.3
  %i.ro = call noundef i32 @_Z4testIfEjj9ArraySize(i32 noundef 4, i32 noundef 0)
  %i.rp = add i32 %i.ro, %.3.2
  %i.rq = call noundef i32 @_Z4testIdEjj9ArraySize(i32 noundef 4, i32 noundef 0)
  %i.rr = add i32 %i.rq, %i.rp
  br label %.loopexit.split.split

.loopexit.split.split:                            ; preds = %.preheader.3, %bb.dp, %.preheader364.split.split.preheader
  %.4 = phi i32 [ 0, %.preheader364.split.split.preheader ], [ %i.rr, %bb.dp ], [ %.3.2, %.preheader.3 ] ; 3 uses
  %i.rs = and i32 %.0129.lcssa556, 2
  %.not165.1 = icmp eq i32 %i.rs, 0
  br i1 %.not165.1, label %.split.us, label %.preheader.preheader.1

.preheader.preheader.1:                           ; preds = %.loopexit.split.split
  %i.rt = and i32 %i.pd, 2
  %.not166.1506 = icmp eq i32 %i.rt, 0
  br i1 %.not166.1506, label %.preheader.1.1, label %bb.dq

bb.dq:                                            ; preds = %.preheader.preheader.1
  %i.ru = call noundef i32 @_Z4testIfEjj9ArraySize(i32 noundef 1, i32 noundef 1)
  %i.rv = add i32 %i.ru, %.4
  %i.rw = call noundef i32 @_Z4testIdEjj9ArraySize(i32 noundef 1, i32 noundef 1)
  %i.rx = add i32 %i.rw, %i.rv
  br label %.preheader.1.1

.preheader.1.1:                                   ; preds = %bb.dq, %.preheader.preheader.1
  %.3.1508 = phi i32 [ %i.rx, %bb.dq ], [ %.4, %.preheader.preheader.1 ] ; 2 uses
  %i.ry = and i32 %i.pd, 4
  %.not166.1.1 = icmp eq i32 %i.ry, 0
  br i1 %.not166.1.1, label %.preheader.2.1, label %bb.dr

bb.dr:                                            ; preds = %.preheader.1.1
  %i.rz = call noundef i32 @_Z4testIfEjj9ArraySize(i32 noundef 2, i32 noundef 1)
  %i.sa = add i32 %i.rz, %.3.1508
  %i.sb = call noundef i32 @_Z4testIdEjj9ArraySize(i32 noundef 2, i32 noundef 1)
  %i.sc = add i32 %i.sb, %i.sa
  br label %.preheader.2.1

.preheader.2.1:                                   ; preds = %bb.dr, %.preheader.1.1
  %.3.1.1 = phi i32 [ %i.sc, %bb.dr ], [ %.3.1508, %.preheader.1.1 ] ; 2 uses
  %i.sd = and i32 %i.pd, 8
  %.not166.2.1 = icmp eq i32 %i.sd, 0
  br i1 %.not166.2.1, label %.preheader.3.1, label %bb.ds

bb.ds:                                            ; preds = %.preheader.2.1
  %i.se = call noundef i32 @_Z4testIfEjj9ArraySize(i32 noundef 3, i32 noundef 1)
  %i.sf = add i32 %i.se, %.3.1.1
  %i.sg = call noundef i32 @_Z4testIdEjj9ArraySize(i32 noundef 3, i32 noundef 1)
  %i.sh = add i32 %i.sg, %i.sf
  br label %.preheader.3.1

.preheader.3.1:                                   ; preds = %bb.ds, %.preheader.2.1
  %.3.2.1 = phi i32 [ %i.sh, %bb.ds ], [ %.3.1.1, %.preheader.2.1 ] ; 2 uses
  %i.si = and i32 %i.pd, 16
  %.not166.3.1 = icmp eq i32 %i.si, 0
  br i1 %.not166.3.1, label %.split.us, label %bb.dt

bb.dt:                                            ; preds = %.preheader.3.1
  %i.sj = call noundef i32 @_Z4testIfEjj9ArraySize(i32 noundef 4, i32 noundef 1)
  %i.sk = add i32 %i.sj, %.3.2.1
  %i.sl = call noundef i32 @_Z4testIdEjj9ArraySize(i32 noundef 4, i32 noundef 1)
  %i.sm = add i32 %i.sl, %i.sk
  br label %.split.us

bb.du:                                            ; preds = %.split.us
  %i.sn = zext i32 %.us-phi493 to i64
  %i.so = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.sn) ; 4 uses
  %i.sp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.so, ptr noundef nonnull @.str.23, i64 noundef 15) ; 0 uses
  %i.sq = load ptr, ptr %i.so, align 8, !tbaa !14
  %i.sr = getelementptr i8, ptr %i.sq, i64 -24
  %i.ss = load i64, ptr %i.sr, align 8
  %i.st = getelementptr inbounds i8, ptr %i.so, i64 %i.ss
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 240
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !31 ; 6 uses
  %.not.i.i.i340 = icmp eq ptr %i.sv, null
  br i1 %.not.i.i.i340, label %bb.dv, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i341

bb.dv:                                            ; preds = %bb.du
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i341: ; preds = %bb.du
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 56
  %i.sx = load i8, ptr %i.sw, align 8, !tbaa !37
  %.not.i1.i.i342 = icmp eq i8 %i.sx, 0
  br i1 %.not.i1.i.i342, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i341
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sv, i64 67
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !38
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit344

bb.dx:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i341
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.sv)
  %i.ta = load ptr, ptr %i.sv, align 8, !tbaa !14
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 48
  %i.tc = load ptr, ptr %i.tb, align 8
  %i.td = call noundef signext i8 %i.tc(ptr noundef nonnull align 8 dereferenceable(570) %i.sv, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit344

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit344: ; preds = %bb.dw, %bb.dx
  %.0.i.i.i343 = phi i8 [ %i.sz, %bb.dw ], [ %i.td, %bb.dx ]
  %i.te = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.so, i8 noundef signext %.0.i.i.i343)
  br label %bb.eb

.split.us.thread:                                 ; preds = %.preheader364.split.us, %.split.us
  %i.tf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.24, i64 noundef 16) ; 0 uses
  %i.tg = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %i.th = getelementptr i8, ptr %i.tg, i64 -24
  %i.ti = load i64, ptr %i.th, align 8
  %i.tj = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ti
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 240
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !31 ; 6 uses
  %.not.i.i.i345 = icmp eq ptr %i.tl, null
  br i1 %.not.i.i.i345, label %bb.dy, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i346

bb.dy:                                            ; preds = %.split.us.thread
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i346: ; preds = %.split.us.thread
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 56
  %i.tn = load i8, ptr %i.tm, align 8, !tbaa !37
  %.not.i1.i.i347 = icmp eq i8 %i.tn, 0
  br i1 %.not.i1.i.i347, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i346
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 67
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !38
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit349

bb.ea:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i346
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.tl)
  %i.tq = load ptr, ptr %i.tl, align 8, !tbaa !14
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 48
  %i.ts = load ptr, ptr %i.tr, align 8
  %i.tt = call noundef signext i8 %i.ts(ptr noundef nonnull align 8 dereferenceable(570) %i.tl, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit349

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit349: ; preds = %bb.dz, %bb.ea
  %.0.i.i.i348 = phi i8 [ %i.tp, %bb.dz ], [ %i.tt, %bb.ea ]
  %i.tu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i348)
  br label %bb.eb

bb.eb:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit349, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit344
  %.sink = phi ptr [ %i.tu, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit349 ], [ %i.te, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit344 ]
  %.not164562 = phi i32 [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit349 ], [ 1, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit344 ]
  %i.tv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink) ; 0 uses
  br label %bb.ec

bb.ec:                                            ; preds = %.thread, %bb.eb, %._crit_edge.thread
  %.2134 = phi i32 [ 1, %.thread ], [ %.not164562, %bb.eb ], [ 1, %._crit_edge.thread ]
  ret i32 %.2134
}
end_hunk_0
begin_hunk_1_@_Z12gen_array_3dIfEbPT_m:bb.a
  br i1 %i.t, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader45.preheader
  %.044.lcssa = phi ptr [ %i.h, %.preheader45.preheader ], [ %.04350, %.lr.ph ] ; 2 uses
  %.043.lcssa = phi ptr [ %i.q, %.preheader45.preheader ], [ %.04449, %.lr.ph ]
  tail call void @_ZdaPv(ptr noundef nonnull %.043.lcssa) #26
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_Z21convert_ints_to_realsIfEvPT_PKim.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %.lr.ph.i
  %.06.i = phi i64 [ %i.z, %.lr.ph.i ], [ 0, %.loopexit ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.044.lcssa, i64 %.06.i
  %i.v = load i32, ptr %i.u, align 4, !tbaa !39
  %i.w = sitofp i32 %i.v to float
  %i.x = tail call noundef float @ldexpf(float noundef %i.w, i32 noundef -12) #24
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06.i
  store float %i.x, ptr %i.y, align 4, !tbaa !99
  %i.z = add nuw i64 %.06.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.z, %i.d
  br i1 %exitcond.not.i, label %_Z21convert_ints_to_realsIfEvPT_PKim.exit.thread, label %.lr.ph.i

_Z21convert_ints_to_realsIfEvPT_PKim.exit.thread: ; preds = %.lr.ph.i, %.loopexit
  tail call void @_ZdaPv(ptr noundef nonnull %.044.lcssa) #26
  br label %bb.b

bb.b:                                             ; preds = %_Z21convert_ints_to_realsIfEvPT_PKim.exit.thread, %bb.a
  ret i1 %or.cond
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local noundef zeroext i1 @_Z12gen_array_4dIfEbPT_m(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp ugt i64 %1, 3
  %i.b = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %1)
  %.not = icmp samesign ult i64 %i.b, 2
  %or.cond = select i1 %i.a, i1 %.not, i1 false   ; 2 uses
  br i1 %or.cond, label %.preheader54.preheader, label %bb.b

.preheader54.preheader:                           ; preds = %bb.a
  %i.c = mul i64 %1, %1                           ; 2 uses
  %i.d = mul i64 %i.c, %i.c                       ; 4 uses
  %i.e = icmp ugt i64 %i.d, 4611686018427387903
  %i.f = shl nuw i64 %i.d, 2
  %i.g = select i1 %i.e, i64 -1, i64 %i.f         ; 2 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #28 ; 19 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.h, i8 0, i64 1024, i1 false), !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 340
  store i32 65536, ptr %i.i, align 4, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 344
  store i32 -65536, ptr %i.j, align 4, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 356
  store i32 -65536, ptr %i.k, align 4, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 360
  store i32 65536, ptr %i.l, align 4, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 404
  store i32 -65536, ptr %i.m, align 4, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 408
  store i32 65536, ptr %i.n, align 4, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 420
  store i32 65536, ptr %i.o, align 4, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 424
  store i32 -65536, ptr %i.p, align 4, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 596
  store i32 -65536, ptr %i.q, align 4, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 600
  store i32 65536, ptr %i.r, align 4, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 612
  store i32 65536, ptr %i.s, align 4, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 616
  store i32 -65536, ptr %i.t, align 4, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 660
  store i32 65536, ptr %i.u, align 4, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 664
  store i32 -65536, ptr %i.v, align 4, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 676
  store i32 -65536, ptr %i.w, align 4, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 680
  store i32 65536, ptr %i.x, align 4, !tbaa !39
  %i.y = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #28 ; 2 uses
  %i.z = icmp ugt i64 %1, 4
  br i1 %i.z, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader54.preheader, %.lr.ph
  %.061 = phi i64 [ %i.aa, %.lr.ph ], [ 4, %.preheader54.preheader ] ; 2 uses
  %.05160 = phi ptr [ %.05259, %.lr.ph ], [ %i.y, %.preheader54.preheader ] ; 3 uses
  %.05259 = phi ptr [ %.05160, %.lr.ph ], [ %i.h, %.preheader54.preheader ] ; 3 uses
  tail call void @_Z8refine4dPiPKim(ptr noundef %.05160, ptr noundef %.05259, i64 noundef %.061)
  %i.aa = shl nuw i64 %.061, 1                    ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %1
  br i1 %i.ab, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader54.preheader
  %.052.lcssa = phi ptr [ %i.h, %.preheader54.preheader ], [ %.05160, %.lr.ph ] ; 2 uses
  %.051.lcssa = phi ptr [ %i.y, %.preheader54.preheader ], [ %.05259, %.lr.ph ]
  tail call void @_ZdaPv(ptr noundef nonnull %.051.lcssa) #26
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_Z21convert_ints_to_realsIfEvPT_PKim.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %.lr.ph.i
  %.06.i = phi i64 [ %i.ah, %.lr.ph.i ], [ 0, %.loopexit ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.052.lcssa, i64 %.06.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !39
  %i.ae = sitofp i32 %i.ad to float
  %i.af = tail call noundef float @ldexpf(float noundef %i.ae, i32 noundef -12) #24
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06.i
  store float %i.af, ptr %i.ag, align 4, !tbaa !99
  %i.ah = add nuw i64 %.06.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ah, %i.d
  br i1 %exitcond.not.i, label %_Z21convert_ints_to_realsIfEvPT_PKim.exit.thread, label %.lr.ph.i

_Z21convert_ints_to_realsIfEvPT_PKim.exit.thread: ; preds = %.lr.ph.i, %.loopexit
  tail call void @_ZdaPv(ptr noundef nonnull %.052.lcssa) #26
  br label %bb.b

bb.b:                                             ; preds = %_Z21convert_ints_to_realsIfEvPT_PKim.exit.thread, %bb.a
  ret i1 %or.cond
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @ldexpf(float noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_Z8refine2dPiPKim(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = shl i64 %2, 1                            ; 5 uses
  %.not71 = icmp eq i64 %i.a, 0
  br i1 %.not71, label %._crit_edge, label %.preheader40.lr.ph

.preheader40.lr.ph:                               ; preds = %bb.a
  %i.b = add i64 %2, -1                           ; 3 uses
  br label %.preheader40

.preheader40:                                     ; preds = %.preheader40.lr.ph, %.split67.us
  %.03770 = phi i64 [ 0, %.preheader40.lr.ph ], [ %i.eh, %.split67.us ] ; 4 uses
  %i.c = and i64 %.03770, 1
  %.not = icmp eq i64 %i.c, 0
  %i.d = lshr i64 %.03770, 1                      ; 4 uses
  %i.e = add i64 %i.b, %i.d                       ; 5 uses
  %i.f = mul i64 %.03770, %i.a
  %invariant.gep56 = getelementptr [4 x i8], ptr %0, i64 %i.f ; 2 uses
  %i.g = mul i64 %i.d, %2
  %invariant.gep.us52 = getelementptr [4 x i8], ptr %1, i64 %i.g ; 5 uses
  br i1 %.not, label %.preheader.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader40
  %i.h = add i64 %2, %i.d
  %i.i = add i64 %i.e, 2
  %i.j = add i64 %i.e, 3
  %i.k = add i64 %2, %i.d
  %i.l = add i64 %i.e, 2
  %i.m = add i64 %i.e, 3
  %i.n = urem i64 %i.e, %2
  %i.o = mul i64 %i.n, %2                         ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.o ; 4 uses
  br label %.preheader

.preheader.us:                                    ; preds = %.preheader40, %.split48.us.us
  %.03658.us = phi i64 [ %i.ar, %.split48.us.us ], [ 0, %.preheader40 ] ; 4 uses
  %i.p = and i64 %.03658.us, 1
  %.not39.us = icmp eq i64 %i.p, 0
  %i.q = lshr i64 %.03658.us, 1                   ; 3 uses
  br i1 %.not39.us, label %.preheader.split.us.us, label %.split.us.us61.preheader

.split.us.us61.preheader:                         ; preds = %.preheader.us
  %i.r = add i64 %i.b, %i.q                       ; 3 uses
  %i.s = urem i64 %i.r, %2
  %gep.us.us = getelementptr [4 x i8], ptr %invariant.gep.us52, i64 %i.s
  %i.t = load i32, ptr %gep.us.us, align 4, !tbaa !39
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = add i64 %2, %i.q
  %i.w = urem i64 %i.v, %2
  %gep.us.us.1 = getelementptr [4 x i8], ptr %invariant.gep.us52, i64 %i.w
  %i.x = load i32, ptr %gep.us.us.1, align 4, !tbaa !39
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = add i64 %i.r, 2
  %i.aa = urem i64 %i.z, %2
  %gep.us.us.2 = getelementptr [4 x i8], ptr %invariant.gep.us52, i64 %i.aa
  %i.ab = load i32, ptr %gep.us.us.2, align 4, !tbaa !39
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = add i64 %i.r, 3
  %i.ae = urem i64 %i.ad, %2
  %gep.us.us.3 = getelementptr [4 x i8], ptr %invariant.gep.us52, i64 %i.ae
  %i.af = load i32, ptr %gep.us.us.3, align 4, !tbaa !39
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = mul nsw i64 %i.u, -18
  %i.ai = mul nsw i64 %i.y, 162
  %op.rdx = add nsw i64 %i.ah, %i.ai
  %i.aj = mul nsw i64 %i.ac, 162
  %op.rdx103 = add nsw i64 %op.rdx, %i.aj
  %i.ak = mul nsw i64 %i.ag, -18
  %op.rdx104 = add nsw i64 %op.rdx103, %i.ak
  %i.al = mul nsw i64 %i.y, -18
  %op.rdx105 = add nsw i64 %op.rdx104, %i.al
  %i.am = mul nsw i64 %i.ac, -18
  %op.rdx106 = add nsw i64 %op.rdx105, %i.am
  %i.an = add nsw i64 %i.u, %i.ag
  %i.ao = shl nsw i64 %i.an, 1
  %op.rdx108 = add i64 %i.ao, %op.rdx106
  br label %.split48.us.us

.split48.us.us:                                   ; preds = %.split.us.us61.preheader, %.preheader.split.us.us
  %.us-phi49.us = phi i64 [ %5, %.preheader.split.us.us ], [ %op.rdx108, %.split.us.us61.preheader ]
  %i.ap = sdiv i64 %.us-phi49.us, 256
  %i.aq = trunc i64 %i.ap to i32
  %gep57.us = getelementptr [4 x i8], ptr %invariant.gep56, i64 %.03658.us
  store i32 %i.aq, ptr %gep57.us, align 4, !tbaa !39
  %i.ar = add nuw i64 %.03658.us, 1               ; 2 uses
  %exitcond94.not = icmp eq i64 %i.ar, %i.a
  br i1 %exitcond94.not, label %.split67.us, label %.preheader.us

.preheader.split.us.us:                           ; preds = %.preheader.us
  %gep69 = getelementptr [4 x i8], ptr %invariant.gep.us52, i64 %i.q
  %3 = load i32, ptr %gep69, align 4, !tbaa !39
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 8
  br label %.split48.us.us

._crit_edge:                                      ; preds = %.split67.us, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader.preheader, %.split48.us
  %.03658 = phi i64 [ %i.ek, %.split48.us ], [ 0, %.preheader.preheader ] ; 4 uses
  %i.as = and i64 %.03658, 1
  %.not39 = icmp eq i64 %i.as, 0
  %i.at = lshr i64 %.03658, 1                     ; 3 uses
  br i1 %.not39, label %.preheader.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %.preheader
  %i.au = add i64 %i.b, %i.at                     ; 3 uses
  %i.av = urem i64 %i.au, %2                      ; 4 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.av
  %i.aw = load i32, ptr %gep, align 4, !tbaa !39
  %i.ax = sext i32 %i.aw to i64
  %i.ay = add i64 %2, %i.at
  %i.az = urem i64 %i.ay, %2                      ; 4 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.az
  %i.ba = load i32, ptr %gep.1, align 4, !tbaa !39
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul nsw i64 %i.bb, -9
  %i.bd = add nsw i64 %i.bc, %i.ax
  %i.be = add i64 %i.au, 2
  %i.bf = urem i64 %i.be, %2                      ; 4 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bf
  %i.bg = load i32, ptr %gep.2, align 4, !tbaa !39
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul nsw i64 %i.bh, -9
  %i.bj = add nsw i64 %i.bi, %i.bd
  %i.bk = add i64 %i.au, 3
  %i.bl = urem i64 %i.bk, %2                      ; 4 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bl
  %i.bm = load i32, ptr %gep.3, align 4, !tbaa !39
  %i.bn = sext i32 %i.bm to i64
  %i.bo = add nsw i64 %i.bj, %i.bn
  %i.bp = urem i64 %i.h, %2
  %i.bq = mul i64 %i.bp, %2
  %invariant.gep.1 = getelementptr [4 x i8], ptr %1, i64 %i.bq ; 4 uses
  %gep.178 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.av
  %i.br = load i32, ptr %gep.178, align 4, !tbaa !39
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul nsw i64 %i.bs, -9
  %i.bu = add nsw i64 %i.bt, %i.bo
  %gep.1.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.az
  %i.bv = load i32, ptr %gep.1.1, align 4, !tbaa !39
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul nsw i64 %i.bw, 81
  %i.by = add nsw i64 %i.bx, %i.bu
  %gep.2.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.bf
  %i.bz = load i32, ptr %gep.2.1, align 4, !tbaa !39
  %i.ca = sext i32 %i.bz to i64
  %i.cb = mul nsw i64 %i.ca, 81
  %i.cc = add nsw i64 %i.cb, %i.by
  %gep.3.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.bl
  %i.cd = load i32, ptr %gep.3.1, align 4, !tbaa !39
  %i.ce = sext i32 %i.cd to i64
  %i.cf = mul nsw i64 %i.ce, -9
  %i.cg = add nsw i64 %i.cf, %i.cc
  %i.ch = urem i64 %i.i, %2
  %i.ci = mul i64 %i.ch, %2
  %invariant.gep.2 = getelementptr [4 x i8], ptr %1, i64 %i.ci ; 4 uses
  %gep.279 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.av
  %i.cj = load i32, ptr %gep.279, align 4, !tbaa !39
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i64 %i.ck, -9
  %i.cm = add nsw i64 %i.cl, %i.cg
  %gep.1.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.az
  %i.cn = load i32, ptr %gep.1.2, align 4, !tbaa !39
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i64 %i.co, 81
  %i.cq = add nsw i64 %i.cp, %i.cm
  %gep.2.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.bf
  %i.cr = load i32, ptr %gep.2.2, align 4, !tbaa !39
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul nsw i64 %i.cs, 81
  %i.cu = add nsw i64 %i.ct, %i.cq
  %gep.3.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.bl
  %i.cv = load i32, ptr %gep.3.2, align 4, !tbaa !39
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul nsw i64 %i.cw, -9
  %i.cy = add nsw i64 %i.cx, %i.cu
  %i.cz = urem i64 %i.j, %2
  %i.da = mul i64 %i.cz, %2
  %invariant.gep.3 = getelementptr [4 x i8], ptr %1, i64 %i.da ; 4 uses
  %gep.380 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %i.av
  %i.db = load i32, ptr %gep.380, align 4, !tbaa !39
  %i.dc = sext i32 %i.db to i64
  %i.dd = add nsw i64 %i.cy, %i.dc
  %gep.1.3 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %i.az
  %i.de = load i32, ptr %gep.1.3, align 4, !tbaa !39
  %i.df = sext i32 %i.de to i64
  %i.dg = mul nsw i64 %i.df, -9
  %i.dh = add nsw i64 %i.dg, %i.dd
  %gep.2.3 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %i.bf
  %i.di = load i32, ptr %gep.2.3, align 4, !tbaa !39
  %i.dj = sext i32 %i.di to i64
  %i.dk = mul nsw i64 %i.dj, -9
  %i.dl = add nsw i64 %i.dk, %i.dh
  %gep.3.3 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %i.bl
  %i.dm = load i32, ptr %gep.3.3, align 4, !tbaa !39
  %i.dn = sext i32 %i.dm to i64
  %i.do = add nsw i64 %i.dl, %i.dn
  br label %.split48.us

.preheader.split.us:                              ; preds = %.preheader
  %invariant.gep54 = getelementptr [4 x i8], ptr %1, i64 %i.at ; 4 uses
  %gep55 = getelementptr [4 x i8], ptr %invariant.gep54, i64 %i.o
  %i.dp = load i32, ptr %gep55, align 4, !tbaa !39
  %i.dq = sext i32 %i.dp to i64
  %i.dr = urem i64 %i.k, %2
  %i.ds = mul i64 %i.dr, %2
  %gep55.1 = getelementptr [4 x i8], ptr %invariant.gep54, i64 %i.ds
  %i.dt = load i32, ptr %gep55.1, align 4, !tbaa !39
  %i.du = sext i32 %i.dt to i64                   ; 2 uses
  %.reass.us.181 = mul nsw i64 %i.du, -9          ; 2 uses
  %i.dv = shl nsw i64 %i.dq, 4
  %i.dw = sub nsw i64 %.reass.us.181, %i.dv
  %reass.add = mul nsw i64 %i.du, 162
  %i.dx = urem i64 %i.l, %2
  %i.dy = mul i64 %i.dx, %2
  %gep55.2 = getelementptr [4 x i8], ptr %invariant.gep54, i64 %i.dy
  %i.dz = load i32, ptr %gep55.2, align 4, !tbaa !39
  %i.ea = sext i32 %i.dz to i64                   ; 2 uses
  %reass.add99 = mul nsw i64 %i.ea, 162
  %i.eb = urem i64 %i.m, %2
  %i.ec = mul i64 %i.eb, %2
  %gep55.3 = getelementptr [4 x i8], ptr %invariant.gep54, i64 %i.ec
  %i.ed = load i32, ptr %gep55.3, align 4, !tbaa !39
  %i.ee = sext i32 %i.ed to i64                   ; 2 uses
  %reass.add100 = mul nsw i64 %i.ee, -18
  %i.ef = mul nsw i64 %i.ea, -18
  %op.rdx109 = add nsw i64 %i.ef, %reass.add
  %op.rdx110 = add nsw i64 %op.rdx109, %.reass.us.181
  %op.rdx111 = add nsw i64 %op.rdx110, %reass.add99
  %op.rdx112 = add nsw i64 %op.rdx111, %reass.add100
  %i.eg = shl nsw i64 %i.ee, 1
  %op.rdx113 = add nsw i64 %op.rdx112, %i.eg
  %op.rdx114 = add i64 %op.rdx113, %i.dw
  br label %.split48.us

.split67.us:                                      ; preds = %.split48.us, %.split48.us.us
  %i.eh = add nuw i64 %.03770, 1                  ; 2 uses
  %exitcond95.not = icmp eq i64 %i.eh, %i.a
  br i1 %exitcond95.not, label %._crit_edge, label %.preheader40

.split48.us:                                      ; preds = %.split.preheader, %.preheader.split.us
  %.us-phi49 = phi i64 [ %op.rdx114, %.preheader.split.us ], [ %i.do, %.split.preheader ]
  %i.ei = sdiv i64 %.us-phi49, 256
  %i.ej = trunc i64 %i.ei to i32
  %gep57 = getelementptr [4 x i8], ptr %invariant.gep56, i64 %.03658
  store i32 %i.ej, ptr %gep57, align 4, !tbaa !39
  %i.ek = add nuw i64 %.03658, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ek, %i.a
  br i1 %exitcond.not, label %.split67.us, label %.preheader
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_Z8refine3dPiPKim(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = shl i64 %2, 1                            ; 6 uses
  %.not97 = icmp eq i64 %i.a, 0
  br i1 %.not97, label %._crit_edge, label %.preheader60.lr.ph

.preheader60.lr.ph:                               ; preds = %bb.a
  %i.b = add i64 %2, -1                           ; 3 uses
  br label %.preheader60

.preheader60:                                     ; preds = %.preheader60.lr.ph, %bb.b
  %.05596 = phi i64 [ 0, %.preheader60.lr.ph ], [ %i.aj, %bb.b ] ; 4 uses
  %i.c = and i64 %.05596, 1
  %.not = icmp eq i64 %i.c, 0                     ; 11 uses
  %i.d = lshr i64 %.05596, 1                      ; 16 uses
  %i.e = add i64 %i.b, %i.d                       ; 9 uses
  %i.f = mul i64 %.05596, %i.a
  %i.g = add i64 %2, %i.d
  %i.h = add i64 %i.e, 2
  %i.i = add i64 %i.e, 3
  %i.j = add i64 %2, %i.d
  %i.k = add i64 %i.e, 2
  %i.l = add i64 %i.e, 3
  %i.m = add i64 %2, %i.d
  %i.n = add i64 %i.e, 2
  %i.o = add i64 %i.e, 3
  br label %.preheader59

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

.preheader59:                                     ; preds = %.preheader60, %bb.j
  %.05495 = phi i64 [ 0, %.preheader60 ], [ %i.fn, %bb.j ] ; 4 uses
  %i.p = and i64 %.05495, 1
  %.not57 = icmp eq i64 %i.p, 0                   ; 17 uses
  %i.q = lshr i64 %.05495, 1                      ; 26 uses
  %i.r = add i64 %i.b, %i.q                       ; 15 uses
  %i.s = add i64 %.05495, %i.f
  %i.t = mul i64 %i.s, %i.a
  %invariant.gep92 = getelementptr [4 x i8], ptr %0, i64 %i.t
  %i.u = add i64 %2, %i.q
  %i.v = add i64 %i.r, 2
end_hunk_1
