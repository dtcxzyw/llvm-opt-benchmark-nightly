inline.NumInlined: 8298
inline.NumDeleted: 1222
begin_hunk_0_@_ZN3ada6parser14parse_url_implINS_3urlELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  %.not323 = icmp eq i8 %i.lz, 6
  %. = select i1 %.not323, i32 8, i32 6
  br label %.critedge326

bb.bk:                                            ; preds = %bb.ah
  %i.ma = icmp ult i64 %.02682384, %.sroa.01320.1
  br i1 %i.ma, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i558, label %.critedge326

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i558:    ; preds = %bb.bk
  %i.mb = sub nuw i64 %.sroa.01320.1, %.02682384
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.28.216051612, i64 %.02682384
  %i.md = call ptr @memchr(ptr noundef %i.mc, i32 noundef 64, i64 noundef %i.mb) #30 ; 2 uses
  %.not.i559 = icmp eq ptr %i.md, null
  %i.me = ptrtoint ptr %i.md to i64
  %i.mf = sub i64 %i.me, %i.hq
  %i.mg = icmp eq i64 %i.mf, -1
  %or.cond1875 = select i1 %.not.i559, i1 true, i1 %i.mg
  br i1 %or.cond1875, label %.critedge326, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

.preheader1963._crit_edge:                        ; preds = %bb.dk
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %i.rl, i64 noundef %.sroa.01320.1) #31
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i558, %bb.dk
  %.32712375 = phi i64 [ %i.rl, %bb.dk ], [ %.02682384, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i558 ] ; 5 uses
  %.02842374 = phi i8 [ %.1285, %bb.dk ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i558 ] ; 3 uses
  %.02872373 = phi i8 [ %.1288, %bb.dk ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i558 ] ; 2 uses
  %i.mh = sub nuw i64 %.sroa.01320.1, %.32712375  ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.28.216051612, i64 %.32712375 ; 10 uses
  %i.mj = load i8, ptr %i.f, align 1
  %i.mk = icmp ne i8 %i.mj, 1                     ; 2 uses
  %.not.i3562370 = icmp samesign eq i64 %.32712375, %.sroa.01320.1 ; 2 uses
  br i1 %i.mk, label %.preheader, label %.preheader1954

.preheader1954:                                   ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  br i1 %.not.i3562370, label %_ZN3ada7helpers32find_authority_delimiter_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph2369

.preheader:                                       ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  br i1 %.not.i3562370, label %_ZN3ada7helpers32find_authority_delimiter_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph2372

.lr.ph2372:                                       ; preds = %.preheader, %bb.bl
  %.05.i2371 = phi ptr [ %i.mp, %bb.bl ], [ %i.mi, %.preheader ] ; 3 uses
  %i.ml = load i8, ptr %.05.i2371, align 1
  %i.mm = zext i8 %i.ml to i64
  %i.mn = getelementptr inbounds nuw i8, ptr @_ZN3ada7helpersL27authority_delimiter_specialE, i64 %i.mm
  %i.mo = load i8, ptr %i.mn, align 1
  %.not7.i = icmp eq i8 %i.mo, 0
  br i1 %.not7.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.lr.ph2372
  %i.mp = getelementptr inbounds nuw i8, ptr %.05.i2371, i64 1 ; 2 uses
  %.not.i356 = icmp eq ptr %i.mp, %i.gn
  br i1 %.not.i356, label %_ZN3ada7helpers32find_authority_delimiter_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph2372, !llvm.loop !94

bb.bm:                                            ; preds = %.lr.ph2372
  %i.mq = ptrtoint ptr %.05.i2371 to i64
  %i.mr = ptrtoint ptr %i.mi to i64
  %i.ms = sub i64 %i.mq, %i.mr
  br label %_ZN3ada7helpers32find_authority_delimiter_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit

.lr.ph2369:                                       ; preds = %.preheader1954, %bb.bn
  %.05.i3592368 = phi ptr [ %i.mx, %bb.bn ], [ %i.mi, %.preheader1954 ] ; 3 uses
  %i.mt = load i8, ptr %.05.i3592368, align 1
  %i.mu = zext i8 %i.mt to i64
  %i.mv = getelementptr inbounds nuw i8, ptr @_ZN3ada7helpersL19authority_delimiterE, i64 %i.mu
  %i.mw = load i8, ptr %i.mv, align 1
  %.not7.i361 = icmp eq i8 %i.mw, 0
  br i1 %.not7.i361, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.lr.ph2369
  %i.mx = getelementptr inbounds nuw i8, ptr %.05.i3592368, i64 1 ; 2 uses
  %.not.i360 = icmp eq ptr %i.mx, %i.gn
  br i1 %.not.i360, label %_ZN3ada7helpers32find_authority_delimiter_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph2369, !llvm.loop !95

bb.bo:                                            ; preds = %.lr.ph2369
  %i.my = ptrtoint ptr %.05.i3592368 to i64
  %i.mz = ptrtoint ptr %i.mi to i64
  %i.na = sub i64 %i.my, %i.mz
  br label %_ZN3ada7helpers32find_authority_delimiter_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN3ada7helpers32find_authority_delimiter_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.bn, %bb.bl, %.preheader1954, %.preheader, %bb.bo, %bb.bm
  %i.nb = phi i64 [ 0, %.preheader ], [ %i.ms, %bb.bm ], [ %i.na, %bb.bo ], [ 0, %.preheader1954 ], [ %i.mh, %bb.bl ], [ %i.mh, %bb.bn ]
  %.sroa.speculated.i565 = call i64 @llvm.umin.i64(i64 %i.mh, i64 %i.nb) ; 10 uses
  %i.nc = add i64 %.sroa.speculated.i565, %.32712375 ; 3 uses
  %.not322 = icmp eq i64 %i.nc, %.sroa.01320.1
  br i1 %.not322, label %.thread1628, label %bb.bp

bb.bp:                                            ; preds = %_ZN3ada7helpers32find_authority_delimiter_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.28.216051612, i64 %i.nc
  %i.ne = load i8, ptr %i.nd, align 1             ; 2 uses
  switch i8 %i.ne, label %bb.dj [
    i8 64, label %bb.bq
    i8 47, label %.thread1628
    i8 63, label %.thread1628
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.nf = trunc nuw i8 %.02842374 to i1
  %i.ng = trunc nuw i8 %.02872373 to i1           ; 2 uses
  br i1 %i.nf, label %bb.br, label %bb.cc

bb.br:                                            ; preds = %bb.bq
  br i1 %i.ng, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %bb.br
  %i.nh = load i64, ptr %i.l, align 8             ; 5 uses
  %i.ni = icmp sgt i64 %i.nh, 9223372036854775804
  br i1 %i.ni, label %bb.bt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.bt:                                            ; preds = %bb.bs
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #31
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.bs
  %i.nj = add nsw i64 %i.nh, 3                    ; 3 uses
  %i.nk = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.nl = icmp eq ptr %i.nk, %i.k                 ; 2 uses
  br i1 %i.nl, label %bb.bu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.nm = icmp ult i64 %i.nh, 16
  call void @llvm.assume(i1 %i.nm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.nn = load i64, ptr %i.k, align 8
  %i.no = select i1 %i.nl, i64 15, i64 %i.nn
  %.not.i.i.i = icmp ugt i64 %i.nj, %i.no
  br i1 %.not.i.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.np = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.np, ptr noundef nonnull align 1 dereferenceable(3) @.str.51, i64 3, i1 false)
  br label %.thread1624

bb.bw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.nh, i64 noundef 0, ptr noundef nonnull @.str.51, i64 noundef 3)
  br label %.thread1624

.thread1624:                                      ; preds = %bb.bw, %bb.bv
  store i64 %i.nj, ptr %i.l, align 8
  %i.nq = load ptr, ptr %i.j, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.nj
  store i8 0, ptr %i.nr, align 1
  br label %bb.db

bb.bx:                                            ; preds = %bb.br
  %i.ns = load i64, ptr %i.i, align 8             ; 5 uses
  %i.nt = icmp sgt i64 %i.ns, 9223372036854775804
  br i1 %i.nt, label %bb.by, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i568

bb.by:                                            ; preds = %bb.bx
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #31
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i568: ; preds = %bb.bx
  %i.nu = add nsw i64 %i.ns, 3                    ; 3 uses
  %i.nv = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.nw = icmp eq ptr %i.nv, %i.h                 ; 2 uses
  br i1 %i.nw, label %bb.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i569

bb.bz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i568
  %i.nx = icmp ult i64 %i.ns, 16
  call void @llvm.assume(i1 %i.nx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i569

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i569: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i568
  %i.ny = load i64, ptr %i.h, align 8
  %i.nz = select i1 %i.nw, i64 15, i64 %i.ny
  %.not.i.i.i570 = icmp ugt i64 %i.nu, %i.nz
  br i1 %.not.i.i.i570, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i569
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.ns
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.oa, ptr noundef nonnull align 1 dereferenceable(3) @.str.51, i64 3, i1 false)
  br label %.thread1625

bb.cb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i569
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.ns, i64 noundef 0, ptr noundef nonnull @.str.51, i64 noundef 3)
  br label %.thread1625

.thread1625:                                      ; preds = %bb.cb, %bb.ca
  store i64 %i.nu, ptr %i.i, align 8
  %i.ob = load ptr, ptr %i.g, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.nu
  store i8 0, ptr %i.oc, align 1
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bq
  br i1 %i.ng, label %bb.db, label %bb.cd

bb.cd:                                            ; preds = %.thread1625, %bb.cc
  %.not1941 = icmp eq i64 %.sroa.speculated.i565, 0
  br i1 %.not1941, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit578.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i575

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i575:    ; preds = %bb.cd
  %i.od = call ptr @memchr(ptr noundef nonnull %i.mi, i32 noundef 58, i64 noundef %.sroa.speculated.i565) #30 ; 2 uses
  %.not.i576 = icmp eq ptr %i.od, null
  %i.oe = ptrtoint ptr %i.od to i64
  %i.of = ptrtoint ptr %i.mi to i64
  %i.og = sub i64 %i.oe, %i.of                    ; 3 uses
  br i1 %.not.i576, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit578.thread, label %bb.cl

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit578.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i575, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #30
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %28, i64 %.sroa.speculated.i565, ptr nonnull %i.mi, ptr noundef nonnull @_ZN3ada14character_setsL23USERINFO_PERCENT_ENCODEE)
  %i.oh = load ptr, ptr %28, align 8              ; 3 uses
  %i.oi = load i64, ptr %i.hv, align 8            ; 6 uses
  %i.oj = load i64, ptr %i.i, align 8             ; 5 uses
  %i.ok = sub i64 9223372036854775807, %i.oj
  %i.ol = icmp ult i64 %i.ok, %i.oi
  br i1 %i.ol, label %bb.ce, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.ce:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit578.thread
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #31
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit578.thread
  %i.om = add i64 %i.oj, %i.oi                    ; 3 uses
  %i.on = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.oo = icmp eq ptr %i.on, %i.h                 ; 2 uses
  br i1 %i.oo, label %bb.cf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

bb.cf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.op = icmp ult i64 %i.oj, 16
  call void @llvm.assume(i1 %i.op)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.oq = load i64, ptr %i.h, align 8
  %i.or = select i1 %i.oo, i64 15, i64 %i.oq
  %.not.i.i.i.i = icmp ugt i64 %i.om, %i.or
  br i1 %.not.i.i.i.i, label %bb.ck, label %bb.cg

bb.cg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.oi, 0
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.os = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.oj ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.oi, 1
  br i1 %cond.i.i.i.i, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ot = load i8, ptr %i.oh, align 1
  store i8 %i.ot, ptr %i.os, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.os, ptr align 1 %i.oh, i64 %i.oi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.ck:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.oj, i64 noundef 0, ptr noundef %i.oh, i64 noundef %i.oi)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %bb.cg, %bb.ci, %bb.cj, %bb.ck
  store i64 %i.om, ptr %i.i, align 8
  %i.ou = load ptr, ptr %i.g, align 8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.om
  store i8 0, ptr %i.ov, align 1
  %i.ow = load ptr, ptr %28, align 8              ; 2 uses
  %i.ox = icmp eq ptr %i.ow, %i.hw
  br i1 %i.ox, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.oy = load i64, ptr %i.hw, align 8
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.oz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  br label %bb.dk

bb.cl:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i575
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #30
  %.sroa.speculated.i582 = call i64 @llvm.umin.i64(i64 %.sroa.speculated.i565, i64 %i.og)
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %29, i64 %.sroa.speculated.i582, ptr nonnull %i.mi, ptr noundef nonnull @_ZN3ada14character_setsL23USERINFO_PERCENT_ENCODEE)
  %i.pa = load ptr, ptr %29, align 8              ; 3 uses
  %i.pb = load i64, ptr %i.hr, align 8            ; 6 uses
  %i.pc = load i64, ptr %i.i, align 8             ; 5 uses
  %i.pd = sub i64 9223372036854775807, %i.pc
  %i.pe = icmp ult i64 %i.pd, %i.pb
  br i1 %i.pe, label %bb.cm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i585

bb.cm:                                            ; preds = %bb.cl
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #31
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i585: ; preds = %bb.cl
  %i.pf = add i64 %i.pc, %i.pb                    ; 3 uses
  %i.pg = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ph = icmp eq ptr %i.pg, %i.h                 ; 2 uses
  br i1 %i.ph, label %bb.cn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i586

bb.cn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i585
  %i.pi = icmp ult i64 %i.pc, 16
  call void @llvm.assume(i1 %i.pi)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i586

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i586: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i585
  %i.pj = load i64, ptr %i.h, align 8
  %i.pk = select i1 %i.ph, i64 15, i64 %i.pj
  %.not.i.i.i.i587 = icmp ugt i64 %i.pf, %i.pk
  br i1 %.not.i.i.i.i587, label %bb.cs, label %bb.co

bb.co:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i586
  %.not8.i.i.i.i588 = icmp eq i64 %i.pb, 0
  br i1 %.not8.i.i.i.i588, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit590, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pg, i64 %i.pc ; 2 uses
  %cond.i.i.i.i589 = icmp eq i64 %i.pb, 1
  br i1 %cond.i.i.i.i589, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.pm = load i8, ptr %i.pa, align 1
  store i8 %i.pm, ptr %i.pl, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit590

bb.cr:                                            ; preds = %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pl, ptr align 1 %i.pa, i64 %i.pb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit590

bb.cs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i586
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.pc, i64 noundef 0, ptr noundef %i.pa, i64 noundef %i.pb)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit590

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit590: ; preds = %bb.co, %bb.cq, %bb.cr, %bb.cs
  store i64 %i.pf, ptr %i.i, align 8
  %i.pn = load ptr, ptr %i.g, align 8
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.pf
  store i8 0, ptr %i.po, align 1
  %i.pp = load ptr, ptr %29, align 8              ; 2 uses
  %i.pq = icmp eq ptr %i.pp, %i.hs
  br i1 %i.pq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit590
  %i.pr = load i64, ptr %i.hs, align 8
  %i.ps = add i64 %i.pr, 1
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.ps) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit590, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #30
  %i.pt = add nuw i64 %i.og, 1                    ; 3 uses
  %.not1943 = icmp ult i64 %i.og, %.sroa.speculated.i565
  br i1 %.not1943, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit597, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %i.pt, i64 noundef %.sroa.speculated.i565) #31
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit597: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593
  %i.pu = sub nuw i64 %.sroa.speculated.i565, %i.pt
  %i.pv = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.pt
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %30, i64 %i.pu, ptr nonnull %i.pv, ptr noundef nonnull @_ZN3ada14character_setsL23USERINFO_PERCENT_ENCODEE)
  %i.pw = load ptr, ptr %30, align 8              ; 3 uses
  %i.px = load i64, ptr %i.ht, align 8            ; 6 uses
  %i.py = load i64, ptr %i.l, align 8             ; 5 uses
  %i.pz = sub i64 9223372036854775807, %i.py
  %i.qa = icmp ult i64 %i.pz, %i.px
  br i1 %i.qa, label %bb.cu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i598

bb.cu:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit597
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #31
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i598: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit597
  %i.qb = add i64 %i.py, %i.px                    ; 3 uses
  %i.qc = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.qd = icmp eq ptr %i.qc, %i.k                 ; 2 uses
  br i1 %i.qd, label %bb.cv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i599

bb.cv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i598
  %i.qe = icmp ult i64 %i.py, 16
  call void @llvm.assume(i1 %i.qe)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i599

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i599: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i598
  %i.qf = load i64, ptr %i.k, align 8
  %i.qg = select i1 %i.qd, i64 15, i64 %i.qf
  %.not.i.i.i.i600 = icmp ugt i64 %i.qb, %i.qg
  br i1 %.not.i.i.i.i600, label %bb.da, label %bb.cw

bb.cw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i599
  %.not8.i.i.i.i601 = icmp eq i64 %i.px, 0
  br i1 %.not8.i.i.i.i601, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit603, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qc, i64 %i.py ; 2 uses
  %cond.i.i.i.i602 = icmp eq i64 %i.px, 1
  br i1 %cond.i.i.i.i602, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.qi = load i8, ptr %i.pw, align 1
  store i8 %i.qi, ptr %i.qh, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit603

bb.cz:                                            ; preds = %bb.cx
end_hunk_0
begin_hunk_1_@_ZN3ada6parser14parse_url_implINS_3urlELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  %i.bae = load i8, ptr %i.bad, align 1
  %.not1935 = icmp eq i8 %i.bae, 0
  %spec.select.i.i.i.i.i775 = select i1 %.not1935, ptr %i.ayp, ptr %.sroa.032.2.i.i.i.i.i774
  br label %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPDoFbcEEbT_SC_T0_.exit786

_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPDoFbcEEbT_SC_T0_.exit786.loopexit.split.loop.exit: ; preds = %bb.kj
  %i.baf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i780, i64 1
  br label %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPDoFbcEEbT_SC_T0_.exit786

_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPDoFbcEEbT_SC_T0_.exit786.loopexit.split.loop.exit3178: ; preds = %bb.kk
  %i.bag = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i780, i64 2
  br label %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPDoFbcEEbT_SC_T0_.exit786

_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPDoFbcEEbT_SC_T0_.exit786.loopexit.split.loop.exit3180: ; preds = %bb.kl
  %i.bah = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i780, i64 3
  br label %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPDoFbcEEbT_SC_T0_.exit786

_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPDoFbcEEbT_SC_T0_.exit786: ; preds = %.lr.ph.i.i.i.i.i778, %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPDoFbcEEbT_SC_T0_.exit786.loopexit.split.loop.exit, %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPDoFbcEEbT_SC_T0_.exit786.loopexit.split.loop.exit3178, %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPDoFbcEEbT_SC_T0_.exit786.loopexit.split.loop.exit3180, %bb.kn, %bb.kp, %bb.kr
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i776 = phi ptr [ %.sroa.032.1.i.i.i.i.i777, %bb.kp ], [ %spec.select.i.i.i.i.i775, %bb.kr ], [ %.sroa.032.0.lcssa.i.i.i.i.i773, %bb.kn ], [ %i.bah, %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPDoFbcEEbT_SC_T0_.exit786.loopexit.split.loop.exit3180 ], [ %i.bag, %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPDoFbcEEbT_SC_T0_.exit786.loopexit.split.loop.exit3178 ], [ %i.baf, %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPDoFbcEEbT_SC_T0_.exit786.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i.i780, %.lr.ph.i.i.i.i.i778 ]
  %.not1936 = icmp eq ptr %i.ayp, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i776
  br i1 %.not1936, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit787, label %bb.ks

bb.ks:                                            ; preds = %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPDoFbcEEbT_SC_T0_.exit786
  %i.bai = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t(ptr noundef nonnull align 8 dereferenceable(40) %i.ft) #30 ; 0 uses
  store i8 0, ptr %i.c, align 8
  br label %bb.lb

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit787: ; preds = %._crit_edge.i.i.i.i.i771, %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPDoFbcEEbT_SC_T0_.exit786
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %i.ayo, ptr %9, align 8
  store ptr %i.ayn, ptr %i.hh, align 8
  %i.baj = icmp eq i64 %i.ayo, 0
  br i1 %i.baj, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit790.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit790

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit790: ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit787
  %i.bak = getelementptr inbounds i8, ptr %i.ayp, i64 -1
  %i.bal = load i8, ptr %i.bak, align 1
  %i.bam = icmp eq i8 %i.bal, 46
  br i1 %i.bam, label %bb.kt, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit790.thread

bb.kt:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit790
  %i.ban = add i64 %i.ayo, -1                     ; 3 uses
  store i64 %i.ban, ptr %9, align 8
  %i.bao = icmp eq i64 %i.ban, 0
  br i1 %i.bao, label %_ZN3ada8checkers7is_ipv4ESt17basic_string_viewIcSt11char_traitsIcEE.exit528.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit790.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit790.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit790, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit787, %bb.kt
  %.pr1748 = phi i64 [ 0, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit787 ], [ %i.ban, %bb.kt ], [ %i.ayo, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit790 ] ; 5 uses
  %i.bap = getelementptr inbounds nuw i8, ptr %i.ayn, i64 %.pr1748
  %i.baq = getelementptr inbounds i8, ptr %i.bap, i64 -1
  %i.bar = load i8, ptr %i.baq, align 1
  %.fr1937 = freeze i8 %i.bar                     ; 2 uses
  %i.bas = add i8 %.fr1937, -48
  %or.cond.i524 = icmp ult i8 %i.bas, 10
  br i1 %or.cond.i524, label %bb.ku, label %switch.early.test.i525

switch.early.test.i525:                           ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit790.thread
  switch i8 %.fr1937, label %_ZN3ada8checkers7is_ipv4ESt17basic_string_viewIcSt11char_traitsIcEE.exit528.thread [
    i8 120, label %bb.ku
    i8 102, label %bb.ku
    i8 101, label %bb.ku
    i8 100, label %bb.ku
    i8 99, label %bb.ku
    i8 98, label %bb.ku
    i8 97, label %bb.ku
  ]

bb.ku:                                            ; preds = %switch.early.test.i525, %switch.early.test.i525, %switch.early.test.i525, %switch.early.test.i525, %switch.early.test.i525, %switch.early.test.i525, %switch.early.test.i525, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit790.thread
  %.not.i791 = icmp eq i64 %.pr1748, 0
  br i1 %.not.i791, label %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit807.thread, label %.preheader1969.preheader

.preheader1969:                                   ; preds = %.preheader1969.preheader
  %.not13.i794 = icmp eq i64 %i.bat, 0
  br i1 %.not13.i794, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit797.thread, label %.preheader1969.preheader, !llvm.loop !29

.preheader1969.preheader:                         ; preds = %bb.ku, %.preheader1969
  %.1.i7933414 = phi i64 [ %i.bat, %.preheader1969 ], [ %.pr1748, %bb.ku ] ; 3 uses
  %i.bat = add i64 %.1.i7933414, -1               ; 3 uses
  %i.bau = getelementptr inbounds nuw i8, ptr %i.ayn, i64 %i.bat
  %i.bav = load i8, ptr %i.bau, align 1
  %i.baw = icmp eq i8 %i.bav, 46
  br i1 %i.baw, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit801, label %.preheader1969, !llvm.loop !29

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit801: ; preds = %.preheader1969.preheader
  %i.bax = sub nuw i64 %.pr1748, %.1.i7933414     ; 2 uses
  %i.bay = getelementptr inbounds nuw i8, ptr %i.ayn, i64 %.1.i7933414 ; 2 uses
  store i64 %i.bax, ptr %9, align 8
  store ptr %i.bay, ptr %i.hh, align 8
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit797.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit797.thread: ; preds = %.preheader1969, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit801
  %i.baz = phi ptr [ %i.bay, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit801 ], [ %i.ayn, %.preheader1969 ] ; 2 uses
  %i.bba = phi i64 [ %i.bax, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit801 ], [ %.pr1748, %.preheader1969 ] ; 3 uses
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.baz, i64 %i.bba
  %.not6.i.i802 = icmp samesign eq i64 %i.bba, 0
  br i1 %.not6.i.i802, label %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit807.thread, label %.lr.ph.i.i803

bb.kv:                                            ; preds = %.lr.ph.i.i803
  %i.bbc = getelementptr inbounds nuw i8, ptr %.057.i.i804, i64 1 ; 2 uses
  %.not.i.i806 = icmp eq ptr %i.bbc, %i.bbb
  br i1 %.not.i.i806, label %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit807.thread, label %.lr.ph.i.i803, !llvm.loop !105

.lr.ph.i.i803:                                    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit797.thread, %bb.kv
  %.057.i.i804 = phi ptr [ %i.bbc, %bb.kv ], [ %i.baz, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit797.thread ] ; 2 uses
  %i.bbd = load i8, ptr %.057.i.i804, align 1
  %i.bbe = add i8 %i.bbd, -48
  %i.bbf = icmp ult i8 %i.bbe, 10
  br i1 %i.bbf, label %bb.kv, label %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit807

_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit807: ; preds = %.lr.ph.i.i803
  %i.bbg = icmp eq i64 %i.bba, 1
  br i1 %i.bbg, label %_ZN3ada8checkers7is_ipv4ESt17basic_string_viewIcSt11char_traitsIcEE.exit528.thread, label %bb.kw

bb.kw:                                            ; preds = %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit807
  %i.bbh = call noundef zeroext i1 @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef @.str.157) #30
  br i1 %i.bbh, label %bb.kx, label %_ZN3ada8checkers7is_ipv4ESt17basic_string_viewIcSt11char_traitsIcEE.exit528.thread

bb.kx:                                            ; preds = %bb.kw
  %i.bbi = load i64, ptr %9, align 8              ; 3 uses
  %i.bbj = icmp eq i64 %i.bbi, 2
  br i1 %i.bbj, label %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit807.thread, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.bbk = load ptr, ptr %i.hh, align 8           ; 2 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbk, i64 2 ; 2 uses
  store ptr %i.bbl, ptr %i.hh, align 8
  %i.bbm = add i64 %i.bbi, -2
  store i64 %i.bbm, ptr %9, align 8
  %i.bbn = getelementptr i8, ptr %i.bbk, i64 %i.bbi
  br label %.lr.ph.i.i809

bb.kz:                                            ; preds = %.lr.ph.i.i809
  %i.bbo = getelementptr inbounds nuw i8, ptr %.057.i.i810, i64 1 ; 2 uses
  %.not.i.i812 = icmp eq ptr %i.bbo, %i.bbn
  br i1 %.not.i.i812, label %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit807.thread, label %.lr.ph.i.i809, !llvm.loop !105

.lr.ph.i.i809:                                    ; preds = %bb.ky, %bb.kz
  %.057.i.i810 = phi ptr [ %i.bbo, %bb.kz ], [ %i.bbl, %bb.ky ] ; 2 uses
  %i.bbp = load i8, ptr %.057.i.i810, align 1     ; 2 uses
  %i.bbq = add i8 %i.bbp, -48
  %or.cond.i1247 = icmp ult i8 %i.bbq, 10
  %i.bbr = add i8 %i.bbp, -97
  %i.bbs = icmp ult i8 %i.bbr, 6
  %i.bbt = or i1 %or.cond.i1247, %i.bbs
  br i1 %i.bbt, label %bb.kz, label %_ZN3ada8checkers7is_ipv4ESt17basic_string_viewIcSt11char_traitsIcEE.exit528.thread

_ZN3ada8checkers7is_ipv4ESt17basic_string_viewIcSt11char_traitsIcEE.exit528.thread: ; preds = %.lr.ph.i.i809, %bb.kt, %switch.early.test.i525, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit807, %bb.kw
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.lb

_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit807.thread: ; preds = %bb.kv, %bb.kz, %bb.ku, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit797.thread, %bb.kx
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.bbu = load i8, ptr %i.m, align 8, !range !73, !noundef !74
  %i.bbv = trunc nuw i8 %i.bbu to i1
  br i1 %i.bbv, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit814, label %bb.la

bb.la:                                            ; preds = %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit807.thread
  call void @_ZSt27__throw_bad_optional_accessv() #34
  unreachable

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit814: ; preds = %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit807.thread
  %i.bbw = load ptr, ptr %i.ft, align 8
  %i.bbx = load i64, ptr %i.gd, align 8
  %i.bby = call noundef zeroext i1 @_ZN3ada3url10parse_ipv4ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(272) %0, i64 %i.bbx, ptr %i.bbw)
  br label %bb.lb

bb.lb:                                            ; preds = %_ZN3ada8checkers7is_ipv4ESt17basic_string_viewIcSt11char_traitsIcEE.exit528.thread, %_ZN3ada8checkers7is_ipv4ESt17basic_string_viewIcSt11char_traitsIcEE.exit523.thread, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit814, %bb.ks, %bb.kg, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit761
  %.0.i394 = phi i1 [ %i.aye, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit761 ], [ false, %bb.kg ], [ false, %bb.ks ], [ %i.bby, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit814 ], [ true, %_ZN3ada8checkers7is_ipv4ESt17basic_string_viewIcSt11char_traitsIcEE.exit523.thread ], [ true, %_ZN3ada8checkers7is_ipv4ESt17basic_string_viewIcSt11char_traitsIcEE.exit528.thread ]
  %i.bbz = load ptr, ptr %19, align 8             ; 2 uses
  %i.bca = icmp eq ptr %i.bbz, %i.hj
  br i1 %i.bca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit819, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i817

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i817: ; preds = %bb.lb
  %i.bcb = load i64, ptr %i.hj, align 8
  %i.bcc = add i64 %i.bcb, 1
  call void @_ZdlPvm(ptr noundef %i.bbz, i64 noundef %i.bcc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit819

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit819: ; preds = %bb.lb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i817
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br i1 %.0.i394, label %.critedge326, label %.critedge329

_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398: ; preds = %bb.il
  %i.bcd = call noundef zeroext i1 @_ZN3ada3url17parse_opaque_hostESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(272) %0, i64 %.015971690, ptr nonnull %i.up)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br i1 %i.bcd, label %.critedge326, label %.critedge329

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit823: ; preds = %bb.ah
  %i.bce = sub nuw i64 %.sroa.01320.1, %.02682384 ; 3 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %.sroa.28.216051612, i64 %.02682384 ; 6 uses
  %.not1912 = icmp eq i64 %i.bce, 0
  br i1 %.not1912, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i825

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit823
  store i8 1, ptr %i.d, align 1
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit829.thread

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i825:    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit823
  %i.bcg = call ptr @memchr(ptr noundef %i.bcf, i32 noundef 63, i64 noundef %i.bce) #30 ; 2 uses
  %.not315 = icmp eq ptr %i.bcg, null
  br i1 %.not315, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread.thread2863, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread.thread2863: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i825
  store i8 1, ptr %i.d, align 1
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit829

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i825
  %37 = ptrtoint ptr %i.bcg to i64
  %38 = ptrtoint ptr %i.bcf to i64
  %39 = sub i64 %37, %38                          ; 3 uses
  %i.bch = add i64 %.02682384, 1
  %i.bci = add i64 %i.bch, %39                    ; 2 uses
  store i8 1, ptr %i.d, align 1
  %i.bcj = icmp eq i64 %39, 0
  br i1 %i.bcj, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit829.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit829

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit829: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread.thread2863, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread
  %.82869 = phi i32 [ 18, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread.thread2863 ], [ 15, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread ] ; 2 uses
  %.92772868 = phi i64 [ %i.gk, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread.thread2863 ], [ %i.bci, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread ] ; 2 uses
  %.sroa.01267.02867 = phi i64 [ %i.bce, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread.thread2863 ], [ %39, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread ] ; 5 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bcf, i64 %.sroa.01267.02867
  %i.bcl = getelementptr inbounds i8, ptr %i.bck, i64 -1
  %i.bcm = load i8, ptr %i.bcl, align 1
  %i.bcn = icmp eq i8 %i.bcm, 32
  br i1 %i.bcn, label %bb.lc, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit829.thread

bb.lc:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit829
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #30
  %i.bco = add i64 %.sroa.01267.02867, -1         ; 7 uses
  store ptr %i.gp, ptr %33, align 8
  %i.bcp = icmp ugt i64 %i.bco, 15
  br i1 %i.bcp, label %bb.ld, label %._crit_edge.i.i.i.i837

bb.ld:                                            ; preds = %bb.lc
  %i.bcq = icmp slt i64 %i.bco, 0
  br i1 %i.bcq, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %bb.ld
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.123) #31
  unreachable

bb.lf:                                            ; preds = %bb.ld
  %i.bcr = icmp slt i64 %.sroa.01267.02867, 0
  br i1 %i.bcr, label %bb.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i838, !prof !18

bb.lg:                                            ; preds = %bb.lf
  call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i838: ; preds = %bb.lf
  %i.bcs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %.sroa.01267.02867) #32 ; 2 uses
  store ptr %i.bcs, ptr %33, align 8
  store i64 %i.bco, ptr %i.gp, align 8
  br label %._crit_edge.i.i.i.i837

._crit_edge.i.i.i.i837:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i838, %bb.lc
  %i.bct = phi ptr [ %i.bcs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i838 ], [ %i.gp, %bb.lc ] ; 3 uses
  switch i64 %i.bco, label %bb.li [
    i64 1, label %bb.lh
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit839
  ]

bb.lh:                                            ; preds = %._crit_edge.i.i.i.i837
  %i.bcu = load i8, ptr %i.bcf, align 1
  store i8 %i.bcu, ptr %i.bct, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit839

bb.li:                                            ; preds = %._crit_edge.i.i.i.i837
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bct, ptr nonnull align 1 %i.bcf, i64 %i.bco, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit839

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit839: ; preds = %._crit_edge.i.i.i.i837, %bb.lh, %bb.li
  store i64 %i.bco, ptr %i.gq, align 8
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bct, i64 %i.bco
  store i8 0, ptr %i.bcv, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.bcw = load i64, ptr %i.gq, align 8, !noalias !108 ; 5 uses
  %i.bcx = icmp sgt i64 %i.bcw, 9223372036854775804
  br i1 %i.bcx, label %bb.lj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i840

bb.lj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit839
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #31, !noalias !108
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i840: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit839
  %i.bcy = add nsw i64 %i.bcw, 3                  ; 3 uses
  %i.bcz = load ptr, ptr %33, align 8, !noalias !108 ; 2 uses
  %i.bda = icmp eq ptr %i.bcz, %i.gp              ; 2 uses
  br i1 %i.bda, label %bb.lk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i841

bb.lk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i840
  %i.bdb = icmp ult i64 %i.bcw, 16
  call void @llvm.assume(i1 %i.bdb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i841

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i841: ; preds = %bb.lk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i840
  %i.bdc = load i64, ptr %i.gp, align 8, !noalias !108
  %i.bdd = select i1 %i.bda, i64 15, i64 %i.bdc
  %.not.i.i.i842 = icmp ugt i64 %i.bcy, %i.bdd
  br i1 %.not.i.i.i842, label %bb.lm, label %bb.ll

bb.ll:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i841
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bcz, i64 %i.bcw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bde, ptr noundef nonnull align 1 dereferenceable(3) @.str.52, i64 3, i1 false), !noalias !108
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.lm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i841
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %33, i64 noundef %i.bcw, i64 noundef 0, ptr noundef nonnull @.str.52, i64 noundef 3), !noalias !108
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.lm, %bb.ll
  store i64 %i.bcy, ptr %i.gq, align 8, !noalias !108
  %i.bdf = load ptr, ptr %33, align 8, !noalias !108
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bdf, i64 %i.bcy
  store i8 0, ptr %i.bdg, align 1, !noalias !108
  store ptr %i.gr, ptr %32, align 8, !alias.scope !108
  %i.bdh = load ptr, ptr %33, align 8, !noalias !108 ; 3 uses
  %i.bdi = icmp eq ptr %i.bdh, %i.gp
  br i1 %i.bdi, label %bb.ln, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i845

bb.ln:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bdj = load i64, ptr %i.gq, align 8, !noalias !108 ; 3 uses
  %i.bdk = icmp ult i64 %i.bdj, 16
  call void @llvm.assume(i1 %i.bdk)
  %i.bdl = add nuw nsw i64 %i.bdj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gr, ptr noundef nonnull align 8 dereferenceable(1) %i.gp, i64 %i.bdl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit848

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i845: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.bdh, ptr %32, align 8, !alias.scope !108
  %i.bdm = load i64, ptr %i.gp, align 8, !noalias !108
  store i64 %i.bdm, ptr %i.gr, align 8, !alias.scope !108
  %.pre.i = load i64, ptr %i.gq, align 8, !noalias !108
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit848

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit848: ; preds = %bb.ln, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i845
  %i.bdn = phi ptr [ %i.gr, %bb.ln ], [ %i.bdh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i845 ]
  %i.bdo = phi i64 [ %i.bdj, %bb.ln ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i845 ] ; 2 uses
  store i64 %i.bdo, ptr %i.gs, align 8, !alias.scope !108
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #30
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %34, i64 %i.bdo, ptr %i.bdn, ptr noundef nonnull @_ZN3ada14character_setsL25C0_CONTROL_PERCENT_ENCODEE)
  %i.bdp = load ptr, ptr %34, align 8
  %i.bdq = load i64, ptr %i.gt, align 8
  %i.bdr = load i64, ptr %i.q, align 8
  %i.bds = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef 0, i64 noundef %i.bdr, ptr noundef %i.bdp, i64 noundef %i.bdq) ; 0 uses
  %i.bdt = load ptr, ptr %34, align 8             ; 2 uses
  %i.bdu = icmp eq ptr %i.bdt, %i.gu
  br i1 %i.bdu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i853

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i853: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit848
  %i.bdv = load i64, ptr %i.gu, align 8
  %i.bdw = add i64 %i.bdv, 1
  call void @_ZdlPvm(ptr noundef %i.bdt, i64 noundef %i.bdw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit848, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i853
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  %i.bdx = load ptr, ptr %32, align 8             ; 2 uses
  %i.bdy = icmp eq ptr %i.bdx, %i.gr
  br i1 %i.bdy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i856

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i856: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855
  %i.bdz = load i64, ptr %i.gr, align 8
  %i.bea = add i64 %i.bdz, 1
  call void @_ZdlPvm(ptr noundef %i.bdx, i64 noundef %i.bea) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i856
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  br label %.critedge326

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit829.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit829
  %.82862 = phi i32 [ 18, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread.thread ], [ 15, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread ], [ %.82869, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit829 ]
  %.92772861 = phi i64 [ %i.gk, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread.thread ], [ %i.bci, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread ], [ %.92772868, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit829 ]
  %.sroa.01267.02860 = phi i64 [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread.thread ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread ], [ %.sroa.01267.02867, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit829 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %35, i64 %.sroa.01267.02860, ptr %i.bcf, ptr noundef nonnull @_ZN3ada14character_setsL25C0_CONTROL_PERCENT_ENCODEE)
  %i.beb = load ptr, ptr %35, align 8
  %i.bec = load i64, ptr %i.gv, align 8
  %i.bed = load i64, ptr %i.q, align 8
  %i.bee = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef 0, i64 noundef %i.bed, ptr noundef %i.beb, i64 noundef %i.bec) ; 0 uses
  %i.bef = load ptr, ptr %35, align 8             ; 2 uses
  %i.beg = icmp eq ptr %i.bef, %i.gw
  br i1 %i.beg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i861

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i861: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit829.thread
  %i.beh = load i64, ptr %i.gw, align 8
  %i.bei = add i64 %i.beh, 1
  call void @_ZdlPvm(ptr noundef %i.bef, i64 noundef %i.bei) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit829.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i861
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  br label %.critedge326

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit867: ; preds = %bb.ah
  %i.bej = sub nuw i64 %.sroa.01320.1, %.02682384
  %i.bek = getelementptr inbounds nuw i8, ptr %.sroa.28.216051612, i64 %.02682384 ; 7 uses
  %i.bel = icmp eq i64 %.sroa.01320.1, %.02682384
  br i1 %i.bel, label %.thread, label %bb.lo

.thread:                                          ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit867
  %i.bem = ptrtoint ptr %i.bek to i64             ; 2 uses
  br label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1770

bb.lo:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit867
  %i.ben = load i8, ptr %i.bek, align 1
  %i.beo = icmp eq i8 %i.ben, 45
end_hunk_1
begin_hunk_2_@_ZN3ada6parser14parse_url_implINS_3urlELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
bb.lp:                                            ; preds = %bb.lo
  store i8 0, ptr %i.c, align 8
  br label %.critedge329

.lr.ph.i37.i.preheader:                           ; preds = %bb.lo
  %i.bep = ptrtoint ptr %i.bek to i64             ; 5 uses
  br label %.lr.ph.i37.i

.lr.ph.i37.i:                                     ; preds = %.lr.ph.i37.i.preheader, %.critedge.i38.i
  %.368.i = phi ptr [ %i.bfj, %.critedge.i38.i ], [ %i.bek, %.lr.ph.i37.i.preheader ] ; 4 uses
  %.9.i = phi i32 [ %.10.i, %.critedge.i38.i ], [ 0, %.lr.ph.i37.i.preheader ] ; 3 uses
  %.02338.i.i = phi i32 [ %i.bet, %.critedge.i38.i ], [ 32, %.lr.ph.i37.i.preheader ]
  %i.beq = load i8, ptr %.368.i, align 1
  %i.ber = add i8 %i.beq, -48                     ; 2 uses
  %i.bes = zext i8 %i.ber to i32                  ; 2 uses
  %.not31.i.i = icmp ult i8 %i.ber, 10
  br i1 %.not31.i.i, label %bb.lq, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i

bb.lq:                                            ; preds = %.lr.ph.i37.i
  %i.bet = add i32 %.02338.i.i, -4                ; 2 uses
  %i.beu = icmp sgt i32 %i.bet, -1
  br i1 %i.beu, label %bb.lr, label %bb.ls, !prof !111

bb.lr:                                            ; preds = %bb.lq
  %i.bev = mul i32 %.9.i, 10
  %i.bew = add i32 %i.bev, %i.bes
  br label %.critedge.i38.i

bb.ls:                                            ; preds = %bb.lq
  %i.bex = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.9.i, i32 10) ; 2 uses
  %i.bey = extractvalue { i32, i1 } %i.bex, 1
  br i1 %i.bey, label %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i, label %bb.lt, !prof !112

bb.lt:                                            ; preds = %bb.ls
  %i.bez = extractvalue { i32, i1 } %i.bex, 0
  %i.bfa = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.bez, i32 %i.bes) ; 2 uses
  %i.bfb = extractvalue { i32, i1 } %i.bfa, 1
  %i.bfc = extractvalue { i32, i1 } %i.bfa, 0
  br i1 %i.bfb, label %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i, label %.critedge.i38.i, !prof !18

_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i: ; preds = %bb.lt, %bb.ls
  %i.bfd = getelementptr inbounds nuw i8, ptr %.368.i, i64 1 ; 2 uses
  %.not32.i.i3408 = icmp eq ptr %i.bfd, %i.gn
  br i1 %.not32.i.i3408, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, label %.lr.ph3409

_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i: ; preds = %.lr.ph3409
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bff, i64 1 ; 2 uses
  %.not32.i.i = icmp eq ptr %i.bfe, %i.gn
  br i1 %.not32.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, label %.lr.ph3409, !llvm.loop !113

.lr.ph3409:                                       ; preds = %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i
  %i.bff = phi ptr [ %i.bfe, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i ], [ %i.bfd, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i ] ; 3 uses
  %i.bfg = load i8, ptr %i.bff, align 1
  %i.bfh = add i8 %i.bfg, -48
  %i.bfi = icmp ult i8 %i.bfh, 10
  br i1 %i.bfi, label %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i, label %._ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i_crit_edge, !llvm.loop !113

.critedge.i38.i:                                  ; preds = %bb.lt, %bb.lr
  %.10.i = phi i32 [ %i.bew, %bb.lr ], [ %i.bfc, %bb.lt ] ; 2 uses
  %i.bfj = getelementptr inbounds nuw i8, ptr %.368.i, i64 1 ; 2 uses
  %.not.i.i871 = icmp eq ptr %i.bfj, %i.gn
  br i1 %.not.i.i871, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i, label %.lr.ph.i37.i, !llvm.loop !114

._ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i_crit_edge: ; preds = %.lr.ph3409
  br label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, !llvm.loop !113

_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i: ; preds = %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i, %._ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i_crit_edge, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i
  %.065.ph.i = phi ptr [ %i.bff, %._ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i_crit_edge ], [ %i.gn, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i ], [ %i.gn, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i ]
  %i.bfk = icmp eq ptr %.065.ph.i, %i.bek
  br i1 %i.bfk, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1770, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, !prof !115

_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i: ; preds = %.critedge.i38.i, %.lr.ph.i37.i
  %.065.i = phi ptr [ %.368.i, %.lr.ph.i37.i ], [ %i.gn, %.critedge.i38.i ] ; 2 uses
  %.0.i868 = phi i32 [ %.9.i, %.lr.ph.i37.i ], [ %.10.i, %.critedge.i38.i ] ; 2 uses
  %.not1909 = icmp eq ptr %.065.i, %i.bek
  br i1 %.not1909, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1770, label %bb.lu, !prof !116

bb.lu:                                            ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i
  %i.bfl = icmp ugt i32 %.0.i868, 65535
  br i1 %i.bfl, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.bfm = trunc nuw i32 %.0.i868 to i16
  %.pre2617 = ptrtoint ptr %.065.i to i64
  br label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1770

_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread: ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, %bb.lu
  store i8 0, ptr %i.c, align 8
  br label %.critedge329

_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1770: ; preds = %.thread, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, %bb.lv
  %i.bfn = phi i64 [ %i.bep, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ %i.bem, %.thread ], [ %i.bep, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %i.bep, %bb.lv ]
  %.pre-phi = phi i64 [ %i.bep, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ %i.bem, %.thread ], [ %i.bep, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %.pre2617, %bb.lv ]
  %i.bfo = phi i1 [ false, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ false, %.thread ], [ false, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ true, %bb.lv ]
  %.015961776 = phi i16 [ 0, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ 0, %.thread ], [ 0, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %i.bfm, %bb.lv ] ; 3 uses
  %i.bfp = sub i64 %.pre-phi, %i.bfn              ; 3 uses
  %i.bfq = icmp eq i64 %i.bfp, %i.bej
  br i1 %i.bfq, label %bb.lz, label %bb.lw

bb.lw:                                            ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1770
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bek, i64 %i.bfp
  %i.bfs = load i8, ptr %i.bfr, align 1           ; 2 uses
  switch i8 %i.bfs, label %bb.lx [
    i8 47, label %bb.lz
    i8 63, label %bb.lz
  ]

bb.lx:                                            ; preds = %bb.lw
  %i.bft = load i8, ptr %i.f, align 1
  %.not1910 = icmp eq i8 %i.bft, 1
  br i1 %.not1910, label %bb.lz, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.bfu = icmp eq i8 %i.bfs, 92
  %i.bfv = zext i1 %i.bfu to i8
  br label %bb.lz

bb.lz:                                            ; preds = %bb.lw, %bb.lw, %bb.ly, %bb.lx, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1770
  %i.bfw = phi i8 [ 1, %bb.lw ], [ 1, %bb.lw ], [ 1, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1770 ], [ 0, %bb.lx ], [ %i.bfv, %bb.ly ]
  %i.bfx = load i8, ptr %i.c, align 8, !range !73, !noundef !74
  %i.bfy = and i8 %i.bfx, %i.bfw                  ; 2 uses
  store i8 %i.bfy, ptr %i.c, align 8
  %i.bfz = trunc nuw i8 %i.bfy to i1
  br i1 %i.bfz, label %_ZN3ada3url10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit, label %.critedge329

_ZN3ada3url10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit: ; preds = %bb.lz
  %i.bga = load i8, ptr %i.f, align 1
  %i.bgb = zext i8 %i.bga to i64                  ; 2 uses
  %i.bgc = getelementptr inbounds nuw [2 x i8], ptr @_ZN3ada6scheme7detailsL13special_portsE, i64 %i.bgb
  %i.bgd = load i16, ptr %i.bgc, align 2
  %i.bge = lshr i64 194, %i.bgb
  %i.bgf = trunc i64 %i.bge to i1
  %i.bgg = icmp eq i16 %.015961776, 0
  %or.cond.i419 = select i1 %i.bgf, i1 %i.bgg, i1 false
  %i.bgh = icmp ne i16 %i.bgd, %.015961776
  %spec.select.i = select i1 %or.cond.i419, i1 true, i1 %i.bgh
  %or.cond4.i = select i1 %i.bfo, i1 %spec.select.i, i1 false ; 2 uses
  %spec.select = select i1 %or.cond4.i, i16 %.015961776, i16 %.sroa.01476.02382 ; 2 uses
  %.sroa.41477.0.insert.shift = select i1 %or.cond4.i, i32 65536, i32 0
  %.sroa.01476.0.insert.ext = zext i16 %spec.select to i32
  %.sroa.01476.0.insert.insert = or disjoint i32 %.sroa.41477.0.insert.shift, %.sroa.01476.0.insert.ext
  store i32 %.sroa.01476.0.insert.insert, ptr %i.go, align 8
  %i.bgi = add i64 %i.bfp, %.02682384
  br label %bb.ma

bb.ma:                                            ; preds = %_ZN3ada3url10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit, %bb.ah
  %.sroa.01476.1 = phi i16 [ %spec.select, %_ZN3ada3url10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit ], [ %.sroa.01476.02382, %bb.ah ] ; 3 uses
  %.10278 = phi i64 [ %i.bgi, %_ZN3ada3url10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit ], [ %.02682384, %bb.ah ] ; 6 uses
  %i.bgj = load i8, ptr %i.f, align 1
  %.not1911 = icmp eq i8 %i.bgj, 1
  %.not311 = icmp eq i64 %.10278, %.sroa.01320.1  ; 2 uses
  br i1 %.not1911, label %bb.mf, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  br i1 %.not311, label %bb.mc, label %bb.me

bb.mc:                                            ; preds = %bb.mb
  %i.bgk = load i64, ptr %i.q, align 8
  %i.bgl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef 0, i64 noundef %i.bgk, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  br i1 %.sroa.14.0, label %bb.md, label %.critedge346.critedge

bb.md:                                            ; preds = %bb.mc
  call void @_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(272) %0, i64 %.sroa.01314.0, ptr %.sroa.9.0)
  br label %.critedge346.critedge

bb.me:                                            ; preds = %bb.mb
  %i.bgm = getelementptr inbounds nuw i8, ptr %.sroa.28.216051612, i64 %.10278
  %i.bgn = load i8, ptr %i.bgm, align 1
  switch i8 %i.bgn, label %.critedge326 [
    i8 47, label %.critedge338
    i8 92, label %.critedge338
  ]

bb.mf:                                            ; preds = %bb.ma
  br i1 %.not311, label %.critedge338, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.bgo = getelementptr inbounds nuw i8, ptr %.sroa.28.216051612, i64 %.10278
  %i.bgp = load i8, ptr %i.bgo, align 1
  switch i8 %i.bgp, label %.critedge326 [
    i8 63, label %.critedge338
    i8 47, label %.critedge338.fold.split
  ]

.critedge338.fold.split:                          ; preds = %bb.mg
  br label %.critedge338

.critedge338:                                     ; preds = %bb.mg, %.critedge338.fold.split, %bb.me, %bb.me, %bb.mf
  %.11 = phi i32 [ 16, %bb.me ], [ 16, %bb.me ], [ 15, %bb.mg ], [ 17, %bb.mf ], [ 16, %.critedge338.fold.split ]
  %i.bgq = add i64 %.10278, 1
  br label %.critedge326

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit875: ; preds = %bb.ah
  %i.bgr = getelementptr inbounds nuw i8, ptr %.sroa.28.216051612, i64 %.02682384 ; 23 uses
  %.not1905 = icmp eq i64 %.sroa.01320.1, %.02682384
  br i1 %.not1905, label %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i877

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i877:    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit875
  %i.bgs = sub nuw i64 %.sroa.01320.1, %.02682384 ; 2 uses
  %i.bgt = call ptr @memchr(ptr noundef %i.bgr, i32 noundef 63, i64 noundef %i.bgs) #30 ; 2 uses
  %.not.i878 = icmp eq ptr %i.bgt, null           ; 3 uses
  %i.bgu = ptrtoint ptr %i.bgt to i64
  %i.bgv = ptrtoint ptr %i.bgr to i64
  %i.bgw = sub i64 %i.bgu, %i.bgv                 ; 2 uses
  %i.bgx = add i64 %.02682384, 1
  %i.bgy = add i64 %i.bgx, %i.bgw
  %.sroa.01259.0 = select i1 %.not.i878, i64 %i.bgs, i64 %i.bgw ; 18 uses
  %.11279 = select i1 %.not.i878, i64 %i.gk, i64 %i.bgy ; 10 uses
  %.12 = select i1 %.not.i878, i32 16, i32 15     ; 10 uses
  %i.bgz = load i8, ptr %i.f, align 1             ; 3 uses
  %i.bha = icmp ugt i64 %.sroa.01259.0, 7
  br i1 %i.bha, label %.lr.ph2216, label %.preheader1988

.preheader1988.loopexit:                          ; preds = %.lr.ph2216
  %i.bhb = and i64 %.sroa.01259.0, -8
  br label %.preheader1988

.preheader1988:                                   ; preds = %.preheader1988.loopexit, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i877
  %.016.i.lcssa = phi i64 [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i877 ], [ %i.bhb, %.preheader1988.loopexit ] ; 4 uses
  %.0.i420.lcssa = phi i8 [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i877 ], [ %i.bjh, %.preheader1988.loopexit ] ; 3 uses
  %i.bhc = icmp ult i64 %.016.i.lcssa, %.sroa.01259.0
  br i1 %i.bhc, label %.lr.ph2221.preheader, label %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit

.lr.ph2221.preheader:                             ; preds = %.preheader1988
  %xtraiter3634 = and i64 %.sroa.01259.0, 3       ; 2 uses
  %lcmp.mod3635.not = icmp eq i64 %xtraiter3634, 0
  br i1 %lcmp.mod3635.not, label %.lr.ph2221.prol.loopexit, label %.lr.ph2221.prol

.lr.ph2221.prol:                                  ; preds = %.lr.ph2221.preheader, %.lr.ph2221.prol
  %.1.i4212220.prol = phi i8 [ %i.bhi, %.lr.ph2221.prol ], [ %.0.i420.lcssa, %.lr.ph2221.preheader ]
  %.117.i2219.prol = phi i64 [ %i.bhj, %.lr.ph2221.prol ], [ %.016.i.lcssa, %.lr.ph2221.preheader ] ; 2 uses
  %prol.iter3636 = phi i64 [ %prol.iter3636.next, %.lr.ph2221.prol ], [ 0, %.lr.ph2221.preheader ]
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bgr, i64 %.117.i2219.prol
  %i.bhe = load i8, ptr %i.bhd, align 1
  %i.bhf = zext i8 %i.bhe to i64
  %i.bhg = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.bhf
  %i.bhh = load i8, ptr %i.bhg, align 1
  %i.bhi = or i8 %i.bhh, %.1.i4212220.prol        ; 3 uses
  %i.bhj = add nuw i64 %.117.i2219.prol, 1        ; 2 uses
  %prol.iter3636.next = add i64 %prol.iter3636, 1 ; 2 uses
  %prol.iter3636.cmp.not = icmp eq i64 %prol.iter3636.next, %xtraiter3634
  br i1 %prol.iter3636.cmp.not, label %.lr.ph2221.prol.loopexit, label %.lr.ph2221.prol, !llvm.loop !117

.lr.ph2221.prol.loopexit:                         ; preds = %.lr.ph2221.prol, %.lr.ph2221.preheader
  %.lcssa3459.unr = phi i8 [ poison, %.lr.ph2221.preheader ], [ %i.bhi, %.lr.ph2221.prol ]
  %.1.i4212220.unr = phi i8 [ %.0.i420.lcssa, %.lr.ph2221.preheader ], [ %i.bhi, %.lr.ph2221.prol ]
  %.117.i2219.unr = phi i64 [ %.016.i.lcssa, %.lr.ph2221.preheader ], [ %i.bhj, %.lr.ph2221.prol ]
  %i.bhk = sub i64 %.016.i.lcssa, %.sroa.01259.0
  %i.bhl = icmp ugt i64 %i.bhk, -4
  br i1 %i.bhl, label %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph2221

.lr.ph2216:                                       ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i877, %.lr.ph2216
  %.0.i4202215 = phi i8 [ %i.bjh, %.lr.ph2216 ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i877 ]
  %.016.i2214 = phi i64 [ %i.bji, %.lr.ph2216 ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i877 ] ; 2 uses
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bgr, i64 %.016.i2214 ; 8 uses
  %i.bhn = load i8, ptr %i.bhm, align 1
  %i.bho = zext i8 %i.bhn to i64
  %i.bhp = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.bho
  %i.bhq = load i8, ptr %i.bhp, align 1
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhm, i64 1
  %i.bhs = load i8, ptr %i.bhr, align 1
  %i.bht = zext i8 %i.bhs to i64
  %i.bhu = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.bht
  %i.bhv = load i8, ptr %i.bhu, align 1
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhm, i64 2
  %i.bhx = load i8, ptr %i.bhw, align 1
  %i.bhy = zext i8 %i.bhx to i64
  %i.bhz = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.bhy
  %i.bia = load i8, ptr %i.bhz, align 1
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bhm, i64 3
  %i.bic = load i8, ptr %i.bib, align 1
  %i.bid = zext i8 %i.bic to i64
  %i.bie = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.bid
  %i.bif = load i8, ptr %i.bie, align 1
  %i.big = getelementptr inbounds nuw i8, ptr %i.bhm, i64 4
  %i.bih = load i8, ptr %i.big, align 1
  %i.bii = zext i8 %i.bih to i64
  %i.bij = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.bii
  %i.bik = load i8, ptr %i.bij, align 1
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bhm, i64 5
  %i.bim = load i8, ptr %i.bil, align 1
  %i.bin = zext i8 %i.bim to i64
  %i.bio = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.bin
  %i.bip = load i8, ptr %i.bio, align 1
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bhm, i64 6
  %i.bir = load i8, ptr %i.biq, align 1
  %i.bis = zext i8 %i.bir to i64
  %i.bit = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.bis
  %i.biu = load i8, ptr %i.bit, align 1
  %i.biv = getelementptr inbounds nuw i8, ptr %i.bhm, i64 7
  %i.biw = load i8, ptr %i.biv, align 1
  %i.bix = zext i8 %i.biw to i64
  %i.biy = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.bix
  %i.biz = load i8, ptr %i.biy, align 1
  %i.bja = or i8 %i.bhq, %.0.i4202215
  %i.bjb = or i8 %i.bja, %i.bhv
  %i.bjc = or i8 %i.bjb, %i.bia
  %i.bjd = or i8 %i.bjc, %i.bif
  %i.bje = or i8 %i.bjd, %i.bik
  %i.bjf = or i8 %i.bje, %i.bip
  %i.bjg = or i8 %i.bjf, %i.biu
  %i.bjh = or i8 %i.bjg, %i.biz                   ; 2 uses
  %i.bji = add nuw i64 %.016.i2214, 8             ; 2 uses
  %i.bjj = or disjoint i64 %i.bji, 7
  %i.bjk = icmp ult i64 %i.bjj, %.sroa.01259.0
  br i1 %i.bjk, label %.lr.ph2216, label %.preheader1988.loopexit, !llvm.loop !118

.lr.ph2221:                                       ; preds = %.lr.ph2221.prol.loopexit, %.lr.ph2221
  %.1.i4212220 = phi i8 [ %i.bkl, %.lr.ph2221 ], [ %.1.i4212220.unr, %.lr.ph2221.prol.loopexit ]
  %.117.i2219 = phi i64 [ %i.bkm, %.lr.ph2221 ], [ %.117.i2219.unr, %.lr.ph2221.prol.loopexit ] ; 5 uses
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bgr, i64 %.117.i2219
  %i.bjm = load i8, ptr %i.bjl, align 1
  %i.bjn = zext i8 %i.bjm to i64
  %i.bjo = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.bjn
  %i.bjp = load i8, ptr %i.bjo, align 1
  %i.bjq = or i8 %i.bjp, %.1.i4212220
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bgr, i64 %.117.i2219
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bjr, i64 1
  %i.bjt = load i8, ptr %i.bjs, align 1
  %i.bju = zext i8 %i.bjt to i64
  %i.bjv = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.bju
  %i.bjw = load i8, ptr %i.bjv, align 1
  %i.bjx = or i8 %i.bjw, %i.bjq
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.bgr, i64 %.117.i2219
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bjy, i64 2
  %i.bka = load i8, ptr %i.bjz, align 1
  %i.bkb = zext i8 %i.bka to i64
  %i.bkc = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.bkb
  %i.bkd = load i8, ptr %i.bkc, align 1
  %i.bke = or i8 %i.bkd, %i.bjx
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bgr, i64 %.117.i2219
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bkf, i64 3
  %i.bkh = load i8, ptr %i.bkg, align 1
  %i.bki = zext i8 %i.bkh to i64
  %i.bkj = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.bki
  %i.bkk = load i8, ptr %i.bkj, align 1
  %i.bkl = or i8 %i.bkk, %i.bke                   ; 2 uses
  %i.bkm = add nuw i64 %.117.i2219, 4             ; 2 uses
  %exitcond2591.not.3 = icmp eq i64 %i.bkm, %.sroa.01259.0
  br i1 %exitcond2591.not.3, label %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph2221, !llvm.loop !119

_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.lr.ph2221.prol.loopexit, %.lr.ph2221, %.preheader1988
  %.1.i421.lcssa = phi i8 [ %.0.i420.lcssa, %.preheader1988 ], [ %.lcssa3459.unr, %.lr.ph2221.prol.loopexit ], [ %i.bkl, %.lr.ph2221 ] ; 10 uses
  %.not.i = icmp eq i8 %i.bgz, 1                  ; 10 uses
  %i.bkn = icmp eq i8 %i.bgz, 6
  br i1 %i.bkn, label %bb.mh, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit875
  %i.bko = load i8, ptr %i.f, align 1             ; 3 uses
  %.not.i2892 = icmp eq i8 %i.bko, 1              ; 2 uses
  %i.bkp = icmp eq i8 %i.bko, 6
  br i1 %i.bkp, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.mh:                                            ; preds = %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.bkq = icmp ugt i64 %.sroa.01259.0, 1
  br i1 %i.bkq, label %bb.mi, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.mi:                                            ; preds = %bb.mh
  %i.bkr = load i8, ptr %i.bgr, align 1
  %i.bks = or i8 %i.bkr, 32
  %i.bkt = add i8 %i.bks, -97
  %spec.select.i.i881 = icmp ult i8 %i.bkt, 26
  br i1 %spec.select.i.i881, label %bb.mj, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.mj:                                            ; preds = %bb.mi
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bgr, i64 1
  %i.bkv = load i8, ptr %i.bku, align 1
  switch i8 %i.bkv, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread [
    i8 58, label %bb.mk
    i8 124, label %bb.mk
  ]

bb.mk:                                            ; preds = %bb.mj, %bb.mj
  %i.bkw = icmp eq i64 %.sroa.01259.0, 2
  br i1 %i.bkw, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bgr, i64 2
  %i.bky = load i8, ptr %i.bkx, align 1
  switch i8 %i.bky, label %bb.mm [
    i8 47, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
    i8 92, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
    i8 63, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
    i8 35, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  ]

bb.mm:                                            ; preds = %bb.ml
  br label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.not.i2914 = phi i1 [ %.not.i2892, %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ %.not.i, %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %.1.i421.lcssa2907 = phi i8 [ 0, %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ %.1.i421.lcssa, %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 4 uses
  %i.bkz = phi i8 [ %i.bko, %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ %i.bgz, %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 3 uses
  %.12287928852904 = phi i32 [ 16, %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ %.12, %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 3 uses
  %.11279287828862899 = phi i64 [ %i.gk, %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ %.11279, %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 3 uses
  %.sroa.01259.0287528872894 = phi i64 [ 0, %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ %.sroa.01259.0, %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 3 uses
  br i1 %.not.i2914, label %bb.mn, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %bb.mh, %bb.mi, %bb.mj, %bb.mk, %bb.ml, %bb.ml, %bb.ml, %bb.ml, %bb.mm, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.bla = phi i1 [ false, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ true, %bb.ml ], [ true, %bb.mm ], [ true, %bb.ml ], [ true, %bb.ml ], [ true, %bb.ml ], [ true, %bb.mk ], [ true, %bb.mh ], [ true, %bb.mi ], [ true, %bb.mj ] ; 2 uses
  %.not.i2913 = phi i1 [ false, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.not.i, %bb.ml ], [ %.not.i, %bb.mm ], [ %.not.i, %bb.ml ], [ %.not.i, %bb.ml ], [ %.not.i, %bb.ml ], [ %.not.i, %bb.mk ], [ %.not.i, %bb.mh ], [ %.not.i, %bb.mi ], [ %.not.i, %bb.mj ] ; 2 uses
  %.1.i421.lcssa2906 = phi i8 [ %.1.i421.lcssa2907, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.1.i421.lcssa, %bb.ml ], [ %.1.i421.lcssa, %bb.mm ], [ %.1.i421.lcssa, %bb.ml ], [ %.1.i421.lcssa, %bb.ml ], [ %.1.i421.lcssa, %bb.ml ], [ %.1.i421.lcssa, %bb.mk ], [ %.1.i421.lcssa, %bb.mh ], [ %.1.i421.lcssa, %bb.mi ], [ %.1.i421.lcssa, %bb.mj ] ; 2 uses
  %i.blb = phi i8 [ %i.bkz, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ 6, %bb.ml ], [ 6, %bb.mm ], [ 6, %bb.ml ], [ 6, %bb.ml ], [ 6, %bb.ml ], [ 6, %bb.mk ], [ 6, %bb.mh ], [ 6, %bb.mi ], [ 6, %bb.mj ] ; 2 uses
  %.12287928852903 = phi i32 [ %.12287928852904, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.12, %bb.ml ], [ %.12, %bb.mm ], [ %.12, %bb.ml ], [ %.12, %bb.ml ], [ %.12, %bb.ml ], [ %.12, %bb.mk ], [ %.12, %bb.mh ], [ %.12, %bb.mi ], [ %.12, %bb.mj ] ; 2 uses
  %.11279287828862898 = phi i64 [ %.11279287828862899, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.11279, %bb.ml ], [ %.11279, %bb.mm ], [ %.11279, %bb.ml ], [ %.11279, %bb.ml ], [ %.11279, %bb.ml ], [ %.11279, %bb.mk ], [ %.11279, %bb.mh ], [ %.11279, %bb.mi ], [ %.11279, %bb.mj ] ; 2 uses
  %.sroa.01259.0287528872895 = phi i64 [ %.sroa.01259.0287528872894, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.sroa.01259.0, %bb.ml ], [ %.sroa.01259.0, %bb.mm ], [ %.sroa.01259.0, %bb.ml ], [ %.sroa.01259.0, %bb.ml ], [ %.sroa.01259.0, %bb.ml ], [ 2, %bb.mk ], [ %.sroa.01259.0, %bb.mh ], [ %.sroa.01259.0, %bb.mi ], [ %.sroa.01259.0, %bb.mj ] ; 2 uses
  %i.blc = phi i1 [ false, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ true, %bb.ml ], [ false, %bb.mm ], [ true, %bb.ml ], [ true, %bb.ml ], [ true, %bb.ml ], [ true, %bb.mk ], [ false, %bb.mh ], [ false, %bb.mi ], [ false, %bb.mj ] ; 2 uses
  %i.bld = icmp eq i8 %.1.i421.lcssa2906, 0
  br i1 %i.bld, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread, label %bb.mo
end_hunk_2
begin_hunk_3_@_ZN3ada6parser14parse_url_implINS_3urlELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a

bb.pu:                                            ; preds = %bb.pt
  %i.byu = getelementptr inbounds nuw i8, ptr %i.byp, i64 %i.byl ; 2 uses
  %cond.i.i.i1046 = icmp eq i64 %i.byk, 1
  br i1 %cond.i.i.i1046, label %bb.pv, label %bb.pw

bb.pv:                                            ; preds = %bb.pu
  %i.byv = load i8, ptr %i.byj, align 1
  store i8 %i.byv, ptr %i.byu, align 1
  br label %_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.sink.split

bb.pw:                                            ; preds = %bb.pu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.byu, ptr nonnull align 1 %i.byj, i64 %i.byk, i1 false)
  br label %_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.sink.split

bb.px:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i1043
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.byl, i64 noundef 0, ptr noundef nonnull %i.byj, i64 noundef %i.byk)
  br label %_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.sink.split

_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1029.thread: ; preds = %bb.pl, %bb.pi, %bb.pj, %bb.ph, %_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.byw = phi i64 [ %.pre2608, %_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ 0, %bb.pi ], [ 0, %bb.pj ], [ %.pre2608, %bb.ph ], [ 0, %bb.pl ] ; 4 uses
  %i.byx = add i64 %i.byw, 1                      ; 3 uses
  %i.byy = load ptr, ptr %i.o, align 8            ; 2 uses
  %i.byz = icmp eq ptr %i.byy, %i.p               ; 2 uses
  br i1 %i.byz, label %bb.py, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i1048

bb.py:                                            ; preds = %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1029.thread
  %i.bza = icmp ult i64 %i.byw, 16
  call void @llvm.assume(i1 %i.bza)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i1048

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i1048: ; preds = %bb.py, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1029.thread
  %i.bzb = load i64, ptr %i.p, align 8
  %i.bzc = select i1 %i.byz, i64 15, i64 %i.bzb
  %i.bzd = icmp ugt i64 %i.byx, %i.bzc
  br i1 %i.bzd, label %bb.pz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit1050

bb.pz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i1048
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.byw, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i1049 = load ptr, ptr %i.o, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit1050

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit1050: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i1048, %bb.pz
  %i.bze = phi ptr [ %.pre.i.i1049, %bb.pz ], [ %i.byy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i1048 ]
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.bze, i64 %i.byw
  store i8 47, ptr %i.bzf, align 1
  store i64 %i.byx, ptr %i.q, align 8
  %i.bzg = load ptr, ptr %i.o, align 8
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.bzg, i64 %i.byx
  store i8 0, ptr %i.bzh, align 1
  %i.bzi = load i64, ptr %i.q, align 8            ; 5 uses
  %i.bzj = sub i64 9223372036854775807, %i.bzi
  %i.bzk = icmp ult i64 %i.bzj, %.sroa.01410.0
  br i1 %i.bzk, label %bb.qa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i1054

bb.qa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit1050
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #31
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i1054: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit1050
  %i.bzl = add i64 %i.bzi, %.sroa.01410.0         ; 5 uses
  %i.bzm = load ptr, ptr %i.o, align 8            ; 2 uses
  %i.bzn = icmp eq ptr %i.bzm, %i.p               ; 2 uses
  br i1 %i.bzn, label %bb.qb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i1055

bb.qb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i1054
  %i.bzo = icmp ult i64 %i.bzi, 16
  call void @llvm.assume(i1 %i.bzo)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i1055

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i1055: ; preds = %bb.qb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i1054
  %i.bzp = load i64, ptr %i.p, align 8
  %i.bzq = select i1 %i.bzn, i64 15, i64 %i.bzp
  %.not.i.i.i1056 = icmp ugt i64 %i.bzl, %i.bzq
  br i1 %.not.i.i.i1056, label %bb.qg, label %bb.qc

bb.qc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i1055
  %.not8.i.i.i1057 = icmp eq i64 %.sroa.01410.0, 0
  br i1 %.not8.i.i.i1057, label %_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.sink.split, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  %i.bzr = getelementptr inbounds nuw i8, ptr %i.bzm, i64 %i.bzi ; 2 uses
  br i1 %i.bus, label %bb.qe, label %bb.qf

bb.qe:                                            ; preds = %bb.qd
  %i.bzs = load i8, ptr %.sroa.12.0, align 1
  store i8 %i.bzs, ptr %i.bzr, align 1
  br label %_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.sink.split

bb.qf:                                            ; preds = %bb.qd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bzr, ptr align 1 %.sroa.12.0, i64 %.sroa.01410.0, i1 false)
  br label %_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.sink.split

bb.qg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i1055
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.bzi, i64 noundef 0, ptr noundef %.sroa.12.0, i64 noundef %.sroa.01410.0)
  br label %_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.sink.split

_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.sink.split: ; preds = %bb.qg, %bb.qf, %bb.qe, %bb.qc, %bb.px, %bb.pw, %bb.pv, %bb.pt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit1015
  %.sink = phi i64 [ %i.byo, %bb.px ], [ %i.bvp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit1015 ], [ %i.byo, %bb.pt ], [ %i.byo, %bb.pv ], [ %i.byo, %bb.pw ], [ %i.bzl, %bb.qc ], [ %i.bzl, %bb.qe ], [ %i.bzl, %bb.qf ], [ %i.bzl, %bb.qg ] ; 2 uses
  store i64 %.sink, ptr %i.q, align 8
  %i.bzt = load ptr, ptr %i.o, align 8
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.bzt, i64 %.sink
  store i8 0, ptr %i.bzu, align 1
  br label %_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.sink.split, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1024, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1020
  br i1 %.not108.i1795, label %.loopexit, label %.critedge1886.backedge

.loopexit:                                        ; preds = %_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %.thread1806
  %i.bzv = load ptr, ptr %26, align 8             ; 2 uses
  %i.bzw = icmp eq ptr %i.bzv, %i.gl
  br i1 %i.bzw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1060

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1060: ; preds = %.loopexit
  %i.bzx = load i64, ptr %i.gl, align 8
  %i.bzy = add i64 %i.bzx, 1
  call void @_ZdlPvm(ptr noundef %i.bzv, i64 noundef %i.bzy) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1060
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  br label %.critedge326

bb.qh:                                            ; preds = %bb.ah
  %.not308 = icmp eq i64 %.02682384, %.sroa.01320.1
  br i1 %.not308, label %bb.qk, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %i.bzz = getelementptr inbounds nuw i8, ptr %.sroa.28.216051612, i64 %.02682384
  %i.caa = load i8, ptr %i.bzz, align 1
  switch i8 %i.caa, label %bb.qk [
    i8 47, label %bb.qj
    i8 92, label %bb.qj
  ]

bb.qj:                                            ; preds = %bb.qi, %bb.qi
  %i.cab = add i64 %.02682384, 1
  br label %.critedge326

bb.qk:                                            ; preds = %bb.qi, %bb.qh
  br i1 %i.x, label %bb.ql, label %.critedge326

bb.ql:                                            ; preds = %bb.qk
  %i.cac = load i8, ptr %i.fu, align 1
  %i.cad = icmp eq i8 %i.cac, 6
  br i1 %i.cad, label %bb.qm, label %.critedge326

bb.qm:                                            ; preds = %bb.ql
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.ft, ptr noundef nonnull align 8 dereferenceable(40) %i.fv)
  %i.cae = load ptr, ptr %i.fw, align 8           ; 2 uses
  %i.caf = load i64, ptr %i.gi, align 8           ; 2 uses
  %i.cag = icmp eq i64 %i.caf, 0
  br i1 %i.cag, label %.critedge326, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1066

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1066: ; preds = %bb.qm
  %i.cah = sub nuw i64 %.sroa.01320.1, %.02682384 ; 2 uses
  %i.cai = getelementptr inbounds nuw i8, ptr %.sroa.28.216051612, i64 %.02682384 ; 3 uses
  %i.caj = icmp ugt i64 %i.cah, 1
  br i1 %i.caj, label %bb.qn, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1074

bb.qn:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1066
  %i.cak = load i8, ptr %i.cai, align 1
  %i.cal = or i8 %i.cak, 32
  %i.cam = add i8 %i.cal, -97
  %spec.select.i.i1067 = icmp ult i8 %i.cam, 26
  br i1 %spec.select.i.i1067, label %bb.qo, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1074

bb.qo:                                            ; preds = %bb.qn
  %i.can = getelementptr inbounds nuw i8, ptr %i.cai, i64 1
  %i.cao = load i8, ptr %i.can, align 1
  switch i8 %i.cao, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1074 [
    i8 58, label %bb.qp
    i8 124, label %bb.qp
  ]

bb.qp:                                            ; preds = %bb.qo, %bb.qo
  %i.cap = icmp eq i64 %i.cah, 2
  br i1 %i.cap, label %.critedge326, label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  %i.caq = getelementptr inbounds nuw i8, ptr %i.cai, i64 2
  %i.car = load i8, ptr %i.caq, align 1
  switch i8 %i.car, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1074 [
    i8 47, label %.critedge326
    i8 92, label %.critedge326
    i8 63, label %.critedge326
    i8 35, label %.critedge326
  ]

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1074: ; preds = %bb.qq, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1066, %bb.qn, %bb.qo
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #30
  %i.cas = add i64 %i.caf, -1                     ; 4 uses
  %i.cat = getelementptr inbounds nuw i8, ptr %i.cae, i64 1 ; 4 uses
  store i64 %i.cas, ptr %36, align 8
  store ptr %i.cat, ptr %i.gj, align 8
  %.not1904 = icmp eq i64 %i.cas, 0
  br i1 %.not1904, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1081.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1076

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1076:   ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1074
  %i.cau = call ptr @memchr(ptr noundef nonnull %i.cat, i32 noundef 47, i64 noundef %i.cas) #30 ; 2 uses
  %.not309 = icmp eq ptr %i.cau, null
  br i1 %.not309, label %thread-pre-split1810, label %bb.qr

bb.qr:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1076
  %40 = ptrtoint ptr %i.cau to i64
  %41 = ptrtoint ptr %i.cat to i64
  %42 = sub i64 %40, %41                          ; 2 uses
  store i64 %42, ptr %36, align 8
  br label %thread-pre-split1810

thread-pre-split1810:                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1076, %bb.qr
  %.sroa.019.0.copyload = phi i64 [ %42, %bb.qr ], [ %i.cas, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1076 ]
  %i.cav = icmp ugt i64 %.sroa.019.0.copyload, 1
  br i1 %i.cav, label %bb.qs, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1081.thread

bb.qs:                                            ; preds = %thread-pre-split1810
  %i.caw = load i8, ptr %i.cat, align 1
  %i.cax = or i8 %i.caw, 32
  %i.cay = add i8 %i.cax, -97
  %spec.select.i.i1080 = icmp ult i8 %i.cay, 26
  br i1 %spec.select.i.i1080, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1081, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1081.thread

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1081: ; preds = %bb.qs
  %i.caz = getelementptr inbounds nuw i8, ptr %i.cae, i64 2
  %i.cba = load i8, ptr %i.caz, align 1
  %i.cbb = icmp eq i8 %i.cba, 58
  br i1 %i.cbb, label %bb.qt, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1081.thread

bb.qt:                                            ; preds = %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1081
  %i.cbc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 noundef signext 47) ; 0 uses
  %i.cbd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %36) ; 0 uses
  br label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1081.thread

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1081.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1074, %bb.qs, %thread-pre-split1810, %bb.qt, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1081
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  br label %.critedge326

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1085: ; preds = %bb.ah
  %i.cbe = sub nuw i64 %.sroa.01320.1, %.02682384 ; 3 uses
  %i.cbf = getelementptr inbounds nuw i8, ptr %.sroa.28.216051612, i64 %.02682384 ; 15 uses
  %.not1890 = icmp eq i64 %i.cbe, 0
  br i1 %.not1890, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit1094.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i1090

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i1090: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1085, %bb.qu
  %.01116.i.i1091 = phi i64 [ %i.cbi, %bb.qu ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1085 ] ; 4 uses
  %i.cbg = getelementptr inbounds nuw i8, ptr %i.cbf, i64 %.01116.i.i1091
  %i.cbh = load i8, ptr %i.cbg, align 1
  switch i8 %i.cbh, label %bb.qu [
    i8 47, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit1094
    i8 92, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit1094
    i8 63, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit1094
  ]

bb.qu:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i1090
  %i.cbi = add nuw i64 %.01116.i.i1091, 1         ; 2 uses
  %exitcond.not.i.i1093 = icmp eq i64 %i.cbi, %i.cbe
  br i1 %exitcond.not.i.i1093, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit1094.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i1090, !llvm.loop !123

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit1094: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i1090, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i1090, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i1090
  %.not307 = icmp eq i64 %.01116.i.i1091, -1
  br i1 %.not307, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit1094.thread, label %bb.qv

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit1094.thread: ; preds = %bb.qu, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1085, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit1094
  br label %bb.qv

bb.qv:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit1094, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit1094.thread
  %i.cbj = phi i64 [ %i.cbe, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit1094.thread ], [ %.01116.i.i1091, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit1094 ] ; 13 uses
  %i.cbk = icmp ugt i64 %i.cbj, 1
  br i1 %i.cbk, label %bb.qw, label %bb.ra

bb.qw:                                            ; preds = %bb.qv
  %i.cbl = load i8, ptr %i.cbf, align 1
  %i.cbm = or i8 %i.cbl, 32
  %i.cbn = add i8 %i.cbm, -97
  %spec.select.i.i1095 = icmp ult i8 %i.cbn, 26
  br i1 %spec.select.i.i1095, label %bb.qx, label %.thread1814

bb.qx:                                            ; preds = %bb.qw
  %i.cbo = getelementptr inbounds nuw i8, ptr %i.cbf, i64 1
  %i.cbp = load i8, ptr %i.cbo, align 1
  switch i8 %i.cbp, label %.thread1814 [
    i8 58, label %bb.qy
    i8 124, label %bb.qy
  ]

bb.qy:                                            ; preds = %bb.qx, %bb.qx
  %i.cbq = icmp eq i64 %i.cbj, 2
  br i1 %i.cbq, label %.critedge326, label %bb.qz

bb.qz:                                            ; preds = %bb.qy
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.cbf, i64 2
  %i.cbs = load i8, ptr %i.cbr, align 1
  switch i8 %i.cbs, label %.thread1814 [
    i8 47, label %.critedge326
    i8 92, label %.critedge326
    i8 63, label %.critedge326
    i8 35, label %.critedge326
  ]

bb.ra:                                            ; preds = %bb.qv
  %i.cbt = icmp eq i64 %i.cbj, 0
  br i1 %i.cbt, label %bb.rb, label %.thread1814

bb.rb:                                            ; preds = %bb.ra
  %i.cbu = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRA1_KcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.ft, ptr noundef nonnull align 1 dereferenceable(1) @.str.48) ; 0 uses
  br label %.critedge326

.thread1814:                                      ; preds = %bb.qz, %bb.qw, %bb.qx, %bb.ra
  %i.cbv = add i64 %i.cbj, %.02682384             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  store i64 %i.cbj, ptr %21, align 8
  store ptr %i.cbf, ptr %i.gb, align 8
  %i.cbw = load i8, ptr %i.cbf, align 1
  %i.cbx = icmp eq i8 %i.cbw, 91
  br i1 %i.cbx, label %bb.rc, label %bb.re

bb.rc:                                            ; preds = %.thread1814
  %i.cby = getelementptr inbounds nuw i8, ptr %i.cbf, i64 %i.cbj
  %i.cbz = getelementptr inbounds i8, ptr %i.cby, i64 -1
  %i.cca = load i8, ptr %i.cbz, align 1
  %.not.i380 = icmp eq i8 %i.cca, 93
  br i1 %.not.i380, label %bb.rd, label %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1846

_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1846: ; preds = %bb.rc
  store i8 0, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  br label %.critedge329

bb.rd:                                            ; preds = %bb.rc
  %i.ccb = getelementptr inbounds nuw i8, ptr %i.cbf, i64 1 ; 2 uses
  store ptr %i.ccb, ptr %i.gb, align 8
  %i.ccc = add i64 %i.cbj, -2                     ; 2 uses
  store i64 %i.ccc, ptr %21, align 8
  %i.ccd = call noundef zeroext i1 @_ZN3ada3url10parse_ipv6ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(272) %0, i64 %i.ccc, ptr nonnull %i.ccb)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  br i1 %i.ccd, label %bb.tv, label %.critedge329

bb.re:                                            ; preds = %.thread1814
  %i.cce = load i8, ptr %i.f, align 1
  %.not1891 = icmp eq i8 %i.cce, 1
  br i1 %.not1891, label %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.re
  %i.ccf = getelementptr inbounds nuw i8, ptr %i.cbf, i64 %i.cbj ; 15 uses
  %i.ccg = load i8, ptr %i.cbf, align 1           ; 2 uses
  %i.cch = add i8 %i.ccg, -48
  %or.cond.i492 = icmp ult i8 %i.cch, 10
  br i1 %or.cond.i492, label %bb.rf, label %.thread1816.thread

bb.rf:                                            ; preds = %.lr.ph.preheader
  %i.cci = zext nneg i8 %i.ccg to i32
  %i.ccj = add nsw i32 %i.cci, -48                ; 2 uses
  %i.cck = getelementptr inbounds nuw i8, ptr %i.cbf, i64 1 ; 3 uses
  %i.ccl = icmp samesign ugt i64 %i.cbj, 1
  br i1 %i.ccl, label %bb.rg, label %bb.rl

bb.rg:                                            ; preds = %bb.rf
  %i.ccm = load i8, ptr %i.cck, align 1
  %i.ccn = add i8 %i.ccm, -48                     ; 2 uses
  %or.cond6.i506 = icmp ult i8 %i.ccn, 10
  br i1 %or.cond6.i506, label %bb.rh, label %bb.rl

bb.rh:                                            ; preds = %bb.rg
  %i.cco = icmp eq i32 %i.ccj, 0
  br i1 %i.cco, label %.thread1816.thread, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.ccp = mul nuw nsw i32 %i.ccj, 10
  %i.ccq = zext nneg i8 %i.ccn to i32
  %i.ccr = add nuw nsw i32 %i.ccp, %i.ccq
  %i.ccs = getelementptr inbounds nuw i8, ptr %i.cbf, i64 2 ; 3 uses
  %.not3643 = icmp eq i64 %i.cbj, 2
  br i1 %.not3643, label %bb.rl, label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  %i.cct = load i8, ptr %i.ccs, align 1           ; 2 uses
  %i.ccu = add i8 %i.cct, -48
  %or.cond9.i508 = icmp ult i8 %i.ccu, 10
  br i1 %or.cond9.i508, label %bb.rk, label %bb.rl

bb.rk:                                            ; preds = %bb.rj
  %i.ccv = zext nneg i8 %i.cct to i32
  %i.ccw = mul nuw nsw i32 %i.ccr, 10
  %i.ccx = add nsw i32 %i.ccw, -48
  %i.ccy = add nuw nsw i32 %i.ccx, %i.ccv
  %i.ccz = getelementptr inbounds nuw i8, ptr %i.cbf, i64 3
  %i.cda = icmp samesign ugt i32 %i.ccy, 255
  br i1 %i.cda, label %.thread1816.thread, label %bb.rl

bb.rl:                                            ; preds = %bb.rf, %bb.rg, %bb.ri, %bb.rj, %bb.rk
  %.161.i501 = phi ptr [ %i.ccz, %bb.rk ], [ %i.ccs, %bb.rj ], [ %i.ccs, %bb.ri ], [ %i.cck, %bb.rg ], [ %i.cck, %bb.rf ] ; 6 uses
  %i.cdb = icmp eq ptr %.161.i501, %i.ccf
  br i1 %i.cdb, label %.thread1816.thread, label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  %i.cdc = load i8, ptr %.161.i501, align 1
  %.not75.i504 = icmp eq i8 %i.cdc, 46
  br i1 %.not75.i504, label %.thread1820, label %.thread1816.thread

.thread1820:                                      ; preds = %bb.rm
  %i.cdd = getelementptr inbounds nuw i8, ptr %.161.i501, i64 1 ; 2 uses
  %i.cde = icmp eq ptr %i.cdd, %i.ccf
  br i1 %i.cde, label %.thread1816.thread, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.thread1820
  %i.cdf = load i8, ptr %i.cdd, align 1           ; 2 uses
  %i.cdg = add i8 %i.cdf, -48
end_hunk_3
begin_hunk_4_@_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN3ada7unicode14to_lower_asciiEPcm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  br label %_ZN3ada14url_aggregator23parse_scheme_with_colonILb0EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN3ada14url_aggregator23parse_scheme_with_colonILb0EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ao
  %i.lv = load i8, ptr %i.f, align 1              ; 3 uses
  %i.lw = icmp eq i8 %i.lv, 6
  br i1 %i.lw, label %.critedge369, label %bb.aw

bb.aw:                                            ; preds = %_ZN3ada14url_aggregator23parse_scheme_with_colonILb0EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.lx = icmp ne i8 %i.lv, 1                     ; 2 uses
  %or.cond = and i1 %i.q, %i.lx
  br i1 %or.cond, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ly = load i8, ptr %i.fs, align 1
  %i.lz = icmp eq i8 %i.ly, %i.lv
  %.mux1738 = select i1 %i.lz, i32 14, i32 13
  br label %.critedge369

bb.ay:                                            ; preds = %bb.aw
  br i1 %i.lx, label %.critedge369, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ma = icmp ult i64 %i.iz, %.sroa.01255.1
  br i1 %i.ma, label %bb.ba, label %.critedge369

bb.ba:                                            ; preds = %bb.az
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.28.214641471, i64 %i.iz
  %i.mc = load i8, ptr %i.mb, align 1
  %i.md = icmp eq i8 %i.mc, 47                    ; 2 uses
  %.pre2328 = add i64 %.13122131, 2
  %spec.select2810.a = select i1 %i.md, i64 %.pre2328, i64 %i.iz
  %spec.select2811 = select i1 %i.md, i32 11, i32 18
  br label %.critedge369

bb.bb:                                            ; preds = %bb.ah
  br i1 %i.ii, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.me = load i8, ptr %i.ga, align 1, !range !73, !noundef !74
  %i.mf = trunc nuw i8 %i.me to i1
  br i1 %i.mf, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  br i1 %.sroa.14.0, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bb
  store i8 0, ptr %i.c, align 8
  br label %.critedge389.critedge

bb.bf:                                            ; preds = %bb.bd
  %i.mg = icmp eq i64 %.03112133, %.sroa.01255.1
  br i1 %i.mg, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @_ZN3ada14url_aggregator11copy_schemeERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %3)
  %i.mh = load i8, ptr %i.ga, align 1, !range !73, !noundef !74
  store i8 %i.mh, ptr %i.d, align 1
  %i.mi = call { i64, ptr } @_ZNK3ada14url_aggregator12get_pathnameEv(ptr noundef nonnull align 8 dereferenceable(80) %3) ; 2 uses
  %i.mj = extractvalue { i64, ptr } %i.mi, 0
  %i.mk = extractvalue { i64, ptr } %i.mi, 1
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.mj, ptr %i.mk)
  %i.ml = call { i64, ptr } @_ZNK3ada14url_aggregator10get_searchEv(ptr noundef nonnull align 8 dereferenceable(80) %3) ; 2 uses
  %i.mm = extractvalue { i64, ptr } %i.ml, 0
  %i.mn = extractvalue { i64, ptr } %i.ml, 1
  call void @_ZN3ada14url_aggregator18update_base_searchESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.mm, ptr %i.mn)
  call void @_ZN3ada14url_aggregator26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.01248.0, ptr %.sroa.91249.0)
  br label %.critedge389.critedge

bb.bh:                                            ; preds = %bb.bc, %bb.bf
  %i.mo = load i8, ptr %i.fs, align 1
  %.not366 = icmp eq i8 %i.mo, 6
  %. = select i1 %.not366, i32 8, i32 6
  br label %.critedge369

bb.bi:                                            ; preds = %bb.ah
  %i.mp = icmp ult i64 %.03112133, %.sroa.01255.1
  br i1 %i.mp, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i598, label %.critedge369

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i598:    ; preds = %bb.bi
  %i.mq = sub nuw i64 %.sroa.01255.1, %.03112133
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.28.214641471, i64 %.03112133
  %i.ms = call ptr @memchr(ptr noundef %i.mr, i32 noundef 64, i64 noundef %i.mq) #30 ; 2 uses
  %.not.i599 = icmp eq ptr %i.ms, null
  %i.mt = ptrtoint ptr %i.ms to i64
  %i.mu = sub i64 %i.mt, %i.hz
  %i.mv = icmp eq i64 %i.mu, -1
  %or.cond1739 = select i1 %.not.i599, i1 true, i1 %i.mv
  br i1 %or.cond1739, label %.critedge369, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

.preheader1792._crit_edge:                        ; preds = %bb.bw
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %i.pe, i64 noundef %.sroa.01255.1) #31
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i598, %bb.bw
  %.33142126 = phi i64 [ %i.pe, %bb.bw ], [ %.03112133, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i598 ] ; 5 uses
  %.03272125 = phi i8 [ %.1328, %bb.bw ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i598 ] ; 3 uses
  %.03302124 = phi i8 [ %.1331, %bb.bw ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i598 ] ; 2 uses
  %i.mw = sub nuw i64 %.sroa.01255.1, %.33142126  ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.28.214641471, i64 %.33142126 ; 10 uses
  %i.my = load i8, ptr %i.f, align 1
  %i.mz = icmp ne i8 %i.my, 1                     ; 2 uses
  %.not.i2121 = icmp samesign eq i64 %.33142126, %.sroa.01255.1 ; 2 uses
  br i1 %i.mz, label %.preheader, label %.preheader1785

.preheader1785:                                   ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  br i1 %.not.i2121, label %_ZN3ada7helpers32find_authority_delimiter_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph2120

.preheader:                                       ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  br i1 %.not.i2121, label %_ZN3ada7helpers32find_authority_delimiter_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph2123

.lr.ph2123:                                       ; preds = %.preheader, %bb.bj
  %.05.i2122 = phi ptr [ %i.ne, %bb.bj ], [ %i.mx, %.preheader ] ; 3 uses
  %i.na = load i8, ptr %.05.i2122, align 1
  %i.nb = zext i8 %i.na to i64
  %i.nc = getelementptr inbounds nuw i8, ptr @_ZN3ada7helpersL27authority_delimiter_specialE, i64 %i.nb
  %i.nd = load i8, ptr %i.nc, align 1
  %.not7.i = icmp eq i8 %i.nd, 0
  br i1 %.not7.i, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.lr.ph2123
  %i.ne = getelementptr inbounds nuw i8, ptr %.05.i2122, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.ne, %i.gs
  br i1 %.not.i, label %_ZN3ada7helpers32find_authority_delimiter_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph2123, !llvm.loop !94

bb.bk:                                            ; preds = %.lr.ph2123
  %i.nf = ptrtoint ptr %.05.i2122 to i64
  %i.ng = ptrtoint ptr %i.mx to i64
  %i.nh = sub i64 %i.nf, %i.ng
  br label %_ZN3ada7helpers32find_authority_delimiter_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit

.lr.ph2120:                                       ; preds = %.preheader1785, %bb.bl
  %.05.i3992119 = phi ptr [ %i.nm, %bb.bl ], [ %i.mx, %.preheader1785 ] ; 3 uses
  %i.ni = load i8, ptr %.05.i3992119, align 1
  %i.nj = zext i8 %i.ni to i64
  %i.nk = getelementptr inbounds nuw i8, ptr @_ZN3ada7helpersL19authority_delimiterE, i64 %i.nj
  %i.nl = load i8, ptr %i.nk, align 1
  %.not7.i401 = icmp eq i8 %i.nl, 0
  br i1 %.not7.i401, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.lr.ph2120
  %i.nm = getelementptr inbounds nuw i8, ptr %.05.i3992119, i64 1 ; 2 uses
  %.not.i400 = icmp eq ptr %i.nm, %i.gs
  br i1 %.not.i400, label %_ZN3ada7helpers32find_authority_delimiter_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph2120, !llvm.loop !95

bb.bm:                                            ; preds = %.lr.ph2120
  %i.nn = ptrtoint ptr %.05.i3992119 to i64
  %i.no = ptrtoint ptr %i.mx to i64
  %i.np = sub i64 %i.nn, %i.no
  br label %_ZN3ada7helpers32find_authority_delimiter_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN3ada7helpers32find_authority_delimiter_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.bl, %bb.bj, %.preheader1785, %.preheader, %bb.bm, %bb.bk
  %i.nq = phi i64 [ 0, %.preheader ], [ %i.nh, %bb.bk ], [ %i.np, %bb.bm ], [ 0, %.preheader1785 ], [ %i.mw, %bb.bj ], [ %i.mw, %bb.bl ]
  %.sroa.speculated.i605 = call i64 @llvm.umin.i64(i64 %i.mw, i64 %i.nq) ; 10 uses
  %i.nr = add i64 %.sroa.speculated.i605, %.33142126 ; 3 uses
  %.not365 = icmp eq i64 %i.nr, %.sroa.01255.1
  br i1 %.not365, label %.thread1487, label %bb.bn

bb.bn:                                            ; preds = %_ZN3ada7helpers32find_authority_delimiter_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.28.214641471, i64 %i.nr
  %i.nt = load i8, ptr %i.ns, align 1             ; 2 uses
  switch i8 %i.nt, label %bb.bv [
    i8 64, label %bb.bo
    i8 47, label %.thread1487
    i8 63, label %.thread1487
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.nu = trunc nuw i8 %.03272125 to i1
  %i.nv = trunc nuw i8 %.03302124 to i1           ; 2 uses
  br i1 %i.nu, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.nv, label %.thread1483, label %.thread1484

.thread1483:                                      ; preds = %bb.bp
  call void @_ZN3ada14url_aggregator20append_base_passwordESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 3, ptr nonnull @.str.51)
  br label %bb.bu

.thread1484:                                      ; preds = %bb.bp
  call void @_ZN3ada14url_aggregator20append_base_usernameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 3, ptr nonnull @.str.51)
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  br i1 %i.nv, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %.thread1484, %bb.bq
  %.not1772 = icmp eq i64 %.sroa.speculated.i605, 0
  br i1 %.not1772, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit612.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i609

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i609:    ; preds = %bb.br
  %i.nw = call ptr @memchr(ptr noundef nonnull %i.mx, i32 noundef 58, i64 noundef %.sroa.speculated.i605) #30 ; 2 uses
  %.not.i610 = icmp eq ptr %i.nw, null
  %i.nx = ptrtoint ptr %i.nw to i64
  %i.ny = ptrtoint ptr %i.mx to i64
  %i.nz = sub i64 %i.nx, %i.ny                    ; 3 uses
  br i1 %.not.i610, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit612.thread, label %bb.bs

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit612.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i609, %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #30
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %27, i64 %.sroa.speculated.i605, ptr nonnull %i.mx, ptr noundef nonnull @_ZN3ada14character_setsL23USERINFO_PERCENT_ENCODEE)
  %i.oa = load ptr, ptr %27, align 8
  %i.ob = load i64, ptr %i.ie, align 8
  call void @_ZN3ada14url_aggregator20append_base_usernameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.ob, ptr %i.oa)
  %i.oc = load ptr, ptr %27, align 8              ; 2 uses
  %i.od = icmp eq ptr %i.oc, %i.if
  br i1 %i.od, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit612.thread
  %i.oe = load i64, ptr %i.if, align 8
  %i.of = add i64 %i.oe, 1
  call void @_ZdlPvm(ptr noundef %i.oc, i64 noundef %i.of) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit612.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  br label %bb.bw

bb.bs:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i609
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #30
  %.sroa.speculated.i618 = call i64 @llvm.umin.i64(i64 %.sroa.speculated.i605, i64 %i.nz)
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %28, i64 %.sroa.speculated.i618, ptr nonnull %i.mx, ptr noundef nonnull @_ZN3ada14character_setsL23USERINFO_PERCENT_ENCODEE)
  %i.og = load ptr, ptr %28, align 8
  %i.oh = load i64, ptr %i.ia, align 8
  call void @_ZN3ada14url_aggregator20append_base_usernameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.oh, ptr %i.og)
  %i.oi = load ptr, ptr %28, align 8              ; 2 uses
  %i.oj = icmp eq ptr %i.oi, %i.ib
  br i1 %i.oj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit625, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i623

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i623: ; preds = %bb.bs
  %i.ok = load i64, ptr %i.ib, align 8
  %i.ol = add i64 %i.ok, 1
  call void @_ZdlPvm(ptr noundef %i.oi, i64 noundef %i.ol) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit625

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit625: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i623
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #30
  %i.om = add nuw i64 %i.nz, 1                    ; 3 uses
  %.not1774 = icmp ult i64 %i.nz, %.sroa.speculated.i605
  br i1 %.not1774, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit629, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit625
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %i.om, i64 noundef %.sroa.speculated.i605) #31
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit629: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit625
  %i.on = sub nuw i64 %.sroa.speculated.i605, %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.om
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %29, i64 %i.on, ptr nonnull %i.oo, ptr noundef nonnull @_ZN3ada14character_setsL23USERINFO_PERCENT_ENCODEE)
  %i.op = load ptr, ptr %29, align 8
  %i.oq = load i64, ptr %i.ic, align 8
  call void @_ZN3ada14url_aggregator20append_base_passwordESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.oq, ptr %i.op)
  %i.or = load ptr, ptr %29, align 8              ; 2 uses
  %i.os = icmp eq ptr %i.or, %i.id
  br i1 %i.os, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit634, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i632

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i632: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit629
  %i.ot = load i64, ptr %i.id, align 8
  %i.ou = add i64 %i.ot, 1
  call void @_ZdlPvm(ptr noundef %i.or, i64 noundef %i.ou) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit634

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit634: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit629, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i632
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  br label %bb.bw

bb.bu:                                            ; preds = %.thread1483, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #30
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %30, i64 %.sroa.speculated.i605, ptr nonnull %i.mx, ptr noundef nonnull @_ZN3ada14character_setsL23USERINFO_PERCENT_ENCODEE)
  %i.ov = load ptr, ptr %30, align 8
  %i.ow = load i64, ptr %i.ig, align 8
  call void @_ZN3ada14url_aggregator20append_base_passwordESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.ow, ptr %i.ov)
  %i.ox = load ptr, ptr %30, align 8              ; 2 uses
  %i.oy = icmp eq ptr %i.ox, %i.ih
  br i1 %i.oy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637: ; preds = %bb.bu
  %i.oz = load i64, ptr %i.ih, align 8
  %i.pa = add i64 %i.oz, 1
  call void @_ZdlPvm(ptr noundef %i.ox, i64 noundef %i.pa) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #30
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bn
  %i.pb = icmp eq i8 %i.nt, 92
  %or.cond1740 = and i1 %i.mz, %i.pb
  br i1 %or.cond1740, label %.thread1487, label %bb.bw

.thread1487:                                      ; preds = %bb.bn, %bb.bn, %bb.bv, %_ZN3ada7helpers32find_authority_delimiter_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.pc = trunc nuw i8 %.03272125 to i1
  %i.pd = icmp eq i64 %.sroa.speculated.i605, 0
  %or.cond1741 = and i1 %i.pd, %i.pc
  br i1 %or.cond1741, label %.thread1495, label %.critedge369

.thread1495:                                      ; preds = %.thread1487
  store i8 0, ptr %i.c, align 8
  br label %.critedge372

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit634, %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639
  %.1331 = phi i8 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639 ], [ %.03302124, %bb.bv ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit634 ]
  %.1328 = phi i8 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639 ], [ %.03272125, %bb.bv ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit634 ]
  %i.pe = add i64 %i.nr, 1                        ; 3 uses
  %i.pf = icmp ugt i64 %i.pe, %.sroa.01255.1
  br i1 %i.pf, label %.preheader1792._crit_edge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit643: ; preds = %bb.ah
  %i.pg = sub nuw i64 %.sroa.01255.1, %.03112133
  %i.ph = icmp ugt i64 %i.pg, 1
  br i1 %i.ph, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, label %.critedge369

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit643
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.28.214641471, i64 %.03112133
  %i.pj = load i16, ptr %i.pi, align 1
  %i.pk = icmp ne i16 %i.pj, 12079
  %i.pl = zext i1 %i.pk to i32
  %i.pm = icmp eq i32 %i.pl, 0                    ; 2 uses
  %i.pn = add i64 %.03112133, 2
  %spec.select1778 = select i1 %i.pm, i64 %i.pn, i64 %.03112133
  %spec.select1779 = select i1 %i.pm, i32 12, i32 6
  br label %.critedge369

bb.bx:                                            ; preds = %bb.ah
  %.not364 = icmp eq i64 %.03112133, %.sroa.01255.1
  br i1 %.not364, label %.critedge369, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.28.214641471, i64 %.03112133
  %i.pp = load i8, ptr %i.po, align 1
  %i.pq = icmp eq i8 %i.pp, 47                    ; 2 uses
  %i.pr = zext i1 %i.pq to i64
  %spec.select394 = add i64 %.03112133, %i.pr
  %spec.select395 = select i1 %i.pq, i32 0, i32 16
  br label %.critedge369

bb.bz:                                            ; preds = %bb.ah
  %i.ps = load i32, ptr %i.hu, align 8            ; 3 uses
  %i.pt = load i32, ptr %i.j, align 8             ; 4 uses
  %i.pu = sub i32 %i.ps, %i.pt                    ; 5 uses
  %i.pv = load i8, ptr %i.fs, align 1
  store i8 %i.pv, ptr %i.f, align 1
  %i.pw = load i64, ptr %i.i, align 8             ; 3 uses
  %cond.i = icmp eq i32 %i.pt, 0
  br i1 %cond.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.px = zext i32 %i.pt to i64                   ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.px, i64 %i.pw) ; 3 uses
  %i.py = icmp ugt i64 %i.pw, %i.px
  br i1 %i.py, label %bb.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i644

bb.cb:                                            ; preds = %bb.ca
  %i.pz = sub i64 %i.pw, %spec.select.i.i.i       ; 2 uses
  %i.qa = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 %spec.select.i.i.i ; 2 uses
  switch i64 %i.pz, label %bb.cd [
    i64 1, label %bb.cc
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i644
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.qc = load i8, ptr %i.qb, align 1
  store i8 %i.qc, ptr %i.qa, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i644

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.qa, ptr nonnull align 1 %i.qb, i64 %i.pz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i644

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i644: ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.ca
  %i.qd = load i64, ptr %i.i, align 8
  %i.qe = sub i64 %i.qd, %spec.select.i.i.i       ; 2 uses
  store i64 %i.qe, ptr %i.i, align 8
  %i.qf = load ptr, ptr %i.g, align 8
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 %i.qe
  store i8 0, ptr %i.qg, align 1
  %.pre2325 = load i32, ptr %i.hu, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i644, %bb.bz
  %i.qh = phi i32 [ %.pre2325, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i644 ], [ %i.ps, %bb.bz ]
  %i.qi = load ptr, ptr %i.fv, align 8
  %i.qj = load i64, ptr %i.fw, align 8
  %i.qk = zext i32 %i.qh to i64
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.qj, i64 %i.qk)
  %i.ql = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef 0, i64 noundef 0, ptr noundef %i.qi, i64 noundef %.sroa.speculated.i.i.i) ; 0 uses
  %i.qm = load i32, ptr %i.hu, align 8
  store i32 %i.qm, ptr %i.j, align 8
  %i.qn = icmp eq i32 %i.ps, %i.pt
  br i1 %i.qn, label %_ZN3ada14url_aggregator11copy_schemeERKS0_.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i
  %i.qo = load <2 x i32>, ptr %i.hw, align 4
  %i.qp = insertelement <2 x i32> poison, i32 %i.pu, i64 0
end_hunk_4
begin_hunk_5_@_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a

.lr.ph.i.i828:                                    ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit826, %bb.ji
  %.sroa.01.04.i.i829 = phi ptr [ %i.aza, %bb.ji ], [ %i.ayx, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit826 ] ; 2 uses
  %i.azb = load i8, ptr %.sroa.01.04.i.i829, align 1
  %i.azc = zext i8 %i.azb to i64
  %i.azd = getelementptr inbounds nuw i8, ptr @_ZN3ada7unicodeL36is_forbidden_domain_code_point_tableE, i64 %i.azc
  %i.aze = load i8, ptr %i.azd, align 1
  %.not1766 = icmp eq i8 %i.aze, 0
  br i1 %.not1766, label %bb.ji, label %_ZNKSt6ranges11__any_of_fnclITkNS_11input_rangeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSD_T1_SG_.exit832

_ZNKSt6ranges11__any_of_fnclITkNS_11input_rangeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSD_T1_SG_.exit832: ; preds = %.lr.ph.i.i828
  store i8 0, ptr %i.c, align 8
  br label %bb.js

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit833: ; preds = %bb.ji
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %i.ayy, ptr %6, align 8
  store ptr %i.ayx, ptr %i.hs, align 8
  %i.azf = getelementptr inbounds i8, ptr %i.ayz, i64 -1
  %i.azg = load i8, ptr %i.azf, align 1
  %i.azh = icmp eq i8 %i.azg, 46
  br i1 %i.azh, label %bb.jj, label %thread-pre-split1620

bb.jj:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit833
  %i.azi = add i64 %i.ayy, -1                     ; 3 uses
  store i64 %i.azi, ptr %6, align 8
  %i.azj = icmp eq i64 %i.azi, 0
  br i1 %i.azj, label %.loopexit, label %thread-pre-split1620

thread-pre-split1620:                             ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit833, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit833.thread, %bb.jj
  %i.azk = phi i64 [ %i.azi, %bb.jj ], [ 0, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit833.thread ], [ %i.ayy, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit833 ] ; 5 uses
  %i.azl = getelementptr inbounds nuw i8, ptr %i.ayx, i64 %i.azk
  %i.azm = getelementptr inbounds i8, ptr %i.azl, i64 -1
  %i.azn = load i8, ptr %i.azm, align 1
  %.fr1767 = freeze i8 %i.azn                     ; 2 uses
  %i.azo = add i8 %.fr1767, -48
  %or.cond.i547 = icmp ult i8 %i.azo, 10
  br i1 %or.cond.i547, label %bb.jk, label %switch.early.test.i548

switch.early.test.i548:                           ; preds = %thread-pre-split1620
  switch i8 %.fr1767, label %.loopexit [
    i8 120, label %bb.jk
    i8 102, label %bb.jk
    i8 101, label %bb.jk
    i8 100, label %bb.jk
    i8 99, label %bb.jk
    i8 98, label %bb.jk
    i8 97, label %bb.jk
  ]

bb.jk:                                            ; preds = %switch.early.test.i548, %switch.early.test.i548, %switch.early.test.i548, %switch.early.test.i548, %switch.early.test.i548, %switch.early.test.i548, %switch.early.test.i548, %thread-pre-split1620
  %.not.i837 = icmp eq i64 %i.azk, 0
  br i1 %.not.i837, label %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit852.thread, label %.preheader1798.preheader

.preheader1798:                                   ; preds = %.preheader1798.preheader
  %.not13.i840 = icmp eq i64 %i.azp, 0
  br i1 %.not13.i840, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit842.thread, label %.preheader1798.preheader, !llvm.loop !29

.preheader1798.preheader:                         ; preds = %bb.jk, %.preheader1798
  %.1.i8393010 = phi i64 [ %i.azp, %.preheader1798 ], [ %i.azk, %bb.jk ] ; 3 uses
  %i.azp = add i64 %.1.i8393010, -1               ; 3 uses
  %i.azq = getelementptr inbounds nuw i8, ptr %i.ayx, i64 %i.azp
  %i.azr = load i8, ptr %i.azq, align 1
  %i.azs = icmp eq i8 %i.azr, 46
  br i1 %i.azs, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit846, label %.preheader1798, !llvm.loop !29

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit846: ; preds = %.preheader1798.preheader
  %i.azt = sub nuw i64 %i.azk, %.1.i8393010       ; 2 uses
  %i.azu = getelementptr inbounds nuw i8, ptr %i.ayx, i64 %.1.i8393010 ; 2 uses
  store i64 %i.azt, ptr %6, align 8
  store ptr %i.azu, ptr %i.hs, align 8
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit842.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit842.thread: ; preds = %.preheader1798, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit846
  %i.azv = phi i64 [ %i.azt, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit846 ], [ %i.azk, %.preheader1798 ] ; 3 uses
  %i.azw = phi ptr [ %i.azu, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit846 ], [ %i.ayx, %.preheader1798 ] ; 2 uses
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azw, i64 %i.azv
  %.not6.i.i847 = icmp samesign eq i64 %i.azv, 0
  br i1 %.not6.i.i847, label %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit852.thread, label %.lr.ph.i.i848

bb.jl:                                            ; preds = %.lr.ph.i.i848
  %i.azy = getelementptr inbounds nuw i8, ptr %.057.i.i849, i64 1 ; 2 uses
  %.not.i.i851 = icmp eq ptr %i.azy, %i.azx
  br i1 %.not.i.i851, label %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit852.thread, label %.lr.ph.i.i848, !llvm.loop !105

.lr.ph.i.i848:                                    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit842.thread, %bb.jl
  %.057.i.i849 = phi ptr [ %i.azy, %bb.jl ], [ %i.azw, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit842.thread ] ; 2 uses
  %i.azz = load i8, ptr %.057.i.i849, align 1
  %i.baa = add i8 %i.azz, -48
  %i.bab = icmp ult i8 %i.baa, 10
  br i1 %i.bab, label %bb.jl, label %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit852

_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit852: ; preds = %.lr.ph.i.i848
  %i.bac = icmp eq i64 %i.azv, 1
  br i1 %i.bac, label %.loopexit, label %bb.jm

bb.jm:                                            ; preds = %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit852
  %i.bad = call noundef zeroext i1 @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef @.str.157) #30
  br i1 %i.bad, label %bb.jn, label %.loopexit

bb.jn:                                            ; preds = %bb.jm
  %i.bae = load i64, ptr %6, align 8              ; 3 uses
  %i.baf = icmp eq i64 %i.bae, 2
  br i1 %i.baf, label %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit852.thread, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.bag = load ptr, ptr %i.hs, align 8           ; 2 uses
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bag, i64 2 ; 2 uses
  store ptr %i.bah, ptr %i.hs, align 8
  %i.bai = add i64 %i.bae, -2
  store i64 %i.bai, ptr %6, align 8
  %i.baj = getelementptr i8, ptr %i.bag, i64 %i.bae
  br label %.lr.ph.i.i854

bb.jp:                                            ; preds = %.lr.ph.i.i854
  %i.bak = getelementptr inbounds nuw i8, ptr %.057.i.i855, i64 1 ; 2 uses
  %.not.i.i857 = icmp eq ptr %i.bak, %i.baj
  br i1 %.not.i.i857, label %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit852.thread, label %.lr.ph.i.i854, !llvm.loop !105

.lr.ph.i.i854:                                    ; preds = %bb.jo, %bb.jp
  %.057.i.i855 = phi ptr [ %i.bak, %bb.jp ], [ %i.bah, %bb.jo ] ; 2 uses
  %i.bal = load i8, ptr %.057.i.i855, align 1     ; 2 uses
  %i.bam = add i8 %i.bal, -48
  %or.cond.i1154 = icmp ult i8 %i.bam, 10
  %i.ban = add i8 %i.bal, -97
  %i.bao = icmp ult i8 %i.ban, 6
  %i.bap = or i1 %or.cond.i1154, %i.bao
  br i1 %i.bap, label %bb.jp, label %.loopexit

_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit852.thread: ; preds = %bb.jl, %bb.jp, %bb.jk, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit842.thread, %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.baq = load i8, ptr %i.hr, align 8, !range !73, !noundef !74
  %i.bar = trunc nuw i8 %i.baq to i1
  br i1 %i.bar, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit859, label %bb.jq

bb.jq:                                            ; preds = %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit852.thread
  call void @_ZSt27__throw_bad_optional_accessv() #34
  unreachable

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit859: ; preds = %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit852.thread
  %i.bas = load ptr, ptr %16, align 8
  %i.bat = load i64, ptr %i.hq, align 8
  %i.bau = call noundef zeroext i1 @_ZN3ada14url_aggregator10parse_ipv4ESt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.bat, ptr %i.bas, i1 noundef zeroext false)
  br label %bb.js

.loopexit:                                        ; preds = %.lr.ph.i.i854, %bb.jj, %switch.early.test.i548, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit852, %bb.jm
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bav = load i8, ptr %i.hr, align 8, !range !73, !noundef !74
  %i.baw = trunc nuw i8 %i.bav to i1
  br i1 %i.baw, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit862, label %bb.jr

bb.jr:                                            ; preds = %.loopexit
  call void @_ZSt27__throw_bad_optional_accessv() #34
  unreachable

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit862: ; preds = %.loopexit
  %i.bax = load ptr, ptr %16, align 8
  %i.bay = load i64, ptr %i.hq, align 8
  call void @_ZN3ada14url_aggregator20update_base_hostnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.bay, ptr %i.bax)
  br label %bb.js

bb.js:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit862, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit859, %_ZNKSt6ranges11__any_of_fnclITkNS_11input_rangeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSD_T1_SG_.exit832, %bb.jf
  %.0.i429 = phi i1 [ false, %_ZNKSt6ranges11__any_of_fnclITkNS_11input_rangeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSD_T1_SG_.exit832 ], [ %i.bau, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit859 ], [ true, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit862 ], [ false, %bb.jf ]
  %i.baz = load i8, ptr %i.hr, align 8, !range !73, !noundef !74
  %i.bba = trunc nuw i8 %i.baz to i1
  store i8 0, ptr %i.hr, align 8
  br i1 %i.bba, label %bb.jt, label %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437

bb.jt:                                            ; preds = %bb.js
  %i.bbb = load ptr, ptr %16, align 8             ; 2 uses
  %i.bbc = icmp eq ptr %i.bbb, %i.hn
  br i1 %i.bbc, label %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i865

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i865: ; preds = %bb.jt
  %i.bbd = load i64, ptr %i.hn, align 8
  %i.bbe = add i64 %i.bbd, 1
  call void @_ZdlPvm(ptr noundef %i.bbb, i64 noundef %i.bbe) #33
  br label %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437

_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437.thread: ; preds = %_ZN3ada8checkers7is_ipv4ESt17basic_string_viewIcSt11char_traitsIcEE.exit546.thread, %_ZN3ada8checkers19try_parse_ipv4_fastESt17basic_string_viewIcSt11char_traitsIcEE.exit511
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %.critedge369

_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437: ; preds = %bb.jt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i865, %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br i1 %.0.i429, label %.critedge369, label %.critedge372

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit871: ; preds = %bb.ah
  %i.bbf = sub nuw i64 %.sroa.01255.1, %.03112133 ; 3 uses
  %i.bbg = getelementptr inbounds nuw i8, ptr %.sroa.28.214641471, i64 %.03112133 ; 6 uses
  %.not1759 = icmp eq i64 %i.bbf, 0
  br i1 %.not1759, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i873

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit871
  store i8 1, ptr %i.d, align 1
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit877.thread

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i873:    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit871
  %i.bbh = call ptr @memchr(ptr noundef %i.bbg, i32 noundef 63, i64 noundef %i.bbf) #30 ; 2 uses
  %.not358 = icmp eq ptr %i.bbh, null
  br i1 %.not358, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread.thread2600, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread.thread2600: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i873
  store i8 1, ptr %i.d, align 1
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit877

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i873
  %40 = ptrtoint ptr %i.bbh to i64
  %41 = ptrtoint ptr %i.bbg to i64
  %42 = sub i64 %40, %41                          ; 3 uses
  %i.bbi = add i64 %.03112133, 1
  %i.bbj = add i64 %i.bbi, %42                    ; 2 uses
  store i8 1, ptr %i.d, align 1
  %i.bbk = icmp eq i64 %42, 0
  br i1 %i.bbk, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit877.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit877

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit877: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread.thread2600, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread
  %.82606 = phi i32 [ 18, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread.thread2600 ], [ 15, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread ] ; 2 uses
  %.93202605 = phi i64 [ %i.gr, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread.thread2600 ], [ %i.bbj, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread ] ; 2 uses
  %.sroa.01187.02604 = phi i64 [ %i.bbf, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread.thread2600 ], [ %42, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread ] ; 5 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbg, i64 %.sroa.01187.02604
  %i.bbm = getelementptr inbounds i8, ptr %i.bbl, i64 -1
  %i.bbn = load i8, ptr %i.bbm, align 1
  %i.bbo = icmp eq i8 %i.bbn, 32
  br i1 %i.bbo, label %bb.ju, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit877.thread

bb.ju:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit877
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #30
  %i.bbp = add i64 %.sroa.01187.02604, -1         ; 7 uses
  store ptr %i.gt, ptr %33, align 8
  %i.bbq = icmp ugt i64 %i.bbp, 15
  br i1 %i.bbq, label %bb.jv, label %._crit_edge.i.i.i.i885

bb.jv:                                            ; preds = %bb.ju
  %i.bbr = icmp slt i64 %i.bbp, 0
  br i1 %i.bbr, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %bb.jv
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.123) #31
  unreachable

bb.jx:                                            ; preds = %bb.jv
  %i.bbs = icmp slt i64 %.sroa.01187.02604, 0
  br i1 %i.bbs, label %bb.jy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i886, !prof !18

bb.jy:                                            ; preds = %bb.jx
  call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i886: ; preds = %bb.jx
  %i.bbt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %.sroa.01187.02604) #32 ; 2 uses
  store ptr %i.bbt, ptr %33, align 8
  store i64 %i.bbp, ptr %i.gt, align 8
  br label %._crit_edge.i.i.i.i885

._crit_edge.i.i.i.i885:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i886, %bb.ju
  %i.bbu = phi ptr [ %i.bbt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i886 ], [ %i.gt, %bb.ju ] ; 3 uses
  switch i64 %i.bbp, label %bb.ka [
    i64 1, label %bb.jz
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit887
  ]

bb.jz:                                            ; preds = %._crit_edge.i.i.i.i885
  %i.bbv = load i8, ptr %i.bbg, align 1
  store i8 %i.bbv, ptr %i.bbu, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit887

bb.ka:                                            ; preds = %._crit_edge.i.i.i.i885
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bbu, ptr nonnull align 1 %i.bbg, i64 %i.bbp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit887

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit887: ; preds = %._crit_edge.i.i.i.i885, %bb.jz, %bb.ka
  store i64 %i.bbp, ptr %i.gu, align 8
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbu, i64 %i.bbp
  store i8 0, ptr %i.bbw, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.bbx = load i64, ptr %i.gu, align 8, !noalias !142 ; 5 uses
  %i.bby = icmp sgt i64 %i.bbx, 9223372036854775804
  br i1 %i.bby, label %bb.kb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.kb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit887
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #31, !noalias !142
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit887
  %i.bbz = add nsw i64 %i.bbx, 3                  ; 3 uses
  %i.bca = load ptr, ptr %33, align 8, !noalias !142 ; 2 uses
  %i.bcb = icmp eq ptr %i.bca, %i.gt              ; 2 uses
  br i1 %i.bcb, label %bb.kc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.kc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.bcc = icmp ult i64 %i.bbx, 16
  call void @llvm.assume(i1 %i.bcc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.kc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.bcd = load i64, ptr %i.gt, align 8, !noalias !142
  %i.bce = select i1 %i.bcb, i64 15, i64 %i.bcd
  %.not.i.i.i = icmp ugt i64 %i.bbz, %i.bce
  br i1 %.not.i.i.i, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bca, i64 %i.bbx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bcf, ptr noundef nonnull align 1 dereferenceable(3) @.str.52, i64 3, i1 false), !noalias !142
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.ke:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %33, i64 noundef %i.bbx, i64 noundef 0, ptr noundef nonnull @.str.52, i64 noundef 3), !noalias !142
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.ke, %bb.kd
  store i64 %i.bbz, ptr %i.gu, align 8, !noalias !142
  %i.bcg = load ptr, ptr %33, align 8, !noalias !142
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcg, i64 %i.bbz
  store i8 0, ptr %i.bch, align 1, !noalias !142
  store ptr %i.gv, ptr %32, align 8, !alias.scope !142
  %i.bci = load ptr, ptr %33, align 8, !noalias !142 ; 3 uses
  %i.bcj = icmp eq ptr %i.bci, %i.gt
  br i1 %i.bcj, label %bb.kf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i888

bb.kf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bck = load i64, ptr %i.gu, align 8, !noalias !142 ; 3 uses
  %i.bcl = icmp ult i64 %i.bck, 16
  call void @llvm.assume(i1 %i.bcl)
  %i.bcm = add nuw nsw i64 %i.bck, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gv, ptr noundef nonnull align 8 dereferenceable(1) %i.gt, i64 %i.bcm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit891

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i888: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.bci, ptr %32, align 8, !alias.scope !142
  %i.bcn = load i64, ptr %i.gt, align 8, !noalias !142
  store i64 %i.bcn, ptr %i.gv, align 8, !alias.scope !142
  %.pre.i = load i64, ptr %i.gu, align 8, !noalias !142
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit891

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit891: ; preds = %bb.kf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i888
  %i.bco = phi ptr [ %i.gv, %bb.kf ], [ %i.bci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i888 ]
  %i.bcp = phi i64 [ %i.bck, %bb.kf ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i888 ] ; 2 uses
  store i64 %i.bcp, ptr %i.gw, align 8, !alias.scope !142
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #30
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %34, i64 %i.bcp, ptr %i.bco, ptr noundef nonnull @_ZN3ada14character_setsL25C0_CONTROL_PERCENT_ENCODEE)
  %i.bcq = load ptr, ptr %34, align 8
  %i.bcr = load i64, ptr %i.gx, align 8
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.bcr, ptr %i.bcq)
  %i.bcs = load ptr, ptr %34, align 8             ; 2 uses
  %i.bct = icmp eq ptr %i.bcs, %i.gy
  br i1 %i.bct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i896

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i896: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit891
  %i.bcu = load i64, ptr %i.gy, align 8
  %i.bcv = add i64 %i.bcu, 1
  call void @_ZdlPvm(ptr noundef %i.bcs, i64 noundef %i.bcv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit891, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i896
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  %i.bcw = load ptr, ptr %32, align 8             ; 2 uses
  %i.bcx = icmp eq ptr %i.bcw, %i.gv
  br i1 %i.bcx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit901, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i899

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i899: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898
  %i.bcy = load i64, ptr %i.gv, align 8
  %i.bcz = add i64 %i.bcy, 1
  call void @_ZdlPvm(ptr noundef %i.bcw, i64 noundef %i.bcz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit901

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit901: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i899
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  br label %.critedge369

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit877.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit877
  %.82599 = phi i32 [ 18, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread.thread ], [ 15, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread ], [ %.82606, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit877 ]
  %.93202598 = phi i64 [ %i.gr, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread.thread ], [ %i.bbj, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread ], [ %.93202605, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit877 ]
  %.sroa.01187.02597 = phi i64 [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread.thread ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread ], [ %.sroa.01187.02604, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit877 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %35, i64 %.sroa.01187.02597, ptr %i.bbg, ptr noundef nonnull @_ZN3ada14character_setsL25C0_CONTROL_PERCENT_ENCODEE)
  %i.bda = load ptr, ptr %35, align 8
  %i.bdb = load i64, ptr %i.gz, align 8
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.bdb, ptr %i.bda)
  %i.bdc = load ptr, ptr %35, align 8             ; 2 uses
  %i.bdd = icmp eq ptr %i.bdc, %i.ha
  br i1 %i.bdd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit906, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i904

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i904: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit877.thread
  %i.bde = load i64, ptr %i.ha, align 8
  %i.bdf = add i64 %i.bde, 1
  call void @_ZdlPvm(ptr noundef %i.bdc, i64 noundef %i.bdf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit906

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit906: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit877.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i904
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  br label %.critedge369

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit910: ; preds = %bb.ah
  %i.bdg = sub nuw i64 %.sroa.01255.1, %.03112133
  %i.bdh = getelementptr inbounds nuw i8, ptr %.sroa.28.214641471, i64 %.03112133 ; 7 uses
  %i.bdi = icmp eq i64 %.sroa.01255.1, %.03112133
  br i1 %i.bdi, label %.thread, label %bb.kg

.thread:                                          ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit910
  %i.bdj = ptrtoint ptr %i.bdh to i64             ; 2 uses
  br label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1646

bb.kg:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit910
  %i.bdk = load i8, ptr %i.bdh, align 1
  %i.bdl = icmp eq i8 %i.bdk, 45
  br i1 %i.bdl, label %bb.kh, label %.lr.ph.i37.i.preheader

end_hunk_5
begin_hunk_6_@_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  %.pre-phi = phi i64 [ %i.bdm, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ %i.bdj, %.thread ], [ %i.bdm, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %.pre2326, %bb.kn ]
  %i.bel = phi i1 [ false, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ false, %.thread ], [ false, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ true, %bb.kn ]
  %.014551652 = phi i16 [ 0, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ 0, %.thread ], [ 0, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %i.bej, %bb.kn ] ; 3 uses
  %i.bem = sub i64 %.pre-phi, %i.bek              ; 6 uses
  %i.ben = icmp eq i64 %i.bem, %i.bdg
  br i1 %i.ben, label %bb.kr, label %bb.ko

bb.ko:                                            ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1646
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bdh, i64 %i.bem
  %i.bep = load i8, ptr %i.beo, align 1           ; 2 uses
  switch i8 %i.bep, label %bb.kp [
    i8 47, label %bb.kr
    i8 63, label %bb.kr
  ]

bb.kp:                                            ; preds = %bb.ko
  %i.beq = load i8, ptr %i.f, align 1
  %.not1757 = icmp eq i8 %i.beq, 1
  br i1 %.not1757, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.ber = icmp eq i8 %i.bep, 92
  %i.bes = zext i1 %i.ber to i8
  br label %bb.kr

bb.kr:                                            ; preds = %bb.ko, %bb.ko, %bb.kq, %bb.kp, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1646
  %i.bet = phi i8 [ 1, %bb.ko ], [ 1, %bb.ko ], [ 1, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1646 ], [ 0, %bb.kp ], [ %i.bes, %bb.kq ]
  %i.beu = load i8, ptr %i.c, align 8, !range !73, !noundef !74
  %i.bev = and i8 %i.beu, %i.bet                  ; 2 uses
  store i8 %i.bev, ptr %i.c, align 8
  %i.bew = trunc nuw i8 %i.bev to i1
  br i1 %i.bew, label %bb.ks, label %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit

bb.ks:                                            ; preds = %bb.kr
  %i.bex = load i8, ptr %i.f, align 1
  %i.bey = zext i8 %i.bex to i64                  ; 2 uses
  %i.bez = getelementptr inbounds nuw [2 x i8], ptr @_ZN3ada6scheme7detailsL13special_portsE, i64 %i.bey
  %i.bfa = load i16, ptr %i.bez, align 2
  %i.bfb = lshr i64 194, %i.bey
  %i.bfc = trunc i64 %i.bfb to i1
  %i.bfd = icmp eq i16 %.014551652, 0
  %or.cond.i = select i1 %i.bfc, i1 %i.bfd, i1 false
  %i.bfe = icmp ne i16 %i.bfa, %.014551652
  %spec.select.i = select i1 %or.cond.i, i1 true, i1 %i.bfe
  %or.cond4.i = select i1 %i.bel, i1 %spec.select.i, i1 false
  br i1 %or.cond4.i, label %bb.kt, label %bb.ku

bb.kt:                                            ; preds = %bb.ks
  %i.bff = zext i16 %.014551652 to i32
  call void @_ZN3ada14url_aggregator16update_base_portEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.bff)
  br label %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit

bb.ku:                                            ; preds = %bb.ks
  %i.bfg = load i32, ptr %i.k, align 8
  %i.bfh = icmp eq i32 %i.bfg, -1
  br i1 %i.bfh, label %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.bfi = load i32, ptr %i.l, align 4            ; 3 uses
  %i.bfj = load i32, ptr %i.go, align 4           ; 3 uses
  %i.bfk = sub i32 %i.bfi, %i.bfj                 ; 4 uses
  %i.bfl = zext i32 %i.bfj to i64                 ; 6 uses
  %i.bfm = zext i32 %i.bfk to i64
  %i.bfn = load i64, ptr %i.i, align 8            ; 6 uses
  %i.bfo = icmp ult i64 %i.bfn, %i.bfl
  br i1 %i.bfo, label %bb.kw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.kw:                                            ; preds = %bb.kv
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.163, i64 noundef %i.bfl, i64 noundef %i.bfn) #31
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.kv
  %cond.i916 = icmp eq i32 %i.bfi, %i.bfj
  br i1 %cond.i916, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i921, label %bb.kx

bb.kx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bfp = sub i64 %i.bfn, %i.bfl
  %spec.select.i.i.i917 = call noundef i64 @llvm.umin.i64(i64 %i.bfm, i64 %i.bfp) ; 3 uses
  %i.bfq = add nuw nsw i64 %spec.select.i.i.i917, %i.bfl ; 2 uses
  %i.bfr = icmp ne i64 %i.bfn, %i.bfq
  %i.bfs = icmp ne i64 %i.bfn, %i.bfl
  %or.cond.i.i.i918 = and i1 %i.bfs, %i.bfr
  br i1 %or.cond.i.i.i918, label %bb.ky, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i919

bb.ky:                                            ; preds = %bb.kx
  %i.bft = sub i64 %i.bfn, %i.bfq                 ; 2 uses
  %i.bfu = load ptr, ptr %i.g, align 8
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfu, i64 %i.bfl ; 3 uses
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfv, i64 %spec.select.i.i.i917 ; 2 uses
  switch i64 %i.bft, label %bb.la [
    i64 1, label %bb.kz
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i919
  ]

bb.kz:                                            ; preds = %bb.ky
  %i.bfx = load i8, ptr %i.bfw, align 1
  store i8 %i.bfx, ptr %i.bfv, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i919

bb.la:                                            ; preds = %bb.ky
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bfv, ptr nonnull align 1 %i.bfw, i64 %i.bft, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i919

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i919: ; preds = %bb.la, %bb.kz, %bb.ky, %bb.kx
  %i.bfy = load i64, ptr %i.i, align 8
  %i.bfz = sub i64 %i.bfy, %spec.select.i.i.i917  ; 2 uses
  store i64 %i.bfz, ptr %i.i, align 8
  %i.bga = load ptr, ptr %i.g, align 8
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bga, i64 %i.bfz
  store i8 0, ptr %i.bgb, align 1
  %.pre.i920 = load i32, ptr %i.l, align 4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i921

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i921: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i919, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bgc = phi i32 [ %i.bfi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ], [ %.pre.i920, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i919 ]
  %i.bgd = sub i32 %i.bgc, %i.bfk
  store i32 %i.bgd, ptr %i.l, align 4
  %i.bge = load i32, ptr %i.m, align 8            ; 2 uses
  %.not.i922 = icmp eq i32 %i.bge, -1
  br i1 %.not.i922, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i921
  %i.bgf = sub i32 %i.bge, %i.bfk
  store i32 %i.bgf, ptr %i.m, align 8
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i921
  %i.bgg = load i32, ptr %i.n, align 4            ; 2 uses
  %.not5.i923 = icmp eq i32 %i.bgg, -1
  br i1 %.not5.i923, label %bb.le, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.bgh = sub i32 %i.bgg, %i.bfk
  store i32 %i.bgh, ptr %i.n, align 4
  br label %bb.le

bb.le:                                            ; preds = %bb.ld, %bb.lc
  store i32 -1, ptr %i.k, align 8
  br label %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit

_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit: ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, %bb.kr, %bb.kt, %bb.ku, %bb.le, %bb.kh
  %.1.i455 = phi i64 [ 0, %bb.kh ], [ 0, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread ], [ %i.bem, %bb.kt ], [ %i.bem, %bb.kr ], [ %i.bem, %bb.ku ], [ %i.bem, %bb.le ]
  %i.bgi = add i64 %.1.i455, %.03112133
  %i.bgj = load i8, ptr %i.c, align 8, !range !73, !noundef !74
  %i.bgk = trunc nuw i8 %i.bgj to i1
  br i1 %i.bgk, label %bb.lf, label %.critedge372

bb.lf:                                            ; preds = %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit, %bb.ah
  %.10321 = phi i64 [ %i.bgi, %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit ], [ %.03112133, %bb.ah ] ; 6 uses
  %i.bgl = load i8, ptr %i.f, align 1
  %.not1758 = icmp eq i8 %i.bgl, 1
  %.not354 = icmp eq i64 %.10321, %.sroa.01255.1  ; 2 uses
  br i1 %.not1758, label %bb.lk, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  br i1 %.not354, label %bb.lh, label %bb.lj

bb.lh:                                            ; preds = %bb.lg
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 1, ptr nonnull @.str.2)
  br i1 %.sroa.14.0, label %bb.li, label %.critedge389.critedge

bb.li:                                            ; preds = %bb.lh
  call void @_ZN3ada14url_aggregator26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.01248.0, ptr %.sroa.91249.0)
  br label %.critedge389.critedge

bb.lj:                                            ; preds = %bb.lg
  %i.bgm = getelementptr inbounds nuw i8, ptr %.sroa.28.214641471, i64 %.10321
  %i.bgn = load i8, ptr %i.bgm, align 1
  switch i8 %i.bgn, label %.critedge369 [
    i8 47, label %.critedge381
    i8 92, label %.critedge381
  ]

bb.lk:                                            ; preds = %bb.lf
  br i1 %.not354, label %.critedge381, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.bgo = getelementptr inbounds nuw i8, ptr %.sroa.28.214641471, i64 %.10321
  %i.bgp = load i8, ptr %i.bgo, align 1
  switch i8 %i.bgp, label %.critedge369 [
    i8 63, label %.critedge381
    i8 47, label %.critedge381.fold.split
  ]

.critedge381.fold.split:                          ; preds = %bb.ll
  br label %.critedge381

.critedge381:                                     ; preds = %bb.ll, %.critedge381.fold.split, %bb.lj, %bb.lj, %bb.lk
  %.11 = phi i32 [ 16, %bb.lj ], [ 16, %bb.lj ], [ 15, %bb.ll ], [ 17, %bb.lk ], [ 16, %.critedge381.fold.split ]
  %i.bgq = add i64 %.10321, 1
  br label %.critedge369

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927: ; preds = %bb.ah
  %i.bgr = sub nuw i64 %.sroa.01255.1, %.03112133 ; 3 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %.sroa.28.214641471, i64 %.03112133 ; 3 uses
  %.not1755 = icmp eq i64 %i.bgr, 0
  br i1 %.not1755, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit932.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i929

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i929:    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927
  %i.bgt = call ptr @memchr(ptr noundef %i.bgs, i32 noundef 63, i64 noundef %i.bgr) #30 ; 2 uses
  %.not353 = icmp eq ptr %i.bgt, null
  br i1 %.not353, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit932.thread, label %bb.lm

bb.lm:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i929
  %43 = ptrtoint ptr %i.bgt to i64
  %44 = ptrtoint ptr %i.bgs to i64
  %45 = sub i64 %43, %44                          ; 2 uses
  %i.bgu = add i64 %.03112133, 1
  %i.bgv = add i64 %i.bgu, %45
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit932.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit932.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i929, %bb.lm
  %.sroa.01178.0 = phi i64 [ %45, %bb.lm ], [ %i.bgr, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i929 ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927 ]
  %.11322 = phi i64 [ %i.bgv, %bb.lm ], [ %i.gr, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i929 ], [ %i.gr, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927 ]
  %.12 = phi i32 [ 15, %bb.lm ], [ 16, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i929 ], [ 16, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927 ]
  call void @_ZN3ada14url_aggregator21consume_prepared_pathESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.01178.0, ptr %i.bgs)
  br label %.critedge369

bb.ln:                                            ; preds = %bb.ah
  %.not351 = icmp eq i64 %.03112133, %.sroa.01255.1
  br i1 %.not351, label %bb.lq, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.bgw = getelementptr inbounds nuw i8, ptr %.sroa.28.214641471, i64 %.03112133
  %i.bgx = load i8, ptr %i.bgw, align 1
  switch i8 %i.bgx, label %bb.lq [
    i8 47, label %bb.lp
    i8 92, label %bb.lp
  ]

bb.lp:                                            ; preds = %bb.lo, %bb.lo
  %i.bgy = add i64 %.03112133, 1
  br label %.critedge369

bb.lq:                                            ; preds = %bb.lo, %bb.ln
  br i1 %i.q, label %bb.lr, label %.critedge369

bb.lr:                                            ; preds = %bb.lq
  %i.bgz = load i8, ptr %i.fs, align 1
  %i.bha = icmp eq i8 %i.bgz, 6
  br i1 %i.bha, label %bb.ls, label %.critedge369

bb.ls:                                            ; preds = %bb.lr
  %i.bhb = load i32, ptr %i.ft, align 8           ; 2 uses
  %i.bhc = zext i32 %i.bhb to i64                 ; 3 uses
  %i.bhd = load i32, ptr %i.fu, align 4           ; 2 uses
  %i.bhe = icmp ugt i32 %i.bhd, %i.bhb
  br i1 %i.bhe, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  %i.bhf = load ptr, ptr %i.fv, align 8
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bhf, i64 %i.bhc
  %i.bhh = load i8, ptr %i.bhg, align 1
  %i.bhi = icmp eq i8 %i.bhh, 64
  %i.bhj = zext i1 %i.bhi to i64
  %spec.select.i940 = add nuw nsw i64 %i.bhj, %i.bhc
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  %.0.i933 = phi i64 [ %i.bhc, %bb.ls ], [ %spec.select.i940, %bb.lt ] ; 6 uses
  %i.bhk = zext i32 %i.bhd to i64
  %i.bhl = icmp eq i64 %.0.i933, %i.bhk
  br i1 %i.bhl, label %_ZNK3ada14url_aggregator8get_hostEv.exit, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.bhm = load i64, ptr %i.fw, align 8           ; 3 uses
  %i.bhn = icmp ugt i64 %.0.i933, %i.bhm
  br i1 %i.bhn, label %bb.lw, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i934

bb.lw:                                            ; preds = %bb.lv
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %.0.i933, i64 noundef %i.bhm) #31
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i934: ; preds = %bb.lv
  %i.bho = load i32, ptr %i.fx, align 4
  %i.bhp = zext i32 %i.bho to i64
  %i.bhq = sub nsw i64 %i.bhp, %.0.i933
  %i.bhr = load ptr, ptr %i.fv, align 8
  %i.bhs = sub nuw i64 %i.bhm, %.0.i933
  %.sroa.speculated.i.i935 = call i64 @llvm.umin.i64(i64 %i.bhs, i64 %i.bhq)
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bhr, i64 %.0.i933
  br label %_ZNK3ada14url_aggregator8get_hostEv.exit

_ZNK3ada14url_aggregator8get_hostEv.exit:         ; preds = %bb.lu, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i934
  %.sroa.0.0.i936 = phi i64 [ %.sroa.speculated.i.i935, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i934 ], [ 0, %bb.lu ]
  %.sroa.3.0.i937 = phi ptr [ %i.bht, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i934 ], [ null, %bb.lu ]
  call void @_ZN3ada14url_aggregator24update_host_to_base_hostESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.0.0.i936, ptr %.sroa.3.0.i937)
  %i.bhu = load i64, ptr %i.fw, align 8           ; 4 uses
  %i.bhv = load i32, ptr %i.fx, align 4
  %i.bhw = zext i32 %i.bhv to i64                 ; 5 uses
  %i.bhx = icmp ult i64 %i.bhu, %i.bhw
  br i1 %i.bhx, label %bb.lx, label %_ZNK3ada14url_aggregator12get_pathnameEv.exit949

bb.lx:                                            ; preds = %_ZNK3ada14url_aggregator8get_hostEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %i.bhw, i64 noundef %i.bhu) #31
  unreachable

_ZNK3ada14url_aggregator12get_pathnameEv.exit949: ; preds = %_ZNK3ada14url_aggregator8get_hostEv.exit
  %i.bhy = load i32, ptr %i.fy, align 8           ; 2 uses
  %.not.i942 = icmp eq i32 %i.bhy, -1
  %i.bhz = load i32, ptr %i.fz, align 4           ; 2 uses
  %.not5.i943 = icmp eq i32 %i.bhz, -1
  %i.bia = trunc i64 %i.bhu to i32
  %spec.select.i944 = select i1 %.not5.i943, i32 %i.bia, i32 %i.bhz
  %.0.i945 = select i1 %.not.i942, i32 %spec.select.i944, i32 %i.bhy
  %i.bib = zext i32 %.0.i945 to i64
  %i.bic = sub nsw i64 %i.bib, %i.bhw
  %i.bid = load ptr, ptr %i.fv, align 8
  %i.bie = sub nuw i64 %i.bhu, %i.bhw
  %.sroa.speculated.i.i946 = call i64 @llvm.umin.i64(i64 %i.bie, i64 %i.bic) ; 2 uses
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bid, i64 %i.bhw ; 2 uses
  %i.big = icmp eq i64 %.sroa.speculated.i.i946, 0
  br i1 %i.big, label %.critedge369, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit953

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit953: ; preds = %_ZNK3ada14url_aggregator12get_pathnameEv.exit949
  %i.bih = sub nuw i64 %.sroa.01255.1, %.03112133 ; 2 uses
  %i.bii = getelementptr inbounds nuw i8, ptr %.sroa.28.214641471, i64 %.03112133 ; 3 uses
  %i.bij = icmp ugt i64 %i.bih, 1
  br i1 %i.bij, label %bb.ly, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit967

bb.ly:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit953
  %i.bik = load i8, ptr %i.bii, align 1
  %i.bil = or i8 %i.bik, 32
  %i.bim = add i8 %i.bil, -97
  %spec.select.i.i954 = icmp ult i8 %i.bim, 26
  br i1 %spec.select.i.i954, label %bb.lz, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit967

bb.lz:                                            ; preds = %bb.ly
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bii, i64 1
  %i.bio = load i8, ptr %i.bin, align 1
  switch i8 %i.bio, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit967 [
    i8 58, label %bb.ma
    i8 124, label %bb.ma
  ]

bb.ma:                                            ; preds = %bb.lz, %bb.lz
  %i.bip = icmp eq i64 %i.bih, 2
  br i1 %i.bip, label %.critedge369, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bii, i64 2
  %i.bir = load i8, ptr %i.biq, align 1
  switch i8 %i.bir, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit967 [
    i8 47, label %.critedge369
    i8 92, label %.critedge369
    i8 63, label %.critedge369
    i8 35, label %.critedge369
  ]

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit967: ; preds = %bb.mb, %bb.lz, %bb.ly, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit953
  %i.bis = add i64 %.sroa.speculated.i.i946, -1   ; 3 uses
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bif, i64 1 ; 4 uses
  %.not1754 = icmp eq i64 %i.bis, 0
  br i1 %.not1754, label %.critedge369, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i969

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i969:    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit967
  %i.biu = call ptr @memchr(ptr noundef nonnull %i.bit, i32 noundef 47, i64 noundef %i.bis) #30 ; 2 uses
  %.not.i970 = icmp eq ptr %i.biu, null
  %i.biv = ptrtoint ptr %i.biu to i64
  %i.biw = ptrtoint ptr %i.bit to i64
  %i.bix = sub i64 %i.biv, %i.biw
  %spec.select = select i1 %.not.i970, i64 %i.bis, i64 %i.bix ; 2 uses
  %i.biy = icmp ugt i64 %spec.select, 1
  br i1 %i.biy, label %bb.mc, label %.critedge369

bb.mc:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i969
  %i.biz = load i8, ptr %i.bit, align 1
  %i.bja = or i8 %i.biz, 32
  %i.bjb = add i8 %i.bja, -97
  %spec.select.i.i973 = icmp ult i8 %i.bjb, 26
  br i1 %spec.select.i.i973, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit974, label %.critedge369

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit974: ; preds = %bb.mc
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bif, i64 2
  %i.bjd = load i8, ptr %i.bjc, align 1
  %i.bje = icmp eq i8 %i.bjd, 58
  br i1 %i.bje, label %bb.md, label %.critedge369

bb.md:                                            ; preds = %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit974
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #30
  store ptr %i.gp, ptr %36, align 8, !alias.scope !145
  store i64 0, ptr %i.gq, align 8, !alias.scope !145
  store i8 0, ptr %i.gp, align 8, !alias.scope !145
  call void @_ZN3ada7helpers12inner_concatIPKcJSt17basic_string_viewIcSt11char_traitsIcEEEEEvRNSt7__cxx1112basic_stringIcS6_SaIcEEET_DpT0_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str.2, i64 %spec.select, ptr nonnull %i.bit)
  %i.bjf = load ptr, ptr %36, align 8
  %i.bjg = load i64, ptr %i.gq, align 8
  call void @_ZN3ada14url_aggregator20append_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.bjg, ptr %i.bjf)
  %i.bjh = load ptr, ptr %36, align 8             ; 2 uses
  %i.bji = icmp eq ptr %i.bjh, %i.gp
  br i1 %i.bji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit979, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i977

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i977: ; preds = %bb.md
  %i.bjj = load i64, ptr %i.gp, align 8
  %i.bjk = add i64 %i.bjj, 1
  call void @_ZdlPvm(ptr noundef %i.bjh, i64 noundef %i.bjk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit979

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit979: ; preds = %bb.md, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i977
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  br label %.critedge369

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit983: ; preds = %bb.ah
  %i.bjl = sub nuw i64 %.sroa.01255.1, %.03112133 ; 3 uses
  %i.bjm = getelementptr inbounds nuw i8, ptr %.sroa.28.214641471, i64 %.03112133 ; 21 uses
  %.not1748 = icmp eq i64 %i.bjl, 0
  br i1 %.not1748, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit983, %bb.me
  %.01116.i.i = phi i64 [ %i.bjp, %bb.me ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit983 ] ; 4 uses
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bjm, i64 %.01116.i.i
  %i.bjo = load i8, ptr %i.bjn, align 1
  switch i8 %i.bjo, label %bb.me [
    i8 47, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
    i8 92, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
    i8 63, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
  ]

bb.me:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.bjp = add nuw i64 %.01116.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bjp, %i.bjl
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !123

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.not350 = icmp eq i64 %.01116.i.i, -1
  br i1 %.not350, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread, label %bb.mf

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread: ; preds = %bb.me, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit983, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
  br label %bb.mf

bb.mf:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread
  %i.bjq = phi i64 [ %i.bjl, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread ], [ %.01116.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit ] ; 20 uses
  %i.bjr = icmp ugt i64 %i.bjq, 1
  br i1 %i.bjr, label %bb.mg, label %bb.mk

bb.mg:                                            ; preds = %bb.mf
  %i.bjs = load i8, ptr %i.bjm, align 1
  %i.bjt = or i8 %i.bjs, 32
  %i.bju = add i8 %i.bjt, -97
  %spec.select.i.i985 = icmp ult i8 %i.bju, 26
  br i1 %spec.select.i.i985, label %bb.mh, label %.thread1664

bb.mh:                                            ; preds = %bb.mg
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bjm, i64 1
  %i.bjw = load i8, ptr %i.bjv, align 1
  switch i8 %i.bjw, label %.thread1664 [
    i8 58, label %bb.mi
    i8 124, label %bb.mi
  ]

bb.mi:                                            ; preds = %bb.mh, %bb.mh
  %i.bjx = icmp eq i64 %i.bjq, 2
  br i1 %i.bjx, label %.critedge369, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.bjm, i64 2
  %i.bjz = load i8, ptr %i.bjy, align 1
  switch i8 %i.bjz, label %.thread1664 [
    i8 47, label %.critedge369
    i8 92, label %.critedge369
    i8 63, label %.critedge369
    i8 35, label %.critedge369
  ]

bb.mk:                                            ; preds = %bb.mf
  %i.bka = icmp eq i64 %i.bjq, 0
  br i1 %i.bka, label %bb.ml, label %.thread1664

bb.ml:                                            ; preds = %bb.mk
  call void @_ZN3ada14url_aggregator20update_base_hostnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 0, ptr nonnull @.str.48)
  br label %.critedge369

.thread1664:                                      ; preds = %bb.mj, %bb.mg, %bb.mh, %bb.mk
  %i.bkb = add i64 %i.bjq, %.03112133             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  store i64 %i.bjq, ptr %20, align 8
  store ptr %i.bjm, ptr %i.ge, align 8
  %i.bkc = load i8, ptr %i.bjm, align 1
  %i.bkd = icmp eq i8 %i.bkc, 91
  br i1 %i.bkd, label %bb.mm, label %bb.mo

bb.mm:                                            ; preds = %.thread1664
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bjm, i64 %i.bjq
  %i.bkf = getelementptr inbounds i8, ptr %i.bke, i64 -1
  %i.bkg = load i8, ptr %i.bkf, align 1
  %.not.i421 = icmp eq i8 %i.bkg, 93
  br i1 %.not.i421, label %bb.mn, label %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1699

_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1699: ; preds = %bb.mm
  store i8 0, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  br label %.critedge372

bb.mn:                                            ; preds = %bb.mm
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bjm, i64 1 ; 2 uses
  store ptr %i.bkh, ptr %i.ge, align 8
  %i.bki = add i64 %i.bjq, -2                     ; 2 uses
  store i64 %i.bki, ptr %20, align 8
  %i.bkj = call noundef zeroext i1 @_ZN3ada14url_aggregator10parse_ipv6ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.bki, ptr nonnull %i.bkh)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  br i1 %i.bkj, label %bb.ow, label %.critedge372

bb.mo:                                            ; preds = %.thread1664
  %i.bkk = load i8, ptr %i.f, align 1
  %.not1749 = icmp eq i8 %i.bkk, 1
  br i1 %.not1749, label %bb.mp, label %.lr.ph.preheader

bb.mp:                                            ; preds = %bb.mo
  %i.bkl = call noundef zeroext i1 @_ZN3ada14url_aggregator17parse_opaque_hostESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.bjq, ptr nonnull %i.bjm)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  br i1 %i.bkl, label %bb.ow, label %.critedge372

.lr.ph.preheader:                                 ; preds = %bb.mo
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bjm, i64 %i.bjq ; 15 uses
  %i.bkn = load i8, ptr %i.bjm, align 1           ; 2 uses
  %i.bko = add i8 %i.bkn, -48
  %or.cond.i516 = icmp ult i8 %i.bko, 10
  br i1 %or.cond.i516, label %bb.mq, label %.thread1666.thread

bb.mq:                                            ; preds = %.lr.ph.preheader
  %i.bkp = zext nneg i8 %i.bkn to i32
  %i.bkq = add nsw i32 %i.bkp, -48                ; 2 uses
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bjm, i64 1 ; 3 uses
  %i.bks = icmp samesign ugt i64 %i.bjq, 1
  br i1 %i.bks, label %bb.mr, label %bb.mw

bb.mr:                                            ; preds = %bb.mq
  %i.bkt = load i8, ptr %i.bkr, align 1
  %i.bku = add i8 %i.bkt, -48                     ; 2 uses
  %or.cond6.i530 = icmp ult i8 %i.bku, 10
  br i1 %or.cond6.i530, label %bb.ms, label %bb.mw

bb.ms:                                            ; preds = %bb.mr
  %i.bkv = icmp eq i32 %i.bkq, 0
  br i1 %i.bkv, label %.thread1666.thread, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  %i.bkw = mul nuw nsw i32 %i.bkq, 10
  %i.bkx = zext nneg i8 %i.bku to i32
  %i.bky = add nuw nsw i32 %i.bkw, %i.bkx
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bjm, i64 2 ; 3 uses
  %.not3231 = icmp eq i64 %i.bjq, 2
  br i1 %.not3231, label %bb.mw, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.bla = load i8, ptr %i.bkz, align 1           ; 2 uses
  %i.blb = add i8 %i.bla, -48
  %or.cond9.i532 = icmp ult i8 %i.blb, 10
  br i1 %or.cond9.i532, label %bb.mv, label %bb.mw

bb.mv:                                            ; preds = %bb.mu
  %i.blc = zext nneg i8 %i.bla to i32
  %i.bld = mul nuw nsw i32 %i.bky, 10
  %i.ble = add nsw i32 %i.bld, -48
  %i.blf = add nuw nsw i32 %i.ble, %i.blc
  %i.blg = getelementptr inbounds nuw i8, ptr %i.bjm, i64 3
  %i.blh = icmp samesign ugt i32 %i.blf, 255
  br i1 %i.blh, label %.thread1666.thread, label %bb.mw

bb.mw:                                            ; preds = %bb.mq, %bb.mr, %bb.mt, %bb.mu, %bb.mv
  %.161.i525 = phi ptr [ %i.blg, %bb.mv ], [ %i.bkz, %bb.mu ], [ %i.bkz, %bb.mt ], [ %i.bkr, %bb.mr ], [ %i.bkr, %bb.mq ] ; 6 uses
  %i.bli = icmp eq ptr %.161.i525, %i.bkm
  br i1 %i.bli, label %.thread1666.thread, label %bb.mx
end_hunk_6
begin_hunk_7_@_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb0EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a

.lr.ph.i.i762:                                    ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit760, %bb.jd
  %.sroa.01.04.i.i763 = phi ptr [ %i.axl, %bb.jd ], [ %i.axi, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit760 ] ; 2 uses
  %i.axm = load i8, ptr %.sroa.01.04.i.i763, align 1
  %i.axn = zext i8 %i.axm to i64
  %i.axo = getelementptr inbounds nuw i8, ptr @_ZN3ada7unicodeL36is_forbidden_domain_code_point_tableE, i64 %i.axn
  %i.axp = load i8, ptr %i.axo, align 1
  %.not1683 = icmp eq i8 %i.axp, 0
  br i1 %.not1683, label %bb.jd, label %_ZNKSt6ranges11__any_of_fnclITkNS_11input_rangeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSD_T1_SG_.exit766

_ZNKSt6ranges11__any_of_fnclITkNS_11input_rangeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSD_T1_SG_.exit766: ; preds = %.lr.ph.i.i762
  store i8 0, ptr %i.c, align 8
  br label %bb.jn

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit767: ; preds = %bb.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %i.axj, ptr %6, align 8
  store ptr %i.axi, ptr %i.hm, align 8
  %i.axq = getelementptr inbounds i8, ptr %i.axk, i64 -1
  %i.axr = load i8, ptr %i.axq, align 1
  %i.axs = icmp eq i8 %i.axr, 46
  br i1 %i.axs, label %bb.je, label %thread-pre-split1537

bb.je:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit767
  %i.axt = add i64 %i.axj, -1                     ; 3 uses
  store i64 %i.axt, ptr %6, align 8
  %i.axu = icmp eq i64 %i.axt, 0
  br i1 %i.axu, label %.loopexit, label %thread-pre-split1537

thread-pre-split1537:                             ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit767, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit767.thread, %bb.je
  %i.axv = phi i64 [ %i.axt, %bb.je ], [ 0, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit767.thread ], [ %i.axj, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit767 ] ; 5 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axi, i64 %i.axv
  %i.axx = getelementptr inbounds i8, ptr %i.axw, i64 -1
  %i.axy = load i8, ptr %i.axx, align 1
  %.fr1684 = freeze i8 %i.axy                     ; 2 uses
  %i.axz = add i8 %.fr1684, -48
  %or.cond.i512 = icmp ult i8 %i.axz, 10
  br i1 %or.cond.i512, label %bb.jf, label %switch.early.test.i513

switch.early.test.i513:                           ; preds = %thread-pre-split1537
  switch i8 %.fr1684, label %.loopexit [
    i8 120, label %bb.jf
    i8 102, label %bb.jf
    i8 101, label %bb.jf
    i8 100, label %bb.jf
    i8 99, label %bb.jf
    i8 98, label %bb.jf
    i8 97, label %bb.jf
  ]

bb.jf:                                            ; preds = %switch.early.test.i513, %switch.early.test.i513, %switch.early.test.i513, %switch.early.test.i513, %switch.early.test.i513, %switch.early.test.i513, %switch.early.test.i513, %thread-pre-split1537
  %.not.i771 = icmp eq i64 %i.axv, 0
  br i1 %.not.i771, label %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit786.thread, label %.preheader1711.preheader

.preheader1711:                                   ; preds = %.preheader1711.preheader
  %.not13.i774 = icmp eq i64 %i.aya, 0
  br i1 %.not13.i774, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit776.thread, label %.preheader1711.preheader, !llvm.loop !29

.preheader1711.preheader:                         ; preds = %bb.jf, %.preheader1711
  %.1.i7732765 = phi i64 [ %i.aya, %.preheader1711 ], [ %i.axv, %bb.jf ] ; 3 uses
  %i.aya = add i64 %.1.i7732765, -1               ; 3 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axi, i64 %i.aya
  %i.ayc = load i8, ptr %i.ayb, align 1
  %i.ayd = icmp eq i8 %i.ayc, 46
  br i1 %i.ayd, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit780, label %.preheader1711, !llvm.loop !29

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit780: ; preds = %.preheader1711.preheader
  %i.aye = sub nuw i64 %i.axv, %.1.i7732765       ; 2 uses
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.axi, i64 %.1.i7732765 ; 2 uses
  store i64 %i.aye, ptr %6, align 8
  store ptr %i.ayf, ptr %i.hm, align 8
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit776.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit776.thread: ; preds = %.preheader1711, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit780
  %i.ayg = phi i64 [ %i.aye, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit780 ], [ %i.axv, %.preheader1711 ] ; 3 uses
  %i.ayh = phi ptr [ %i.ayf, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit780 ], [ %i.axi, %.preheader1711 ] ; 2 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayh, i64 %i.ayg
  %.not6.i.i781 = icmp samesign eq i64 %i.ayg, 0
  br i1 %.not6.i.i781, label %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit786.thread, label %.lr.ph.i.i782

bb.jg:                                            ; preds = %.lr.ph.i.i782
  %i.ayj = getelementptr inbounds nuw i8, ptr %.057.i.i783, i64 1 ; 2 uses
  %.not.i.i785 = icmp eq ptr %i.ayj, %i.ayi
  br i1 %.not.i.i785, label %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit786.thread, label %.lr.ph.i.i782, !llvm.loop !105

.lr.ph.i.i782:                                    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit776.thread, %bb.jg
  %.057.i.i783 = phi ptr [ %i.ayj, %bb.jg ], [ %i.ayh, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit776.thread ] ; 2 uses
  %i.ayk = load i8, ptr %.057.i.i783, align 1
  %i.ayl = add i8 %i.ayk, -48
  %i.aym = icmp ult i8 %i.ayl, 10
  br i1 %i.aym, label %bb.jg, label %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit786

_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit786: ; preds = %.lr.ph.i.i782
  %i.ayn = icmp eq i64 %i.ayg, 1
  br i1 %i.ayn, label %.loopexit, label %bb.jh

bb.jh:                                            ; preds = %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit786
  %i.ayo = call noundef zeroext i1 @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef @.str.157) #30
  br i1 %i.ayo, label %bb.ji, label %.loopexit

bb.ji:                                            ; preds = %bb.jh
  %i.ayp = load i64, ptr %6, align 8              ; 3 uses
  %i.ayq = icmp eq i64 %i.ayp, 2
  br i1 %i.ayq, label %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit786.thread, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.ayr = load ptr, ptr %i.hm, align 8           ; 2 uses
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayr, i64 2 ; 2 uses
  store ptr %i.ays, ptr %i.hm, align 8
  %i.ayt = add i64 %i.ayp, -2
  store i64 %i.ayt, ptr %6, align 8
  %i.ayu = getelementptr i8, ptr %i.ayr, i64 %i.ayp
  br label %.lr.ph.i.i788

bb.jk:                                            ; preds = %.lr.ph.i.i788
  %i.ayv = getelementptr inbounds nuw i8, ptr %.057.i.i789, i64 1 ; 2 uses
  %.not.i.i791 = icmp eq ptr %i.ayv, %i.ayu
  br i1 %.not.i.i791, label %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit786.thread, label %.lr.ph.i.i788, !llvm.loop !105

.lr.ph.i.i788:                                    ; preds = %bb.jj, %bb.jk
  %.057.i.i789 = phi ptr [ %i.ayv, %bb.jk ], [ %i.ays, %bb.jj ] ; 2 uses
  %i.ayw = load i8, ptr %.057.i.i789, align 1     ; 2 uses
  %i.ayx = add i8 %i.ayw, -48
  %or.cond.i1088 = icmp ult i8 %i.ayx, 10
  %i.ayy = add i8 %i.ayw, -97
  %i.ayz = icmp ult i8 %i.ayy, 6
  %i.aza = or i1 %or.cond.i1088, %i.ayz
  br i1 %i.aza, label %bb.jk, label %.loopexit

_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit786.thread: ; preds = %bb.jg, %bb.jk, %bb.jf, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit776.thread, %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.azb = load i8, ptr %i.hl, align 8, !range !73, !noundef !74
  %i.azc = trunc nuw i8 %i.azb to i1
  br i1 %i.azc, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit793, label %bb.jl

bb.jl:                                            ; preds = %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit786.thread
  call void @_ZSt27__throw_bad_optional_accessv() #34
  unreachable

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit793: ; preds = %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit786.thread
  %i.azd = load ptr, ptr %16, align 8
  %i.aze = load i64, ptr %i.hk, align 8
  %i.azf = call noundef zeroext i1 @_ZN3ada14url_aggregator10parse_ipv4ESt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.aze, ptr %i.azd, i1 noundef zeroext false)
  br label %bb.jn

.loopexit:                                        ; preds = %.lr.ph.i.i788, %bb.je, %switch.early.test.i513, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit786, %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.azg = load i8, ptr %i.hl, align 8, !range !73, !noundef !74
  %i.azh = trunc nuw i8 %i.azg to i1
  br i1 %i.azh, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit796, label %bb.jm

bb.jm:                                            ; preds = %.loopexit
  call void @_ZSt27__throw_bad_optional_accessv() #34
  unreachable

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit796: ; preds = %.loopexit
  %i.azi = load ptr, ptr %16, align 8
  %i.azj = load i64, ptr %i.hk, align 8
  call void @_ZN3ada14url_aggregator20update_base_hostnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.azj, ptr %i.azi)
  br label %bb.jn

bb.jn:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit796, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit793, %_ZNKSt6ranges11__any_of_fnclITkNS_11input_rangeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSD_T1_SG_.exit766, %bb.ja
  %.0.i394 = phi i1 [ false, %_ZNKSt6ranges11__any_of_fnclITkNS_11input_rangeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSD_T1_SG_.exit766 ], [ %i.azf, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit793 ], [ true, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit796 ], [ false, %bb.ja ]
  %i.azk = load i8, ptr %i.hl, align 8, !range !73, !noundef !74
  %i.azl = trunc nuw i8 %i.azk to i1
  store i8 0, ptr %i.hl, align 8
  br i1 %i.azl, label %bb.jo, label %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402

bb.jo:                                            ; preds = %bb.jn
  %i.azm = load ptr, ptr %16, align 8             ; 2 uses
  %i.azn = icmp eq ptr %i.azm, %i.hh
  br i1 %i.azn, label %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i799

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i799: ; preds = %bb.jo
  %i.azo = load i64, ptr %i.hh, align 8
  %i.azp = add i64 %i.azo, 1
  call void @_ZdlPvm(ptr noundef %i.azm, i64 noundef %i.azp) #33
  br label %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402

_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402.thread: ; preds = %_ZN3ada8checkers7is_ipv4ESt17basic_string_viewIcSt11char_traitsIcEE.exit511.thread, %_ZN3ada8checkers19try_parse_ipv4_fastESt17basic_string_viewIcSt11char_traitsIcEE.exit476
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %.critedge334

_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402: ; preds = %bb.jo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i799, %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br i1 %.0.i394, label %.critedge334, label %.critedge337

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit805: ; preds = %bb.ah
  %i.azq = sub nuw i64 %.sroa.01179.1, %.02771995 ; 3 uses
  %i.azr = getelementptr inbounds nuw i8, ptr %.sroa.27.213831390, i64 %.02771995 ; 6 uses
  %.not1676 = icmp eq i64 %i.azq, 0
  br i1 %.not1676, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i807

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit805
  store i8 1, ptr %i.d, align 1
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit811.thread

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i807:    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit805
  %i.azs = call ptr @memchr(ptr noundef %i.azr, i32 noundef 63, i64 noundef %i.azq) #30 ; 2 uses
  %.not323 = icmp eq ptr %i.azs, null
  br i1 %.not323, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread.thread2445, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread.thread2445: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i807
  store i8 1, ptr %i.d, align 1
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit811

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i807
  %36 = ptrtoint ptr %i.azs to i64
  %37 = ptrtoint ptr %i.azr to i64
  %38 = sub i64 %36, %37                          ; 3 uses
  %i.azt = add i64 %.02771995, 1
  %i.azu = add i64 %i.azt, %38                    ; 2 uses
  store i8 1, ptr %i.d, align 1
  %i.azv = icmp eq i64 %38, 0
  br i1 %i.azv, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit811.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit811

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit811: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread.thread2445, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread
  %.82451 = phi i32 [ 18, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread.thread2445 ], [ 15, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread ] ; 2 uses
  %.92862450 = phi i64 [ %i.gl, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread.thread2445 ], [ %i.azu, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread ] ; 2 uses
  %.sroa.01119.02449 = phi i64 [ %i.azq, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread.thread2445 ], [ %38, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread ] ; 5 uses
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azr, i64 %.sroa.01119.02449
  %i.azx = getelementptr inbounds i8, ptr %i.azw, i64 -1
  %i.azy = load i8, ptr %i.azx, align 1
  %i.azz = icmp eq i8 %i.azy, 32
  br i1 %i.azz, label %bb.jp, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit811.thread

bb.jp:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit811
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #30
  %i.baa = add i64 %.sroa.01119.02449, -1         ; 7 uses
  store ptr %i.gn, ptr %29, align 8
  %i.bab = icmp ugt i64 %i.baa, 15
  br i1 %i.bab, label %bb.jq, label %._crit_edge.i.i.i.i819

bb.jq:                                            ; preds = %bb.jp
  %i.bac = icmp slt i64 %i.baa, 0
  br i1 %i.bac, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %bb.jq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.123) #31
  unreachable

bb.js:                                            ; preds = %bb.jq
  %i.bad = icmp slt i64 %.sroa.01119.02449, 0
  br i1 %i.bad, label %bb.jt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i820, !prof !18

bb.jt:                                            ; preds = %bb.js
  call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i820: ; preds = %bb.js
  %i.bae = call noalias noundef nonnull ptr @_Znwm(i64 noundef %.sroa.01119.02449) #32 ; 2 uses
  store ptr %i.bae, ptr %29, align 8
  store i64 %i.baa, ptr %i.gn, align 8
  br label %._crit_edge.i.i.i.i819

._crit_edge.i.i.i.i819:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i820, %bb.jp
  %i.baf = phi ptr [ %i.bae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i820 ], [ %i.gn, %bb.jp ] ; 3 uses
  switch i64 %i.baa, label %bb.jv [
    i64 1, label %bb.ju
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit821
  ]

bb.ju:                                            ; preds = %._crit_edge.i.i.i.i819
  %i.bag = load i8, ptr %i.azr, align 1
  store i8 %i.bag, ptr %i.baf, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit821

bb.jv:                                            ; preds = %._crit_edge.i.i.i.i819
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.baf, ptr nonnull align 1 %i.azr, i64 %i.baa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit821

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit821: ; preds = %._crit_edge.i.i.i.i819, %bb.ju, %bb.jv
  store i64 %i.baa, ptr %i.go, align 8
  %i.bah = getelementptr inbounds nuw i8, ptr %i.baf, i64 %i.baa
  store i8 0, ptr %i.bah, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.bai = load i64, ptr %i.go, align 8, !noalias !166 ; 5 uses
  %i.baj = icmp sgt i64 %i.bai, 9223372036854775804
  br i1 %i.baj, label %bb.jw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.jw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit821
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #31, !noalias !166
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit821
  %i.bak = add nsw i64 %i.bai, 3                  ; 3 uses
  %i.bal = load ptr, ptr %29, align 8, !noalias !166 ; 2 uses
  %i.bam = icmp eq ptr %i.bal, %i.gn              ; 2 uses
  br i1 %i.bam, label %bb.jx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.jx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ban = icmp ult i64 %i.bai, 16
  call void @llvm.assume(i1 %i.ban)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.jx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.bao = load i64, ptr %i.gn, align 8, !noalias !166
  %i.bap = select i1 %i.bam, i64 15, i64 %i.bao
  %.not.i.i.i = icmp ugt i64 %i.bak, %i.bap
  br i1 %.not.i.i.i, label %bb.jz, label %bb.jy

bb.jy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bal, i64 %i.bai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.baq, ptr noundef nonnull align 1 dereferenceable(3) @.str.52, i64 3, i1 false), !noalias !166
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.jz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %29, i64 noundef %i.bai, i64 noundef 0, ptr noundef nonnull @.str.52, i64 noundef 3), !noalias !166
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.jz, %bb.jy
  store i64 %i.bak, ptr %i.go, align 8, !noalias !166
  %i.bar = load ptr, ptr %29, align 8, !noalias !166
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bar, i64 %i.bak
  store i8 0, ptr %i.bas, align 1, !noalias !166
  store ptr %i.gp, ptr %28, align 8, !alias.scope !166
  %i.bat = load ptr, ptr %29, align 8, !noalias !166 ; 3 uses
  %i.bau = icmp eq ptr %i.bat, %i.gn
  br i1 %i.bau, label %bb.ka, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i822

bb.ka:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bav = load i64, ptr %i.go, align 8, !noalias !166 ; 3 uses
  %i.baw = icmp ult i64 %i.bav, 16
  call void @llvm.assume(i1 %i.baw)
  %i.bax = add nuw nsw i64 %i.bav, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gp, ptr noundef nonnull align 8 dereferenceable(1) %i.gn, i64 %i.bax, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit825

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i822: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.bat, ptr %28, align 8, !alias.scope !166
  %i.bay = load i64, ptr %i.gn, align 8, !noalias !166
  store i64 %i.bay, ptr %i.gp, align 8, !alias.scope !166
  %.pre.i = load i64, ptr %i.go, align 8, !noalias !166
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit825

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit825: ; preds = %bb.ka, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i822
  %i.baz = phi ptr [ %i.gp, %bb.ka ], [ %i.bat, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i822 ]
  %i.bba = phi i64 [ %i.bav, %bb.ka ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i822 ] ; 2 uses
  store i64 %i.bba, ptr %i.gq, align 8, !alias.scope !166
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #30
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %30, i64 %i.bba, ptr %i.baz, ptr noundef nonnull @_ZN3ada14character_setsL25C0_CONTROL_PERCENT_ENCODEE)
  %i.bbb = load ptr, ptr %30, align 8
  %i.bbc = load i64, ptr %i.gr, align 8
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.bbc, ptr %i.bbb)
  %i.bbd = load ptr, ptr %30, align 8             ; 2 uses
  %i.bbe = icmp eq ptr %i.bbd, %i.gs
  br i1 %i.bbe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i830

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i830: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit825
  %i.bbf = load i64, ptr %i.gs, align 8
  %i.bbg = add i64 %i.bbf, 1
  call void @_ZdlPvm(ptr noundef %i.bbd, i64 noundef %i.bbg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit825, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i830
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #30
  %i.bbh = load ptr, ptr %28, align 8             ; 2 uses
  %i.bbi = icmp eq ptr %i.bbh, %i.gp
  br i1 %i.bbi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i833

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i833: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832
  %i.bbj = load i64, ptr %i.gp, align 8
  %i.bbk = add i64 %i.bbj, 1
  call void @_ZdlPvm(ptr noundef %i.bbh, i64 noundef %i.bbk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i833
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  br label %.critedge334

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit811.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit811
  %.82444 = phi i32 [ 18, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread.thread ], [ 15, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread ], [ %.82451, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit811 ]
  %.92862443 = phi i64 [ %i.gl, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread.thread ], [ %i.azu, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread ], [ %.92862450, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit811 ]
  %.sroa.01119.02442 = phi i64 [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread.thread ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread ], [ %.sroa.01119.02449, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit811 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #30
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %31, i64 %.sroa.01119.02442, ptr %i.azr, ptr noundef nonnull @_ZN3ada14character_setsL25C0_CONTROL_PERCENT_ENCODEE)
  %i.bbl = load ptr, ptr %31, align 8
  %i.bbm = load i64, ptr %i.gt, align 8
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.bbm, ptr %i.bbl)
  %i.bbn = load ptr, ptr %31, align 8             ; 2 uses
  %i.bbo = icmp eq ptr %i.bbn, %i.gu
  br i1 %i.bbo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit840, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i838

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i838: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit811.thread
  %i.bbp = load i64, ptr %i.gu, align 8
  %i.bbq = add i64 %i.bbp, 1
  call void @_ZdlPvm(ptr noundef %i.bbn, i64 noundef %i.bbq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit840

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit840: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit811.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i838
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  br label %.critedge334

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit844: ; preds = %bb.ah
  %i.bbr = sub nuw i64 %.sroa.01179.1, %.02771995
  %i.bbs = getelementptr inbounds nuw i8, ptr %.sroa.27.213831390, i64 %.02771995 ; 7 uses
  %i.bbt = icmp eq i64 %.sroa.01179.1, %.02771995
  br i1 %i.bbt, label %.thread, label %bb.kb

.thread:                                          ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit844
  %i.bbu = ptrtoint ptr %i.bbs to i64             ; 2 uses
  br label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1563

bb.kb:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit844
  %i.bbv = load i8, ptr %i.bbs, align 1
  %i.bbw = icmp eq i8 %i.bbv, 45
  br i1 %i.bbw, label %bb.kc, label %.lr.ph.i37.i.preheader

end_hunk_7
begin_hunk_8_@_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb0EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
bb.la:                                            ; preds = %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit, %bb.ah
  %.10287 = phi i64 [ %i.bet, %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit ], [ %.02771995, %bb.ah ] ; 6 uses
  %i.bew = load i8, ptr %i.f, align 1
  %.not1675 = icmp eq i8 %i.bew, 1
  %.not319 = icmp eq i64 %.10287, %.sroa.01179.1  ; 2 uses
  br i1 %.not1675, label %bb.ld, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  br i1 %.not319, label %.critedge354.critedge, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.bex = getelementptr inbounds nuw i8, ptr %.sroa.27.213831390, i64 %.10287
  %i.bey = load i8, ptr %i.bex, align 1
  switch i8 %i.bey, label %.critedge334 [
    i8 47, label %.critedge346
    i8 92, label %.critedge346
  ]

bb.ld:                                            ; preds = %bb.la
  br i1 %.not319, label %.critedge346, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.bez = getelementptr inbounds nuw i8, ptr %.sroa.27.213831390, i64 %.10287
  %i.bfa = load i8, ptr %i.bez, align 1
  switch i8 %i.bfa, label %.critedge334 [
    i8 63, label %.critedge346
    i8 47, label %.critedge346.fold.split
  ]

.critedge346.fold.split:                          ; preds = %bb.le
  br label %.critedge346

.critedge346:                                     ; preds = %bb.le, %.critedge346.fold.split, %bb.lc, %bb.lc, %bb.ld
  %.11 = phi i32 [ 16, %bb.lc ], [ 16, %bb.lc ], [ 15, %bb.le ], [ 17, %bb.ld ], [ 16, %.critedge346.fold.split ]
  %i.bfb = add i64 %.10287, 1
  br label %.critedge334

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861: ; preds = %bb.ah
  %.not1672 = icmp eq i64 %.sroa.01179.1, %.02771995
  br i1 %.not1672, label %.critedge334, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i863

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i863:    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861
  %i.bfc = sub nuw i64 %.sroa.01179.1, %.02771995
  %i.bfd = getelementptr inbounds nuw i8, ptr %.sroa.27.213831390, i64 %.02771995 ; 2 uses
  %i.bfe = call ptr @memchr(ptr noundef %i.bfd, i32 noundef 63, i64 noundef %i.bfc) #30 ; 2 uses
  %.not.i864 = icmp eq ptr %i.bfe, null
  %i.bff = ptrtoint ptr %i.bfe to i64
  %i.bfg = ptrtoint ptr %i.bfd to i64
  %i.bfh = sub i64 %i.bff, %i.bfg                 ; 2 uses
  %.not318 = icmp eq i64 %i.bfh, -1
  %or.cond1661 = or i1 %.not.i864, %.not318
  br i1 %or.cond1661, label %.critedge334, label %bb.lf

bb.lf:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i863
  %i.bfi = add i64 %.02771995, 1
  %i.bfj = add i64 %i.bfi, %i.bfh
  br label %.critedge334

bb.lg:                                            ; preds = %bb.ah
  %.not316 = icmp eq i64 %.02771995, %.sroa.01179.1
  br i1 %.not316, label %bb.lj, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.bfk = getelementptr inbounds nuw i8, ptr %.sroa.27.213831390, i64 %.02771995
  %i.bfl = load i8, ptr %i.bfk, align 1
  switch i8 %i.bfl, label %bb.lj [
    i8 47, label %bb.li
    i8 92, label %bb.li
  ]

bb.li:                                            ; preds = %bb.lh, %bb.lh
  %i.bfm = add i64 %.02771995, 1
  br label %.critedge334

bb.lj:                                            ; preds = %bb.lh, %bb.lg
  br i1 %i.q, label %bb.lk, label %.critedge334

bb.lk:                                            ; preds = %bb.lj
  %i.bfn = load i8, ptr %i.fm, align 1
  %i.bfo = icmp eq i8 %i.bfn, 6
  br i1 %i.bfo, label %bb.ll, label %.critedge334

bb.ll:                                            ; preds = %bb.lk
  %i.bfp = load i32, ptr %i.fn, align 8           ; 2 uses
  %i.bfq = zext i32 %i.bfp to i64                 ; 3 uses
  %i.bfr = load i32, ptr %i.fo, align 4           ; 2 uses
  %i.bfs = icmp ugt i32 %i.bfr, %i.bfp
  br i1 %i.bfs, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %bb.ll
  %i.bft = load ptr, ptr %i.fp, align 8
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bfq
  %i.bfv = load i8, ptr %i.bfu, align 1
  %i.bfw = icmp eq i8 %i.bfv, 64
  %i.bfx = zext i1 %i.bfw to i64
  %spec.select.i874 = add nuw nsw i64 %i.bfx, %i.bfq
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.ll
  %.0.i867 = phi i64 [ %i.bfq, %bb.ll ], [ %spec.select.i874, %bb.lm ] ; 6 uses
  %i.bfy = zext i32 %i.bfr to i64
  %i.bfz = icmp eq i64 %.0.i867, %i.bfy
  br i1 %i.bfz, label %_ZNK3ada14url_aggregator8get_hostEv.exit, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.bga = load i64, ptr %i.fq, align 8           ; 3 uses
  %i.bgb = icmp ugt i64 %.0.i867, %i.bga
  br i1 %i.bgb, label %bb.lp, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i868

bb.lp:                                            ; preds = %bb.lo
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %.0.i867, i64 noundef %i.bga) #31
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i868: ; preds = %bb.lo
  %i.bgc = load i32, ptr %i.fr, align 4
  %i.bgd = zext i32 %i.bgc to i64
  %i.bge = sub nsw i64 %i.bgd, %.0.i867
  %i.bgf = load ptr, ptr %i.fp, align 8
  %i.bgg = sub nuw i64 %i.bga, %.0.i867
  %.sroa.speculated.i.i869 = call i64 @llvm.umin.i64(i64 %i.bgg, i64 %i.bge)
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bgf, i64 %.0.i867
  br label %_ZNK3ada14url_aggregator8get_hostEv.exit

_ZNK3ada14url_aggregator8get_hostEv.exit:         ; preds = %bb.ln, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i868
  %.sroa.0.0.i870 = phi i64 [ %.sroa.speculated.i.i869, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i868 ], [ 0, %bb.ln ]
  %.sroa.3.0.i871 = phi ptr [ %i.bgh, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i868 ], [ null, %bb.ln ]
  call void @_ZN3ada14url_aggregator24update_host_to_base_hostESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.0.0.i870, ptr %.sroa.3.0.i871)
  %i.bgi = load i64, ptr %i.fq, align 8           ; 4 uses
  %i.bgj = load i32, ptr %i.fr, align 4
  %i.bgk = zext i32 %i.bgj to i64                 ; 5 uses
  %i.bgl = icmp ult i64 %i.bgi, %i.bgk
  br i1 %i.bgl, label %bb.lq, label %_ZNK3ada14url_aggregator12get_pathnameEv.exit883

bb.lq:                                            ; preds = %_ZNK3ada14url_aggregator8get_hostEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %i.bgk, i64 noundef %i.bgi) #31
  unreachable

_ZNK3ada14url_aggregator12get_pathnameEv.exit883: ; preds = %_ZNK3ada14url_aggregator8get_hostEv.exit
  %i.bgm = load i32, ptr %i.fs, align 8           ; 2 uses
  %.not.i876 = icmp eq i32 %i.bgm, -1
  %i.bgn = load i32, ptr %i.ft, align 4           ; 2 uses
  %.not5.i877 = icmp eq i32 %i.bgn, -1
  %i.bgo = trunc i64 %i.bgi to i32
  %spec.select.i878 = select i1 %.not5.i877, i32 %i.bgo, i32 %i.bgn
  %.0.i879 = select i1 %.not.i876, i32 %spec.select.i878, i32 %i.bgm
  %i.bgp = zext i32 %.0.i879 to i64
  %i.bgq = sub nsw i64 %i.bgp, %i.bgk
  %i.bgr = load ptr, ptr %i.fp, align 8
  %i.bgs = sub nuw i64 %i.bgi, %i.bgk
  %.sroa.speculated.i.i880 = call i64 @llvm.umin.i64(i64 %i.bgs, i64 %i.bgq) ; 2 uses
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgr, i64 %i.bgk ; 2 uses
  %i.bgu = icmp eq i64 %.sroa.speculated.i.i880, 0
  br i1 %i.bgu, label %.critedge334, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit887

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit887: ; preds = %_ZNK3ada14url_aggregator12get_pathnameEv.exit883
  %i.bgv = sub nuw i64 %.sroa.01179.1, %.02771995 ; 2 uses
  %i.bgw = getelementptr inbounds nuw i8, ptr %.sroa.27.213831390, i64 %.02771995 ; 3 uses
  %i.bgx = icmp ugt i64 %i.bgv, 1
  br i1 %i.bgx, label %bb.lr, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit901

bb.lr:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit887
  %i.bgy = load i8, ptr %i.bgw, align 1
  %i.bgz = or i8 %i.bgy, 32
  %i.bha = add i8 %i.bgz, -97
  %spec.select.i.i888 = icmp ult i8 %i.bha, 26
  br i1 %spec.select.i.i888, label %bb.ls, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit901

bb.ls:                                            ; preds = %bb.lr
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bgw, i64 1
  %i.bhc = load i8, ptr %i.bhb, align 1
  switch i8 %i.bhc, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit901 [
    i8 58, label %bb.lt
    i8 124, label %bb.lt
  ]

bb.lt:                                            ; preds = %bb.ls, %bb.ls
  %i.bhd = icmp eq i64 %i.bgv, 2
  br i1 %i.bhd, label %.critedge334, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bgw, i64 2
  %i.bhf = load i8, ptr %i.bhe, align 1
  switch i8 %i.bhf, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit901 [
    i8 47, label %.critedge334
    i8 92, label %.critedge334
    i8 63, label %.critedge334
    i8 35, label %.critedge334
  ]

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit901: ; preds = %bb.lu, %bb.ls, %bb.lr, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit887
  %i.bhg = add i64 %.sroa.speculated.i.i880, -1   ; 3 uses
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bgt, i64 1 ; 4 uses
  %.not1671 = icmp eq i64 %i.bhg, 0
  br i1 %.not1671, label %.critedge334, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i903

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i903:    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit901
  %i.bhi = call ptr @memchr(ptr noundef nonnull %i.bhh, i32 noundef 47, i64 noundef %i.bhg) #30 ; 2 uses
  %.not.i904 = icmp eq ptr %i.bhi, null
  %i.bhj = ptrtoint ptr %i.bhi to i64
  %i.bhk = ptrtoint ptr %i.bhh to i64
  %i.bhl = sub i64 %i.bhj, %i.bhk
  %spec.select = select i1 %.not.i904, i64 %i.bhg, i64 %i.bhl ; 2 uses
  %i.bhm = icmp ugt i64 %spec.select, 1
  br i1 %i.bhm, label %bb.lv, label %.critedge334

bb.lv:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i903
  %i.bhn = load i8, ptr %i.bhh, align 1
  %i.bho = or i8 %i.bhn, 32
  %i.bhp = add i8 %i.bho, -97
  %spec.select.i.i907 = icmp ult i8 %i.bhp, 26
  br i1 %spec.select.i.i907, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit908, label %.critedge334

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit908: ; preds = %bb.lv
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bgt, i64 2
  %i.bhr = load i8, ptr %i.bhq, align 1
  %i.bhs = icmp eq i8 %i.bhr, 58
  br i1 %i.bhs, label %bb.lw, label %.critedge334

bb.lw:                                            ; preds = %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit908
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #30
  store ptr %i.gj, ptr %32, align 8, !alias.scope !169
  store i64 0, ptr %i.gk, align 8, !alias.scope !169
  store i8 0, ptr %i.gj, align 8, !alias.scope !169
  call void @_ZN3ada7helpers12inner_concatIPKcJSt17basic_string_viewIcSt11char_traitsIcEEEEEvRNSt7__cxx1112basic_stringIcS6_SaIcEEET_DpT0_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.2, i64 %spec.select, ptr nonnull %i.bhh)
  %i.bht = load ptr, ptr %32, align 8
  %i.bhu = load i64, ptr %i.gk, align 8
  call void @_ZN3ada14url_aggregator20append_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.bhu, ptr %i.bht)
  %i.bhv = load ptr, ptr %32, align 8             ; 2 uses
  %i.bhw = icmp eq ptr %i.bhv, %i.gj
  br i1 %i.bhw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit913, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i911

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i911: ; preds = %bb.lw
  %i.bhx = load i64, ptr %i.gj, align 8
  %i.bhy = add i64 %i.bhx, 1
  call void @_ZdlPvm(ptr noundef %i.bhv, i64 noundef %i.bhy) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit913

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit913: ; preds = %bb.lw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i911
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  br label %.critedge334

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit917: ; preds = %bb.ah
  %i.bhz = sub nuw i64 %.sroa.01179.1, %.02771995 ; 3 uses
  %i.bia = getelementptr inbounds nuw i8, ptr %.sroa.27.213831390, i64 %.02771995 ; 21 uses
  %.not1665 = icmp eq i64 %i.bhz, 0
  br i1 %.not1665, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit917, %bb.lx
  %.01116.i.i = phi i64 [ %i.bid, %bb.lx ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit917 ] ; 4 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bia, i64 %.01116.i.i
  %i.bic = load i8, ptr %i.bib, align 1
  switch i8 %i.bic, label %bb.lx [
    i8 47, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
    i8 92, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
    i8 63, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
  ]

bb.lx:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.bid = add nuw i64 %.01116.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bid, %i.bhz
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !123

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.not315 = icmp eq i64 %.01116.i.i, -1
  br i1 %.not315, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread, label %bb.ly

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread: ; preds = %bb.lx, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit917, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
  br label %bb.ly

bb.ly:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread
  %i.bie = phi i64 [ %i.bhz, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread ], [ %.01116.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit ] ; 20 uses
  %i.bif = icmp ugt i64 %i.bie, 1
  br i1 %i.bif, label %bb.lz, label %bb.md

bb.lz:                                            ; preds = %bb.ly
  %i.big = load i8, ptr %i.bia, align 1
  %i.bih = or i8 %i.big, 32
  %i.bii = add i8 %i.bih, -97
  %spec.select.i.i919 = icmp ult i8 %i.bii, 26
  br i1 %spec.select.i.i919, label %bb.ma, label %.thread1581

bb.ma:                                            ; preds = %bb.lz
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bia, i64 1
  %i.bik = load i8, ptr %i.bij, align 1
  switch i8 %i.bik, label %.thread1581 [
    i8 58, label %bb.mb
    i8 124, label %bb.mb
  ]

bb.mb:                                            ; preds = %bb.ma, %bb.ma
  %i.bil = icmp eq i64 %i.bie, 2
  br i1 %i.bil, label %.critedge334, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bia, i64 2
  %i.bin = load i8, ptr %i.bim, align 1
  switch i8 %i.bin, label %.thread1581 [
    i8 47, label %.critedge334
    i8 92, label %.critedge334
    i8 63, label %.critedge334
    i8 35, label %.critedge334
  ]

bb.md:                                            ; preds = %bb.ly
  %i.bio = icmp eq i64 %i.bie, 0
  br i1 %i.bio, label %bb.me, label %.thread1581

bb.me:                                            ; preds = %bb.md
  call void @_ZN3ada14url_aggregator20update_base_hostnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 0, ptr nonnull @.str.48)
  br label %.critedge334

.thread1581:                                      ; preds = %bb.mc, %bb.lz, %bb.ma, %bb.md
  %i.bip = add i64 %i.bie, %.02771995             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  store i64 %i.bie, ptr %20, align 8
  store ptr %i.bia, ptr %i.fy, align 8
  %i.biq = load i8, ptr %i.bia, align 1
  %i.bir = icmp eq i8 %i.biq, 91
  br i1 %i.bir, label %bb.mf, label %bb.mh

bb.mf:                                            ; preds = %.thread1581
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bia, i64 %i.bie
  %i.bit = getelementptr inbounds i8, ptr %i.bis, i64 -1
  %i.biu = load i8, ptr %i.bit, align 1
  %.not.i386 = icmp eq i8 %i.biu, 93
  br i1 %.not.i386, label %bb.mg, label %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1616

_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1616: ; preds = %bb.mf
  store i8 0, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  br label %.critedge337

bb.mg:                                            ; preds = %bb.mf
  %i.biv = getelementptr inbounds nuw i8, ptr %i.bia, i64 1 ; 2 uses
  store ptr %i.biv, ptr %i.fy, align 8
  %i.biw = add i64 %i.bie, -2                     ; 2 uses
  store i64 %i.biw, ptr %20, align 8
  %i.bix = call noundef zeroext i1 @_ZN3ada14url_aggregator10parse_ipv6ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.biw, ptr nonnull %i.biv)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  br i1 %i.bix, label %bb.op, label %.critedge337

bb.mh:                                            ; preds = %.thread1581
  %i.biy = load i8, ptr %i.f, align 1
  %.not1666 = icmp eq i8 %i.biy, 1
  br i1 %.not1666, label %bb.mi, label %.lr.ph.preheader

bb.mi:                                            ; preds = %bb.mh
  %i.biz = call noundef zeroext i1 @_ZN3ada14url_aggregator17parse_opaque_hostESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.bie, ptr nonnull %i.bia)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  br i1 %i.biz, label %bb.op, label %.critedge337

.lr.ph.preheader:                                 ; preds = %bb.mh
  %i.bja = getelementptr inbounds nuw i8, ptr %i.bia, i64 %i.bie ; 15 uses
  %i.bjb = load i8, ptr %i.bia, align 1           ; 2 uses
  %i.bjc = add i8 %i.bjb, -48
  %or.cond.i481 = icmp ult i8 %i.bjc, 10
  br i1 %or.cond.i481, label %bb.mj, label %.thread1583.thread

bb.mj:                                            ; preds = %.lr.ph.preheader
  %i.bjd = zext nneg i8 %i.bjb to i32
  %i.bje = add nsw i32 %i.bjd, -48                ; 2 uses
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bia, i64 1 ; 3 uses
  %i.bjg = icmp samesign ugt i64 %i.bie, 1
  br i1 %i.bjg, label %bb.mk, label %bb.mp

bb.mk:                                            ; preds = %bb.mj
  %i.bjh = load i8, ptr %i.bjf, align 1
  %i.bji = add i8 %i.bjh, -48                     ; 2 uses
  %or.cond6.i495 = icmp ult i8 %i.bji, 10
  br i1 %or.cond6.i495, label %bb.ml, label %bb.mp

bb.ml:                                            ; preds = %bb.mk
  %i.bjj = icmp eq i32 %i.bje, 0
  br i1 %i.bjj, label %.thread1583.thread, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.bjk = mul nuw nsw i32 %i.bje, 10
  %i.bjl = zext nneg i8 %i.bji to i32
  %i.bjm = add nuw nsw i32 %i.bjk, %i.bjl
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bia, i64 2 ; 3 uses
  %.not2941 = icmp eq i64 %i.bie, 2
  br i1 %.not2941, label %bb.mp, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.bjo = load i8, ptr %i.bjn, align 1           ; 2 uses
  %i.bjp = add i8 %i.bjo, -48
  %or.cond9.i497 = icmp ult i8 %i.bjp, 10
  br i1 %or.cond9.i497, label %bb.mo, label %bb.mp

bb.mo:                                            ; preds = %bb.mn
  %i.bjq = zext nneg i8 %i.bjo to i32
  %i.bjr = mul nuw nsw i32 %i.bjm, 10
  %i.bjs = add nsw i32 %i.bjr, -48
  %i.bjt = add nuw nsw i32 %i.bjs, %i.bjq
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bia, i64 3
  %i.bjv = icmp samesign ugt i32 %i.bjt, 255
  br i1 %i.bjv, label %.thread1583.thread, label %bb.mp

bb.mp:                                            ; preds = %bb.mj, %bb.mk, %bb.mm, %bb.mn, %bb.mo
  %.161.i490 = phi ptr [ %i.bju, %bb.mo ], [ %i.bjn, %bb.mn ], [ %i.bjn, %bb.mm ], [ %i.bjf, %bb.mk ], [ %i.bjf, %bb.mj ] ; 6 uses
  %i.bjw = icmp eq ptr %.161.i490, %i.bja
  br i1 %i.bjw, label %.thread1583.thread, label %bb.mq
end_hunk_8
begin_hunk_9_@_ZN3ada3url12set_pathnameESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.ank = load i8, ptr %i.anj, align 1
  %i.anl = or i8 %i.ank, %i.ane                   ; 2 uses
  %i.anm = add nuw i64 %.117.i211328, 4           ; 2 uses
  %exitcond1401.not.3 = icmp eq i64 %i.anm, %i.ajt
  br i1 %exitcond1401.not.3, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit374, label %.lr.ph1330, !llvm.loop !119

_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit374: ; preds = %.lr.ph1330.prol.loopexit, %.lr.ph1330, %.preheader1178
  %.1.i22.lcssa = phi i8 [ %.0.i20.lcssa, %.preheader1178 ], [ %.lcssa1708.unr, %.lr.ph1330.prol.loopexit ], [ %i.anl, %.lr.ph1330 ] ; 3 uses
  %i.ann = and i8 %.1.i22.lcssa, 13
  %i.ano = icmp eq i8 %i.ann, 0                   ; 2 uses
  %.not1147 = icmp eq i8 %.1.i22.lcssa, 4
  br i1 %.not1147, label %bb.fn, label %.loopexit1177

bb.fn:                                            ; preds = %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit374
  %i.anp = load i8, ptr %i.aju, align 1
  %.not105.i13.i = icmp eq i8 %i.anp, 46
  br i1 %.not105.i13.i, label %.loopexit1177, label %.preheader1175

.preheader1175:                                   ; preds = %bb.fn
  %.not.i.i3751332.not = icmp eq i64 %i.ajt, 0
  br i1 %.not.i.i3751332.not, label %.critedge1347, label %.lr.ph1335

.lr.ph1335:                                       ; preds = %.preheader1175
  %i.anq = getelementptr i8, ptr %i.ec, i64 %i.eb
  %i.anr = ptrtoint ptr %i.anq to i64
  %i.ans = ptrtoint ptr %i.aju to i64
  br label %bb.fo

bb.fo:                                            ; preds = %.lr.ph1335, %bb.fs
  %.094.i15.i1334 = phi i64 [ 0, %.lr.ph1335 ], [ %i.aog, %bb.fs ] ; 2 uses
  %.095.i14.i1333 = phi i1 [ true, %.lr.ph1335 ], [ %i.aom, %bb.fs ] ; 5 uses
  %i.ant = sub nuw i64 %i.ajt, %.094.i15.i1334    ; 2 uses
  %.not2531.i.i377 = icmp ult i64 %i.ant, 2
  br i1 %.not2531.i.i377, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit389.thread, label %.lr.ph.i.i378

.lr.ph.i.i378:                                    ; preds = %bb.fo
  %i.anu = getelementptr inbounds nuw i8, ptr %i.aju, i64 %.094.i15.i1334
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i383

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i383:  ; preds = %.lr.ph.i.i378, %bb.fp
  %.033.i.i379 = phi i64 [ %i.ant, %.lr.ph.i.i378 ], [ %i.aof, %bb.fp ]
  %.02132.i.i380 = phi ptr [ %i.anu, %.lr.ph.i.i378 ], [ %i.aod, %bb.fp ]
  %.reass.reass.i.reass.reass.i382 = add i64 %.033.i.i379, -1
  %i.anv = call ptr @memchr(ptr noundef nonnull %.02132.i.i380, i32 noundef 47, i64 noundef %.reass.reass.i.reass.reass.i382) #30 ; 4 uses
  %.not26.i.i384 = icmp eq ptr %i.anv, null
  br i1 %.not26.i.i384, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit389.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i385

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i385: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i383
  %i.anw = load i16, ptr %i.anv, align 1
  %i.anx = icmp ne i16 %i.anw, 11823
  %i.any = zext i1 %i.anx to i32
  %i.anz = icmp eq i32 %i.any, 0
  br i1 %i.anz, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit389, label %bb.fp

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit389: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i385
  %i.aoa = ptrtoint ptr %i.anv to i64
  %i.aob = sub i64 %i.aoa, %i.ans                 ; 2 uses
  %i.aoc = icmp eq i64 %i.aob, -1
  br i1 %i.aoc, label %.loopexit1177, label %bb.fq

bb.fp:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i385
  %i.aod = getelementptr inbounds nuw i8, ptr %i.anv, i64 1 ; 2 uses
  %i.aoe = ptrtoint ptr %i.aod to i64
  %i.aof = sub i64 %i.anr, %i.aoe                 ; 2 uses
  %.not25.i.i387 = icmp ult i64 %i.aof, 2
  br i1 %.not25.i.i387, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit389.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i383, !llvm.loop !120

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit389.thread: ; preds = %bb.fo, %bb.fs, %bb.fp, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i383
  %.095.i14.i1213 = phi i1 [ %.095.i14.i1333, %bb.fp ], [ %.095.i14.i1333, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i383 ], [ %.095.i14.i1333, %bb.fo ], [ %i.aom, %bb.fs ]
  br i1 %.095.i14.i1213, label %.critedge1347, label %.critedge.i17.i

bb.fq:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit389
  %i.aog = add i64 %i.aob, 2                      ; 4 uses
  %i.aoh = icmp eq i64 %i.aog, %i.ajt
  br i1 %i.aoh, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aju, i64 %i.aog
  %i.aoj = load i8, ptr %i.aoi, align 1
  %i.aok = add i8 %i.aoj, -48
  %spec.select1130 = icmp ult i8 %i.aok, -2
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.aol = phi i1 [ %spec.select1130, %bb.fr ], [ false, %bb.fq ]
  %i.aom = select i1 %.095.i14.i1333, i1 %i.aol, i1 false ; 2 uses
  %.not.i.i375 = icmp ult i64 %i.aog, %i.ajt
  br i1 %.not.i.i375, label %bb.fo, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit389.thread, !llvm.loop !121

.loopexit1177:                                    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit389, %bb.fn, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit374
  %.0.i16.i = phi i1 [ %i.ano, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit374 ], [ %i.ano, %bb.fn ], [ %.095.i14.i1333, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit389 ]
  br i1 %.0.i16.i, label %.critedge1347, label %.critedge.i17.i

.critedge1347:                                    ; preds = %.preheader1175, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit389.thread, %.loopexit1177
  %i.aon = load i64, ptr %i.e, align 8            ; 4 uses
  %i.aoo = add i64 %i.aon, 1                      ; 3 uses
  %i.aop = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.aor = icmp eq ptr %i.aop, %i.aoq             ; 2 uses
  br i1 %i.aor, label %bb.ft, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i390

bb.ft:                                            ; preds = %.critedge1347
  %i.aos = icmp ult i64 %i.aon, 16
  call void @llvm.assume(i1 %i.aos)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i390

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i390: ; preds = %bb.ft, %.critedge1347
  %i.aot = load i64, ptr %i.aoq, align 8
  %i.aou = select i1 %i.aor, i64 15, i64 %i.aot
  %i.aov = icmp ugt i64 %i.aoo, %i.aou
  br i1 %i.aov, label %bb.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit392

bb.fu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i390
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.aon, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i391 = load ptr, ptr %i.d, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit392

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit392: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i390, %bb.fu
  %i.aow = phi ptr [ %.pre.i.i391, %bb.fu ], [ %i.aop, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i390 ]
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 %i.aon
  store i8 47, ptr %i.aox, align 1
  store i64 %i.aoo, ptr %i.e, align 8
  %i.aoy = load ptr, ptr %i.d, align 8
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 %i.aoo
  store i8 0, ptr %i.aoz, align 1
  %i.apa = load i64, ptr %i.e, align 8            ; 5 uses
  %i.apb = sub i64 9223372036854775807, %i.apa
  %i.apc = icmp ult i64 %i.apb, %i.ajt
  br i1 %i.apc, label %bb.fv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i396

bb.fv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit392
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #31
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i396: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit392
  %i.apd = add i64 %i.apa, %i.ajt                 ; 3 uses
  %i.ape = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.apf = icmp eq ptr %i.ape, %i.aoq             ; 2 uses
  br i1 %i.apf, label %bb.fw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i397

bb.fw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i396
  %i.apg = icmp ult i64 %i.apa, 16
  call void @llvm.assume(i1 %i.apg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i397

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i397: ; preds = %bb.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i396
  %i.aph = load i64, ptr %i.aoq, align 8
  %i.api = select i1 %i.apf, i64 15, i64 %i.aph
  %.not.i.i.i.i398 = icmp ugt i64 %i.apd, %i.api
  br i1 %.not.i.i.i.i398, label %bb.gb, label %bb.fx

bb.fx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i397
  %.not8.i.i.i.i399 = icmp eq i64 %i.ajt, 0
  br i1 %.not8.i.i.i.i399, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit401, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.apj = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.apa ; 2 uses
  %cond.i.i.i.i400 = icmp eq i64 %i.ajt, 1
  br i1 %cond.i.i.i.i400, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.apk = load i8, ptr %i.aju, align 1
  store i8 %i.apk, ptr %i.apj, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit401

bb.ga:                                            ; preds = %bb.fy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.apj, ptr nonnull align 1 %i.aju, i64 %i.ajt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit401

bb.gb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i397
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.apa, i64 noundef 0, ptr noundef nonnull %i.aju, i64 noundef %i.ajt)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit401

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit401: ; preds = %bb.fx, %bb.fz, %bb.ga, %bb.gb
  store i64 %i.apd, ptr %i.e, align 8
  %i.apl = load ptr, ptr %i.d, align 8
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 %i.apd
  store i8 0, ptr %i.apm, align 1
  br label %_ZN3ada3url10parse_pathESt17basic_string_viewIcSt11char_traitsIcEE.exit

.critedge.i17.i:                                  ; preds = %.loopexit1177, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit389.thread
  %i.apn = and i8 %.1.i22.lcssa, 1
  %.not106.i18.i = icmp eq i8 %i.apn, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.apo = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.apo, ptr %10, align 8
  %i.app = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 0, ptr %i.app, align 8
  store i8 0, ptr %i.apo, align 8
  %i.apq = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 8 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.critedge.i17.i
  %.sroa.0778.0 = phi i64 [ %i.ajt, %.critedge.i17.i ], [ %.sroa.0778.1, %.backedge.backedge ] ; 5 uses
  %.sroa.15789.0 = phi ptr [ %i.aju, %.critedge.i17.i ], [ %.sroa.15789.1, %.backedge.backedge ] ; 8 uses
  %.not1148 = icmp eq i64 %.sroa.0778.0, 0
  br i1 %.not1148, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit455.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i457

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i457:    ; preds = %.backedge
  %i.apr = call ptr @memchr(ptr noundef %.sroa.15789.0, i32 noundef 47, i64 noundef %.sroa.0778.0) #30 ; 2 uses
  %.not108.i21.i = icmp eq ptr %i.apr, null
  br i1 %.not108.i21.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit455.thread, label %bb.gc

bb.gc:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i457
  %13 = ptrtoint ptr %i.apr to i64
  %14 = ptrtoint ptr %.sroa.15789.0 to i64
  %15 = sub i64 %13, %14                          ; 2 uses
  %i.aps = add nuw i64 %15, 1                     ; 2 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %.sroa.15789.0, i64 %i.aps
  %i.apu = sub i64 %.sroa.0778.0, %i.aps
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit455.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit455.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i457, %.backedge, %bb.gc
  %.not108.i21.i1068 = phi i1 [ true, %.backedge ], [ false, %bb.gc ], [ true, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i457 ] ; 5 uses
  %.sroa.0764.0 = phi i64 [ 0, %.backedge ], [ %15, %bb.gc ], [ %.sroa.0778.0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i457 ] ; 3 uses
  %.sroa.0778.1 = phi i64 [ 0, %.backedge ], [ %i.apu, %bb.gc ], [ %.sroa.0778.0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i457 ]
  %.sroa.15789.1 = phi ptr [ %.sroa.15789.0, %.backedge ], [ %i.apt, %bb.gc ], [ %.sroa.15789.0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i457 ]
  br i1 %.not106.i18.i, label %bb.gf, label %bb.gd

bb.gd:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit455.thread
  %i.apv = call noundef zeroext i1 @_ZN3ada7unicode14percent_encodeILb0EEEbSt17basic_string_viewIcSt11char_traitsIcEEPKhRNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64 %.sroa.0764.0, ptr %.sroa.15789.0, ptr noundef nonnull @_ZN3ada14character_setsL19PATH_PERCENT_ENCODEE, ptr noundef nonnull align 8 dereferenceable(32) %10)
  br i1 %i.apv, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.apw = load ptr, ptr %10, align 8
  %i.apx = load i64, ptr %i.app, align 8
  br label %bb.gf

bb.gf:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit455.thread, %bb.gd, %bb.ge
  %.sroa.71404.0 = phi ptr [ %i.apw, %bb.ge ], [ %.sroa.15789.0, %bb.gd ], [ %.sroa.15789.0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit455.thread ] ; 15 uses
  %.sroa.01403.0 = phi i64 [ %i.apx, %bb.ge ], [ %.sroa.0764.0, %bb.gd ], [ %.sroa.0764.0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit455.thread ] ; 12 uses
  %i.apy = lshr i64 %.sroa.01403.0, 1
  %i.apz = add nsw i64 %i.apy, -4
  %i.aqa = icmp ult i64 %i.apz, -3
  br i1 %i.aqa, label %_ZN3ada7unicode26is_double_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit66, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aqb = load i8, ptr %.sroa.71404.0, align 1   ; 2 uses
  switch i8 %i.aqb, label %_ZN3ada7unicode26is_double_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit66 [
    i8 46, label %bb.gh
    i8 37, label %bb.gh
  ]

bb.gh:                                            ; preds = %bb.gg, %bb.gg
  %i.aqc = zext nneg i8 %i.aqb to i64
  %i.aqd = add i64 %.sroa.01403.0, %i.aqc
  %i.aqe = and i64 %i.aqd, 3
  %i.aqf = getelementptr inbounds nuw [16 x i8], ptr @_ZN3ada7unicodeL32table_is_double_dot_path_segmentE, i64 %i.aqe ; 2 uses
  %.sroa.0926.0.copyload = load i64, ptr %i.aqf, align 16
  %.sroa.5927.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqf, i64 8
  %.sroa.5927.0.copyload = load ptr, ptr %.sroa.5927.0..sroa_idx, align 8 ; 2 uses
  %.not18.i54 = icmp eq i64 %.sroa.0926.0.copyload, %.sroa.01403.0
  br i1 %.not18.i54, label %bb.gi, label %_ZN3ada7unicode26is_double_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit66

bb.gi:                                            ; preds = %bb.gh
  %.0.copyload1.i463 = load i16, ptr %.sroa.71404.0, align 1
  %.0.copyload.i464 = load i16, ptr %.sroa.5927.0.copyload, align 1
  %i.aqg = icmp eq i16 %.0.copyload1.i463, %.0.copyload.i464
  br i1 %i.aqg, label %.preheader1174, label %_ZN3ada7unicode26is_double_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit66

.preheader1174:                                   ; preds = %bb.gi
  %.not20.i631339 = icmp ugt i64 %.sroa.01403.0, 2
  br i1 %.not20.i631339, label %.lr.ph1341, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit477.thread

bb.gj:                                            ; preds = %.lr.ph1341
  %i.aqh = add nuw i64 %.014.i621340, 1           ; 2 uses
  %exitcond1402.not = icmp eq i64 %i.aqh, %.sroa.01403.0
  br i1 %exitcond1402.not, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit477.thread, label %.lr.ph1341, !llvm.loop !124

.lr.ph1341:                                       ; preds = %.preheader1174, %bb.gj
  %.014.i621340 = phi i64 [ %i.aqh, %bb.gj ], [ 2, %.preheader1174 ] ; 3 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %.sroa.71404.0, i64 %.014.i621340
  %i.aqj = load i8, ptr %i.aqi, align 1
  %i.aqk = sext i8 %i.aqj to i32                  ; 2 uses
  %i.aql = or i32 %i.aqk, 32                      ; 2 uses
  %i.aqm = add nsw i32 %i.aql, 159
  %i.aqn = and i32 %i.aqm, 254
  %i.aqo = icmp samesign ult i32 %i.aqn, 26
  %i.aqp = select i1 %i.aqo, i32 %i.aql, i32 %i.aqk
  %i.aqq = getelementptr inbounds nuw i8, ptr %.sroa.5927.0.copyload, i64 %.014.i621340
  %i.aqr = load i8, ptr %i.aqq, align 1
  %i.aqs = sext i8 %i.aqr to i32
  %.not19.i65 = icmp eq i32 %i.aqp, %i.aqs
  br i1 %.not19.i65, label %bb.gj, label %_ZN3ada7unicode26is_double_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit66

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit477.thread: ; preds = %bb.gj, %.preheader1174
  %.pr1077 = load i64, ptr %i.e, align 8          ; 2 uses
  %.not.i478 = icmp eq i64 %.pr1077, 0
  br i1 %.not.i478, label %_ZN3ada7helpers12shorten_pathERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6scheme4typeE.exit9, label %bb.gk

bb.gk:                                            ; preds = %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit477.thread
  %i.aqt = load ptr, ptr %i.d, align 8            ; 2 uses
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gm
  %.not13.i481 = icmp eq i64 %i.aqu, 0
  br i1 %.not13.i481, label %_ZN3ada7helpers12shorten_pathERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6scheme4typeE.exit9, label %bb.gm, !llvm.loop !96

bb.gm:                                            ; preds = %bb.gk, %bb.gl
  %.1.i4801701 = phi i64 [ %.pr1077, %bb.gk ], [ %i.aqu, %bb.gl ]
  %i.aqu = add i64 %.1.i4801701, -1               ; 5 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqt, i64 %i.aqu
  %i.aqw = load i8, ptr %i.aqv, align 1
  %i.aqx = icmp eq i8 %i.aqw, 47
  br i1 %i.aqx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit483, label %bb.gl, !llvm.loop !96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit483: ; preds = %bb.gm
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqt, i64 %i.aqu
  store i64 %i.aqu, ptr %i.e, align 8
  store i8 0, ptr %i.aqy, align 1
  br label %_ZN3ada7helpers12shorten_pathERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6scheme4typeE.exit9

_ZN3ada7helpers12shorten_pathERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6scheme4typeE.exit9: ; preds = %bb.gl, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit477.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit483
  br i1 %.not108.i21.i1068, label %bb.gn, label %.backedge.backedge

bb.gn:                                            ; preds = %_ZN3ada7helpers12shorten_pathERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6scheme4typeE.exit9
  %i.aqz = load i64, ptr %i.e, align 8            ; 4 uses
  %i.ara = add i64 %i.aqz, 1                      ; 3 uses
  %i.arb = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.arc = icmp eq ptr %i.arb, %i.apq             ; 2 uses
  br i1 %i.arc, label %bb.go, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i485

bb.go:                                            ; preds = %bb.gn
  %i.ard = icmp ult i64 %i.aqz, 16
  call void @llvm.assume(i1 %i.ard)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i485

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i485: ; preds = %bb.go, %bb.gn
  %i.are = load i64, ptr %i.apq, align 8
  %i.arf = select i1 %i.arc, i64 15, i64 %i.are
  %i.arg = icmp ugt i64 %i.ara, %i.arf
  br i1 %i.arg, label %bb.gp, label %.thread1084

bb.gp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i485
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.aqz, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i486 = load ptr, ptr %i.d, align 8
  br label %.thread1084

.thread1084:                                      ; preds = %bb.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i485
  %i.arh = phi ptr [ %.pre.i.i486, %bb.gp ], [ %i.arb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i485 ]
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 %i.aqz
  store i8 47, ptr %i.ari, align 1
  store i64 %i.ara, ptr %i.e, align 8
  %i.arj = load ptr, ptr %i.d, align 8
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 %i.ara
  store i8 0, ptr %i.ark, align 1
  br label %.loopexit

_ZN3ada7unicode26is_double_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit66: ; preds = %.lr.ph1341, %bb.gg, %bb.gi, %bb.gh, %bb.gf
  %i.arl = icmp eq i64 %.sroa.01403.0, 1          ; 2 uses
  br i1 %i.arl, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i488, label %bb.gq

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i488: ; preds = %_ZN3ada7unicode26is_double_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit66
  %lhsc1519 = load i8, ptr %.sroa.71404.0, align 1
  %i.arm = icmp eq i8 %lhsc1519, 46
  br i1 %i.arm, label %_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit87, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit516.thread

bb.gq:                                            ; preds = %_ZN3ada7unicode26is_double_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit66
  %cond1169 = icmp eq i64 %.sroa.01403.0, 3
  br i1 %cond1169, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i492, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit516.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i492: ; preds = %bb.gq
  %i.arn = load i16, ptr %.sroa.71404.0, align 1
  %i.aro = xor i16 %i.arn, 12837
  %i.arp = getelementptr i8, ptr %.sroa.71404.0, i64 2
  %i.arq = load i8, ptr %i.arp, align 1
  %i.arr = zext i8 %i.arq to i16
  %i.ars = xor i16 %i.arr, 101
  %i.art = or i16 %i.aro, %i.ars
  %i.aru = icmp ne i16 %i.art, 0
  %i.arv = zext i1 %i.aru to i32
  %i.arw = icmp eq i32 %i.arv, 0
  br i1 %i.arw, label %_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit87.thread1558, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i496

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i496: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i492
  %i.arx = load i16, ptr %.sroa.71404.0, align 1
  %i.ary = xor i16 %i.arx, 12837
  %i.arz = getelementptr i8, ptr %.sroa.71404.0, i64 2
  %i.asa = load i8, ptr %i.arz, align 1
  %i.asb = zext i8 %i.asa to i16
  %i.asc = xor i16 %i.asb, 69
  %i.asd = or i16 %i.ary, %i.asc
  %i.ase = icmp ne i16 %i.asd, 0
  %i.asf = zext i1 %i.ase to i32
  %i.asg = icmp eq i32 %i.asf, 0
  %or.cond1132 = and i1 %.not108.i21.i1068, %i.asg
  br i1 %or.cond1132, label %bb.gr, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i507

_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit87: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i488
  br i1 %.not108.i21.i1068, label %bb.gr, label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit87, %_ZN3ada7helpers12shorten_pathERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6scheme4typeE.exit9, %_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit86.thread
  br label %.backedge, !llvm.loop !125

_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit87.thread1558: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i492
  br i1 %.not108.i21.i1068, label %bb.gr, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i507

bb.gr:                                            ; preds = %_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit87.thread1558, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i496, %_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit87
  %i.ash = load i64, ptr %i.e, align 8            ; 4 uses
  %i.asi = add i64 %i.ash, 1                      ; 2 uses
  %i.asj = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.ask = icmp eq ptr %i.asj, %i.apq             ; 2 uses
  br i1 %i.ask, label %bb.gs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i500

bb.gs:                                            ; preds = %bb.gr
  %i.asl = icmp ult i64 %i.ash, 16
  call void @llvm.assume(i1 %i.asl)
end_hunk_9
begin_hunk_10_@_ZN3ada3url12set_pathnameESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 2
  %i.axn = load i8, ptr %i.axm, align 1
  %i.axo = zext i8 %i.axn to i64
  %i.axp = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.axo
  %i.axq = load i8, ptr %i.axp, align 1
  %i.axr = or i8 %i.axq, %i.axk
  %i.axs = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.117.i261306
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axs, i64 3
  %i.axu = load i8, ptr %i.axt, align 1
  %i.axv = zext i8 %i.axu to i64
  %i.axw = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.axv
  %i.axx = load i8, ptr %i.axw, align 1
  %i.axy = or i8 %i.axx, %i.axr                   ; 2 uses
  %i.axz = add nuw i64 %.117.i261306, 4           ; 2 uses
  %exitcond1399.not.3 = icmp eq i64 %i.axz, %i.eb
  br i1 %exitcond1399.not.3, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit533, label %.lr.ph1308, !llvm.loop !119

_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit533: ; preds = %.lr.ph1308.prol.loopexit, %.lr.ph1308, %.preheader1187
  %.1.i27.lcssa = phi i8 [ %.0.i25.lcssa, %.preheader1187 ], [ %.lcssa1717.unr, %.lr.ph1308.prol.loopexit ], [ %i.axy, %.lr.ph1308 ] ; 3 uses
  %i.aya = and i8 %.1.i27.lcssa, 13
  %i.ayb = icmp eq i8 %i.aya, 0
  %i.ayc = icmp ne i8 %.1.i27.lcssa, 4
  %.not105.i.i = icmp eq i8 %i.ajq, 46
  %or.cond1137 = or i1 %.not105.i.i, %i.ayc
  br i1 %or.cond1137, label %.loopexit1186, label %.lr.ph1313

.lr.ph1313:                                       ; preds = %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit533
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.eb
  %i.aye = ptrtoint ptr %i.ayd to i64
  %i.ayf = ptrtoint ptr %i.ec to i64
  br label %bb.hd

bb.hd:                                            ; preds = %.lr.ph1313, %bb.hh
  %.094.i.i1312 = phi i64 [ 0, %.lr.ph1313 ], [ %i.ayt, %bb.hh ] ; 2 uses
  %.095.i.i1311 = phi i1 [ true, %.lr.ph1313 ], [ %i.ayz, %bb.hh ] ; 5 uses
  %i.ayg = sub nuw i64 %i.eb, %.094.i.i1312       ; 2 uses
  %.not2531.i.i536 = icmp ult i64 %i.ayg, 2
  br i1 %.not2531.i.i536, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit548.thread, label %.lr.ph.i.i537

.lr.ph.i.i537:                                    ; preds = %bb.hd
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.094.i.i1312
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i542

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i542:  ; preds = %.lr.ph.i.i537, %bb.he
  %.033.i.i538 = phi i64 [ %i.ayg, %.lr.ph.i.i537 ], [ %i.ays, %bb.he ]
  %.02132.i.i539 = phi ptr [ %i.ayh, %.lr.ph.i.i537 ], [ %i.ayq, %bb.he ]
  %.reass.reass.i.reass.reass.i541 = add i64 %.033.i.i538, -1
  %i.ayi = call ptr @memchr(ptr noundef %.02132.i.i539, i32 noundef 47, i64 noundef %.reass.reass.i.reass.reass.i541) #30 ; 4 uses
  %.not26.i.i543 = icmp eq ptr %i.ayi, null
  br i1 %.not26.i.i543, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit548.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i544

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i544: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i542
  %i.ayj = load i16, ptr %i.ayi, align 1
  %i.ayk = icmp ne i16 %i.ayj, 11823
  %i.ayl = zext i1 %i.ayk to i32
  %i.aym = icmp eq i32 %i.ayl, 0
  br i1 %i.aym, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit548, label %bb.he

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit548: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i544
  %i.ayn = ptrtoint ptr %i.ayi to i64
  %i.ayo = sub i64 %i.ayn, %i.ayf                 ; 2 uses
  %i.ayp = icmp eq i64 %i.ayo, -1
  br i1 %i.ayp, label %.loopexit1186, label %bb.hf

bb.he:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i544
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayi, i64 1 ; 2 uses
  %i.ayr = ptrtoint ptr %i.ayq to i64
  %i.ays = sub i64 %i.aye, %i.ayr                 ; 2 uses
  %.not25.i.i546 = icmp ult i64 %i.ays, 2
  br i1 %.not25.i.i546, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit548.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i542, !llvm.loop !120

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit548.thread: ; preds = %bb.hd, %bb.hh, %bb.he, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i542
  %.095.i.i1222 = phi i1 [ %.095.i.i1311, %bb.he ], [ %.095.i.i1311, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i542 ], [ %.095.i.i1311, %bb.hd ], [ %i.ayz, %bb.hh ]
  br i1 %.095.i.i1222, label %.critedge1348, label %.critedge.i.i

bb.hf:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit548
  %i.ayt = add i64 %i.ayo, 2                      ; 4 uses
  %i.ayu = icmp eq i64 %i.ayt, %i.eb
  br i1 %i.ayu, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ayt
  %i.ayw = load i8, ptr %i.ayv, align 1
  %i.ayx = add i8 %i.ayw, -48
  %spec.select1138 = icmp ult i8 %i.ayx, -2
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %i.ayy = phi i1 [ %spec.select1138, %bb.hg ], [ false, %bb.hf ]
  %i.ayz = select i1 %.095.i.i1311, i1 %i.ayy, i1 false ; 2 uses
  %.not.i.i534 = icmp ult i64 %i.ayt, %i.eb
  br i1 %.not.i.i534, label %bb.hd, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit548.thread, !llvm.loop !121

.loopexit1186:                                    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit548, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit533
  %.0.i10.i = phi i1 [ %i.ayb, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit533 ], [ %.095.i.i1311, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit548 ]
  br i1 %.0.i10.i, label %.critedge1348, label %.critedge.i.i

.critedge1348:                                    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit548.thread, %.loopexit1186
  %i.aza = load i64, ptr %i.e, align 8            ; 4 uses
  %i.azb = add i64 %i.aza, 1                      ; 3 uses
  %i.azc = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.azd = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.aze = icmp eq ptr %i.azc, %i.azd             ; 2 uses
  br i1 %i.aze, label %bb.hi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i549

bb.hi:                                            ; preds = %.critedge1348
  %i.azf = icmp ult i64 %i.aza, 16
  call void @llvm.assume(i1 %i.azf)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i549

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i549: ; preds = %bb.hi, %.critedge1348
  %i.azg = load i64, ptr %i.azd, align 8
  %i.azh = select i1 %i.aze, i64 15, i64 %i.azg
  %i.azi = icmp ugt i64 %i.azb, %i.azh
  br i1 %i.azi, label %bb.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit551

bb.hj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i549
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.aza, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i550 = load ptr, ptr %i.d, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit551

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit551: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i549, %bb.hj
  %i.azj = phi ptr [ %.pre.i.i550, %bb.hj ], [ %i.azc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i549 ]
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azj, i64 %i.aza
  store i8 47, ptr %i.azk, align 1
  store i64 %i.azb, ptr %i.e, align 8
  %i.azl = load ptr, ptr %i.d, align 8
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azl, i64 %i.azb
  store i8 0, ptr %i.azm, align 1
  %i.azn = load i64, ptr %i.e, align 8            ; 5 uses
  %i.azo = sub i64 9223372036854775807, %i.azn
  %i.azp = icmp ult i64 %i.azo, %i.eb
  br i1 %i.azp, label %bb.hk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i555

bb.hk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit551
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #31
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i555: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit551
  %i.azq = add i64 %i.azn, %i.eb                  ; 3 uses
  %i.azr = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.azs = icmp eq ptr %i.azr, %i.azd             ; 2 uses
  br i1 %i.azs, label %bb.hl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i556

bb.hl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i555
  %i.azt = icmp ult i64 %i.azn, 16
  call void @llvm.assume(i1 %i.azt)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i556

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i556: ; preds = %bb.hl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i555
  %i.azu = load i64, ptr %i.azd, align 8
  %i.azv = select i1 %i.azs, i64 15, i64 %i.azu
  %.not.i.i.i.i557 = icmp ugt i64 %i.azq, %i.azv
  br i1 %.not.i.i.i.i557, label %bb.hp, label %bb.hm

bb.hm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i556
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azr, i64 %i.azn ; 2 uses
  %cond.i.i.i.i559 = icmp eq i64 %i.eb, 1
  br i1 %cond.i.i.i.i559, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.azx = load i8, ptr %i.ec, align 1
  store i8 %i.azx, ptr %i.azw, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit560

bb.ho:                                            ; preds = %bb.hm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.azw, ptr nonnull align 1 %i.ec, i64 %i.eb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit560

bb.hp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i556
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.azn, i64 noundef 0, ptr noundef nonnull %i.ec, i64 noundef %i.eb)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit560

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit560: ; preds = %bb.hn, %bb.ho, %bb.hp
  store i64 %i.azq, ptr %i.e, align 8
  %i.azy = load ptr, ptr %i.d, align 8
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azy, i64 %i.azq
  store i8 0, ptr %i.azz, align 1
  br label %_ZN3ada3url10parse_pathESt17basic_string_viewIcSt11char_traitsIcEE.exit

.critedge.i.i:                                    ; preds = %.loopexit1186, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit548.thread
  %i.baa = and i8 %.1.i27.lcssa, 1
  %.not106.i.i = icmp eq i8 %i.baa, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.bab = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.bab, ptr %11, align 8
  %i.bac = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 0, ptr %i.bac, align 8
  store i8 0, ptr %i.bab, align 8
  %i.bad = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 8 uses
  br label %.backedge1183

.backedge1183:                                    ; preds = %.backedge1183.backedge, %.critedge.i.i
  %.sroa.0744.0 = phi i64 [ %i.eb, %.critedge.i.i ], [ %.sroa.0744.1, %.backedge1183.backedge ] ; 5 uses
  %.sroa.15.0 = phi ptr [ %i.ec, %.critedge.i.i ], [ %.sroa.15.1, %.backedge1183.backedge ] ; 8 uses
  %.not1146 = icmp eq i64 %.sroa.0744.0, 0
  br i1 %.not1146, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit614.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i616

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i616:    ; preds = %.backedge1183
  %i.bae = call ptr @memchr(ptr noundef %.sroa.15.0, i32 noundef 47, i64 noundef %.sroa.0744.0) #30 ; 2 uses
  %.not108.i.i = icmp eq ptr %i.bae, null
  br i1 %.not108.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit614.thread, label %bb.hq

bb.hq:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i616
  %16 = ptrtoint ptr %i.bae to i64
  %17 = ptrtoint ptr %.sroa.15.0 to i64
  %18 = sub i64 %16, %17                          ; 2 uses
  %i.baf = add nuw i64 %18, 1                     ; 2 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %.sroa.15.0, i64 %i.baf
  %i.bah = sub i64 %.sroa.0744.0, %i.baf
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit614.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit614.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i616, %.backedge1183, %bb.hq
  %.not108.i.i1097 = phi i1 [ true, %.backedge1183 ], [ false, %bb.hq ], [ true, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i616 ] ; 5 uses
  %.sroa.0744.1 = phi i64 [ 0, %.backedge1183 ], [ %i.bah, %bb.hq ], [ %.sroa.0744.0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i616 ]
  %.sroa.15.1 = phi ptr [ %.sroa.15.0, %.backedge1183 ], [ %i.bag, %bb.hq ], [ %.sroa.15.0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i616 ]
  %.sroa.0731.0 = phi i64 [ 0, %.backedge1183 ], [ %18, %bb.hq ], [ %.sroa.0744.0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i616 ] ; 3 uses
  br i1 %.not106.i.i, label %bb.ht, label %bb.hr

bb.hr:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit614.thread
  %i.bai = call noundef zeroext i1 @_ZN3ada7unicode14percent_encodeILb0EEEbSt17basic_string_viewIcSt11char_traitsIcEEPKhRNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64 %.sroa.0731.0, ptr %.sroa.15.0, ptr noundef nonnull @_ZN3ada14character_setsL19PATH_PERCENT_ENCODEE, ptr noundef nonnull align 8 dereferenceable(32) %11)
  br i1 %i.bai, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.baj = load ptr, ptr %11, align 8
  %i.bak = load i64, ptr %i.bac, align 8
  br label %bb.ht

bb.ht:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit614.thread, %bb.hr, %bb.hs
  %.sroa.7.0 = phi ptr [ %i.baj, %bb.hs ], [ %.sroa.15.0, %bb.hr ], [ %.sroa.15.0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit614.thread ] ; 15 uses
  %.sroa.0.01405 = phi i64 [ %i.bak, %bb.hs ], [ %.sroa.0731.0, %bb.hr ], [ %.sroa.0731.0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit614.thread ] ; 12 uses
  %i.bal = lshr i64 %.sroa.0.01405, 1
  %i.bam = add nsw i64 %i.bal, -4
  %i.ban = icmp ult i64 %i.bam, -3
  br i1 %i.ban, label %_ZN3ada7unicode26is_double_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit82, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.bao = load i8, ptr %.sroa.7.0, align 1       ; 2 uses
  switch i8 %i.bao, label %_ZN3ada7unicode26is_double_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit82 [
    i8 46, label %bb.hv
    i8 37, label %bb.hv
  ]

bb.hv:                                            ; preds = %bb.hu, %bb.hu
  %i.bap = zext nneg i8 %i.bao to i64
  %i.baq = add i64 %.sroa.0.01405, %i.bap
  %i.bar = and i64 %i.baq, 3
  %i.bas = getelementptr inbounds nuw [16 x i8], ptr @_ZN3ada7unicodeL32table_is_double_dot_path_segmentE, i64 %i.bar ; 2 uses
  %.sroa.0938.0.copyload = load i64, ptr %i.bas, align 16
  %.sroa.5939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bas, i64 8
  %.sroa.5939.0.copyload = load ptr, ptr %.sroa.5939.0..sroa_idx, align 8 ; 2 uses
  %.not18.i70 = icmp eq i64 %.sroa.0938.0.copyload, %.sroa.0.01405
  br i1 %.not18.i70, label %bb.hw, label %_ZN3ada7unicode26is_double_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit82

bb.hw:                                            ; preds = %bb.hv
  %.0.copyload1.i622 = load i16, ptr %.sroa.7.0, align 1
  %.0.copyload.i623 = load i16, ptr %.sroa.5939.0.copyload, align 1
  %i.bat = icmp eq i16 %.0.copyload1.i622, %.0.copyload.i623
  br i1 %i.bat, label %.preheader1181, label %_ZN3ada7unicode26is_double_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit82

.preheader1181:                                   ; preds = %bb.hw
  %.not20.i791317 = icmp ugt i64 %.sroa.0.01405, 2
  br i1 %.not20.i791317, label %.lr.ph1319, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit636.thread

bb.hx:                                            ; preds = %.lr.ph1319
  %i.bau = add nuw i64 %.014.i781318, 1           ; 2 uses
  %exitcond1400.not = icmp eq i64 %i.bau, %.sroa.0.01405
  br i1 %exitcond1400.not, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit636.thread, label %.lr.ph1319, !llvm.loop !124

.lr.ph1319:                                       ; preds = %.preheader1181, %bb.hx
  %.014.i781318 = phi i64 [ %i.bau, %bb.hx ], [ 2, %.preheader1181 ] ; 3 uses
  %i.bav = getelementptr inbounds nuw i8, ptr %.sroa.7.0, i64 %.014.i781318
  %i.baw = load i8, ptr %i.bav, align 1
  %i.bax = sext i8 %i.baw to i32                  ; 2 uses
  %i.bay = or i32 %i.bax, 32                      ; 2 uses
  %i.baz = add nsw i32 %i.bay, 159
  %i.bba = and i32 %i.baz, 254
  %i.bbb = icmp samesign ult i32 %i.bba, 26
  %i.bbc = select i1 %i.bbb, i32 %i.bay, i32 %i.bax
  %i.bbd = getelementptr inbounds nuw i8, ptr %.sroa.5939.0.copyload, i64 %.014.i781318
  %i.bbe = load i8, ptr %i.bbd, align 1
  %i.bbf = sext i8 %i.bbe to i32
  %.not19.i81 = icmp eq i32 %i.bbc, %i.bbf
  br i1 %.not19.i81, label %bb.hx, label %_ZN3ada7unicode26is_double_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit82

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit636.thread: ; preds = %bb.hx, %.preheader1181
  %.pr1106 = load i64, ptr %i.e, align 8          ; 2 uses
  %.not.i637 = icmp eq i64 %.pr1106, 0
  br i1 %.not.i637, label %_ZN3ada7helpers12shorten_pathERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6scheme4typeE.exit12, label %bb.hy

bb.hy:                                            ; preds = %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit636.thread
  %i.bbg = load ptr, ptr %i.d, align 8            ; 2 uses
  br label %bb.ia

bb.hz:                                            ; preds = %bb.ia
  %.not13.i640 = icmp eq i64 %i.bbh, 0
  br i1 %.not13.i640, label %_ZN3ada7helpers12shorten_pathERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6scheme4typeE.exit12, label %bb.ia, !llvm.loop !96

bb.ia:                                            ; preds = %bb.hy, %bb.hz
  %.1.i6391700 = phi i64 [ %.pr1106, %bb.hy ], [ %i.bbh, %bb.hz ]
  %i.bbh = add i64 %.1.i6391700, -1               ; 5 uses
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bbg, i64 %i.bbh
  %i.bbj = load i8, ptr %i.bbi, align 1
  %i.bbk = icmp eq i8 %i.bbj, 47
  br i1 %i.bbk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit642, label %bb.hz, !llvm.loop !96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit642: ; preds = %bb.ia
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbg, i64 %i.bbh
  store i64 %i.bbh, ptr %i.e, align 8
  store i8 0, ptr %i.bbl, align 1
  br label %_ZN3ada7helpers12shorten_pathERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6scheme4typeE.exit12

_ZN3ada7helpers12shorten_pathERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6scheme4typeE.exit12: ; preds = %bb.hz, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit636.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit642
  br i1 %.not108.i.i1097, label %bb.ib, label %.backedge1183.backedge

bb.ib:                                            ; preds = %_ZN3ada7helpers12shorten_pathERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6scheme4typeE.exit12
  %i.bbm = load i64, ptr %i.e, align 8            ; 4 uses
  %i.bbn = add i64 %i.bbm, 1                      ; 3 uses
  %i.bbo = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.bbp = icmp eq ptr %i.bbo, %i.bad             ; 2 uses
  br i1 %i.bbp, label %bb.ic, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i644

bb.ic:                                            ; preds = %bb.ib
  %i.bbq = icmp ult i64 %i.bbm, 16
  call void @llvm.assume(i1 %i.bbq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i644

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i644: ; preds = %bb.ic, %bb.ib
  %i.bbr = load i64, ptr %i.bad, align 8
  %i.bbs = select i1 %i.bbp, i64 15, i64 %i.bbr
  %i.bbt = icmp ugt i64 %i.bbn, %i.bbs
  br i1 %i.bbt, label %bb.id, label %.thread1113

bb.id:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i644
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.bbm, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i645 = load ptr, ptr %i.d, align 8
  br label %.thread1113

.thread1113:                                      ; preds = %bb.id, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i644
  %i.bbu = phi ptr [ %.pre.i.i645, %bb.id ], [ %i.bbo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i644 ]
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbu, i64 %i.bbm
  store i8 47, ptr %i.bbv, align 1
  store i64 %i.bbn, ptr %i.e, align 8
  %i.bbw = load ptr, ptr %i.d, align 8
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbw, i64 %i.bbn
  store i8 0, ptr %i.bbx, align 1
  br label %.loopexit1182

_ZN3ada7unicode26is_double_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit82: ; preds = %.lr.ph1319, %bb.hu, %bb.hw, %bb.hv, %bb.ht
  %i.bby = icmp eq i64 %.sroa.0.01405, 1          ; 2 uses
  br i1 %i.bby, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i647, label %bb.ie

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i647: ; preds = %_ZN3ada7unicode26is_double_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit82
  %lhsc1517 = load i8, ptr %.sroa.7.0, align 1
  %i.bbz = icmp eq i8 %lhsc1517, 46
  br i1 %i.bbz, label %_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit89, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit675.thread

bb.ie:                                            ; preds = %_ZN3ada7unicode26is_double_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit82
  %cond1171 = icmp eq i64 %.sroa.0.01405, 3
  br i1 %cond1171, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i651, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit675.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i651: ; preds = %bb.ie
  %i.bca = load i16, ptr %.sroa.7.0, align 1
  %i.bcb = xor i16 %i.bca, 12837
  %i.bcc = getelementptr i8, ptr %.sroa.7.0, i64 2
  %i.bcd = load i8, ptr %i.bcc, align 1
  %i.bce = zext i8 %i.bcd to i16
  %i.bcf = xor i16 %i.bce, 101
  %i.bcg = or i16 %i.bcb, %i.bcf
  %i.bch = icmp ne i16 %i.bcg, 0
  %i.bci = zext i1 %i.bch to i32
  %i.bcj = icmp eq i32 %i.bci, 0
  br i1 %i.bcj, label %_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit89.thread1570, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i655

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i655: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i651
  %i.bck = load i16, ptr %.sroa.7.0, align 1
  %i.bcl = xor i16 %i.bck, 12837
  %i.bcm = getelementptr i8, ptr %.sroa.7.0, i64 2
  %i.bcn = load i8, ptr %i.bcm, align 1
  %i.bco = zext i8 %i.bcn to i16
  %i.bcp = xor i16 %i.bco, 69
  %i.bcq = or i16 %i.bcl, %i.bcp
  %i.bcr = icmp ne i16 %i.bcq, 0
  %i.bcs = zext i1 %i.bcr to i32
  %i.bct = icmp eq i32 %i.bcs, 0
  %or.cond1140 = and i1 %.not108.i.i1097, %i.bct
  br i1 %or.cond1140, label %bb.if, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i666

_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit89: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i647
  br i1 %.not108.i.i1097, label %bb.if, label %.backedge1183.backedge

.backedge1183.backedge:                           ; preds = %_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit89, %_ZN3ada7helpers12shorten_pathERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6scheme4typeE.exit12, %_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit88.thread
  br label %.backedge1183, !llvm.loop !125

_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit89.thread1570: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i651
  br i1 %.not108.i.i1097, label %bb.if, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i666

bb.if:                                            ; preds = %_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit89.thread1570, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i655, %_ZN3ada7unicode26is_single_dot_path_segmentESt17basic_string_viewIcSt11char_traitsIcEE.exit89
  %i.bcu = load i64, ptr %i.e, align 8            ; 4 uses
  %i.bcv = add i64 %i.bcu, 1                      ; 2 uses
  %i.bcw = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.bcx = icmp eq ptr %i.bcw, %i.bad             ; 2 uses
  br i1 %i.bcx, label %bb.ig, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i659

bb.ig:                                            ; preds = %bb.if
  %i.bcy = icmp ult i64 %i.bcu, 16
  call void @llvm.assume(i1 %i.bcy)
end_hunk_10
begin_hunk_11_@_ZN3ada14url_aggregator20append_base_usernameESt17basic_string_viewIcSt11char_traitsIcEE:bb.a

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.151, i64 noundef %i.f, i64 noundef %i.h) #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmSC_.exit: ; preds = %bb.b
  %i.j = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.f, i64 noundef 0, ptr noundef %2, i64 noundef %1) ; 0 uses
  %i.k = load i32, ptr %i.d, align 4
  %i.l = add i32 %i.k, %i.b
  store i32 %i.l, ptr %i.d, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = add i32 %i.n, %i.b                       ; 3 uses
  store i32 %i.o, ptr %i.m, align 8
  %i.p = zext i32 %i.o to i64                     ; 4 uses
  %i.q = load ptr, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  %i.s = load i8, ptr %i.r, align 1
  %.not = icmp eq i8 %i.s, 64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %.not10 = icmp eq i32 %i.o, %i.u
  %or.cond = select i1 %.not, i1 true, i1 %.not10
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmSC_.exit
  %i.v = load i64, ptr %i.g, align 8              ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.p
  br i1 %i.w, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.151, i64 noundef %i.p, i64 noundef %i.v) #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit: ; preds = %bb.d
  %i.x = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.p, i64 noundef 0, ptr noundef nonnull @.str.158, i64 noundef 1) ; 0 uses
  %i.y = add i32 %i.b, 1
  %.pre = load i32, ptr %i.t, align 4
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmSC_.exit
  %i.z = phi i32 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmSC_.exit ]
  %.0 = phi i32 [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit ], [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmSC_.exit ] ; 4 uses
  %i.aa = add i32 %i.z, %.0
  store i32 %i.aa, ptr %i.t, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = add i32 %i.ac, %.0
  store i32 %i.ad, ptr %i.ab, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8            ; 2 uses
  %.not11 = icmp eq i32 %i.af, -1
  br i1 %.not11, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = add i32 %i.af, %.0
  store i32 %i.ag, ptr %i.ae, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %.not12 = icmp eq i32 %i.ai, -1
  br i1 %.not12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = add i32 %i.ai, %.0
  store i32 %i.aj, ptr %i.ah, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ada14url_aggregator21update_base_authorityESt17basic_string_viewIcSt11char_traitsIcEERKNS_14url_componentsE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(32) %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4                ; 2 uses
  %i.b = zext i32 %i.a to i64                     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = icmp ult i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %i.b, i64 noundef %1) #31
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.a
  %i.e = load i32, ptr %i.c, align 4
  %i.f = sub i32 %i.e, %i.a
  %i.g = zext i32 %i.f to i64
  %i.h = sub nuw i64 %1, %i.b
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.g) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.b ; 3 uses
  %.not.i.i = icmp samesign ult i64 %.sroa.speculated.i, 2
  br i1 %.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.j = load i16, ptr %i.i, align 1
  %i.k = icmp ne i16 %i.j, 12079
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.n = phi i1 [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %i.m, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = load i32, ptr %i.o, align 8              ; 3 uses
  %i.s = sub i32 %i.q, %i.r                       ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.u = zext i32 %i.r to i64                     ; 6 uses
  %i.v = zext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.x = load i64, ptr %i.w, align 8              ; 6 uses
  %i.y = icmp ult i64 %i.x, %i.u
  br i1 %i.y, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i

bb.c:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.163, i64 noundef %i.u, i64 noundef %i.x) #31
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit
  %cond = icmp eq i32 %i.s, 0
  br i1 %cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  %i.z = sub i64 %i.x, %i.u
  %spec.select.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.v, i64 %i.z) ; 3 uses
  %i.aa = add nuw nsw i64 %spec.select.i.i, %i.u  ; 2 uses
  %i.ab = icmp ne i64 %i.x, %i.aa
  %i.ac = icmp ne i64 %i.x, %i.u
  %or.cond.i.i = and i1 %i.ac, %i.ab
  br i1 %or.cond.i.i, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ad = sub i64 %i.x, %i.aa                     ; 2 uses
  %i.ae = load ptr, ptr %i.t, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.u ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %spec.select.i.i ; 2 uses
  switch i64 %i.ad, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.ah = load i8, ptr %i.ag, align 1
  store i8 %i.ah, ptr %i.af, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 1 %i.ag, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.ai = load i64, ptr %i.w, align 8
  %i.aj = sub i64 %i.ai, %spec.select.i.i         ; 2 uses
  store i64 %i.aj, ptr %i.w, align 8
  %i.ak = load ptr, ptr %i.t, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj
  store i8 0, ptr %i.al, align 1
  %.pre = load i32, ptr %i.o, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i
  %i.am = phi i32 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 5 uses
  store i32 %i.am, ptr %i.an, align 4
  br i1 %i.n, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  %i.ao = zext i32 %i.am to i64                   ; 3 uses
  %i.ap = load i64, ptr %i.w, align 8             ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  br i1 %i.aq, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.151, i64 noundef %i.ao, i64 noundef %i.ap) #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit: ; preds = %bb.h
  %i.ar = add i32 %i.s, 2
  %i.as = add nsw i64 %.sroa.speculated.i, -2
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.au = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 noundef %i.ao, i64 noundef 0, ptr noundef nonnull @.str.45, i64 noundef 2) ; 0 uses
  %i.av = load i32, ptr %i.an, align 4
  %i.aw = add i32 %i.av, 2
  store i32 %i.aw, ptr %i.an, align 4
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  %.sroa.053.0 = phi i64 [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit ], [ %.sroa.speculated.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ] ; 8 uses
  %.sroa.13.0 = phi ptr [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ] ; 5 uses
  %.0 = phi i32 [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ] ; 5 uses
  %.not69 = icmp eq i64 %.sroa.053.0, 0
  br i1 %.not69, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.j
  %i.ax = tail call ptr @memchr(ptr noundef %.sroa.13.0, i32 noundef 58, i64 noundef %.sroa.053.0) #30 ; 2 uses
  %.not.a = icmp eq ptr %i.ax, null
  br i1 %.not.a, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %4 = ptrtoint ptr %i.ax to i64
  %5 = ptrtoint ptr %.sroa.13.0 to i64
  %6 = sub i64 %4, %5                             ; 3 uses
  %.sroa.speculated.i32 = tail call i64 @llvm.umin.i64(i64 %.sroa.053.0, i64 %6) ; 2 uses
  %i.ay = add nuw i64 %6, 1                       ; 3 uses
  %.not70 = icmp ult i64 %6, %.sroa.053.0
  br i1 %.not70, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %i.ay, i64 noundef %.sroa.053.0) #31
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38: ; preds = %bb.k
  %i.az = sub nuw i64 %.sroa.053.0, %i.ay         ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.13.0, i64 %i.ay
  %i.bb = load i32, ptr %i.o, align 8
  %i.bc = add i32 %i.bb, %.0
  %i.bd = zext i32 %i.bc to i64                   ; 3 uses
  %i.be = load i64, ptr %i.w, align 8             ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  br i1 %i.bf, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmSC_.exit

bb.m:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.151, i64 noundef %i.bd, i64 noundef %i.be) #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmSC_.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38
  %i.bg = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 noundef %i.bd, i64 noundef 0, ptr noundef %.sroa.13.0, i64 noundef %.sroa.speculated.i32) ; 0 uses
  %i.bh = trunc i64 %.sroa.speculated.i32 to i32
  %i.bi = add i32 %.0, %i.bh                      ; 3 uses
  %i.bj = load i32, ptr %i.o, align 8
  %i.bk = add i32 %i.bj, %i.bi
  %i.bl = zext i32 %i.bk to i64                   ; 3 uses
  %i.bm = load i64, ptr %i.w, align 8             ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  br i1 %i.bn, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit39

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmSC_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.151, i64 noundef %i.bl, i64 noundef %i.bm) #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmSC_.exit
  %i.bo = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 noundef %i.bl, i64 noundef 0, ptr noundef nonnull @.str.47, i64 noundef 1) ; 0 uses
  %i.bp = load i32, ptr %i.o, align 8
  %i.bq = add i32 %i.bp, %i.bi                    ; 2 uses
  store i32 %i.bq, ptr %i.an, align 4
  %i.br = add i32 %i.bq, 1
  %i.bs = zext i32 %i.br to i64                   ; 3 uses
  %i.bt = load i64, ptr %i.w, align 8             ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  br i1 %i.bu, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmSC_.exit43

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit39
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.151, i64 noundef %i.bs, i64 noundef %i.bt) #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmSC_.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit39
  %i.bv = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 noundef %i.bs, i64 noundef 0, ptr noundef nonnull %i.ba, i64 noundef %i.az) ; 0 uses
  %i.bw = trunc i64 %i.az to i32
  %i.bx = add i32 %i.bw, 1
  %i.by = add i32 %i.bx, %i.bi
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.bz = load i32, ptr %i.o, align 8
  %i.ca = add i32 %i.bz, %.0
  %i.cb = zext i32 %i.ca to i64                   ; 3 uses
  %i.cc = load i64, ptr %i.w, align 8             ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.cb
  br i1 %i.cd, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmSC_.exit47

bb.p:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.151, i64 noundef %i.cb, i64 noundef %i.cc) #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmSC_.exit47: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  %i.ce = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 noundef %i.cb, i64 noundef 0, ptr noundef %.sroa.13.0, i64 noundef %.sroa.053.0) ; 0 uses
  %i.cf = load i32, ptr %i.o, align 8
  %i.cg = trunc i64 %.sroa.053.0 to i32
  %i.ch = add i32 %.0, %i.cg                      ; 2 uses
  %i.ci = add i32 %i.ch, %i.cf
  store i32 %i.ci, ptr %i.an, align 4
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmSC_.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmSC_.exit43
  %.1 = phi i32 [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmSC_.exit43 ], [ %.0, %bb.j ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmSC_.exit47 ] ; 4 uses
  %i.cj = load i32, ptr %i.p, align 8
  %i.ck = add i32 %i.cj, %.1                      ; 2 uses
  store i32 %i.ck, ptr %i.p, align 8
  %i.cl = load i64, ptr %i.w, align 8             ; 3 uses
  %i.cm = load i32, ptr %i.c, align 4
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = icmp ugt i64 %i.cl, %i.cn
  br i1 %i.co, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread
  %i.cp = load ptr, ptr %i.t, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cn
  %i.cr = load i8, ptr %i.cq, align 1
  %.not29 = icmp eq i8 %i.cr, 64
  br i1 %.not29, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cs = zext i32 %i.ck to i64                   ; 3 uses
  %i.ct = icmp ult i64 %i.cl, %i.cs
  br i1 %i.ct, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit48

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.151, i64 noundef %i.cs, i64 noundef %i.cl) #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit48: ; preds = %bb.r
  %i.cu = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 noundef %i.cs, i64 noundef 0, ptr noundef nonnull @.str.158, i64 noundef 1) ; 0 uses
  %i.cv = add i32 %.1, 1
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit48, %bb.q, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread
  %.2 = phi i32 [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit48 ], [ %.1, %bb.q ], [ %.1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread ] ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = add i32 %i.cx, %.2
  store i32 %i.cy, ptr %i.cw, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = add i32 %i.da, %.2
  store i32 %i.db, ptr %i.cz, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8            ; 2 uses
  %.not30 = icmp eq i32 %i.dd, -1
  br i1 %.not30, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.de = add i32 %i.dd, %.2
  store i32 %i.de, ptr %i.dc, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4            ; 2 uses
  %.not31 = icmp eq i32 %i.dg, -1
  br i1 %.not31, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dh = add i32 %i.dg, %.2
  store i32 %i.dh, ptr %i.df, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ada14url_aggregator24update_host_to_base_hostESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %1, ptr %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.b = load i8, ptr %i.a, align 1
  %i.c = icmp ne i64 %1, 0
  %i.d = icmp ne i8 %i.b, 1
  %or.cond2 = select i1 %i.d, i1 true, i1 %i.c
  br i1 %or.cond2, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = add i32 %i.f, 2                          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i32, ptr %i.h, align 8
  %.not.i.i = icmp ugt i32 %i.g, %i.i
  br i1 %.not.i.i, label %_ZNK3ada14url_aggregator12has_hostnameEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = zext i32 %i.f to i64                     ; 5 uses
  %i.m = icmp ult i64 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %i.l, i64 noundef %i.k) #31
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i: ; preds = %bb.c
  %i.n = zext i32 %i.g to i64
  %i.o = sub nsw i64 %i.n, %i.l
  %i.p = sub nuw i64 %i.k, %i.l
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.o)
  %i.q = icmp eq i64 %.sroa.speculated.i.i.i, 2
  br i1 %i.q, label %_ZNK3ada14url_aggregator12has_hostnameEv.exit, label %_ZNK3ada14url_aggregator12has_hostnameEv.exit.thread

_ZNK3ada14url_aggregator12has_hostnameEv.exit:    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.l
  %i.u = load i16, ptr %i.t, align 1
  %i.v = icmp ne i16 %i.u, 12079
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.e, label %_ZNK3ada14url_aggregator12has_hostnameEv.exit.thread

bb.e:                                             ; preds = %_ZNK3ada14url_aggregator12has_hostnameEv.exit
  tail call void @_ZN3ada14url_aggregator14clear_hostnameEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br label %_ZN3ada14url_aggregator15delete_dash_dotEv.exit

end_hunk_11
begin_hunk_12_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8
  %i.t = load ptr, ptr %2, align 8                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8              ; 8 uses
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.x = icmp slt i64 %i.v, 0
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.123) #31
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.y = add nuw i64 %i.v, 1                      ; 2 uses
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !18

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.f
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #32 ; 2 uses
  store ptr %i.aa, ptr %i.r, align 8
  store i64 %i.v, ptr %i.s, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.ab = phi ptr [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.s, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 3 uses
  switch i64 %i.v, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %i.t, align 1
  store i8 %i.ac, ptr %i.ab, align 1
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit: ; preds = %._crit_edge.i.i.i, %bb.h, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.v, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.v
  store i8 0, ptr %i.ae, align 1
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.012.i.i.i, align 8, !alias.scope !566, !noalias !569
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !569, !noalias !566 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !569, !noalias !566 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !571
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !alias.scope !566, !noalias !569
  %i.an = load i64, ptr %i.ah, align 8, !alias.scope !569, !noalias !566
  store i64 %i.an, ptr %i.af, align 8, !alias.scope !566, !noalias !569
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !569, !noalias !566
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.j
  %i.ao = phi i64 [ %i.ak, %bb.j ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !alias.scope !566, !noalias !569
  store ptr %i.ah, ptr %.0911.i.i.i, align 8, !alias.scope !569, !noalias !566
  store i64 0, ptr %i.ap, align 8, !alias.scope !569, !noalias !566
  store i8 0, ptr %i.ah, align 8, !alias.scope !569, !noalias !566
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !572

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit ], [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i18, align 8, !alias.scope !573, !noalias !576
  %i.av = load ptr, ptr %.0911.i.i.i19, align 8, !alias.scope !576, !noalias !573 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.k:                                             ; preds = %.lr.ph.i.i.i17
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !576, !noalias !573 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !578
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.av, ptr %.012.i.i.i18, align 8, !alias.scope !573, !noalias !576
  %i.bc = load i64, ptr %i.aw, align 8, !alias.scope !576, !noalias !573
  store i64 %i.bc, ptr %i.au, align 8, !alias.scope !573, !noalias !576
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !alias.scope !576, !noalias !573
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.k
  %i.bd = phi i64 [ %i.az, %bb.k ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !alias.scope !573, !noalias !576
  store ptr %i.aw, ptr %.0911.i.i.i19, align 8, !alias.scope !576, !noalias !573
  store i64 0, ptr %i.be, align 8, !alias.scope !576, !noalias !573
  store i8 0, ptr %i.aw, align 8, !alias.scope !576, !noalias !573
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bg, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !572

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bl) #33
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.l
  store ptr %i.q, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.l
  store ptr %i.bm, ptr %i.bi, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN3ada17url_search_params10initializeESt17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clES4_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, ptr %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 12 uses
  %i.a = load ptr, ptr %0, align 8                ; 6 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge.i.i.i.i.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

._crit_edge.i.i.i.i.thread:                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.b, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 61, i64 noundef %1) #30 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %2 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  br i1 %.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.n

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.g, ptr %3, align 8
  %i.h = icmp eq ptr %2, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.131) #31
  unreachable

bb.c:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  %i.i = icmp ugt i64 %1, 15
  br i1 %i.i, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = icmp slt i64 %1, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.123) #31
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = add nuw i64 %1, 1                        ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.g, label %._crit_edge.i.i.i.i.thread141, !prof !18

bb.g:                                             ; preds = %bb.f
  call void @_ZSt17__throw_bad_allocv() #31
  unreachable

._crit_edge.i.i.i.i.thread141:                    ; preds = %bb.f
  %i.m = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #32 ; 2 uses
  store ptr %i.m, ptr %3, align 8
  store i64 %1, ptr %i.g, align 8
  br label %bb.i

._crit_edge.i.i.i.i:                              ; preds = %bb.c
  %cond = icmp eq i64 %1, 1
  br i1 %cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.n = load i8, ptr %2, align 1
  store i8 %i.n, ptr %i.g, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.thread141, %._crit_edge.i.i.i.i
  %i.o = phi ptr [ %i.m, %._crit_edge.i.i.i.i.thread141 ], [ %i.g, %._crit_edge.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %2, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i.thread, %bb.h, %bb.i
  %i.p = phi ptr [ %i.b, %._crit_edge.i.i.i.i.thread ], [ %i.o, %bb.i ], [ %i.g, %bb.h ]
  %i.q = phi ptr [ %i.b, %._crit_edge.i.i.i.i.thread ], [ %i.g, %bb.i ], [ %i.g, %bb.h ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %1
  store i8 0, ptr %i.s, align 1
  %i.t = load ptr, ptr %3, align 8                ; 45 uses
  %i.u = load i64, ptr %i.r, align 8              ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = icmp samesign eq i64 %i.u, 0
  br i1 %i.w, label %_ZNKSt6ranges12__replace_fnclITkNS_11input_rangeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEccSt8identityQaa19indirectly_writableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEERKT1_E25indirect_binary_predicateINS_8equal_toENSt8__detail11__projectedISC_T2_E6__typeEPKT0_EEENSt13__conditionalIX14borrowed_rangeISA_EEE4typeISC_NS_8danglingEEEOSA_RSN_SF_SJ_.exit.thread, label %iter.check528

iter.check528:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %min.iters.check418 = icmp ult i64 %i.u, 8
  br i1 %min.iters.check418, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check419

vector.main.loop.iter.check419:                   ; preds = %iter.check528
  %min.iters.check420 = icmp ult i64 %i.u, 32
  br i1 %min.iters.check420, label %vec.epilog.ph532, label %vector.ph421

vector.ph421:                                     ; preds = %vector.main.loop.iter.check419
  %n.mod.vf422 = and i64 %i.u, 24
  %n.vec423 = and i64 %i.u, -32                   ; 4 uses
  %i.x = getelementptr i8, ptr %i.t, i64 %n.vec423
  br label %vector.body424

vector.body424:                                   ; preds = %pred.store.continue523, %vector.ph421
  %index425 = phi i64 [ 0, %vector.ph421 ], [ %index.next524, %pred.store.continue523 ] ; 33 uses
  %next.gep426.a = getelementptr i8, ptr %i.t, i64 %index425 ; 3 uses
  %i.y = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep427.a = getelementptr i8, ptr %i.y, i64 1
  %i.z = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep428.a = getelementptr i8, ptr %i.z, i64 2
  %i.aa = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep429.a = getelementptr i8, ptr %i.aa, i64 3
  %i.ab = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep430.a = getelementptr i8, ptr %i.ab, i64 4
  %i.ac = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep431.a = getelementptr i8, ptr %i.ac, i64 5
  %i.ad = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep432.a = getelementptr i8, ptr %i.ad, i64 6
  %i.ae = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep433.a = getelementptr i8, ptr %i.ae, i64 7
  %i.af = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep434.a = getelementptr i8, ptr %i.af, i64 8
  %i.ag = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep435.a = getelementptr i8, ptr %i.ag, i64 9
  %i.ah = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep436.a = getelementptr i8, ptr %i.ah, i64 10
  %i.ai = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep437.a = getelementptr i8, ptr %i.ai, i64 11
  %i.aj = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep438.a = getelementptr i8, ptr %i.aj, i64 12
  %i.ak = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep439.a = getelementptr i8, ptr %i.ak, i64 13
  %i.al = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep440.a = getelementptr i8, ptr %i.al, i64 14
  %i.am = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep441.a = getelementptr i8, ptr %i.am, i64 15
  %i.an = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep442.a = getelementptr i8, ptr %i.an, i64 16
  %i.ao = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep443.a = getelementptr i8, ptr %i.ao, i64 17
  %i.ap = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep444.a = getelementptr i8, ptr %i.ap, i64 18
  %i.aq = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep445.a = getelementptr i8, ptr %i.aq, i64 19
  %i.ar = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep446.a = getelementptr i8, ptr %i.ar, i64 20
  %i.as = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep447.a = getelementptr i8, ptr %i.as, i64 21
  %i.at = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep448.a = getelementptr i8, ptr %i.at, i64 22
  %i.au = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep449.a = getelementptr i8, ptr %i.au, i64 23
  %i.av = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep450.a = getelementptr i8, ptr %i.av, i64 24
  %i.aw = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep451.a = getelementptr i8, ptr %i.aw, i64 25
  %i.ax = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep452.a = getelementptr i8, ptr %i.ax, i64 26
  %i.ay = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep453.a = getelementptr i8, ptr %i.ay, i64 27
  %i.az = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep454.a = getelementptr i8, ptr %i.az, i64 28
  %i.ba = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep455.a = getelementptr i8, ptr %i.ba, i64 29
  %i.bb = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep456.a = getelementptr i8, ptr %i.bb, i64 30
  %i.bc = getelementptr i8, ptr %i.t, i64 %index425
  %next.gep457 = getelementptr i8, ptr %i.bc, i64 31
  %i.bd = getelementptr i8, ptr %next.gep426.a, i64 16
  %wide.load458.a = load <16 x i8>, ptr %next.gep426.a, align 1
  %wide.load459 = load <16 x i8>, ptr %i.bd, align 1
  %i.be = icmp eq <16 x i8> %wide.load458.a, splat (i8 43) ; 16 uses
  %i.bf = icmp eq <16 x i8> %wide.load459, splat (i8 43) ; 16 uses
  %i.bg = extractelement <16 x i1> %i.be, i64 0
  br i1 %i.bg, label %pred.store.if460, label %pred.store.continue461

pred.store.if460:                                 ; preds = %vector.body424
  store i8 32, ptr %next.gep426.a, align 1
  br label %pred.store.continue461

pred.store.continue461:                           ; preds = %pred.store.if460, %vector.body424
  %i.bh = extractelement <16 x i1> %i.be, i64 1
  br i1 %i.bh, label %pred.store.if462, label %pred.store.continue463

pred.store.if462:                                 ; preds = %pred.store.continue461
  store i8 32, ptr %next.gep427.a, align 1
  br label %pred.store.continue463

pred.store.continue463:                           ; preds = %pred.store.if462, %pred.store.continue461
  %i.bi = extractelement <16 x i1> %i.be, i64 2
  br i1 %i.bi, label %pred.store.if464, label %pred.store.continue465

pred.store.if464:                                 ; preds = %pred.store.continue463
  store i8 32, ptr %next.gep428.a, align 1
  br label %pred.store.continue465

pred.store.continue465:                           ; preds = %pred.store.if464, %pred.store.continue463
  %i.bj = extractelement <16 x i1> %i.be, i64 3
  br i1 %i.bj, label %pred.store.if466, label %pred.store.continue467

pred.store.if466:                                 ; preds = %pred.store.continue465
  store i8 32, ptr %next.gep429.a, align 1
  br label %pred.store.continue467

pred.store.continue467:                           ; preds = %pred.store.if466, %pred.store.continue465
  %i.bk = extractelement <16 x i1> %i.be, i64 4
  br i1 %i.bk, label %pred.store.if468, label %pred.store.continue469

pred.store.if468:                                 ; preds = %pred.store.continue467
  store i8 32, ptr %next.gep430.a, align 1
  br label %pred.store.continue469

pred.store.continue469:                           ; preds = %pred.store.if468, %pred.store.continue467
  %i.bl = extractelement <16 x i1> %i.be, i64 5
  br i1 %i.bl, label %pred.store.if470, label %pred.store.continue471

pred.store.if470:                                 ; preds = %pred.store.continue469
  store i8 32, ptr %next.gep431.a, align 1
  br label %pred.store.continue471

pred.store.continue471:                           ; preds = %pred.store.if470, %pred.store.continue469
  %i.bm = extractelement <16 x i1> %i.be, i64 6
  br i1 %i.bm, label %pred.store.if472, label %pred.store.continue473
end_hunk_12
