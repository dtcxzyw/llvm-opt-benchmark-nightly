inline.NumInlined: 2498
inline.NumDeleted: 992
begin_hunk_0_@_ZN14arrow_vendored4dateL9init_tzdbEv:bb.a

_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
  %i.mj = load i64, ptr %i.ks, align 8, !tbaa !39, !noalias !245
  %i.mk = icmp eq i64 %i.mj, 0
  br i1 %i.mk, label %bb.dy, label %bb.ci

bb.ci:                                            ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.ml = load ptr, ptr %14, align 8, !tbaa !30, !noalias !245
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !31, !noalias !245
  %.not59.i = icmp eq i8 %i.mm, 35
  br i1 %.not59.i, label %bb.dy, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30, !noalias !245
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %15, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 8)
          to label %bb.ck unwind label %bb.dm, !noalias !245

bb.ck:                                            ; preds = %bb.cj
  %i.mn = load ptr, ptr %15, align 8, !tbaa !61, !noalias !245
  %i.mo = getelementptr i8, ptr %i.mn, i64 -24
  %i.mp = load i64, ptr %i.mo, align 8, !noalias !245
  %i.mq = getelementptr inbounds i8, ptr %15, i64 %i.mp ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 28
  store i32 5, ptr %i.mr, align 4, !tbaa !63, !noalias !245
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 32
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !72, !noalias !245
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.mq, i32 noundef %i.mt)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit.i unwind label %bb.dn, !noalias !245

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit.i: ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30, !noalias !245
  store ptr %i.ky, ptr %16, align 8, !tbaa !38, !noalias !245
  store i64 0, ptr %i.kz, align 8, !tbaa !39, !noalias !245
  store i8 0, ptr %i.ky, align 8, !tbaa !31, !noalias !245
  %i.mu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.cl unwind label %bb.do, !noalias !245 ; 0 uses

bb.cl:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit.i
  %.val.i = load ptr, ptr %16, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %.val70.i = load i64, ptr %i.kz, align 8, !tbaa !39, !noalias !245 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val70.i
  %i.mw = icmp samesign eq i64 %.val70.i, 0
  br i1 %i.mw, label %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i, label %.lr.ph.i.i

_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i: ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30, !noalias !245
  br label %bb.cm

.lr.ph.i.i:                                       ; preds = %bb.cl, %.lr.ph.i.i
  %.sroa.01.04.i.i = phi ptr [ %i.nb, %.lr.ph.i.i ], [ %.val.i, %bb.cl ] ; 3 uses
  %i.mx = load i8, ptr %.sroa.01.04.i.i, align 1, !tbaa !31, !noalias !245
  %i.my = sext i8 %i.mx to i32
  %i.mz = call i32 @tolower(i32 noundef %i.my) #33, !noalias !245
  %i.na = trunc i32 %i.mz to i8
  store i8 %i.na, ptr %.sroa.01.04.i.i, align 1, !tbaa !31, !noalias !245
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 1 ; 2 uses
  %i.nc = icmp eq ptr %i.nb, %i.mv
  br i1 %i.nc, label %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i

_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %.lr.ph.i.i
  %.val72.pre.i = load i64, ptr %i.kz, align 8, !tbaa !39, !noalias !245 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30, !noalias !245
  store ptr %i.la, ptr %17, align 8, !tbaa !38, !noalias !245
  store i32 1885431148, ptr %i.la, align 8, !noalias !245
  store i64 4, ptr %i.lb, align 8, !tbaa !39, !noalias !245
  store i8 0, ptr %i.lc, align 4, !tbaa !31, !noalias !245
  %i.nd = icmp eq i64 %.val72.pre.i, 0
  br i1 %i.nd, label %bb.cm, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %.val72.pre.i, i64 4)
  %.val71.i = load ptr, ptr %16, align 8, !noalias !245
  %bcmp.i.i = call i32 @bcmp(ptr readonly %.val71.i, ptr nonnull readonly %i.la, i64 %.sroa.speculated.i.i), !noalias !245
  %.not.i.i.i89 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not.i.i.i89, label %bb.cm, label %bb.dr

bb.cm:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30, !noalias !245
  %i.ne = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
          to label %bb.cn unwind label %bb.dp, !noalias !245 ; 0 uses

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30, !noalias !245
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.nf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt2wsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %.noexc103.i unwind label %bb.dp, !noalias !245 ; 0 uses

.noexc103.i:                                      ; preds = %bb.cn
  store ptr %i.ld, ptr %8, align 8, !tbaa !38, !alias.scope !256, !noalias !245
  store i64 0, ptr %i.le, align 8, !tbaa !39, !alias.scope !256, !noalias !245
  store i8 0, ptr %i.ld, align 8, !tbaa !31, !alias.scope !256, !noalias !245
  %i.ng = load ptr, ptr %15, align 8, !tbaa !61, !noalias !259
  %i.nh = getelementptr i8, ptr %i.ng, i64 -24
  %i.ni = load i64, ptr %i.nh, align 8, !noalias !245
  %i.nj = getelementptr inbounds i8, ptr %15, i64 %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 32
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !72, !noalias !259
  %i.nm = and i32 %i.nl, 2
  %.not67.i.i.i = icmp eq i32 %i.nm, 0
  br i1 %.not67.i.i.i, label %.lr.ph.i.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i"

.lr.ph.i.i.i:                                     ; preds = %.noexc103.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i
  %i.nn = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.co unwind label %bb.ct, !noalias !245

bb.co:                                            ; preds = %.lr.ph.i.i.i
  %i.no = call i32 @isalpha(i32 noundef %i.nn) #33, !noalias !245
  %.not.i.i101.i = icmp eq i32 %i.no, 0
  br i1 %.not.i.i101.i, label %_ZN14arrow_vendored4dateL14get_alpha_wordB5cxx11ERSi.exit.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.np = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.cq unwind label %bb.ct, !noalias !245

bb.cq:                                            ; preds = %bb.cp
  %i.nq = trunc i32 %i.np to i8
  %i.nr = load i64, ptr %i.le, align 8, !tbaa !39, !alias.scope !256, !noalias !245 ; 4 uses
  %i.ns = add i64 %i.nr, 1                        ; 3 uses
  %i.nt = load ptr, ptr %8, align 8, !tbaa !30, !alias.scope !256, !noalias !245 ; 2 uses
  %i.nu = icmp eq ptr %i.nt, %i.ld                ; 2 uses
  br i1 %i.nu, label %bb.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i102.i

bb.cr:                                            ; preds = %bb.cq
  %i.nv = icmp ult i64 %i.nr, 16
  call void @llvm.assume(i1 %i.nv)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i102.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i102.i: ; preds = %bb.cr, %bb.cq
  %i.nw = load i64, ptr %i.ld, align 8, !alias.scope !256, !noalias !245
  %i.nx = select i1 %i.nu, i64 15, i64 %i.nw
  %i.ny = icmp ugt i64 %i.ns, %i.nx
  br i1 %i.ny, label %bb.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i

bb.cs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i102.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.nr, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc.i.i.i unwind label %bb.ct, !noalias !245

.noexc.i.i.i:                                     ; preds = %bb.cs
  %.pre.i.i.i.i = load ptr, ptr %8, align 8, !tbaa !30, !alias.scope !256, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i: ; preds = %.noexc.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i102.i
  %i.nz = phi ptr [ %.pre.i.i.i.i, %.noexc.i.i.i ], [ %i.nt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i102.i ]
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.nr
  store i8 %i.nq, ptr %i.oa, align 1, !tbaa !31, !noalias !245
  store i64 %i.ns, ptr %i.le, align 8, !tbaa !39, !alias.scope !256, !noalias !245
  %i.ob = load ptr, ptr %8, align 8, !tbaa !30, !alias.scope !256, !noalias !245
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.ns
  store i8 0, ptr %i.oc, align 1, !tbaa !31, !noalias !245
  %i.od = load ptr, ptr %15, align 8, !tbaa !61, !noalias !259
  %i.oe = getelementptr i8, ptr %i.od, i64 -24
  %i.of = load i64, ptr %i.oe, align 8, !noalias !245
  %i.og = getelementptr inbounds i8, ptr %15, i64 %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 32
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !72, !noalias !259
  %i.oj = and i32 %i.oi, 2
  %.not6.i.i.i = icmp eq i32 %i.oj, 0
  br i1 %.not6.i.i.i, label %.lr.ph.i.i.i, label %_ZN14arrow_vendored4dateL14get_alpha_wordB5cxx11ERSi.exit.i.i

bb.ct:                                            ; preds = %bb.cs, %bb.cp, %.lr.ph.i.i.i
  %i.ok = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ol = load ptr, ptr %8, align 8, !tbaa !30, !alias.scope !256, !noalias !245 ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.ld
  br i1 %i.om, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92: ; preds = %bb.ct
  %i.on = load i64, ptr %i.ld, align 8, !tbaa !31, !alias.scope !256, !noalias !245
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ol, i64 noundef %i.oo) #28, !noalias !245
  br label %.body.i

_ZN14arrow_vendored4dateL14get_alpha_wordB5cxx11ERSi.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i, %bb.co
  %.val.pre.i.i = load ptr, ptr %8, align 8, !tbaa !30, !noalias !245 ; 3 uses
  %.val14.pre.i.i = load i64, ptr %i.le, align 8, !tbaa !39, !noalias !245 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.val.pre.i.i, i64 %.val14.pre.i.i
  %i.oq = icmp samesign eq i64 %.val14.pre.i.i, 0
  br i1 %i.oq, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %.lr.ph.i17.i.i

.lr.ph.i17.i.i:                                   ; preds = %_ZN14arrow_vendored4dateL14get_alpha_wordB5cxx11ERSi.exit.i.i, %.lr.ph.i17.i.i
  %.sroa.01.04.i.i.i = phi ptr [ %i.ov, %.lr.ph.i17.i.i ], [ %.val.pre.i.i, %_ZN14arrow_vendored4dateL14get_alpha_wordB5cxx11ERSi.exit.i.i ] ; 3 uses
  %i.or = load i8, ptr %.sroa.01.04.i.i.i, align 1, !tbaa !31, !noalias !245
  %i.os = sext i8 %i.or to i32
  %i.ot = call i32 @tolower(i32 noundef %i.os) #33, !noalias !245
  %i.ou = trunc i32 %i.ot to i8
  store i8 %i.ou, ptr %.sroa.01.04.i.i.i, align 1, !tbaa !31, !noalias !245
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i.i, i64 1 ; 2 uses
  %i.ow = icmp eq ptr %i.ov, %i.op
  br i1 %i.ow, label %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, label %.lr.ph.i17.i.i

_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i: ; preds = %.lr.ph.i17.i.i
  %.val15.pre.i.i = load ptr, ptr %8, align 8, !noalias !245 ; 25 uses
  %.val16.pre.i.i = load i64, ptr %i.le, align 8, !noalias !245 ; 8 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val16.pre.i.i, i64 7) ; 2 uses
  %i.ox = icmp eq i64 %.val16.pre.i.i, 0
  br i1 %i.ox, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr readonly getelementptr (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 16), i64 %.sroa.speculated.i.i.i.i.i.i.i.i), !noalias !245
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  %.sroa.speculated.i.i.i54.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val16.pre.i.i, i64 8) ; 3 uses
  %bcmp.i.i.i56.i.i.i.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr readonly getelementptr (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 48), i64 %.sroa.speculated.i.i.i54.i.i.i.i.i), !noalias !245
  %.not.i.i.i.i57.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i56.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i57.i.i.i.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.i.i
  %.sroa.speculated.i.i.i61.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val16.pre.i.i, i64 5) ; 2 uses
  %bcmp.i.i.i63.i.i.i.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr readonly getelementptr (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 80), i64 %.sroa.speculated.i.i.i61.i.i.i.i.i), !noalias !245
  %.not.i.i.i.i64.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i63.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i64.i.i.i.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i
  %bcmp.i.i.i70.i.i.i.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr readonly getelementptr (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 112), i64 %.sroa.speculated.i.i.i61.i.i.i.i.i), !noalias !245
  %.not.i.i.i.i71.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i70.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i71.i.i.i.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.1.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.1.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.i.i
  %.sroa.speculated.i.i.i.i.i.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val16.pre.i.i, i64 3)
  %bcmp.i.i.i.i.i.i.1.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr readonly getelementptr (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 144), i64 %.sroa.speculated.i.i.i.i.i.i.1.i.i), !noalias !245
  %.not.i.i.i.i.i.i.i.1.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.1.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.1.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.1.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.1.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.1.i.i
  %.sroa.speculated.i.i.i54.i.i.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val16.pre.i.i, i64 4) ; 2 uses
  %bcmp.i.i.i56.i.i.i.1.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr readonly getelementptr (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 176), i64 %.sroa.speculated.i.i.i54.i.i.i.1.i.i), !noalias !245
  %.not.i.i.i.i57.i.i.i.1.i.i = icmp eq i32 %bcmp.i.i.i56.i.i.i.1.i.i, 0
  br i1 %.not.i.i.i.i57.i.i.i.1.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.1.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.1.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.1.i.i
  %bcmp.i.i.i63.i.i.i.1.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr readonly getelementptr (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 208), i64 %.sroa.speculated.i.i.i54.i.i.i.1.i.i), !noalias !245
  %.not.i.i.i.i64.i.i.i.1.i.i = icmp eq i32 %bcmp.i.i.i63.i.i.i.1.i.i, 0
  br i1 %.not.i.i.i.i64.i.i.i.1.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.1.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.1.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.1.i.i
  %.sroa.speculated.i.i.i68.i.i.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val16.pre.i.i, i64 6)
  %bcmp.i.i.i70.i.i.i.1.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr readonly getelementptr (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 240), i64 %.sroa.speculated.i.i.i68.i.i.i.1.i.i), !noalias !245
  %.not.i.i.i.i71.i.i.i.1.i.i = icmp eq i32 %bcmp.i.i.i70.i.i.i.1.i.i, 0
  br i1 %.not.i.i.i.i71.i.i.i.1.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.2.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.2.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.1.i.i
  %.sroa.speculated.i.i.i.i.i.i.2.i.i = call i64 @llvm.umin.i64(i64 %.val16.pre.i.i, i64 9)
  %bcmp.i.i.i.i.i.i.2.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr readonly getelementptr (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 272), i64 %.sroa.speculated.i.i.i.i.i.i.2.i.i), !noalias !245
  %.not.i.i.i.i.i.i.i.2.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.2.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.2.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.2.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.2.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.2.i.i
  %bcmp.i.i.i56.i.i.i.2.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr readonly getelementptr (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 304), i64 %.sroa.speculated.i.i.i.i.i.i.i.i), !noalias !245
  %.not.i.i.i.i57.i.i.i.2.i.i = icmp eq i32 %bcmp.i.i.i56.i.i.i.2.i.i, 0
  br i1 %.not.i.i.i.i57.i.i.i.2.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.2.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.2.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.2.i.i
  %bcmp.i.i.i63.i.i.i.2.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr readonly getelementptr (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 336), i64 %.sroa.speculated.i.i.i54.i.i.i.i.i), !noalias !245
  %.not.i.i.i.i64.i.i.i.2.i.i = icmp eq i32 %bcmp.i.i.i63.i.i.i.2.i.i, 0
  br i1 %.not.i.i.i.i64.i.i.i.2.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.2.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.2.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.2.i.i
  %bcmp.i.i.i70.i.i.i.2.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr readonly getelementptr (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 368), i64 %.sroa.speculated.i.i.i54.i.i.i.i.i), !noalias !245
  %.not.i.i.i.i71.i.i.i.2.i.i = icmp eq i32 %bcmp.i.i.i70.i.i.i.2.i.i, 0
  %spec.select.i.i = select i1 %.not.i.i.i.i71.i.i.i.2.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 352), ptr getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 384)
  br label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i"

"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.2.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.2.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.2.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.2.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.1.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.1.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.1.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.1.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, %_ZN14arrow_vendored4dateL14get_alpha_wordB5cxx11ERSi.exit.i.i, %.noexc103.i
  %.val1543.i.i = phi ptr [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.2.i.i ], [ %.val15.pre.i.i, %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.1.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.2.i.i ], [ %i.ld, %.noexc103.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.1.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.1.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.2.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.1.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.2.i.i ], [ %.val.pre.i.i, %_ZN14arrow_vendored4dateL14get_alpha_wordB5cxx11ERSi.exit.i.i ] ; 2 uses
  %.028.i.i.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 32), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 256), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.2.i.i ], [ @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 96), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 192), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.1.i.i ], [ @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 64), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 288), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.2.i.i ], [ @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, %.noexc103.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 224), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.1.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 128), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.1.i.i ], [ %spec.select.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.2.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 160), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.1.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 320), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.2.i.i ], [ @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, %_ZN14arrow_vendored4dateL14get_alpha_wordB5cxx11ERSi.exit.i.i ]
  %i.oy = ptrtoint ptr %.028.i.i.i.i.i to i64
  %i.oz = sub i64 %i.oy, ptrtoint (ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11 to i64) ; 2 uses
  %.not.i100.i = icmp slt i64 %i.oz, 384
  br i1 %.not.i100.i, label %bb.cz, label %bb.cu

bb.cu:                                            ; preds = %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i"
  %i.pa = call ptr @__cxa_allocate_exception(i64 16) #30, !noalias !245 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !245
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str.43, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.cv unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i, !noalias !245

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.pa, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.cw unwind label %bb.cx, !noalias !245

bb.cw:                                            ; preds = %bb.cv
  invoke void @__cxa_throw(ptr nonnull %i.pa, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #31
          to label %bb.db unwind label %bb.cx, !noalias !245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.cu
  %i.pb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !245
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.0.i.i = phi i1 [ false, %bb.cw ], [ true, %bb.cv ] ; 2 uses
  %i.pc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.pd = load ptr, ptr %9, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.pf = icmp eq ptr %i.pd, %i.pe
  br i1 %i.pf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.cx
  %i.pg = load i64, ptr %i.pe, align 8, !tbaa !31, !noalias !245
  %i.ph = add i64 %i.pg, 1
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef %i.ph) #28, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !245
  br i1 %.0.i.i, label %bb.cy, label %bb.da

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !245
  br i1 %.0.i.i, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn26.i.i = phi { ptr, i32 } [ %i.pb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.pc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.pc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.pa) #30, !noalias !245
  br label %bb.da

bb.cz:                                            ; preds = %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i"
  %i.pi = icmp eq ptr %.val1543.i.i, %i.ld
  br i1 %i.pi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i: ; preds = %bb.cz
  %i.pj = load i64, ptr %i.ld, align 8, !tbaa !31, !noalias !245
  %i.pk = add i64 %i.pj, 1
  call void @_ZdlPvm(ptr noundef %.val1543.i.i, i64 noundef %i.pk) #28, !noalias !245
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i.i

bb.da:                                            ; preds = %bb.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.pc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn26.i.i, %bb.cy ], [ %i.pc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  %i.pl = load ptr, ptr %8, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.pm = icmp eq ptr %i.pl, %i.ld
  br i1 %i.pm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i: ; preds = %bb.da
  %i.pn = load i64, ptr %i.ld, align 8, !tbaa !31, !noalias !245
  %i.po = add i64 %i.pn, 1
  call void @_ZdlPvm(ptr noundef %i.pl, i64 noundef %i.po) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !245
  br label %.body.i

bb.db:                                            ; preds = %bb.cw
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i.i: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !245
  %i.pp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %bb.dc unwind label %bb.dp, !noalias !245 ; 0 uses

bb.dc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i.i
  %i.pq = trunc i64 %i.oz to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30, !noalias !245
  %i.pr = load i32, ptr %i.h, align 4, !tbaa !3, !noalias !245
  %i.ps = shl i32 %i.pq, 11
  %i.pt = load i32, ptr %i.i, align 4, !tbaa !3, !noalias !245
  %.sroa.0320.2.extract.shift328.i = add i32 %i.ps, 65536
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.0320.2.extract.shift328.i, 16 ; 2 uses
  %.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.5.0.extract.shift.i to i8 ; 2 uses
  %sext.i = shl i32 %i.pr, 16
  %i.pu = ashr exact i32 %sext.i, 16
  %i.pv = icmp ult i8 %.sroa.5.0.extract.trunc.i, 3
  %.neg.i.i.i = sext i1 %i.pv to i32
  %i.pw = add nsw i32 %i.pu, %.neg.i.i.i          ; 4 uses
  %i.px = and i32 %.sroa.5.0.extract.shift.i, 255
  %i.py = and i32 %i.pt, 255
  %i.pz = add nsw i32 %i.pw, -399
  %i.qa = icmp slt i32 %i.pw, 0
  %i.qb = select i1 %i.qa, i32 %i.pz, i32 %i.pw
  %i.qc = sdiv i32 %i.qb, 400                     ; 2 uses
  %.neg15.i.i.i = mul nsw i32 %i.qc, -400
  %i.qd = add nsw i32 %.neg15.i.i.i, %i.pw        ; 3 uses
  %i.qe = icmp ugt i8 %.sroa.5.0.extract.trunc.i, 2
  %.v.i.i.i = select i1 %i.qe, i32 -3, i32 9
  %i.qf = add nsw i32 %.v.i.i.i, %i.px
  %i.qg = mul nsw i32 %i.qf, 153
  %i.qh = add nsw i32 %i.qg, 2
  %i.qi = udiv i32 %i.qh, 5
  %i.qj = mul nsw i32 %i.qd, 365
  %i.qk = lshr i32 %i.qd, 2
  %i.ql = udiv i32 %i.qd, 100
  %i.qm = mul nsw i32 %i.qc, 146097
  %i.qn = add nsw i32 %i.qi, -719468
  %i.qo = add nsw i32 %i.qn, %i.py
  %i.qp = add nsw i32 %i.qo, %i.qm
  %i.qq = add nsw i32 %i.qp, %i.qk
  %i.qr = add nsw i32 %i.qq, %i.qj
  %i.qs = sub nsw i32 %i.qr, %i.ql
  %i.qt = sext i32 %i.qs to i64
  %i.qu = mul nsw i64 %i.qt, 86400
  store i64 %i.qu, ptr %19, align 8, !tbaa !78, !noalias !245
  invoke void @_ZN14arrow_vendored4date11leap_secondC1ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.dd unwind label %.loopexit329.i, !noalias !245

bb.dd:                                            ; preds = %bb.dc
  %.not.i.i107.i = icmp eq ptr %i.lv, %i.lu
  br i1 %.not.i.i107.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.qv = load i64, ptr %18, align 8, !tbaa !75, !noalias !245
  store i64 %i.qv, ptr %i.lv, align 8, !tbaa !75, !noalias !245
  %i.qw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8 ; 2 uses
  store ptr %i.qw, ptr %i.lf, align 8, !tbaa !260, !alias.scope !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i

bb.df:                                            ; preds = %bb.dd
  %i.qx = ptrtoint ptr %i.lu to i64               ; 2 uses
  %i.qy = ptrtoint ptr %i.lt to i64               ; 3 uses
  %i.qz = sub i64 %i.qx, %i.qy                    ; 4 uses
  %i.ra = icmp eq i64 %i.qz, 9223372036854775800
  br i1 %i.ra, label %bb.dg, label %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
          to label %.noexc108.i unwind label %.loopexit.split-lp330.i, !noalias !245

.noexc108.i:                                      ; preds = %bb.dg
  unreachable

_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.df
  %i.rb = ashr exact i64 %i.qz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.rb, i64 1)
  %i.rc = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.rb ; 2 uses
  %i.rd = icmp ult i64 %i.rc, %i.rb
  %i.re = call i64 @llvm.umin.i64(i64 %i.rc, i64 1152921504606846975)
  %i.rf = select i1 %i.rd, i64 1152921504606846975, i64 %i.re ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.rf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.rg = shl nuw nsw i64 %i.rf, 3
  %i.rh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rg) #32
          to label %.noexc109.i unwind label %.loopexit329.i, !noalias !245 ; 9 uses

.noexc109.i:                                      ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 %i.qz
  %i.rj = load i64, ptr %18, align 8, !tbaa !75, !noalias !245
  store i64 %i.rj, ptr %i.ri, align 8, !tbaa !75, !noalias !245
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.lt, %i.lu
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc109.i
  %i.rk = ptrtoaddr ptr %i.rh to i64
  %i.rl = add i64 %i.qx, -8
  %i.rm = sub i64 %i.rl, %i.qy                    ; 2 uses
  %i.rn = lshr i64 %i.rm, 3
  %i.ro = add nuw nsw i64 %i.rn, 1                ; 2 uses
  %min.iters.check499 = icmp ult i64 %i.rm, 24
  %i.rp = sub i64 %i.rk, %i.qy
  %diff.check497 = icmp ult i64 %i.rp, 32
  %or.cond = or i1 %min.iters.check499, %diff.check497
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader515, label %vector.ph500

vector.ph500:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec502 = and i64 %i.ro, 4611686018427387900  ; 3 uses
  %i.rq = shl i64 %n.vec502, 3                    ; 2 uses
  %i.rr = getelementptr i8, ptr %i.rh, i64 %i.rq  ; 2 uses
  %i.rs = getelementptr i8, ptr %i.lt, i64 %i.rq
  br label %vector.body503

end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored4dateL9init_tzdbEv:bb.a
.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader515, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.rz, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader515 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ry, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader515 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.rx = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !75, !alias.scope !264, !noalias !266
  store i64 %i.rx, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !75, !alias.scope !261, !noalias !267
  %i.ry = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ry, %i.lu
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !271

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block510, %.noexc109.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.rh, %.noexc109.i ], [ %i.rr, %middle.block510 ], [ %i.rz, %.lr.ph.i.i.i.i.i.i.i ]
  %i.sa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.lt, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lt, i64 noundef %i.qz) #28, !noalias !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.dh, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  store ptr %i.rh, ptr %41, align 16, !tbaa !25, !alias.scope !245
  store ptr %i.sa, ptr %i.lf, align 8, !tbaa !260, !alias.scope !245
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.rh, i64 %i.rf ; 2 uses
  store ptr %i.sb, ptr %i.lg, align 16, !tbaa !26, !alias.scope !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.de
  %i.sc = phi ptr [ %i.rh, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.lt, %bb.de ]
  %i.sd = phi ptr [ %i.sb, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.lu, %bb.de ]
  %i.se = phi ptr [ %i.sa, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.qw, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30, !noalias !245
  br label %bb.du

bb.di:                                            ; preds = %bb.bt
  %i.sf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i

bb.dj:                                            ; preds = %bb.bz, %bb.bw
  %i.sg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i

bb.dk:                                            ; preds = %bb.cb
  %i.sh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.si = load ptr, ptr %11, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.sj = icmp eq ptr %i.si, %i.jp
  br i1 %i.sj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110.i: ; preds = %bb.dk
  %i.sk = load i64, ptr %i.jp, align 8, !tbaa !31, !noalias !245
  %i.sl = add i64 %i.sk, 1
  call void @_ZdlPvm(ptr noundef %i.si, i64 noundef %i.sl) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110.i, %bb.dj
  %.pn.i = phi { ptr, i32 } [ %i.sg, %bb.dj ], [ %i.sh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110.i ], [ %i.sh, %bb.dk ] ; 2 uses
  %i.sm = load ptr, ptr %12, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.sn = icmp eq ptr %i.sm, %i.is
  br i1 %i.sn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i
  %i.so = load i64, ptr %i.is, align 8, !tbaa !31, !noalias !245
  %i.sp = add i64 %i.so, 1
  call void @_ZdlPvm(ptr noundef %i.sm, i64 noundef %i.sp) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i, %bb.di
  %.pn.pn.i = phi { ptr, i32 } [ %i.sf, %bb.di ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i ]
  %i.sq = load ptr, ptr %13, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.sr = icmp eq ptr %i.sq, %i.im
  br i1 %i.sr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i
  %i.ss = load i64, ptr %i.im, align 8, !tbaa !31, !noalias !245
  %i.st = add i64 %i.ss, 1
  call void @_ZdlPvm(ptr noundef %i.sq, i64 noundef %i.st) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30, !noalias !245
  br label %bb.hk

bb.dl:                                            ; preds = %.noexc147, %.noexc146, %.noexc145, %.noexc144, %.noexc143, %.noexc142, %.noexc141, %.noexc140, %bb.hf, %.noexc138, %bb.he, %.noexc136, %.noexc135, %.noexc134, %.noexc133, %.noexc132, %.noexc131, %.noexc130, %.noexc129, %.noexc128, %.noexc127, %.noexc126, %.invoke.i, %bb.gn, %bb.ft, %bb.eb
  %i.su = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i

.loopexit.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i, %.noexc90.i, %bb.ch
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.loopexit.split-lp.i:                             ; preds = %bb.cf
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dm:                                            ; preds = %bb.cj
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dn:                                            ; preds = %bb.ck
  %i.sw = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.do:                                            ; preds = %bb.dt, %bb.ds, %bb.dr, %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit.i
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.dp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i.i, %bb.cn, %bb.cm
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit329.i:                                   ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.dc
  %lpad.loopexit331.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

.loopexit.split-lp330.i:                          ; preds = %bb.dg
  %lpad.loopexit.split-lp332.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dq:                                            ; preds = %.loopexit.split-lp330.i, %.loopexit329.i
  %lpad.phi333.i = phi { ptr, i32 } [ %lpad.loopexit331.i, %.loopexit329.i ], [ %lpad.loopexit.split-lp332.i, %.loopexit.split-lp330.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30, !noalias !245
  br label %.body.i

.body.i:                                          ; preds = %bb.ct, %bb.dq, %bb.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92
  %.pn62.i = phi { ptr, i32 } [ %lpad.phi333.i, %bb.dq ], [ %i.sy, %bb.dp ], [ %.pn.pn.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i ], [ %i.ok, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92 ], [ %i.ok, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30, !noalias !245
  br label %bb.dv

bb.dr:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30, !noalias !245
  %i.sz = load ptr, ptr %14, align 8, !tbaa !30, !noalias !245
  %i.ta = load i64, ptr %i.ks, align 8, !tbaa !39, !noalias !245
  %i.tb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.sz, i64 noundef %i.ta)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.do, !noalias !245 ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !245
  store i8 10, ptr %i.g, align 1, !tbaa !31, !noalias !245
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !61, !noalias !245
  %i.td = getelementptr i8, ptr %i.tc, i64 -24
  %i.te = load i64, ptr %i.td, align 8, !noalias !245
  %i.tf = getelementptr inbounds i8, ptr %i.tb, i64 %i.te
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 16
  %i.th = load i64, ptr %i.tg, align 8, !tbaa !158, !noalias !245
  %.not.i123.i = icmp eq i64 %i.th, 0
  br i1 %.not.i123.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.ti = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.tb, ptr noundef nonnull %i.g, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i unwind label %bb.do, !noalias !245 ; 0 uses

bb.dt:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.tj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.tb, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i unwind label %bb.do, !noalias !245 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i: ; preds = %bb.dt, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !245
  br label %bb.du

bb.du:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i
  %i.tk = phi ptr [ %i.lt, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i ], [ %i.sc, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i ]
  %i.tl = phi ptr [ %i.lu, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i ], [ %i.sd, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i ]
  %i.tm = phi ptr [ %i.lv, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i ], [ %i.se, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i ]
  %i.tn = load ptr, ptr %16, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.to = icmp eq ptr %i.tn, %i.ky
  br i1 %i.to, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.i: ; preds = %bb.du
  %i.tp = load i64, ptr %i.ky, align 8, !tbaa !31, !noalias !245
  %i.tq = add i64 %i.tp, 1
  call void @_ZdlPvm(ptr noundef %i.tn, i64 noundef %i.tq) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30, !noalias !245
  store ptr %i.lh, ptr %15, align 8, !tbaa !61, !noalias !245
  %i.tr = load i64, ptr %i.lj, align 8, !noalias !245
  %i.ts = getelementptr inbounds i8, ptr %15, i64 %i.tr
  store ptr %i.li, ptr %i.ts, align 8, !tbaa !61, !noalias !245
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i32 0, i32 0, i32 2), ptr %i.lk, align 8, !tbaa !61, !noalias !245
  %i.tt = load ptr, ptr %i.ll, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.tu = icmp eq ptr %i.tt, %i.lm
  br i1 %i.tu, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i
  %i.tv = load i64, ptr %i.lm, align 8, !tbaa !31, !noalias !245
  %i.tw = add i64 %i.tv, 1
  call void @_ZdlPvm(ptr noundef %i.tt, i64 noundef %i.tw) #28, !noalias !245
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i90
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i32 0, i32 0, i32 2), ptr %i.lk, align 8, !tbaa !61, !noalias !245
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ln) #30, !noalias !245
  store ptr %i.lo, ptr %15, align 8, !tbaa !61, !noalias !245
  %i.tx = load i64, ptr %i.lq, align 8, !noalias !245
  %i.ty = getelementptr inbounds i8, ptr %15, i64 %i.tx
  store ptr %i.lp, ptr %i.ty, align 8, !tbaa !61, !noalias !245
  store i64 0, ptr %i.lr, align 8, !tbaa !272, !noalias !245
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ls) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30, !noalias !245
  br label %bb.dy

bb.dv:                                            ; preds = %.body.i, %bb.do
  %.pn62.pn.i = phi { ptr, i32 } [ %.pn62.i, %.body.i ], [ %i.sx, %bb.do ]
  %i.tz = load ptr, ptr %16, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.ua = icmp eq ptr %i.tz, %i.ky
  br i1 %i.ua, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i: ; preds = %bb.dv
  %i.ub = load i64, ptr %i.ky, align 8, !tbaa !31, !noalias !245
  %i.uc = add i64 %i.ub, 1
  call void @_ZdlPvm(ptr noundef %i.tz, i64 noundef %i.uc) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30, !noalias !245
  br label %bb.dw

bb.dw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i, %bb.dn
  %.pn62.pn.pn.i = phi { ptr, i32 } [ %.pn62.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i ], [ %i.sw, %bb.dn ]
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %15) #30, !noalias !245
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dm
  %.pn62.pn.pn.pn.i = phi { ptr, i32 } [ %.pn62.pn.pn.i, %bb.dw ], [ %i.sv, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30, !noalias !245
  br label %bb.dz

bb.dy:                                            ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i, %bb.ci, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.ud = phi ptr [ %i.tk, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i ], [ %i.lt, %bb.ci ], [ %i.lt, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i ]
  %i.ue = phi ptr [ %i.tl, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i ], [ %i.lu, %bb.ci ], [ %i.lu, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i ]
  %i.uf = phi ptr [ %i.tm, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i ], [ %i.lv, %bb.ci ], [ %i.lv, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i ]
  %i.ug = load ptr, ptr %10, align 8, !tbaa !61, !noalias !245
  %i.uh = getelementptr i8, ptr %i.ug, i64 -24
  %i.ui = load i64, ptr %i.uh, align 8, !noalias !245 ; 2 uses
  %i.uj = getelementptr inbounds i8, ptr %10, i64 %i.ui
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 32
  %i.ul = load i32, ptr %i.uk, align 8, !tbaa !72, !noalias !245
  %i.um = and i32 %i.ul, 5
  %.not.i87.i = icmp eq i32 %i.um, 0
  br i1 %.not.i87.i, label %bb.ce, label %._crit_edge369.i, !llvm.loop !274

._crit_edge369.i:                                 ; preds = %bb.dy
  %.pre372.i = load ptr, ptr %14, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.un = icmp eq ptr %.pre372.i, %i.kr
  br i1 %i.un, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i: ; preds = %._crit_edge369.i
  %i.uo = load i64, ptr %i.kr, align 8, !tbaa !31, !noalias !245
  %i.up = add i64 %i.uo, 1
  call void @_ZdlPvm(ptr noundef %.pre372.i, i64 noundef %i.up) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i: ; preds = %bb.cd, %._crit_edge369.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30, !noalias !245
  br label %bb.hl

bb.dz:                                            ; preds = %bb.dx, %.loopexit.split-lp.i, %.loopexit.i
  %.pn62.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn62.pn.pn.pn.i, %bb.dx ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.uq = load ptr, ptr %14, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.ur = icmp eq ptr %i.uq, %i.kr
  br i1 %i.ur, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136.i: ; preds = %bb.dz
  %i.us = load i64, ptr %i.kr, align 8, !tbaa !31, !noalias !245
  %i.ut = add i64 %i.us, 1
  call void @_ZdlPvm(ptr noundef %i.uq, i64 noundef %i.ut) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.i: ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30, !noalias !245
  %i.uu = load ptr, ptr %41, align 16, !tbaa !25, !alias.scope !245 ; 3 uses
  %.not.i.i.i139.i = icmp eq ptr %i.uu, null
  br i1 %.not.i.i.i139.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i, label %bb.ea

bb.ea:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.i
  %i.uv = load ptr, ptr %i.lg, align 16, !tbaa !26, !alias.scope !245
  %i.uw = ptrtoint ptr %i.uv to i64
  %i.ux = ptrtoint ptr %i.uu to i64
  %i.uy = sub i64 %i.uw, %i.ux
  call void @_ZdlPvm(ptr noundef nonnull %i.uu, i64 noundef %i.uy) #28, !noalias !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i

bb.eb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i84.i
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.kn, i32 noundef 0)
          to label %bb.ec unwind label %bb.dl, !noalias !245

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30, !noalias !245
  %i.uz = load atomic i8, ptr @_ZGVZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11 acquire, align 8, !noalias !245
  %i.va = icmp eq i8 %i.uz, 0
  br i1 %i.va, label %bb.ed, label %bb.eh, !prof !36

bb.ed:                                            ; preds = %bb.ec
  %i.vb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11) #30, !noalias !245
  %.not.i140.i = icmp eq i32 %i.vb, 0
  br i1 %.not.i140.i, label %bb.eh, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  invoke fastcc void @_ZN14arrow_vendored4dateL15discover_tz_dirB5cxx11Ev()
          to label %bb.ef unwind label %bb.eg, !noalias !245

bb.ef:                                            ; preds = %bb.ee
  %i.vc = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11, ptr nonnull @__dso_handle) #30, !noalias !245 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11) #30, !noalias !245
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ee
  %i.vd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11) #30, !noalias !245
  br label %.body141.i

bb.eh:                                            ; preds = %bb.ef, %bb.ed, %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30, !noalias !245
  %i.ve = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.ve, ptr %22, align 8, !tbaa !38, !noalias !245
  store i8 47, ptr %i.ve, align 8, !tbaa !31, !noalias !245
  %i.vf = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 1, ptr %i.vf, align 8, !tbaa !39, !noalias !245
  %i.vg = getelementptr inbounds nuw i8, ptr %22, i64 17
  store i8 0, ptr %i.vg, align 1, !tbaa !31, !noalias !245
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.vh = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11, i64 8), align 8, !tbaa !39, !noalias !278
  %i.vi = load ptr, ptr @_ZZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11, align 8, !tbaa !30, !noalias !278
  %i.vj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef 0, i64 noundef 0, ptr noundef %i.vi, i64 noundef %i.vh)
          to label %.noexc147.i unwind label %bb.fa, !noalias !245 ; 6 uses

.noexc147.i:                                      ; preds = %bb.eh
  %i.vk = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 14 uses
  store ptr %i.vk, ptr %21, align 8, !tbaa !38, !alias.scope !275, !noalias !245
  %i.vl = load ptr, ptr %i.vj, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vj, i64 16 ; 5 uses
  %i.vn = icmp eq ptr %i.vl, %i.vm
  br i1 %i.vn, label %bb.ei, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.i

bb.ei:                                            ; preds = %.noexc147.i
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !39, !noalias !245 ; 3 uses
  %i.vq = icmp ult i64 %i.vp, 16
  call void @llvm.assume(i1 %i.vq)
  %i.vr = add nuw nsw i64 %i.vp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.vk, ptr noundef nonnull align 8 dereferenceable(1) %i.vm, i64 %i.vr, i1 false), !noalias !245
  br label %bb.ej

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.i: ; preds = %.noexc147.i
  store ptr %i.vl, ptr %21, align 8, !tbaa !30, !alias.scope !275, !noalias !245
  %i.vs = load i64, ptr %i.vm, align 8, !tbaa !31, !noalias !245
  store i64 %i.vs, ptr %i.vk, align 8, !tbaa !31, !alias.scope !275, !noalias !245
  %.phi.trans.insert.i145.i = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %.pre.i146.i = load i64, ptr %.phi.trans.insert.i145.i, align 8, !tbaa !39, !noalias !245
  br label %bb.ej

bb.ej:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.i, %bb.ei
  %i.vt = phi i64 [ %i.vp, %bb.ei ], [ %.pre.i146.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.i ]
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %i.vv = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 6 uses
  store i64 %i.vt, ptr %i.vv, align 8, !tbaa !39, !alias.scope !275, !noalias !245
  store ptr %i.vm, ptr %i.vj, align 8, !tbaa !30, !noalias !245
  store i64 0, ptr %i.vu, align 8, !tbaa !39, !noalias !245
  store i8 0, ptr %i.vm, align 8, !tbaa !31, !noalias !245
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.vw = load i64, ptr %i.vv, align 8, !tbaa !39, !noalias !282 ; 5 uses
  %i.vx = icmp sgt i64 %i.vw, 9223372036854775790
  br i1 %i.vx, label %bb.ek, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i149.i

bb.ek:                                            ; preds = %bb.ej
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #31
          to label %.noexc157.i unwind label %bb.fb, !noalias !245

.noexc157.i:                                      ; preds = %bb.ek
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i149.i: ; preds = %bb.ej
  %i.vy = add nsw i64 %i.vw, 17                   ; 3 uses
  %i.vz = load ptr, ptr %21, align 8, !tbaa !30, !noalias !282 ; 2 uses
  %i.wa = icmp eq ptr %i.vz, %i.vk                ; 2 uses
  br i1 %i.wa, label %bb.el, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i150.i

bb.el:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i149.i
  %i.wb = icmp ult i64 %i.vw, 16
  call void @llvm.assume(i1 %i.wb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i150.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i150.i: ; preds = %bb.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i149.i
  %i.wc = load i64, ptr %i.vk, align 8, !noalias !282
  %i.wd = select i1 %i.wa, i64 15, i64 %i.wc
  %.not.i.i.i151.i = icmp ugt i64 %i.vy, %i.wd
  br i1 %.not.i.i.i151.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i150.i
end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored4dateL9init_tzdbEv:bb.a
  %i.zz = icmp eq ptr %i.zy, %i.vk
  br i1 %i.zz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i
  %i.aaa = load i64, ptr %i.vk, align 8, !tbaa !31, !noalias !245
  %i.aab = add i64 %i.aaa, 1
  call void @_ZdlPvm(ptr noundef %i.zy, i64 noundef %i.aab) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i, %bb.fa
  %.pn39.pn.i = phi { ptr, i32 } [ %i.zr, %bb.fa ], [ %.pn39.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i ], [ %.pn39.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i ]
  %i.aac = load ptr, ptr %22, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.aad = icmp eq ptr %i.aac, %i.ve
  br i1 %i.aad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i
  %i.aae = load i64, ptr %i.ve, align 8, !tbaa !31, !noalias !245
  %i.aaf = add i64 %i.aae, 1
  call void @_ZdlPvm(ptr noundef %i.aac, i64 noundef %i.aaf) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30, !noalias !245
  br label %.body141.i

.body141.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i, %bb.eg
  %.pn39.pn.pn.pn.i = phi { ptr, i32 } [ %.pn39.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i ], [ %i.vd, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30, !noalias !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i

.loopexit334.i:                                   ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i177.i, %.noexc180.i, %bb.ew
  %lpad.loopexit336.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

.loopexit.split-lp335.i:                          ; preds = %bb.eu
  %lpad.loopexit.split-lp337.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fd:                                            ; preds = %bb.ey
  %i.aag = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.fe:                                            ; preds = %bb.ez
  %i.aah = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.ff:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit185.i
  %i.aai = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.fg:                                            ; preds = %_ZNSirsERl.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30, !noalias !245
  %i.aaj = add i64 %i.zq, -2208988800
  store i64 %i.aaj, ptr %26, align 8, !noalias !245
  invoke void @_ZN14arrow_vendored4date11leap_secondC1ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.fh unwind label %.loopexit339.i, !noalias !245

bb.fh:                                            ; preds = %bb.fg
  %.not.i.i198.i = icmp eq ptr %i.yq, %i.yp
  br i1 %.not.i.i198.i, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.aak = load i64, ptr %25, align 8, !tbaa !75, !noalias !245
  store i64 %i.aak, ptr %i.yq, align 8, !tbaa !75, !noalias !245
  %i.aal = getelementptr inbounds nuw i8, ptr %i.yq, i64 8 ; 2 uses
  store ptr %i.aal, ptr %i.ya, align 8, !tbaa !260, !alias.scope !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit213.i

bb.fj:                                            ; preds = %bb.fh
  %i.aam = ptrtoint ptr %i.yp to i64              ; 2 uses
  %i.aan = ptrtoint ptr %i.yo to i64              ; 3 uses
  %i.aao = sub i64 %i.aam, %i.aan                 ; 4 uses
  %i.aap = icmp eq i64 %i.aao, 9223372036854775800
  br i1 %i.aap, label %bb.fk, label %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i199.i

bb.fk:                                            ; preds = %bb.fj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
          to label %.noexc211.i unwind label %.loopexit.split-lp340.i, !noalias !245

.noexc211.i:                                      ; preds = %bb.fk
  unreachable

_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i199.i: ; preds = %bb.fj
  %i.aaq = ashr exact i64 %i.aao, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i200.i = call i64 @llvm.umax.i64(i64 %i.aaq, i64 1)
  %i.aar = add nsw i64 %.sroa.speculated.i.i.i.i200.i, %i.aaq ; 2 uses
  %i.aas = icmp ult i64 %i.aar, %i.aaq
  %i.aat = call i64 @llvm.umin.i64(i64 %i.aar, i64 1152921504606846975)
  %i.aau = select i1 %i.aas, i64 1152921504606846975, i64 %i.aat ; 3 uses
  %.not.i.i.i.i201.i = icmp ne i64 %i.aau, 0
  call void @llvm.assume(i1 %.not.i.i.i.i201.i)
  %i.aav = shl nuw nsw i64 %i.aau, 3
  %i.aaw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aav) #32
          to label %.noexc212.i unwind label %.loopexit339.i, !noalias !245 ; 9 uses

.noexc212.i:                                      ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i199.i
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 %i.aao
  %i.aay = load i64, ptr %25, align 8, !tbaa !75, !noalias !245
  store i64 %i.aay, ptr %i.aax, align 8, !tbaa !75, !noalias !245
  %.not10.i.i.i.i.i.i202.i = icmp eq ptr %i.yo, %i.yp
  br i1 %.not10.i.i.i.i.i.i202.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i207.i, label %.lr.ph.i.i.i.i.i.i203.i.preheader

.lr.ph.i.i.i.i.i.i203.i.preheader:                ; preds = %.noexc212.i
  %i.aaz = ptrtoaddr ptr %i.aaw to i64
  %i.aba = add i64 %i.aam, -8
  %i.abb = sub i64 %i.aba, %i.aan                 ; 2 uses
  %i.abc = lshr i64 %i.abb, 3
  %i.abd = add nuw nsw i64 %i.abc, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.abb, 24
  %i.abe = sub i64 %i.aaz, %i.aan
  %diff.check = icmp ult i64 %i.abe, 32
  %or.cond514 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond514, label %.lr.ph.i.i.i.i.i.i203.i.preheader516, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i203.i.preheader
  %n.vec = and i64 %i.abd, 4611686018427387900    ; 3 uses
  %i.abf = shl i64 %n.vec, 3                      ; 2 uses
  %i.abg = getelementptr i8, ptr %i.aaw, i64 %i.abf ; 2 uses
  %i.abh = getelementptr i8, ptr %i.yo, i64 %i.abf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.abi = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aaw, i64 %i.abi ; 2 uses
  %next.gep493 = getelementptr i8, ptr %i.yo, i64 %i.abi ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.abj = getelementptr i8, ptr %next.gep493, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep493, align 8, !tbaa !75, !alias.scope !287, !noalias !289
  %wide.load494 = load <2 x i64>, ptr %i.abj, align 8, !tbaa !75, !alias.scope !287, !noalias !289
  %i.abk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !75, !alias.scope !284, !noalias !290
  store <2 x i64> %wide.load494, ptr %i.abk, align 8, !tbaa !75, !alias.scope !284, !noalias !290
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.abl = icmp eq i64 %index.next, %n.vec
  br i1 %i.abl, label %middle.block, label %vector.body, !llvm.loop !291

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i207.i, label %.lr.ph.i.i.i.i.i.i203.i.preheader516

.lr.ph.i.i.i.i.i.i203.i.preheader516:             ; preds = %.lr.ph.i.i.i.i.i.i203.i.preheader, %middle.block
  %.012.i.i.i.i.i.i204.i.ph = phi ptr [ %i.aaw, %.lr.ph.i.i.i.i.i.i203.i.preheader ], [ %i.abg, %middle.block ]
  %.0911.i.i.i.i.i.i205.i.ph = phi ptr [ %i.yo, %.lr.ph.i.i.i.i.i.i203.i.preheader ], [ %i.abh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i203.i

.lr.ph.i.i.i.i.i.i203.i:                          ; preds = %.lr.ph.i.i.i.i.i.i203.i.preheader516, %.lr.ph.i.i.i.i.i.i203.i
  %.012.i.i.i.i.i.i204.i = phi ptr [ %i.abo, %.lr.ph.i.i.i.i.i.i203.i ], [ %.012.i.i.i.i.i.i204.i.ph, %.lr.ph.i.i.i.i.i.i203.i.preheader516 ] ; 2 uses
  %.0911.i.i.i.i.i.i205.i = phi ptr [ %i.abn, %.lr.ph.i.i.i.i.i.i203.i ], [ %.0911.i.i.i.i.i.i205.i.ph, %.lr.ph.i.i.i.i.i.i203.i.preheader516 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.abm = load i64, ptr %.0911.i.i.i.i.i.i205.i, align 8, !tbaa !75, !alias.scope !287, !noalias !289
  store i64 %i.abm, ptr %.012.i.i.i.i.i.i204.i, align 8, !tbaa !75, !alias.scope !284, !noalias !290
  %i.abn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i205.i, i64 8 ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i204.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i206.i = icmp eq ptr %i.abn, %i.yp
  br i1 %.not.i.i.i.i.i.i206.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i207.i, label %.lr.ph.i.i.i.i.i.i203.i, !llvm.loop !292

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i207.i: ; preds = %.lr.ph.i.i.i.i.i.i203.i, %middle.block, %.noexc212.i
  %.0.lcssa.i.i.i.i.i.i208.i = phi ptr [ %i.aaw, %.noexc212.i ], [ %i.abg, %middle.block ], [ %i.abo, %.lr.ph.i.i.i.i.i.i203.i ]
  %i.abp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i208.i, i64 8 ; 2 uses
  %.not.i23.i.i.i209.i = icmp eq ptr %i.yo, null
  br i1 %.not.i23.i.i.i209.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i210.i, label %bb.fl

bb.fl:                                            ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i207.i
  call void @_ZdlPvm(ptr noundef nonnull %i.yo, i64 noundef %i.aao) #28, !noalias !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i210.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i210.i: ; preds = %bb.fl, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i207.i
  store ptr %i.aaw, ptr %41, align 16, !tbaa !25, !alias.scope !245
  store ptr %i.abp, ptr %i.ya, align 8, !tbaa !260, !alias.scope !245
  %i.abq = getelementptr inbounds nuw [8 x i8], ptr %i.aaw, i64 %i.aau ; 2 uses
  store ptr %i.abq, ptr %i.yb, align 16, !tbaa !26, !alias.scope !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit213.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit213.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i210.i, %bb.fi
  %i.abr = phi ptr [ %i.aaw, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i210.i ], [ %i.yo, %bb.fi ]
  %i.abs = phi ptr [ %i.abq, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i210.i ], [ %i.yp, %bb.fi ]
  %i.abt = phi ptr [ %i.abp, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i210.i ], [ %i.aal, %bb.fi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30, !noalias !245
  br label %bb.fm

bb.fm:                                            ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit213.i, %_ZNSirsERl.exit.i
  %i.abu = phi ptr [ %i.abr, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit213.i ], [ %i.yo, %_ZNSirsERl.exit.i ]
  %i.abv = phi ptr [ %i.abs, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit213.i ], [ %i.yp, %_ZNSirsERl.exit.i ]
  %i.abw = phi ptr [ %i.abt, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit213.i ], [ %i.yq, %_ZNSirsERl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30, !noalias !245
  store ptr %i.yc, ptr %24, align 8, !tbaa !61, !noalias !245
  %i.abx = load i64, ptr %i.ye, align 8, !noalias !245
  %i.aby = getelementptr inbounds i8, ptr %24, i64 %i.abx
  store ptr %i.yd, ptr %i.aby, align 8, !tbaa !61, !noalias !245
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i32 0, i32 0, i32 2), ptr %i.yf, align 8, !tbaa !61, !noalias !245
  %i.abz = load ptr, ptr %i.yg, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.aca = icmp eq ptr %i.abz, %i.yh
  br i1 %i.aca, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit216.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i214.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i214.i: ; preds = %bb.fm
  %i.acb = load i64, ptr %i.yh, align 8, !tbaa !31, !noalias !245
  %i.acc = add i64 %i.acb, 1
  call void @_ZdlPvm(ptr noundef %i.abz, i64 noundef %i.acc) #28, !noalias !245
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit216.i

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit216.i: ; preds = %bb.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i214.i
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i32 0, i32 0, i32 2), ptr %i.yf, align 8, !tbaa !61, !noalias !245
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.yi) #30, !noalias !245
  store ptr %i.yj, ptr %24, align 8, !tbaa !61, !noalias !245
  %i.acd = load i64, ptr %i.yl, align 8, !noalias !245
  %i.ace = getelementptr inbounds i8, ptr %24, i64 %i.acd
  store ptr %i.yk, ptr %i.ace, align 8, !tbaa !61, !noalias !245
  store i64 0, ptr %i.ym, align 8, !tbaa !272, !noalias !245
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.yn) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30, !noalias !245
  br label %.backedge.i

.backedge.i:                                      ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit216.i, %bb.ex, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit183.i
  %i.acf = phi ptr [ %i.abu, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit216.i ], [ %i.yo, %bb.ex ], [ %i.yo, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit183.i ]
  %i.acg = phi ptr [ %i.abv, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit216.i ], [ %i.yp, %bb.ex ], [ %i.yp, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit183.i ]
  %i.ach = phi ptr [ %i.abw, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit216.i ], [ %i.yq, %bb.ex ], [ %i.yq, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit183.i ]
  %i.aci = load ptr, ptr %10, align 8, !tbaa !61, !noalias !245
  %i.acj = getelementptr i8, ptr %i.aci, i64 -24
  %i.ack = load i64, ptr %i.acj, align 8, !noalias !245 ; 2 uses
  %i.acl = getelementptr inbounds i8, ptr %10, i64 %i.ack
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 32
  %i.acn = load i32, ptr %i.acm, align 8, !tbaa !72, !noalias !245
  %i.aco = and i32 %i.acn, 5
  %.not.i173.i = icmp eq i32 %i.aco, 0
  br i1 %.not.i173.i, label %bb.et, label %._crit_edge.i, !llvm.loop !283

.loopexit339.i:                                   ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i199.i, %bb.fg
  %lpad.loopexit341.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

.loopexit.split-lp340.i:                          ; preds = %bb.fk
  %lpad.loopexit.split-lp342.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.fn:                                            ; preds = %.loopexit.split-lp340.i, %.loopexit339.i
  %lpad.phi343.i = phi { ptr, i32 } [ %lpad.loopexit341.i, %.loopexit339.i ], [ %lpad.loopexit.split-lp342.i, %.loopexit.split-lp340.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30, !noalias !245
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.ff
  %.pn54.i = phi { ptr, i32 } [ %lpad.phi343.i, %bb.fn ], [ %i.aai, %bb.ff ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30, !noalias !245
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fe
  %.pn54.pn.i = phi { ptr, i32 } [ %.pn54.i, %bb.fo ], [ %i.aah, %bb.fe ]
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %24) #30, !noalias !245
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fd
  %.pn54.pn.pn.i = phi { ptr, i32 } [ %.pn54.pn.i, %bb.fp ], [ %i.aag, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30, !noalias !245
  br label %bb.fr

._crit_edge.i:                                    ; preds = %.backedge.i
  %.pre.i88 = load ptr, ptr %23, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.acp = icmp eq ptr %.pre.i88, %i.xt
  br i1 %i.acp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217.i: ; preds = %._crit_edge.i
  %i.acq = load i64, ptr %i.xt, align 8, !tbaa !31, !noalias !245
  %i.acr = add i64 %i.acq, 1
  call void @_ZdlPvm(ptr noundef %.pre.i88, i64 noundef %i.acr) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219.i: ; preds = %bb.es, %._crit_edge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30, !noalias !245
  br label %bb.hl

bb.fr:                                            ; preds = %bb.fq, %.loopexit.split-lp335.i, %.loopexit334.i
  %.pn54.pn.pn.pn.i = phi { ptr, i32 } [ %.pn54.pn.pn.i, %bb.fq ], [ %lpad.loopexit336.i, %.loopexit334.i ], [ %lpad.loopexit.split-lp337.i, %.loopexit.split-lp335.i ] ; 2 uses
  %i.acs = load ptr, ptr %23, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.act = icmp eq ptr %i.acs, %i.xt
  br i1 %i.act, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220.i: ; preds = %bb.fr
  %i.acu = load i64, ptr %i.xt, align 8, !tbaa !31, !noalias !245
  %i.acv = add i64 %i.acu, 1
  call void @_ZdlPvm(ptr noundef %i.acs, i64 noundef %i.acv) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i: ; preds = %bb.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30, !noalias !245
  %i.acw = load ptr, ptr %41, align 16, !tbaa !25, !alias.scope !245 ; 3 uses
  %.not.i.i.i223.i = icmp eq ptr %i.acw, null
  br i1 %.not.i.i.i223.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i, label %bb.fs

bb.fs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i
  %i.acx = load ptr, ptr %i.yb, align 16, !tbaa !26, !alias.scope !245
  %i.acy = ptrtoint ptr %i.acx to i64
  %i.acz = ptrtoint ptr %i.acw to i64
  %i.ada = sub i64 %i.acy, %i.acz
  call void @_ZdlPvm(ptr noundef nonnull %i.acw, i64 noundef %i.ada) #28, !noalias !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i

bb.ft:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i170.i
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.xp, i32 noundef 0)
          to label %bb.fu unwind label %bb.dl, !noalias !245

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #30, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #30, !noalias !245
  %i.adb = load atomic i8, ptr @_ZGVZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11 acquire, align 8, !noalias !245
  %i.adc = icmp eq i8 %i.adb, 0
  br i1 %i.adc, label %bb.fv, label %bb.fz, !prof !36

bb.fv:                                            ; preds = %bb.fu
  %i.add = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11) #30, !noalias !245
  %.not.i225.i = icmp eq i32 %i.add, 0
  br i1 %.not.i225.i, label %bb.fz, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  invoke fastcc void @_ZN14arrow_vendored4dateL15discover_tz_dirB5cxx11Ev()
          to label %bb.fx unwind label %bb.fy, !noalias !245

bb.fx:                                            ; preds = %bb.fw
  %i.ade = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11, ptr nonnull @__dso_handle) #30, !noalias !245 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11) #30, !noalias !245
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fw
  %i.adf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11) #30, !noalias !245
  br label %.body226.i

bb.fz:                                            ; preds = %bb.fx, %bb.fv, %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #30, !noalias !245
  %i.adg = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  store ptr %i.adg, ptr %29, align 8, !tbaa !38, !noalias !245
  store i8 47, ptr %i.adg, align 8, !tbaa !31, !noalias !245
  %i.adh = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 1, ptr %i.adh, align 8, !tbaa !39, !noalias !245
  %i.adi = getelementptr inbounds nuw i8, ptr %29, i64 17
  store i8 0, ptr %i.adi, align 1, !tbaa !31, !noalias !245
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.adj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11, i64 8), align 8, !tbaa !39, !noalias !296
  %i.adk = load ptr, ptr @_ZZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11, align 8, !tbaa !30, !noalias !296
  %i.adl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %29, i64 noundef 0, i64 noundef 0, ptr noundef %i.adk, i64 noundef %i.adj)
          to label %.noexc232.i unwind label %bb.gk, !noalias !245 ; 6 uses

.noexc232.i:                                      ; preds = %bb.fz
  %i.adm = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 14 uses
  store ptr %i.adm, ptr %28, align 8, !tbaa !38, !alias.scope !293, !noalias !245
  %i.adn = load ptr, ptr %i.adl, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adl, i64 16 ; 5 uses
  %i.adp = icmp eq ptr %i.adn, %i.ado
  br i1 %i.adp, label %bb.ga, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229.i

bb.ga:                                            ; preds = %.noexc232.i
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adl, i64 8
  %i.adr = load i64, ptr %i.adq, align 8, !tbaa !39, !noalias !245 ; 3 uses
  %i.ads = icmp ult i64 %i.adr, 16
  call void @llvm.assume(i1 %i.ads)
  %i.adt = add nuw nsw i64 %i.adr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.adm, ptr noundef nonnull align 8 dereferenceable(1) %i.ado, i64 %i.adt, i1 false), !noalias !245
  br label %bb.gb

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229.i: ; preds = %.noexc232.i
  store ptr %i.adn, ptr %28, align 8, !tbaa !30, !alias.scope !293, !noalias !245
  %i.adu = load i64, ptr %i.ado, align 8, !tbaa !31, !noalias !245
  store i64 %i.adu, ptr %i.adm, align 8, !tbaa !31, !alias.scope !293, !noalias !245
  %.phi.trans.insert.i230.i = getelementptr inbounds nuw i8, ptr %i.adl, i64 8
  %.pre.i231.i = load i64, ptr %.phi.trans.insert.i230.i, align 8, !tbaa !39, !noalias !245
  br label %bb.gb

bb.gb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229.i, %bb.ga
  %i.adv = phi i64 [ %i.adr, %bb.ga ], [ %.pre.i231.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229.i ]
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adl, i64 8
  %i.adx = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 6 uses
  store i64 %i.adv, ptr %i.adx, align 8, !tbaa !39, !alias.scope !293, !noalias !245
  store ptr %i.ado, ptr %i.adl, align 8, !tbaa !30, !noalias !245
  store i64 0, ptr %i.adw, align 8, !tbaa !39, !noalias !245
  store i8 0, ptr %i.ado, align 8, !tbaa !31, !noalias !245
  call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.ady = load i64, ptr %i.adx, align 8, !tbaa !39, !noalias !300 ; 5 uses
  %i.adz = icmp sgt i64 %i.ady, 9223372036854775798
  br i1 %i.adz, label %bb.gc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i234.i

bb.gc:                                            ; preds = %bb.gb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #31
          to label %.noexc242.i unwind label %bb.gl, !noalias !245

.noexc242.i:                                      ; preds = %bb.gc
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i234.i: ; preds = %bb.gb
  %i.aea = add nsw i64 %i.ady, 9                  ; 3 uses
  %i.aeb = load ptr, ptr %28, align 8, !tbaa !30, !noalias !300 ; 2 uses
  %i.aec = icmp eq ptr %i.aeb, %i.adm             ; 2 uses
  br i1 %i.aec, label %bb.gd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i235.i

bb.gd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i234.i
  %i.aed = icmp ult i64 %i.ady, 16
  call void @llvm.assume(i1 %i.aed)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i235.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i235.i: ; preds = %bb.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i234.i
  %i.aee = load i64, ptr %i.adm, align 8, !noalias !300
end_hunk_2
begin_hunk_3_@_ZNSt7__cxx119to_stringEj:bb.a
  %i.w = load ptr, ptr %0, align 8, !tbaa !30     ; 4 uses
  %i.x = icmp ugt i32 %1, 99
  br i1 %i.x, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.l
  %i.y = load i64, ptr %i.u, align 8, !tbaa !39
  %i.z = trunc i64 %i.y to i32
  %i.aa = add i32 %i.z, -1
  br label %.lr.ph.i2

.lr.ph.i2:                                        ; preds = %.lr.ph.i2, %.lr.ph.preheader.i
  %.020.i = phi i32 [ %i.ad, %.lr.ph.i2 ], [ %1, %.lr.ph.preheader.i ] ; 3 uses
  %.01819.i = phi i32 [ %i.ao, %.lr.ph.i2 ], [ %i.aa, %.lr.ph.preheader.i ] ; 3 uses
  %i.ab = urem i32 %.020.i, 100
  %i.ac = shl nuw nsw i32 %i.ab, 1
  %i.ad = udiv i32 %.020.i, 100                   ; 2 uses
  %i.ae = zext nneg i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !31
  %i.ai = zext i32 %.01819.i to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ai
  store i8 %i.ah, ptr %i.aj, align 1, !tbaa !31
  %i.ak = load i8, ptr %i.af, align 2, !tbaa !31
  %i.al = add i32 %.01819.i, -1
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.am
  store i8 %i.ak, ptr %i.an, align 1, !tbaa !31
  %i.ao = add i32 %.01819.i, -2
  %i.ap = icmp ugt i32 %.020.i, 9999
  br i1 %i.ap, label %.lr.ph.i2, label %._crit_edge.i, !llvm.loop !385

._crit_edge.i:                                    ; preds = %.lr.ph.i2, %bb.l
  %.0.lcssa.i = phi i32 [ %1, %bb.l ], [ %i.ad, %.lr.ph.i2 ] ; 3 uses
  %i.aq = icmp samesign ugt i32 %.0.lcssa.i, 9
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i
  %i.ar = shl nuw nsw i32 %.0.lcssa.i, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !31
  %i.ax = load i8, ptr %i.at, align 2, !tbaa !31
  br label %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ay = trunc nuw nsw i32 %.0.lcssa.i to i8
  %i.az = or disjoint i8 %i.ay, 48
  br label %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit

_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit: ; preds = %bb.m, %bb.n
  %storemerge.i = phi i8 [ %i.az, %bb.n ], [ %i.ax, %bb.m ]
  store i8 %storemerge.i, ptr %i.w, align 1, !tbaa !31
  ret void

bb.o:                                             ; preds = %bb.h
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #29
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %1, ptr %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.a = load ptr, ptr %2, align 8, !tbaa !61, !noalias !386
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !noalias !386
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %1), !inline_history !389
  %i.d = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.56, i64 noundef 2)
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !38, !alias.scope !390
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !30   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !39   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.f, ptr %5, align 8, !tbaa !30, !alias.scope !390
  %i.m = load i64, ptr %i.g, align 8, !tbaa !31
  store i64 %i.m, ptr %i.e, align 8, !tbaa !31, !alias.scope !390
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.n = phi i64 [ %i.j, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.n, ptr %i.p, align 8, !tbaa !39, !alias.scope !390
  store ptr %i.g, ptr %i.d, align 8, !tbaa !30
  store i64 0, ptr %i.o, align 8, !tbaa !39
  store i8 0, ptr %i.g, align 8, !tbaa !31
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #30, !noalias !393
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %3, i64 noundef %i.q)
          to label %.noexc10 unwind label %bb.h   ; 6 uses

.noexc10:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.s, ptr %4, align 8, !tbaa !38, !alias.scope !393
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !30   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

bb.d:                                             ; preds = %.noexc10
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !39   ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %.noexc10
  store ptr %i.t, ptr %4, align 8, !tbaa !30, !alias.scope !393
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !31
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !31, !alias.scope !393
  %.phi.trans.insert.i8 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.pre.i9 = load i64, ptr %.phi.trans.insert.i8, align 8, !tbaa !39
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.d
  %i.ab = phi i64 [ %i.x, %bb.d ], [ %.pre.i9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !39, !alias.scope !393
  store ptr %i.u, ptr %i.r, align 8, !tbaa !30
  store i64 0, ptr %i.ac, align 8, !tbaa !39
  store i8 0, ptr %i.u, align 8, !tbaa !31
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.s
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.f
  %i.ag = load i64, ptr %i.s, align 8, !tbaa !31
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  %i.ai = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.e
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = load i64, ptr %i.e, align 8, !tbaa !31
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.am = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !31
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt12system_error, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !61
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.ar, align 8, !tbaa !3
  %.sroa.328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %.sroa.328.0..sroa_idx, align 8, !tbaa !396
  ret void

bb.g:                                             ; preds = %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.h:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.i:                                             ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.s
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.i
  %i.ax = load i64, ptr %i.s, align 8, !tbaa !31
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.h
  %.pn = phi { ptr, i32 } [ %i.at, %bb.h ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.au, %bb.i ] ; 2 uses
  %i.az = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.e
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.bb = load i64, ptr %i.e, align 8, !tbaa !31
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.as, %bb.g ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ]
  %i.bd = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !31
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_14year_month_dayE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(4) %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.arrow_vendored::date::detail::save_ostream", align 8 ; 8 uses
  %3 = alloca %"class.std::locale", align 8       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.c = load ptr, ptr %0, align 8, !tbaa !61
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(264) %i.f)
  %i.g = load ptr, ptr %0, align 8, !tbaa !61     ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 225 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !398, !range !87, !noundef !88
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !191  ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load i8, ptr %i.p, align 8, !tbaa !198
  %.not.i1.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i1.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.o)
          to label %.noexc18 unwind label %bb.r

.noexc18:                                         ; preds = %bb.d
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !61
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef signext i8 %i.t(ptr noundef nonnull align 8 dereferenceable(570) %i.o, i8 noundef signext 32)
          to label %.noexc18._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge unwind label %bb.r, !inline_history !399 ; 0 uses

.noexc18._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge: ; preds = %.noexc18
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !61
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i: ; preds = %.noexc18._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %.pre = phi ptr [ %.pre.pre, %.noexc18._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge ], [ %i.g, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i ]
  store i8 1, ptr %i.k, align 1, !tbaa !398
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
  %i.v = phi ptr [ %i.g, %bb.a ], [ %.pre, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  store i8 48, ptr %i.w, align 8, !tbaa !400
  %i.x = getelementptr i8, ptr %i.v, i64 -24      ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i32 130, ptr %i.aa, align 8, !tbaa !401
  %i.ab = load i64, ptr %i.x, align 8
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ab
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %3, ptr noundef nonnull align 8 dereferenceable(264) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %bb.e
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #30
  %.sroa.0.0.copyload.i = load i16, ptr %1, align 2, !tbaa !402
  %i.ae = sext i16 %.sroa.0.0.copyload.i to i32
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ae)
          to label %bb.g unwind label %bb.s       ; 4 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 45, ptr %i.b, align 1, !tbaa !31
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.ah = getelementptr i8, ptr %i.ag, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !158
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.j unwind label %bb.s       ; 0 uses

bb.i:                                             ; preds = %bb.g
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i8 noundef signext 45)
          to label %bb.j unwind label %bb.s       ; 0 uses

bb.j:                                             ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = load ptr, ptr %0, align 8, !tbaa !61
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 2, ptr %i.as, align 8, !tbaa !158
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %.sroa.0.0.copyload.i22 = load i8, ptr %i.at, align 2, !tbaa !31
  %i.au = zext i8 %.sroa.0.0.copyload.i22 to i64
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.au)
          to label %_ZNSolsEj.exit unwind label %bb.t ; 4 uses

_ZNSolsEj.exit:                                   ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !31
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !61
  %i.ax = getelementptr i8, ptr %i.aw, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %i.av, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !158
  %.not.i24 = icmp eq i64 %i.bb, 0
  br i1 %.not.i24, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSolsEj.exit
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.m unwind label %bb.t       ; 0 uses

bb.l:                                             ; preds = %_ZNSolsEj.exit
end_hunk_3
