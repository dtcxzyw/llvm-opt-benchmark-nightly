inline.NumInlined: 9947
inline.NumDeleted: 2193
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_Z39test_conversion_from_integral_to_stringIscEvT0_:bb.a
  %i.q = load ptr, ptr %13, align 8, !tbaa !30, !alias.scope !437 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.body.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !34, !alias.scope !437
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #34
  br label %common.resume

common.resume:                                    ; preds = %.body.i135, %.body.i113, %.body.i91, %.body.i57, %.body.i41, %.body.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.hj, %.body.i113 ], [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156 ], [ %i.p, %.body.i ], [ %i.bb, %.body.i41 ], [ %i.db, %.body.i57 ], [ %i.fs, %.body.i91 ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42 ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58 ], [ %i.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92 ], [ %i.hj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114 ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ], [ %.pn23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %.pn32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %.pn30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ], [ %lpad.phi, %.body.i135 ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsEET_RKT0_.exit: ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsE11try_convertERKsRS7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32, !noalias !437
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  invoke void @_Z6to_strIcsENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i16 noundef signext -32768)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsEET_RKT0_.exit
  %i.u = load i64, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.c:                                             ; preds = %bb.b
  %i.y = icmp eq i64 %i.u, 0
  br i1 %i.y, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %14, align 8, !tbaa !30
  %i.aa = load ptr, ptr %13, align 8, !tbaa !30
  %bcmp.i = call i32 @bcmp(ptr %i.aa, ptr %i.z, i64 %i.u)
  %i.ab = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.ac = phi i1 [ false, %bb.b ], [ %i.ab, %bb.d ], [ true, %bb.c ]
  %i.ad = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 163, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIscEvT0_, i1 noundef zeroext %i.ac)
          to label %bb.e unwind label %bb.p       ; 0 uses

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ae = load ptr, ptr %14, align 8, !tbaa !30   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !34
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.aj = load ptr, ptr %13, align 8, !tbaa !30   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = load i64, ptr %i.a, align 8, !tbaa !34
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 8 uses
  store ptr %i.an, ptr %15, align 8, !tbaa !27, !alias.scope !440
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store i64 0, ptr %i.ao, align 8, !tbaa !32, !alias.scope !440
  store i8 0, ptr %i.an, align 8, !tbaa !34, !alias.scope !440
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32, !noalias !440
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %10, ptr %i.ap, align 8, !tbaa !154, !noalias !440
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 11 ; 4 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !156, !noalias !440
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32, !noalias !440
  store i32 32767, ptr %9, align 8, !tbaa !157, !noalias !440
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !159, !noalias !440
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 48, ptr %i.at, align 8, !tbaa !160, !noalias !440
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 48, ptr %i.au, align 4, !tbaa !161, !noalias !440
  %i.av = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIcEtcE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsE11try_convertERKsRS7_.exit.i.i46 unwind label %.body.i41 ; 3 uses

_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsE11try_convertERKsRS7_.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32, !noalias !440
  store ptr %i.av, ptr %i.ap, align 8, !tbaa !154, !noalias !440
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !156, !noalias !440
  %i.aw = load i64, ptr %i.ao, align 8, !tbaa !32, !alias.scope !440
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef %i.aw, ptr noundef %i.av, i64 noundef %i.az)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsEET_RKT0_.exit48 unwind label %.body.i41 ; 0 uses

.body.i41:                                        ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsE11try_convertERKsRS7_.exit.i.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %15, align 8, !tbaa !30, !alias.scope !440 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.an
  br i1 %i.bd, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42: ; preds = %.body.i41
  %i.be = load i64, ptr %i.an, align 8, !tbaa !34, !alias.scope !440
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #34
  br label %common.resume

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsEET_RKT0_.exit48: ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsE11try_convertERKsRS7_.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32, !noalias !440
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  invoke void @_Z6to_strIcsENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, i16 noundef signext 32767)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsEET_RKT0_.exit48
  %i.bg = load i64, ptr %i.ao, align 8, !tbaa !32 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !32
  %i.bj = icmp eq i64 %i.bg, %i.bi
  br i1 %i.bj, label %bb.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit50

bb.g:                                             ; preds = %bb.f
  %i.bk = icmp eq i64 %i.bg, 0
  br i1 %i.bk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit50, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = load ptr, ptr %16, align 8, !tbaa !30
  %i.bm = load ptr, ptr %15, align 8, !tbaa !30
  %bcmp.i49 = call i32 @bcmp(ptr %i.bm, ptr %i.bl, i64 %i.bg)
  %i.bn = icmp eq i32 %bcmp.i49, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit50

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit50: ; preds = %bb.f, %bb.g, %bb.h
  %i.bo = phi i1 [ false, %bb.f ], [ %i.bn, %bb.h ], [ true, %bb.g ]
  %i.bp = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 166, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIscEvT0_, i1 noundef zeroext %i.bo)
          to label %bb.i unwind label %bb.r       ; 0 uses

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit50
  %i.bq = load ptr, ptr %16, align 8, !tbaa !30   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.i
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !34
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.bv = load ptr, ptr %15, align 8, !tbaa !30   ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.an
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.bx = load i64, ptr %i.an, align 8, !tbaa !34
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.bz = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 11 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  br label %bb.j

.preheader173:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %i.ck = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 8 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 11 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  br label %bb.u

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %indvars.iv = phi i32 [ 32768, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  store ptr %i.bz, ptr %17, align 8, !tbaa !27, !alias.scope !443
  store i64 0, ptr %i.ca, align 8, !tbaa !32, !alias.scope !443
  store i8 0, ptr %i.bz, align 8, !tbaa !34, !alias.scope !443
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32, !noalias !443
  store ptr %8, ptr %i.cb, align 8, !tbaa !154, !noalias !443
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !156, !noalias !443
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !443
  store i32 %indvars.iv, ptr %7, align 8, !tbaa !157, !noalias !443
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !159, !noalias !443
  store i8 48, ptr %i.cf, align 8, !tbaa !160, !noalias !443
  store i32 48, ptr %i.cg, align 4, !tbaa !161, !noalias !443
  %i.cv = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIcEtcE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsE11try_convertERKsRS7_.exit.i.i62 unwind label %.body.i57

_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsE11try_convertERKsRS7_.exit.i.i62: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !443
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -1 ; 4 uses
  store i8 45, ptr %i.cw, align 1, !tbaa !34
  store ptr %i.cw, ptr %i.cb, align 8, !tbaa !154, !noalias !443
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !156, !noalias !443
  %i.cx = load i64, ptr %i.ca, align 8, !tbaa !32, !alias.scope !443
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.ch, %i.cy
  %i.da = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef %i.cx, ptr noundef nonnull %i.cw, i64 noundef %i.cz)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsEET_RKT0_.exit64 unwind label %.body.i57 ; 0 uses

.body.i57:                                        ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsE11try_convertERKsRS7_.exit.i.i62, %bb.j
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = load ptr, ptr %17, align 8, !tbaa !30, !alias.scope !443 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.bz
  br i1 %i.dd, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58: ; preds = %.body.i57
  %i.de = load i64, ptr %i.bz, align 8, !tbaa !34, !alias.scope !443
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #34
  br label %common.resume

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsEET_RKT0_.exit64: ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsE11try_convertERKsRS7_.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32, !noalias !443
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  %25 = trunc nuw i32 %indvars.iv to i16
  invoke void @_Z6to_strIcsENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, i16 noundef signext %25)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsEET_RKT0_.exit64
  %i.dg = load i64, ptr %i.ca, align 8, !tbaa !32 ; 3 uses
  %i.dh = load i64, ptr %i.ci, align 8, !tbaa !32
  %i.di = icmp eq i64 %i.dg, %i.dh
  br i1 %i.di, label %bb.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit66

bb.l:                                             ; preds = %bb.k
  %i.dj = icmp eq i64 %i.dg, 0
  br i1 %i.dj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit66, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dk = load ptr, ptr %18, align 8, !tbaa !30
  %i.dl = load ptr, ptr %17, align 8, !tbaa !30
  %bcmp.i65 = call i32 @bcmp(ptr %i.dl, ptr %i.dk, i64 %i.dg)
  %i.dm = icmp eq i32 %bcmp.i65, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit66

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit66: ; preds = %bb.k, %bb.l, %bb.m
  %i.dn = phi i1 [ false, %bb.k ], [ %i.dm, %bb.m ], [ true, %bb.l ]
  %i.do = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 185, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIscEvT0_, i1 noundef zeroext %i.dn)
          to label %bb.n unwind label %bb.t       ; 0 uses

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit66
  %i.dp = load ptr, ptr %18, align 8, !tbaa !30   ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.cj
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.n
  %i.dr = load i64, ptr %i.cj, align 8, !tbaa !34
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.dt = load ptr, ptr %17, align 8, !tbaa !30   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.bz
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.dv = load i64, ptr %i.bz, align 8, !tbaa !34
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, 33268
  br i1 %exitcond.not, label %.preheader173, label %bb.j, !llvm.loop !446

bb.o:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsEET_RKT0_.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = load ptr, ptr %14, align 8, !tbaa !30   ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.p
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !34
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %bb.o
  %.pn = phi { ptr, i32 } [ %i.dx, %bb.o ], [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %i.dy, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.ee = load ptr, ptr %13, align 8, !tbaa !30   ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.a
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.eg = load i64, ptr %i.a, align 8, !tbaa !34
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %common.resume

bb.q:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsEET_RKT0_.exit48
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.r:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit50
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %16, align 8, !tbaa !30   ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.r
  %i.en = load i64, ptr %i.el, align 8, !tbaa !34
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.q
  %.pn23 = phi { ptr, i32 } [ %i.ei, %bb.q ], [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %i.ej, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.ep = load ptr, ptr %15, align 8, !tbaa !30   ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.an
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.er = load i64, ptr %i.an, align 8, !tbaa !34
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %common.resume

bb.s:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsEET_RKT0_.exit64
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.t:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit66
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = load ptr, ptr %18, align 8, !tbaa !30   ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.cj
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.t
  %i.ex = load i64, ptr %i.cj, align 8, !tbaa !34
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.s
  %.pn34 = phi { ptr, i32 } [ %i.et, %bb.s ], [ %i.eu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.eu, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.ez = load ptr, ptr %17, align 8, !tbaa !30   ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.bz
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.fb = load i64, ptr %i.bz, align 8, !tbaa !34
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %common.resume

.preheader172:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.fd = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 8 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.fl = ptrtoint ptr %i.fh to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  br label %bb.ab

bb.u:                                             ; preds = %.preheader173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %indvars.iv.a = phi i32 [ 32767, %.preheader173 ], [ %indvars.iv.next.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ] ; 3 uses
  %.1204 = phi i16 [ 0, %.preheader173 ], [ %i.gp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !447)
  store ptr %i.ck, ptr %19, align 8, !tbaa !27, !alias.scope !447
  store i64 0, ptr %i.cl, align 8, !tbaa !32, !alias.scope !447
  store i8 0, ptr %i.ck, align 8, !tbaa !34, !alias.scope !447
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32, !noalias !447
  store ptr %6, ptr %i.cm, align 8, !tbaa !154, !noalias !447
  store ptr %i.co, ptr %i.cn, align 8, !tbaa !156, !noalias !447
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !447
  store i32 %indvars.iv.a, ptr %5, align 8, !tbaa !157, !noalias !447
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !159, !noalias !447
  store i8 48, ptr %i.cq, align 8, !tbaa !160, !noalias !447
  store i32 48, ptr %i.cr, align 4, !tbaa !161, !noalias !447
  %i.fo = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIcEtcE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsE11try_convertERKsRS7_.exit.i.i96 unwind label %.body.i91 ; 3 uses

_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsE11try_convertERKsRS7_.exit.i.i96: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !447
  %.pre = load i64, ptr %i.cl, align 8, !tbaa !32, !alias.scope !447
  store ptr %i.fo, ptr %i.cm, align 8, !tbaa !154, !noalias !447
  store ptr %i.co, ptr %i.cn, align 8, !tbaa !156, !noalias !447
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = sub i64 %i.cs, %i.fp
  %i.fr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef 0, i64 noundef %.pre, ptr noundef %i.fo, i64 noundef %i.fq)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsEET_RKT0_.exit98 unwind label %.body.i91 ; 0 uses

.body.i91:                                        ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsE11try_convertERKsRS7_.exit.i.i96, %bb.u
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ft = load ptr, ptr %19, align 8, !tbaa !30, !alias.scope !447 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.ck
  br i1 %i.fu, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92: ; preds = %.body.i91
  %i.fv = load i64, ptr %i.ck, align 8, !tbaa !34, !alias.scope !447
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #34
  br label %common.resume

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsEET_RKT0_.exit98: ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsE11try_convertERKsRS7_.exit.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32, !noalias !447
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  %i.fx = trunc nuw nsw i32 %indvars.iv.a to i16
  invoke void @_Z6to_strIcsENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, i16 noundef signext %i.fx)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsEET_RKT0_.exit98
  %i.fy = load i64, ptr %i.cl, align 8, !tbaa !32 ; 3 uses
  %i.fz = load i64, ptr %i.ct, align 8, !tbaa !32
  %i.ga = icmp eq i64 %i.fy, %i.fz
  br i1 %i.ga, label %bb.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit100

bb.w:                                             ; preds = %bb.v
  %i.gb = icmp eq i64 %i.fy, 0
  br i1 %i.gb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit100, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gc = load ptr, ptr %20, align 8, !tbaa !30
  %i.gd = load ptr, ptr %19, align 8, !tbaa !30
  %bcmp.i99 = call i32 @bcmp(ptr %i.gd, ptr %i.gc, i64 %i.fy)
  %i.ge = icmp eq i32 %bcmp.i99, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit100

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit100: ; preds = %bb.v, %bb.w, %bb.x
  %i.gf = phi i1 [ false, %bb.v ], [ %i.ge, %bb.x ], [ true, %bb.w ]
  %i.gg = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 190, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIscEvT0_, i1 noundef zeroext %i.gf)
          to label %bb.y unwind label %bb.aa      ; 0 uses

bb.y:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit100
  %i.gh = load ptr, ptr %20, align 8, !tbaa !30   ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.cu
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.y
end_hunk_0
begin_hunk_1_@_Z39test_conversion_from_integral_to_stringIswEvT0_:bb.a
  %i.v = add i64 %i.u, 4
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #34
  br label %common.resume

common.resume:                                    ; preds = %.body.i131, %.body.i110, %.body.i89, %.body.i56, %.body.i41, %.body.i, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit82, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit151, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit130, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit109, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit88, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i132, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i111, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i90, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i57, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i42, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.im, %.body.i110 ], [ %.pn28, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit151 ], [ %i.q, %.body.i ], [ %i.bh, %.body.i41 ], [ %i.dm, %.body.i56 ], [ %i.go, %.body.i89 ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i42 ], [ %i.dm, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i57 ], [ %i.go, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i90 ], [ %i.im, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i111 ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i132 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit76 ], [ %.pn23, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit82 ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit88 ], [ %.pn32, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit109 ], [ %.pn30, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit130 ], [ %lpad.phi, %.body.i131 ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsEET_RKT0_.exit: ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsE11try_convertERKsRS7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32, !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  invoke void @_Z6to_strIwsENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.9") align 8 %14, i16 noundef signext -32768)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsEET_RKT0_.exit
  %i.w = load i64, ptr %i.b, align 8, !tbaa !168  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !168
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.c, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %14, align 8, !tbaa !180
  %i.ac = load ptr, ptr %13, align 8, !tbaa !180
  %i.ad = call i32 @wmemcmp(ptr noundef %i.ac, ptr noundef %i.ab, i64 noundef %i.w) #36
  %i.ae = icmp eq i32 %i.ad, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.af = phi i1 [ false, %bb.b ], [ %i.ae, %bb.d ], [ true, %bb.c ]
  %i.ag = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 163, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIswEvT0_, i1 noundef zeroext %i.af)
          to label %bb.e unwind label %bb.p       ; 0 uses

bb.e:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ah = load ptr, ptr %14, align 8, !tbaa !180  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !34
  %i.al = shl i64 %i.ak, 2
  %i.am = add i64 %i.al, 4
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.am) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.an = load ptr, ptr %13, align 8, !tbaa !180  ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.a
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !34
  %i.aq = shl i64 %i.ap, 2
  %i.ar = add i64 %i.aq, 4
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 8 uses
  store ptr %i.as, ptr %15, align 8, !tbaa !165, !alias.scope !531
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store i64 0, ptr %i.at, align 8, !tbaa !168, !alias.scope !531
  store i32 0, ptr %i.as, align 8, !tbaa !170, !alias.scope !531
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32, !noalias !531
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  store ptr %10, ptr %i.au, align 8, !tbaa !172, !noalias !531
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 4 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !174, !noalias !531
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32, !noalias !531
  store i32 32767, ptr %9, align 8, !tbaa !175, !noalias !531
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !177, !noalias !531
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 48, ptr %i.ay, align 8, !tbaa !178, !noalias !531
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 48, ptr %i.az, align 4, !tbaa !179, !noalias !531
  %i.ba = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEtwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsE11try_convertERKsRS7_.exit.i.i46 unwind label %.body.i41 ; 3 uses

_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsE11try_convertERKsRS7_.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32, !noalias !531
  store ptr %i.ba, ptr %i.au, align 8, !tbaa !172, !noalias !531
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !174, !noalias !531
  %i.bb = load i64, ptr %i.at, align 8, !tbaa !168, !alias.scope !531
  %i.bc = ptrtoint ptr %i.aw to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 2
  %i.bg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef %i.bb, ptr noundef %i.ba, i64 noundef %i.bf)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsEET_RKT0_.exit48 unwind label %.body.i41 ; 0 uses

.body.i41:                                        ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsE11try_convertERKsRS7_.exit.i.i46, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %15, align 8, !tbaa !180, !alias.scope !531 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.as
  br i1 %i.bj, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i42

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i42: ; preds = %.body.i41
  %i.bk = load i64, ptr %i.as, align 8, !tbaa !34, !alias.scope !531
  %i.bl = shl i64 %i.bk, 2
  %i.bm = add i64 %i.bl, 4
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #34
  br label %common.resume

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsEET_RKT0_.exit48: ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsE11try_convertERKsRS7_.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32, !noalias !531
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  invoke void @_Z6to_strIwsENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.9") align 8 %16, i16 noundef signext 32767)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsEET_RKT0_.exit48
  %i.bn = load i64, ptr %i.at, align 8, !tbaa !168 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !168
  %i.bq = icmp eq i64 %i.bn, %i.bp
  br i1 %i.bq, label %bb.g, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49

bb.g:                                             ; preds = %bb.f
  %i.br = icmp eq i64 %i.bn, 0
  br i1 %i.br, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %16, align 8, !tbaa !180
  %i.bt = load ptr, ptr %15, align 8, !tbaa !180
  %i.bu = call i32 @wmemcmp(ptr noundef %i.bt, ptr noundef %i.bs, i64 noundef %i.bn) #36
  %i.bv = icmp eq i32 %i.bu, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49: ; preds = %bb.f, %bb.g, %bb.h
  %i.bw = phi i1 [ false, %bb.f ], [ %i.bv, %bb.h ], [ true, %bb.g ]
  %i.bx = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 166, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIswEvT0_, i1 noundef zeroext %i.bw)
          to label %bb.i unwind label %bb.r       ; 0 uses

bb.i:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49
  %i.by = load ptr, ptr %16, align 8, !tbaa !180  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i50: ; preds = %bb.i
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !34
  %i.cc = shl i64 %i.cb, 2
  %i.cd = add i64 %i.cc, 4
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cd) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit52: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.ce = load ptr, ptr %15, align 8, !tbaa !180  ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.as
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit52
  %i.cg = load i64, ptr %i.as, align 8, !tbaa !34
  %i.ch = shl i64 %i.cg, 2
  %i.ci = add i64 %i.ch, 4
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit52, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.cj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 8 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  br label %bb.j

.preheader168:                                    ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit70
  %i.cu = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  br label %bb.u

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit70
  %indvars.iv = phi i32 [ 32768, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit55 ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit70 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !534)
  store ptr %i.cj, ptr %17, align 8, !tbaa !165, !alias.scope !534
  store i64 0, ptr %i.ck, align 8, !tbaa !168, !alias.scope !534
  store i32 0, ptr %i.cj, align 8, !tbaa !170, !alias.scope !534
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32, !noalias !534
  store ptr %8, ptr %i.cl, align 8, !tbaa !172, !noalias !534
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !174, !noalias !534
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !534
  store i32 %indvars.iv, ptr %7, align 8, !tbaa !175, !noalias !534
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !177, !noalias !534
  store i32 48, ptr %i.cp, align 8, !tbaa !178, !noalias !534
  store i32 48, ptr %i.cq, align 4, !tbaa !179, !noalias !534
  %i.df = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEtwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsE11try_convertERKsRS7_.exit.i.i61 unwind label %.body.i56

_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsE11try_convertERKsRS7_.exit.i.i61: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !534
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -4 ; 4 uses
  store i32 45, ptr %i.dg, align 4, !tbaa !170
  store ptr %i.dg, ptr %i.cl, align 8, !tbaa !172, !noalias !534
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !174, !noalias !534
  %i.dh = load i64, ptr %i.ck, align 8, !tbaa !168, !alias.scope !534
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.cr, %i.di
  %i.dk = ashr exact i64 %i.dj, 2
  %i.dl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef %i.dh, ptr noundef nonnull %i.dg, i64 noundef %i.dk)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsEET_RKT0_.exit63 unwind label %.body.i56 ; 0 uses

.body.i56:                                        ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsE11try_convertERKsRS7_.exit.i.i61, %bb.j
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = load ptr, ptr %17, align 8, !tbaa !180, !alias.scope !534 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.cj
  br i1 %i.do, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i57

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i57: ; preds = %.body.i56
  %i.dp = load i64, ptr %i.cj, align 8, !tbaa !34, !alias.scope !534
  %i.dq = shl i64 %i.dp, 2
  %i.dr = add i64 %i.dq, 4
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #34
  br label %common.resume

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsEET_RKT0_.exit63: ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsE11try_convertERKsRS7_.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32, !noalias !534
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  %25 = trunc nuw i32 %indvars.iv to i16
  invoke void @_Z6to_strIwsENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.9") align 8 %18, i16 noundef signext %25)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsEET_RKT0_.exit63
  %i.ds = load i64, ptr %i.ck, align 8, !tbaa !168 ; 3 uses
  %i.dt = load i64, ptr %i.cs, align 8, !tbaa !168
  %i.du = icmp eq i64 %i.ds, %i.dt
  br i1 %i.du, label %bb.l, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit64

bb.l:                                             ; preds = %bb.k
  %i.dv = icmp eq i64 %i.ds, 0
  br i1 %i.dv, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit64, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dw = load ptr, ptr %18, align 8, !tbaa !180
  %i.dx = load ptr, ptr %17, align 8, !tbaa !180
  %i.dy = call i32 @wmemcmp(ptr noundef %i.dx, ptr noundef %i.dw, i64 noundef %i.ds) #36
  %i.dz = icmp eq i32 %i.dy, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit64

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit64: ; preds = %bb.k, %bb.l, %bb.m
  %i.ea = phi i1 [ false, %bb.k ], [ %i.dz, %bb.m ], [ true, %bb.l ]
  %i.eb = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 185, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIswEvT0_, i1 noundef zeroext %i.ea)
          to label %bb.n unwind label %bb.t       ; 0 uses

bb.n:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit64
  %i.ec = load ptr, ptr %18, align 8, !tbaa !180  ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.ct
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i65: ; preds = %bb.n
  %i.ee = load i64, ptr %i.ct, align 8, !tbaa !34
  %i.ef = shl i64 %i.ee, 2
  %i.eg = add i64 %i.ef, 4
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit67: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.eh = load ptr, ptr %17, align 8, !tbaa !180  ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.cj
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit67
  %i.ej = load i64, ptr %i.cj, align 8, !tbaa !34
  %i.ek = shl i64 %i.ej, 2
  %i.el = add i64 %i.ek, 4
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit70: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, 33268
  br i1 %exitcond.not, label %.preheader168, label %bb.j, !llvm.loop !537

bb.o:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsEET_RKT0_.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit73

bb.p:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = load ptr, ptr %14, align 8, !tbaa !180  ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i71: ; preds = %bb.p
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !34
  %i.es = shl i64 %i.er, 2
  %i.et = add i64 %i.es, 4
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.et) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit73: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i71, %bb.o
  %.pn = phi { ptr, i32 } [ %i.em, %bb.o ], [ %i.en, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i71 ], [ %i.en, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.eu = load ptr, ptr %13, align 8, !tbaa !180  ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.a
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit73
  %i.ew = load i64, ptr %i.a, align 8, !tbaa !34
  %i.ex = shl i64 %i.ew, 2
  %i.ey = add i64 %i.ex, 4
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %common.resume

bb.q:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsEET_RKT0_.exit48
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit79

bb.r:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fb = load ptr, ptr %16, align 8, !tbaa !180  ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i77: ; preds = %bb.r
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !34
  %i.ff = shl i64 %i.fe, 2
  %i.fg = add i64 %i.ff, 4
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fg) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit79: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i77, %bb.q
  %.pn23 = phi { ptr, i32 } [ %i.ez, %bb.q ], [ %i.fa, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i77 ], [ %i.fa, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.fh = load ptr, ptr %15, align 8, !tbaa !180  ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.as
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit79
  %i.fj = load i64, ptr %i.as, align 8, !tbaa !34
  %i.fk = shl i64 %i.fj, 2
  %i.fl = add i64 %i.fk, 4
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fl) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit82: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit79, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %common.resume

bb.s:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsEET_RKT0_.exit63
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit85

bb.t:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit64
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fo = load ptr, ptr %18, align 8, !tbaa !180  ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.ct
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i83: ; preds = %bb.t
  %i.fq = load i64, ptr %i.ct, align 8, !tbaa !34
  %i.fr = shl i64 %i.fq, 2
  %i.fs = add i64 %i.fr, 4
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit85: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i83, %bb.s
  %.pn34 = phi { ptr, i32 } [ %i.fm, %bb.s ], [ %i.fn, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i83 ], [ %i.fn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.ft = load ptr, ptr %17, align 8, !tbaa !180  ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.cj
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i86: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit85
  %i.fv = load i64, ptr %i.cj, align 8, !tbaa !34
  %i.fw = shl i64 %i.fv, 2
  %i.fx = add i64 %i.fw, 4
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit88: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit85, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %common.resume

.preheader167:                                    ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit103
  %i.fy = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 8 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.gg = ptrtoint ptr %i.gc to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  br label %bb.ab

bb.u:                                             ; preds = %.preheader168, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit103
  %indvars.iv.a = phi i32 [ 32767, %.preheader168 ], [ %indvars.iv.next.a, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit103 ] ; 3 uses
  %.1199 = phi i16 [ 0, %.preheader168 ], [ %i.hp, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit103 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !538)
  store ptr %i.cu, ptr %19, align 8, !tbaa !165, !alias.scope !538
  store i64 0, ptr %i.cv, align 8, !tbaa !168, !alias.scope !538
  store i32 0, ptr %i.cu, align 8, !tbaa !170, !alias.scope !538
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32, !noalias !538
  store ptr %6, ptr %i.cw, align 8, !tbaa !172, !noalias !538
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !174, !noalias !538
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !538
  store i32 %indvars.iv.a, ptr %5, align 8, !tbaa !175, !noalias !538
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !177, !noalias !538
  store i32 48, ptr %i.da, align 8, !tbaa !178, !noalias !538
  store i32 48, ptr %i.db, align 4, !tbaa !179, !noalias !538
  %i.gj = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEtwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsE11try_convertERKsRS7_.exit.i.i94 unwind label %.body.i89 ; 3 uses

_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsE11try_convertERKsRS7_.exit.i.i94: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !538
  %.pre = load i64, ptr %i.cv, align 8, !tbaa !168, !alias.scope !538
  store ptr %i.gj, ptr %i.cw, align 8, !tbaa !172, !noalias !538
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !174, !noalias !538
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = sub i64 %i.dc, %i.gk
  %i.gm = ashr exact i64 %i.gl, 2
  %i.gn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef 0, i64 noundef %.pre, ptr noundef %i.gj, i64 noundef %i.gm)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsEET_RKT0_.exit96 unwind label %.body.i89 ; 0 uses

.body.i89:                                        ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsE11try_convertERKsRS7_.exit.i.i94, %bb.u
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gp = load ptr, ptr %19, align 8, !tbaa !180, !alias.scope !538 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.cu
  br i1 %i.gq, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i90

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i90: ; preds = %.body.i89
  %i.gr = load i64, ptr %i.cu, align 8, !tbaa !34, !alias.scope !538
  %i.gs = shl i64 %i.gr, 2
  %i.gt = add i64 %i.gs, 4
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #34
  br label %common.resume

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsEET_RKT0_.exit96: ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsE11try_convertERKsRS7_.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32, !noalias !538
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  %i.gu = trunc nuw nsw i32 %indvars.iv.a to i16
  invoke void @_Z6to_strIwsENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.9") align 8 %20, i16 noundef signext %i.gu)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEsEET_RKT0_.exit96
  %i.gv = load i64, ptr %i.cv, align 8, !tbaa !168 ; 3 uses
  %i.gw = load i64, ptr %i.dd, align 8, !tbaa !168
  %i.gx = icmp eq i64 %i.gv, %i.gw
  br i1 %i.gx, label %bb.w, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit97

bb.w:                                             ; preds = %bb.v
  %i.gy = icmp eq i64 %i.gv, 0
  br i1 %i.gy, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit97, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gz = load ptr, ptr %20, align 8, !tbaa !180
  %i.ha = load ptr, ptr %19, align 8, !tbaa !180
  %i.hb = call i32 @wmemcmp(ptr noundef %i.ha, ptr noundef %i.gz, i64 noundef %i.gv) #36
  %i.hc = icmp eq i32 %i.hb, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit97

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit97: ; preds = %bb.v, %bb.w, %bb.x
  %i.hd = phi i1 [ false, %bb.v ], [ %i.hc, %bb.x ], [ true, %bb.w ]
  %i.he = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 190, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIswEvT0_, i1 noundef zeroext %i.hd)
end_hunk_1
begin_hunk_2_@_Z39test_conversion_from_integral_to_stringIicEvT0_:bb.a
common.resume:                                    ; preds = %.body.i135, %.body.i113, %.body.i91, %.body.i57, %.body.i41, %.body.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.hu, %.body.i113 ], [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156 ], [ %i.p, %.body.i ], [ %i.bb, %.body.i41 ], [ %i.db, %.body.i57 ], [ %i.ft, %.body.i91 ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42 ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58 ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92 ], [ %i.hu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114 ], [ %i.jl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ], [ %.pn23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %.pn32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %.pn30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ], [ %i.jl, %.body.i135 ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEET_RKT0_.exit: ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE11try_convertERKiRS7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32, !noalias !926
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  invoke void @_Z6to_strIciENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i32 noundef -2147483648)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEET_RKT0_.exit
  %i.u = load i64, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.c:                                             ; preds = %bb.b
  %i.y = icmp eq i64 %i.u, 0
  br i1 %i.y, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %14, align 8, !tbaa !30
  %i.aa = load ptr, ptr %13, align 8, !tbaa !30
  %bcmp.i = call i32 @bcmp(ptr %i.aa, ptr %i.z, i64 %i.u)
  %i.ab = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.ac = phi i1 [ false, %bb.b ], [ %i.ab, %bb.d ], [ true, %bb.c ]
  %i.ad = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 163, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIicEvT0_, i1 noundef zeroext %i.ac)
          to label %bb.e unwind label %bb.p       ; 0 uses

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ae = load ptr, ptr %14, align 8, !tbaa !30   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !34
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.aj = load ptr, ptr %13, align 8, !tbaa !30   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = load i64, ptr %i.a, align 8, !tbaa !34
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !929)
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 8 uses
  store ptr %i.an, ptr %15, align 8, !tbaa !27, !alias.scope !929
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store i64 0, ptr %i.ao, align 8, !tbaa !32, !alias.scope !929
  store i8 0, ptr %i.an, align 8, !tbaa !34, !alias.scope !929
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32, !noalias !929
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %10, ptr %i.ap, align 8, !tbaa !824, !noalias !929
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 21 ; 4 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !826, !noalias !929
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32, !noalias !929
  store i32 2147483647, ptr %9, align 8, !tbaa !827, !noalias !929
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !829, !noalias !929
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 48, ptr %i.at, align 8, !tbaa !830, !noalias !929
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 48, ptr %i.au, align 4, !tbaa !831, !noalias !929
  %i.av = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIcEjcE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE11try_convertERKiRS7_.exit.i.i46 unwind label %.body.i41 ; 3 uses

_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE11try_convertERKiRS7_.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32, !noalias !929
  store ptr %i.av, ptr %i.ap, align 8, !tbaa !824, !noalias !929
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !826, !noalias !929
  %i.aw = load i64, ptr %i.ao, align 8, !tbaa !32, !alias.scope !929
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef %i.aw, ptr noundef %i.av, i64 noundef %i.az)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEET_RKT0_.exit48 unwind label %.body.i41 ; 0 uses

.body.i41:                                        ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE11try_convertERKiRS7_.exit.i.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %15, align 8, !tbaa !30, !alias.scope !929 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.an
  br i1 %i.bd, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42: ; preds = %.body.i41
  %i.be = load i64, ptr %i.an, align 8, !tbaa !34, !alias.scope !929
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #34
  br label %common.resume

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEET_RKT0_.exit48: ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE11try_convertERKiRS7_.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32, !noalias !929
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  invoke void @_Z6to_strIciENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, i32 noundef 2147483647)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEET_RKT0_.exit48
  %i.bg = load i64, ptr %i.ao, align 8, !tbaa !32 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !32
  %i.bj = icmp eq i64 %i.bg, %i.bi
  br i1 %i.bj, label %bb.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit50

bb.g:                                             ; preds = %bb.f
  %i.bk = icmp eq i64 %i.bg, 0
  br i1 %i.bk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit50, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = load ptr, ptr %16, align 8, !tbaa !30
  %i.bm = load ptr, ptr %15, align 8, !tbaa !30
  %bcmp.i49 = call i32 @bcmp(ptr %i.bm, ptr %i.bl, i64 %i.bg)
  %i.bn = icmp eq i32 %bcmp.i49, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit50

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit50: ; preds = %bb.f, %bb.g, %bb.h
  %i.bo = phi i1 [ false, %bb.f ], [ %i.bn, %bb.h ], [ true, %bb.g ]
  %i.bp = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 166, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIicEvT0_, i1 noundef zeroext %i.bo)
          to label %bb.i unwind label %bb.r       ; 0 uses

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit50
  %i.bq = load ptr, ptr %16, align 8, !tbaa !30   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.i
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !34
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.bv = load ptr, ptr %15, align 8, !tbaa !30   ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.an
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.bx = load i64, ptr %i.an, align 8, !tbaa !34
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.bz = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 21 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  br label %bb.j

.preheader173:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %i.ck = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 8 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 21 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  br label %bb.u

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %storemerge201 = phi i32 [ -2147483648, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !932)
  store ptr %i.bz, ptr %17, align 8, !tbaa !27, !alias.scope !932
  store i64 0, ptr %i.ca, align 8, !tbaa !32, !alias.scope !932
  store i8 0, ptr %i.bz, align 8, !tbaa !34, !alias.scope !932
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32, !noalias !932
  store ptr %8, ptr %i.cb, align 8, !tbaa !824, !noalias !932
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !826, !noalias !932
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !932
  store i32 %storemerge201, ptr %7, align 8, !tbaa !827, !noalias !932
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !829, !noalias !932
  store i8 48, ptr %i.cf, align 8, !tbaa !830, !noalias !932
  store i32 48, ptr %i.cg, align 4, !tbaa !831, !noalias !932
  %i.cv = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIcEjcE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE11try_convertERKiRS7_.exit.i.i62 unwind label %.body.i57

_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE11try_convertERKiRS7_.exit.i.i62: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !932
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -1 ; 4 uses
  store i8 45, ptr %i.cw, align 1, !tbaa !34
  store ptr %i.cw, ptr %i.cb, align 8, !tbaa !824, !noalias !932
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !826, !noalias !932
  %i.cx = load i64, ptr %i.ca, align 8, !tbaa !32, !alias.scope !932
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.ch, %i.cy
  %i.da = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef %i.cx, ptr noundef nonnull %i.cw, i64 noundef %i.cz)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEET_RKT0_.exit64 unwind label %.body.i57 ; 0 uses

.body.i57:                                        ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE11try_convertERKiRS7_.exit.i.i62, %bb.j
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = load ptr, ptr %17, align 8, !tbaa !30, !alias.scope !932 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.bz
  br i1 %i.dd, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58: ; preds = %.body.i57
  %i.de = load i64, ptr %i.bz, align 8, !tbaa !34, !alias.scope !932
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #34
  br label %common.resume

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEET_RKT0_.exit64: ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE11try_convertERKiRS7_.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32, !noalias !932
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  invoke void @_Z6to_strIciENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, i32 noundef %storemerge201)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEET_RKT0_.exit64
  %i.dg = load i64, ptr %i.ca, align 8, !tbaa !32 ; 3 uses
  %i.dh = load i64, ptr %i.ci, align 8, !tbaa !32
  %i.di = icmp eq i64 %i.dg, %i.dh
  br i1 %i.di, label %bb.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit66

bb.l:                                             ; preds = %bb.k
  %i.dj = icmp eq i64 %i.dg, 0
  br i1 %i.dj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit66, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dk = load ptr, ptr %18, align 8, !tbaa !30
  %i.dl = load ptr, ptr %17, align 8, !tbaa !30
  %bcmp.i65 = call i32 @bcmp(ptr %i.dl, ptr %i.dk, i64 %i.dg)
  %i.dm = icmp eq i32 %bcmp.i65, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit66

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit66: ; preds = %bb.k, %bb.l, %bb.m
  %i.dn = phi i1 [ false, %bb.k ], [ %i.dm, %bb.m ], [ true, %bb.l ]
  %i.do = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 185, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIicEvT0_, i1 noundef zeroext %i.dn)
          to label %bb.n unwind label %bb.t       ; 0 uses

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit66
  %i.dp = load ptr, ptr %18, align 8, !tbaa !30   ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.cj
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.n
  %i.dr = load i64, ptr %i.cj, align 8, !tbaa !34
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.dt = load ptr, ptr %17, align 8, !tbaa !30   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.bz
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.dv = load i64, ptr %i.bz, align 8, !tbaa !34
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.dx = add nuw nsw i32 %storemerge201, 1       ; 2 uses
  %exitcond.not = icmp eq i32 %i.dx, -2147483148
  br i1 %exitcond.not, label %.preheader173, label %bb.j, !llvm.loop !935

bb.o:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEET_RKT0_.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = load ptr, ptr %14, align 8, !tbaa !30   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.p
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !34
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %bb.o
  %.pn = phi { ptr, i32 } [ %i.dy, %bb.o ], [ %i.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %i.dz, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.ef = load ptr, ptr %13, align 8, !tbaa !30   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.a
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.eh = load i64, ptr %i.a, align 8, !tbaa !34
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %common.resume

bb.q:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEET_RKT0_.exit48
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.r:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit50
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = load ptr, ptr %16, align 8, !tbaa !30   ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.r
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !34
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.q
  %.pn23 = phi { ptr, i32 } [ %i.ej, %bb.q ], [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %i.ek, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.eq = load ptr, ptr %15, align 8, !tbaa !30   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.an
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.es = load i64, ptr %i.an, align 8, !tbaa !34
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %common.resume

bb.s:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEET_RKT0_.exit64
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.t:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit66
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = load ptr, ptr %18, align 8, !tbaa !30   ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.cj
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.t
  %i.ey = load i64, ptr %i.cj, align 8, !tbaa !34
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.s
  %.pn34 = phi { ptr, i32 } [ %i.eu, %bb.s ], [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.ev, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.fa = load ptr, ptr %17, align 8, !tbaa !30   ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.bz
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.fc = load i64, ptr %i.bz, align 8, !tbaa !34
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %common.resume

.preheader172:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.fe = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 8 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
end_hunk_2
begin_hunk_3_@_Z39test_conversion_from_integral_to_stringIiwEvT0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  invoke void @_Z6to_strIwiENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.9") align 8 %14, i32 noundef -2147483648)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiEET_RKT0_.exit
  %i.w = load i64, ptr %i.b, align 8, !tbaa !168  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !168
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.c, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %14, align 8, !tbaa !180
  %i.ac = load ptr, ptr %13, align 8, !tbaa !180
  %i.ad = call i32 @wmemcmp(ptr noundef %i.ac, ptr noundef %i.ab, i64 noundef %i.w) #36
  %i.ae = icmp eq i32 %i.ad, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.af = phi i1 [ false, %bb.b ], [ %i.ae, %bb.d ], [ true, %bb.c ]
  %i.ag = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 163, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIiwEvT0_, i1 noundef zeroext %i.af)
          to label %bb.e unwind label %bb.p       ; 0 uses

bb.e:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ah = load ptr, ptr %14, align 8, !tbaa !180  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !34
  %i.al = shl i64 %i.ak, 2
  %i.am = add i64 %i.al, 4
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.am) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.an = load ptr, ptr %13, align 8, !tbaa !180  ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.a
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !34
  %i.aq = shl i64 %i.ap, 2
  %i.ar = add i64 %i.aq, 4
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 8 uses
  store ptr %i.as, ptr %15, align 8, !tbaa !165, !alias.scope !1007
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store i64 0, ptr %i.at, align 8, !tbaa !168, !alias.scope !1007
  store i32 0, ptr %i.as, align 8, !tbaa !170, !alias.scope !1007
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32, !noalias !1007
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 2 uses
  store ptr %10, ptr %i.au, align 8, !tbaa !835, !noalias !1007
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 84 ; 4 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !837, !noalias !1007
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32, !noalias !1007
  store i32 2147483647, ptr %9, align 8, !tbaa !838, !noalias !1007
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !840, !noalias !1007
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 48, ptr %i.ay, align 8, !tbaa !841, !noalias !1007
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 48, ptr %i.az, align 4, !tbaa !842, !noalias !1007
  %i.ba = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEjwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiE11try_convertERKiRS7_.exit.i.i46 unwind label %.body.i41 ; 3 uses

_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiE11try_convertERKiRS7_.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32, !noalias !1007
  store ptr %i.ba, ptr %i.au, align 8, !tbaa !835, !noalias !1007
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !837, !noalias !1007
  %i.bb = load i64, ptr %i.at, align 8, !tbaa !168, !alias.scope !1007
  %i.bc = ptrtoint ptr %i.aw to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 2
  %i.bg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef %i.bb, ptr noundef %i.ba, i64 noundef %i.bf)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiEET_RKT0_.exit48 unwind label %.body.i41 ; 0 uses

.body.i41:                                        ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiE11try_convertERKiRS7_.exit.i.i46, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %15, align 8, !tbaa !180, !alias.scope !1007 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.as
  br i1 %i.bj, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i42

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i42: ; preds = %.body.i41
  %i.bk = load i64, ptr %i.as, align 8, !tbaa !34, !alias.scope !1007
  %i.bl = shl i64 %i.bk, 2
  %i.bm = add i64 %i.bl, 4
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #34
  br label %common.resume

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiEET_RKT0_.exit48: ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiE11try_convertERKiRS7_.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32, !noalias !1007
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  invoke void @_Z6to_strIwiENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.9") align 8 %16, i32 noundef 2147483647)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiEET_RKT0_.exit48
  %i.bn = load i64, ptr %i.at, align 8, !tbaa !168 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !168
  %i.bq = icmp eq i64 %i.bn, %i.bp
  br i1 %i.bq, label %bb.g, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49

bb.g:                                             ; preds = %bb.f
  %i.br = icmp eq i64 %i.bn, 0
  br i1 %i.br, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %16, align 8, !tbaa !180
  %i.bt = load ptr, ptr %15, align 8, !tbaa !180
  %i.bu = call i32 @wmemcmp(ptr noundef %i.bt, ptr noundef %i.bs, i64 noundef %i.bn) #36
  %i.bv = icmp eq i32 %i.bu, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49: ; preds = %bb.f, %bb.g, %bb.h
  %i.bw = phi i1 [ false, %bb.f ], [ %i.bv, %bb.h ], [ true, %bb.g ]
  %i.bx = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 166, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIiwEvT0_, i1 noundef zeroext %i.bw)
          to label %bb.i unwind label %bb.r       ; 0 uses

bb.i:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49
  %i.by = load ptr, ptr %16, align 8, !tbaa !180  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i50: ; preds = %bb.i
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !34
  %i.cc = shl i64 %i.cb, 2
  %i.cd = add i64 %i.cc, 4
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cd) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit52: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.ce = load ptr, ptr %15, align 8, !tbaa !180  ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.as
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit52
  %i.cg = load i64, ptr %i.as, align 8, !tbaa !34
  %i.ch = shl i64 %i.cg, 2
  %i.ci = add i64 %i.ch, 4
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit52, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.cj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 8 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 84 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  br label %bb.j

.preheader168:                                    ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit70
  %i.cu = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 84 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  br label %bb.u

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit70
  %storemerge196 = phi i32 [ -2147483648, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit55 ], [ %i.em, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit70 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  store ptr %i.cj, ptr %17, align 8, !tbaa !165, !alias.scope !1010
  store i64 0, ptr %i.ck, align 8, !tbaa !168, !alias.scope !1010
  store i32 0, ptr %i.cj, align 8, !tbaa !170, !alias.scope !1010
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32, !noalias !1010
  store ptr %8, ptr %i.cl, align 8, !tbaa !835, !noalias !1010
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !837, !noalias !1010
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !1010
  store i32 %storemerge196, ptr %7, align 8, !tbaa !838, !noalias !1010
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !840, !noalias !1010
  store i32 48, ptr %i.cp, align 8, !tbaa !841, !noalias !1010
  store i32 48, ptr %i.cq, align 4, !tbaa !842, !noalias !1010
  %i.df = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEjwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiE11try_convertERKiRS7_.exit.i.i61 unwind label %.body.i56

_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiE11try_convertERKiRS7_.exit.i.i61: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !1010
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -4 ; 4 uses
  store i32 45, ptr %i.dg, align 4, !tbaa !170
  store ptr %i.dg, ptr %i.cl, align 8, !tbaa !835, !noalias !1010
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !837, !noalias !1010
  %i.dh = load i64, ptr %i.ck, align 8, !tbaa !168, !alias.scope !1010
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.cr, %i.di
  %i.dk = ashr exact i64 %i.dj, 2
  %i.dl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef %i.dh, ptr noundef nonnull %i.dg, i64 noundef %i.dk)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiEET_RKT0_.exit63 unwind label %.body.i56 ; 0 uses

.body.i56:                                        ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiE11try_convertERKiRS7_.exit.i.i61, %bb.j
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = load ptr, ptr %17, align 8, !tbaa !180, !alias.scope !1010 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.cj
  br i1 %i.do, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i57

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i57: ; preds = %.body.i56
  %i.dp = load i64, ptr %i.cj, align 8, !tbaa !34, !alias.scope !1010
  %i.dq = shl i64 %i.dp, 2
  %i.dr = add i64 %i.dq, 4
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #34
  br label %common.resume

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiEET_RKT0_.exit63: ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiE11try_convertERKiRS7_.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32, !noalias !1010
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  invoke void @_Z6to_strIwiENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.9") align 8 %18, i32 noundef %storemerge196)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiEET_RKT0_.exit63
  %i.ds = load i64, ptr %i.ck, align 8, !tbaa !168 ; 3 uses
  %i.dt = load i64, ptr %i.cs, align 8, !tbaa !168
  %i.du = icmp eq i64 %i.ds, %i.dt
  br i1 %i.du, label %bb.l, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit64

bb.l:                                             ; preds = %bb.k
  %i.dv = icmp eq i64 %i.ds, 0
  br i1 %i.dv, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit64, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dw = load ptr, ptr %18, align 8, !tbaa !180
  %i.dx = load ptr, ptr %17, align 8, !tbaa !180
  %i.dy = call i32 @wmemcmp(ptr noundef %i.dx, ptr noundef %i.dw, i64 noundef %i.ds) #36
  %i.dz = icmp eq i32 %i.dy, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit64

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit64: ; preds = %bb.k, %bb.l, %bb.m
  %i.ea = phi i1 [ false, %bb.k ], [ %i.dz, %bb.m ], [ true, %bb.l ]
  %i.eb = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 185, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIiwEvT0_, i1 noundef zeroext %i.ea)
          to label %bb.n unwind label %bb.t       ; 0 uses

bb.n:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit64
  %i.ec = load ptr, ptr %18, align 8, !tbaa !180  ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.ct
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i65: ; preds = %bb.n
  %i.ee = load i64, ptr %i.ct, align 8, !tbaa !34
  %i.ef = shl i64 %i.ee, 2
  %i.eg = add i64 %i.ef, 4
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit67: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.eh = load ptr, ptr %17, align 8, !tbaa !180  ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.cj
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit67
  %i.ej = load i64, ptr %i.cj, align 8, !tbaa !34
  %i.ek = shl i64 %i.ej, 2
  %i.el = add i64 %i.ek, 4
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit70: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.em = add nuw nsw i32 %storemerge196, 1       ; 2 uses
  %exitcond.not = icmp eq i32 %i.em, -2147483148
  br i1 %exitcond.not, label %.preheader168, label %bb.j, !llvm.loop !1013

bb.o:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiEET_RKT0_.exit
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit73

bb.p:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %14, align 8, !tbaa !180  ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i71: ; preds = %bb.p
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !34
  %i.et = shl i64 %i.es, 2
  %i.eu = add i64 %i.et, 4
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.eu) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit73: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i71, %bb.o
  %.pn = phi { ptr, i32 } [ %i.en, %bb.o ], [ %i.eo, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i71 ], [ %i.eo, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.ev = load ptr, ptr %13, align 8, !tbaa !180  ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.a
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit73
  %i.ex = load i64, ptr %i.a, align 8, !tbaa !34
  %i.ey = shl i64 %i.ex, 2
  %i.ez = add i64 %i.ey, 4
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ez) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %common.resume

bb.q:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiEET_RKT0_.exit48
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit79

bb.r:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fc = load ptr, ptr %16, align 8, !tbaa !180  ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i77: ; preds = %bb.r
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !34
  %i.fg = shl i64 %i.ff, 2
  %i.fh = add i64 %i.fg, 4
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fh) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit79: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i77, %bb.q
  %.pn23 = phi { ptr, i32 } [ %i.fa, %bb.q ], [ %i.fb, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i77 ], [ %i.fb, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.fi = load ptr, ptr %15, align 8, !tbaa !180  ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.as
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit79
  %i.fk = load i64, ptr %i.as, align 8, !tbaa !34
  %i.fl = shl i64 %i.fk, 2
  %i.fm = add i64 %i.fl, 4
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fm) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit82: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit79, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %common.resume

bb.s:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiEET_RKT0_.exit63
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit85

bb.t:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit64
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fp = load ptr, ptr %18, align 8, !tbaa !180  ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.ct
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i83: ; preds = %bb.t
  %i.fr = load i64, ptr %i.ct, align 8, !tbaa !34
  %i.fs = shl i64 %i.fr, 2
  %i.ft = add i64 %i.fs, 4
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit85: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i83, %bb.s
  %.pn34 = phi { ptr, i32 } [ %i.fn, %bb.s ], [ %i.fo, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i83 ], [ %i.fo, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.fu = load ptr, ptr %17, align 8, !tbaa !180  ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.cj
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i86: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit85
  %i.fw = load i64, ptr %i.cj, align 8, !tbaa !34
  %i.fx = shl i64 %i.fw, 2
  %i.fy = add i64 %i.fx, 4
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit88
end_hunk_3
begin_hunk_4_@_Z39test_conversion_from_integral_to_stringIlcEvT0_:bb.a
common.resume:                                    ; preds = %.body.i135, %.body.i113, %.body.i91, %.body.i57, %.body.i41, %.body.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.hu, %.body.i113 ], [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156 ], [ %i.p, %.body.i ], [ %i.bb, %.body.i41 ], [ %i.db, %.body.i57 ], [ %i.ft, %.body.i91 ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42 ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58 ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92 ], [ %i.hu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114 ], [ %i.jl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ], [ %.pn23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %.pn32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %.pn30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ], [ %i.jl, %.body.i135 ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEET_RKT0_.exit: ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElE11try_convertERKlRS7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32, !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  invoke void @_Z6to_strIclENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i64 noundef -9223372036854775808)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEET_RKT0_.exit
  %i.u = load i64, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.c:                                             ; preds = %bb.b
  %i.y = icmp eq i64 %i.u, 0
  br i1 %i.y, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %14, align 8, !tbaa !30
  %i.aa = load ptr, ptr %13, align 8, !tbaa !30
  %bcmp.i = call i32 @bcmp(ptr %i.aa, ptr %i.z, i64 %i.u)
  %i.ab = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.ac = phi i1 [ false, %bb.b ], [ %i.ab, %bb.d ], [ true, %bb.c ]
  %i.ad = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 163, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIlcEvT0_, i1 noundef zeroext %i.ac)
          to label %bb.e unwind label %bb.p       ; 0 uses

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ae = load ptr, ptr %14, align 8, !tbaa !30   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !34
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.aj = load ptr, ptr %13, align 8, !tbaa !30   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = load i64, ptr %i.a, align 8, !tbaa !34
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 8 uses
  store ptr %i.an, ptr %15, align 8, !tbaa !27, !alias.scope !1384
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store i64 0, ptr %i.ao, align 8, !tbaa !32, !alias.scope !1384
  store i8 0, ptr %i.an, align 8, !tbaa !34, !alias.scope !1384
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32, !noalias !1384
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  store ptr %10, ptr %i.ap, align 8, !tbaa !1273, !noalias !1384
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 39 ; 4 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !1275, !noalias !1384
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32, !noalias !1384
  store i64 9223372036854775807, ptr %9, align 8, !tbaa !1276, !noalias !1384
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !1278, !noalias !1384
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 48, ptr %i.at, align 8, !tbaa !1279, !noalias !1384
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 48, ptr %i.au, align 4, !tbaa !1280, !noalias !1384
  %i.av = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIcEmcE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElE11try_convertERKlRS7_.exit.i.i46 unwind label %.body.i41 ; 3 uses

_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElE11try_convertERKlRS7_.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32, !noalias !1384
  store ptr %i.av, ptr %i.ap, align 8, !tbaa !1273, !noalias !1384
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !1275, !noalias !1384
  %i.aw = load i64, ptr %i.ao, align 8, !tbaa !32, !alias.scope !1384
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef %i.aw, ptr noundef %i.av, i64 noundef %i.az)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEET_RKT0_.exit48 unwind label %.body.i41 ; 0 uses

.body.i41:                                        ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElE11try_convertERKlRS7_.exit.i.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %15, align 8, !tbaa !30, !alias.scope !1384 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.an
  br i1 %i.bd, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42: ; preds = %.body.i41
  %i.be = load i64, ptr %i.an, align 8, !tbaa !34, !alias.scope !1384
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #34
  br label %common.resume

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEET_RKT0_.exit48: ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElE11try_convertERKlRS7_.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32, !noalias !1384
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  invoke void @_Z6to_strIclENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, i64 noundef 9223372036854775807)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEET_RKT0_.exit48
  %i.bg = load i64, ptr %i.ao, align 8, !tbaa !32 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !32
  %i.bj = icmp eq i64 %i.bg, %i.bi
  br i1 %i.bj, label %bb.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit50

bb.g:                                             ; preds = %bb.f
  %i.bk = icmp eq i64 %i.bg, 0
  br i1 %i.bk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit50, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = load ptr, ptr %16, align 8, !tbaa !30
  %i.bm = load ptr, ptr %15, align 8, !tbaa !30
  %bcmp.i49 = call i32 @bcmp(ptr %i.bm, ptr %i.bl, i64 %i.bg)
  %i.bn = icmp eq i32 %bcmp.i49, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit50

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit50: ; preds = %bb.f, %bb.g, %bb.h
  %i.bo = phi i1 [ false, %bb.f ], [ %i.bn, %bb.h ], [ true, %bb.g ]
  %i.bp = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 166, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIlcEvT0_, i1 noundef zeroext %i.bo)
          to label %bb.i unwind label %bb.r       ; 0 uses

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit50
  %i.bq = load ptr, ptr %16, align 8, !tbaa !30   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.i
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !34
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.bv = load ptr, ptr %15, align 8, !tbaa !30   ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.an
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.bx = load i64, ptr %i.an, align 8, !tbaa !34
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.bz = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 39 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  br label %bb.j

.preheader173:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %i.ck = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 8 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 39 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  br label %bb.u

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %storemerge201 = phi i64 [ -9223372036854775808, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  store ptr %i.bz, ptr %17, align 8, !tbaa !27, !alias.scope !1387
  store i64 0, ptr %i.ca, align 8, !tbaa !32, !alias.scope !1387
  store i8 0, ptr %i.bz, align 8, !tbaa !34, !alias.scope !1387
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32, !noalias !1387
  store ptr %8, ptr %i.cb, align 8, !tbaa !1273, !noalias !1387
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !1275, !noalias !1387
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !1387
  store i64 %storemerge201, ptr %7, align 8, !tbaa !1276, !noalias !1387
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !1278, !noalias !1387
  store i8 48, ptr %i.cf, align 8, !tbaa !1279, !noalias !1387
  store i32 48, ptr %i.cg, align 4, !tbaa !1280, !noalias !1387
  %i.cv = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIcEmcE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElE11try_convertERKlRS7_.exit.i.i62 unwind label %.body.i57

_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElE11try_convertERKlRS7_.exit.i.i62: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !1387
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -1 ; 4 uses
  store i8 45, ptr %i.cw, align 1, !tbaa !34
  store ptr %i.cw, ptr %i.cb, align 8, !tbaa !1273, !noalias !1387
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !1275, !noalias !1387
  %i.cx = load i64, ptr %i.ca, align 8, !tbaa !32, !alias.scope !1387
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.ch, %i.cy
  %i.da = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef %i.cx, ptr noundef nonnull %i.cw, i64 noundef %i.cz)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEET_RKT0_.exit64 unwind label %.body.i57 ; 0 uses

.body.i57:                                        ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElE11try_convertERKlRS7_.exit.i.i62, %bb.j
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = load ptr, ptr %17, align 8, !tbaa !30, !alias.scope !1387 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.bz
  br i1 %i.dd, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58: ; preds = %.body.i57
  %i.de = load i64, ptr %i.bz, align 8, !tbaa !34, !alias.scope !1387
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #34
  br label %common.resume

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEET_RKT0_.exit64: ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElE11try_convertERKlRS7_.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32, !noalias !1387
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  invoke void @_Z6to_strIclENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, i64 noundef %storemerge201)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEET_RKT0_.exit64
  %i.dg = load i64, ptr %i.ca, align 8, !tbaa !32 ; 3 uses
  %i.dh = load i64, ptr %i.ci, align 8, !tbaa !32
  %i.di = icmp eq i64 %i.dg, %i.dh
  br i1 %i.di, label %bb.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit66

bb.l:                                             ; preds = %bb.k
  %i.dj = icmp eq i64 %i.dg, 0
  br i1 %i.dj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit66, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dk = load ptr, ptr %18, align 8, !tbaa !30
  %i.dl = load ptr, ptr %17, align 8, !tbaa !30
  %bcmp.i65 = call i32 @bcmp(ptr %i.dl, ptr %i.dk, i64 %i.dg)
  %i.dm = icmp eq i32 %bcmp.i65, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit66

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit66: ; preds = %bb.k, %bb.l, %bb.m
  %i.dn = phi i1 [ false, %bb.k ], [ %i.dm, %bb.m ], [ true, %bb.l ]
  %i.do = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 185, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIlcEvT0_, i1 noundef zeroext %i.dn)
          to label %bb.n unwind label %bb.t       ; 0 uses

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit66
  %i.dp = load ptr, ptr %18, align 8, !tbaa !30   ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.cj
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.n
  %i.dr = load i64, ptr %i.cj, align 8, !tbaa !34
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.dt = load ptr, ptr %17, align 8, !tbaa !30   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.bz
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.dv = load i64, ptr %i.bz, align 8, !tbaa !34
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.dx = add nuw nsw i64 %storemerge201, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.dx, -9223372036854775308
  br i1 %exitcond.not, label %.preheader173, label %bb.j, !llvm.loop !1390

bb.o:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEET_RKT0_.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = load ptr, ptr %14, align 8, !tbaa !30   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.p
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !34
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %bb.o
  %.pn = phi { ptr, i32 } [ %i.dy, %bb.o ], [ %i.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %i.dz, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.ef = load ptr, ptr %13, align 8, !tbaa !30   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.a
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.eh = load i64, ptr %i.a, align 8, !tbaa !34
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %common.resume

bb.q:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEET_RKT0_.exit48
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.r:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit50
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = load ptr, ptr %16, align 8, !tbaa !30   ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.r
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !34
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.q
  %.pn23 = phi { ptr, i32 } [ %i.ej, %bb.q ], [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %i.ek, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.eq = load ptr, ptr %15, align 8, !tbaa !30   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.an
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.es = load i64, ptr %i.an, align 8, !tbaa !34
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %common.resume

bb.s:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEET_RKT0_.exit64
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.t:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit66
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = load ptr, ptr %18, align 8, !tbaa !30   ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.cj
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.t
  %i.ey = load i64, ptr %i.cj, align 8, !tbaa !34
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.s
  %.pn34 = phi { ptr, i32 } [ %i.eu, %bb.s ], [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.ev, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.fa = load ptr, ptr %17, align 8, !tbaa !30   ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.bz
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.fc = load i64, ptr %i.bz, align 8, !tbaa !34
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %common.resume

.preheader172:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.fe = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 8 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
end_hunk_4
begin_hunk_5_@_Z39test_conversion_from_integral_to_stringIlwEvT0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  invoke void @_Z6to_strIwlENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.9") align 8 %14, i64 noundef -9223372036854775808)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEElEET_RKT0_.exit
  %i.w = load i64, ptr %i.b, align 8, !tbaa !168  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !168
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.c, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %14, align 8, !tbaa !180
  %i.ac = load ptr, ptr %13, align 8, !tbaa !180
  %i.ad = call i32 @wmemcmp(ptr noundef %i.ac, ptr noundef %i.ab, i64 noundef %i.w) #36
  %i.ae = icmp eq i32 %i.ad, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.af = phi i1 [ false, %bb.b ], [ %i.ae, %bb.d ], [ true, %bb.c ]
  %i.ag = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 163, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIlwEvT0_, i1 noundef zeroext %i.af)
          to label %bb.e unwind label %bb.p       ; 0 uses

bb.e:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ah = load ptr, ptr %14, align 8, !tbaa !180  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !34
  %i.al = shl i64 %i.ak, 2
  %i.am = add i64 %i.al, 4
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.am) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.an = load ptr, ptr %13, align 8, !tbaa !180  ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.a
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !34
  %i.aq = shl i64 %i.ap, 2
  %i.ar = add i64 %i.aq, 4
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 8 uses
  store ptr %i.as, ptr %15, align 8, !tbaa !165, !alias.scope !1469
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store i64 0, ptr %i.at, align 8, !tbaa !168, !alias.scope !1469
  store i32 0, ptr %i.as, align 8, !tbaa !170, !alias.scope !1469
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32, !noalias !1469
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 160 ; 2 uses
  store ptr %10, ptr %i.au, align 8, !tbaa !1284, !noalias !1469
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 168 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 156 ; 4 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !1286, !noalias !1469
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32, !noalias !1469
  store i64 9223372036854775807, ptr %9, align 8, !tbaa !1287, !noalias !1469
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !1289, !noalias !1469
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 48, ptr %i.ay, align 8, !tbaa !1290, !noalias !1469
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 48, ptr %i.az, align 4, !tbaa !1291, !noalias !1469
  %i.ba = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEmwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEElE11try_convertERKlRS7_.exit.i.i46 unwind label %.body.i41 ; 3 uses

_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEElE11try_convertERKlRS7_.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32, !noalias !1469
  store ptr %i.ba, ptr %i.au, align 8, !tbaa !1284, !noalias !1469
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !1286, !noalias !1469
  %i.bb = load i64, ptr %i.at, align 8, !tbaa !168, !alias.scope !1469
  %i.bc = ptrtoint ptr %i.aw to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 2
  %i.bg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef %i.bb, ptr noundef %i.ba, i64 noundef %i.bf)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEElEET_RKT0_.exit48 unwind label %.body.i41 ; 0 uses

.body.i41:                                        ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEElE11try_convertERKlRS7_.exit.i.i46, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %15, align 8, !tbaa !180, !alias.scope !1469 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.as
  br i1 %i.bj, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i42

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i42: ; preds = %.body.i41
  %i.bk = load i64, ptr %i.as, align 8, !tbaa !34, !alias.scope !1469
  %i.bl = shl i64 %i.bk, 2
  %i.bm = add i64 %i.bl, 4
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #34
  br label %common.resume

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEElEET_RKT0_.exit48: ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEElE11try_convertERKlRS7_.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32, !noalias !1469
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  invoke void @_Z6to_strIwlENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.9") align 8 %16, i64 noundef 9223372036854775807)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEElEET_RKT0_.exit48
  %i.bn = load i64, ptr %i.at, align 8, !tbaa !168 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !168
  %i.bq = icmp eq i64 %i.bn, %i.bp
  br i1 %i.bq, label %bb.g, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49

bb.g:                                             ; preds = %bb.f
  %i.br = icmp eq i64 %i.bn, 0
  br i1 %i.br, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %16, align 8, !tbaa !180
  %i.bt = load ptr, ptr %15, align 8, !tbaa !180
  %i.bu = call i32 @wmemcmp(ptr noundef %i.bt, ptr noundef %i.bs, i64 noundef %i.bn) #36
  %i.bv = icmp eq i32 %i.bu, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49: ; preds = %bb.f, %bb.g, %bb.h
  %i.bw = phi i1 [ false, %bb.f ], [ %i.bv, %bb.h ], [ true, %bb.g ]
  %i.bx = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 166, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIlwEvT0_, i1 noundef zeroext %i.bw)
          to label %bb.i unwind label %bb.r       ; 0 uses

bb.i:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49
  %i.by = load ptr, ptr %16, align 8, !tbaa !180  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i50: ; preds = %bb.i
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !34
  %i.cc = shl i64 %i.cb, 2
  %i.cd = add i64 %i.cc, 4
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cd) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit52: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.ce = load ptr, ptr %15, align 8, !tbaa !180  ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.as
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit52
  %i.cg = load i64, ptr %i.as, align 8, !tbaa !34
  %i.ch = shl i64 %i.cg, 2
  %i.ci = add i64 %i.ch, 4
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit52, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.cj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 8 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 160 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 168 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 156 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  br label %bb.j

.preheader168:                                    ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit70
  %i.cu = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 156 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  br label %bb.u

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit70
  %storemerge196 = phi i64 [ -9223372036854775808, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit55 ], [ %i.em, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit70 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  store ptr %i.cj, ptr %17, align 8, !tbaa !165, !alias.scope !1472
  store i64 0, ptr %i.ck, align 8, !tbaa !168, !alias.scope !1472
  store i32 0, ptr %i.cj, align 8, !tbaa !170, !alias.scope !1472
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32, !noalias !1472
  store ptr %8, ptr %i.cl, align 8, !tbaa !1284, !noalias !1472
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !1286, !noalias !1472
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !1472
  store i64 %storemerge196, ptr %7, align 8, !tbaa !1287, !noalias !1472
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !1289, !noalias !1472
  store i32 48, ptr %i.cp, align 8, !tbaa !1290, !noalias !1472
  store i32 48, ptr %i.cq, align 4, !tbaa !1291, !noalias !1472
  %i.df = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEmwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEElE11try_convertERKlRS7_.exit.i.i61 unwind label %.body.i56

_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEElE11try_convertERKlRS7_.exit.i.i61: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !1472
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -4 ; 4 uses
  store i32 45, ptr %i.dg, align 4, !tbaa !170
  store ptr %i.dg, ptr %i.cl, align 8, !tbaa !1284, !noalias !1472
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !1286, !noalias !1472
  %i.dh = load i64, ptr %i.ck, align 8, !tbaa !168, !alias.scope !1472
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.cr, %i.di
  %i.dk = ashr exact i64 %i.dj, 2
  %i.dl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef %i.dh, ptr noundef nonnull %i.dg, i64 noundef %i.dk)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEElEET_RKT0_.exit63 unwind label %.body.i56 ; 0 uses

.body.i56:                                        ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEElE11try_convertERKlRS7_.exit.i.i61, %bb.j
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = load ptr, ptr %17, align 8, !tbaa !180, !alias.scope !1472 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.cj
  br i1 %i.do, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i57

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i57: ; preds = %.body.i56
  %i.dp = load i64, ptr %i.cj, align 8, !tbaa !34, !alias.scope !1472
  %i.dq = shl i64 %i.dp, 2
  %i.dr = add i64 %i.dq, 4
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #34
  br label %common.resume

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEElEET_RKT0_.exit63: ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEElE11try_convertERKlRS7_.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32, !noalias !1472
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  invoke void @_Z6to_strIwlENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.9") align 8 %18, i64 noundef %storemerge196)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEElEET_RKT0_.exit63
  %i.ds = load i64, ptr %i.ck, align 8, !tbaa !168 ; 3 uses
  %i.dt = load i64, ptr %i.cs, align 8, !tbaa !168
  %i.du = icmp eq i64 %i.ds, %i.dt
  br i1 %i.du, label %bb.l, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit64

bb.l:                                             ; preds = %bb.k
  %i.dv = icmp eq i64 %i.ds, 0
  br i1 %i.dv, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit64, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dw = load ptr, ptr %18, align 8, !tbaa !180
  %i.dx = load ptr, ptr %17, align 8, !tbaa !180
  %i.dy = call i32 @wmemcmp(ptr noundef %i.dx, ptr noundef %i.dw, i64 noundef %i.ds) #36
  %i.dz = icmp eq i32 %i.dy, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit64

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit64: ; preds = %bb.k, %bb.l, %bb.m
  %i.ea = phi i1 [ false, %bb.k ], [ %i.dz, %bb.m ], [ true, %bb.l ]
  %i.eb = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 185, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIlwEvT0_, i1 noundef zeroext %i.ea)
          to label %bb.n unwind label %bb.t       ; 0 uses

bb.n:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit64
  %i.ec = load ptr, ptr %18, align 8, !tbaa !180  ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.ct
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i65: ; preds = %bb.n
  %i.ee = load i64, ptr %i.ct, align 8, !tbaa !34
  %i.ef = shl i64 %i.ee, 2
  %i.eg = add i64 %i.ef, 4
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit67: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.eh = load ptr, ptr %17, align 8, !tbaa !180  ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.cj
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit67
  %i.ej = load i64, ptr %i.cj, align 8, !tbaa !34
  %i.ek = shl i64 %i.ej, 2
  %i.el = add i64 %i.ek, 4
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit70: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.em = add nuw nsw i64 %storemerge196, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.em, -9223372036854775308
  br i1 %exitcond.not, label %.preheader168, label %bb.j, !llvm.loop !1475

bb.o:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEElEET_RKT0_.exit
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit73

bb.p:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %14, align 8, !tbaa !180  ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i71: ; preds = %bb.p
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !34
  %i.et = shl i64 %i.es, 2
  %i.eu = add i64 %i.et, 4
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.eu) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit73: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i71, %bb.o
  %.pn = phi { ptr, i32 } [ %i.en, %bb.o ], [ %i.eo, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i71 ], [ %i.eo, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.ev = load ptr, ptr %13, align 8, !tbaa !180  ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.a
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit73
  %i.ex = load i64, ptr %i.a, align 8, !tbaa !34
  %i.ey = shl i64 %i.ex, 2
  %i.ez = add i64 %i.ey, 4
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ez) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %common.resume

bb.q:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEElEET_RKT0_.exit48
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit79

bb.r:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fc = load ptr, ptr %16, align 8, !tbaa !180  ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i77: ; preds = %bb.r
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !34
  %i.fg = shl i64 %i.ff, 2
  %i.fh = add i64 %i.fg, 4
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fh) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit79: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i77, %bb.q
  %.pn23 = phi { ptr, i32 } [ %i.fa, %bb.q ], [ %i.fb, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i77 ], [ %i.fb, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.fi = load ptr, ptr %15, align 8, !tbaa !180  ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.as
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit79
  %i.fk = load i64, ptr %i.as, align 8, !tbaa !34
  %i.fl = shl i64 %i.fk, 2
  %i.fm = add i64 %i.fl, 4
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fm) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit82: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit79, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %common.resume

bb.s:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEElEET_RKT0_.exit63
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit85

bb.t:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit64
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fp = load ptr, ptr %18, align 8, !tbaa !180  ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.ct
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i83: ; preds = %bb.t
  %i.fr = load i64, ptr %i.ct, align 8, !tbaa !34
  %i.fs = shl i64 %i.fr, 2
  %i.ft = add i64 %i.fs, 4
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit85: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i83, %bb.s
  %.pn34 = phi { ptr, i32 } [ %i.fn, %bb.s ], [ %i.fo, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i83 ], [ %i.fo, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.fu = load ptr, ptr %17, align 8, !tbaa !180  ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.cj
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i86: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit85
  %i.fw = load i64, ptr %i.cj, align 8, !tbaa !34
  %i.fx = shl i64 %i.fw, 2
  %i.fy = add i64 %i.fx, 4
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit88
end_hunk_5
begin_hunk_6_@_Z39test_conversion_from_integral_to_stringIxcEvT0_:bb.a
common.resume:                                    ; preds = %.body.i135, %.body.i113, %.body.i91, %.body.i57, %.body.i41, %.body.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.hu, %.body.i113 ], [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156 ], [ %i.p, %.body.i ], [ %i.bb, %.body.i41 ], [ %i.db, %.body.i57 ], [ %i.ft, %.body.i91 ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42 ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58 ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92 ], [ %i.hu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114 ], [ %i.jl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ], [ %.pn23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %.pn32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %.pn30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ], [ %i.jl, %.body.i135 ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExEET_RKT0_.exit: ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExE11try_convertERKxRS7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32, !noalias !1833
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  invoke void @_Z6to_strIcxENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i64 noundef -9223372036854775808)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExEET_RKT0_.exit
  %i.u = load i64, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.c:                                             ; preds = %bb.b
  %i.y = icmp eq i64 %i.u, 0
  br i1 %i.y, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %14, align 8, !tbaa !30
  %i.aa = load ptr, ptr %13, align 8, !tbaa !30
  %bcmp.i = call i32 @bcmp(ptr %i.aa, ptr %i.z, i64 %i.u)
  %i.ab = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.ac = phi i1 [ false, %bb.b ], [ %i.ab, %bb.d ], [ true, %bb.c ]
  %i.ad = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 163, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIxcEvT0_, i1 noundef zeroext %i.ac)
          to label %bb.e unwind label %bb.p       ; 0 uses

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ae = load ptr, ptr %14, align 8, !tbaa !30   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !34
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.aj = load ptr, ptr %13, align 8, !tbaa !30   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = load i64, ptr %i.a, align 8, !tbaa !34
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 8 uses
  store ptr %i.an, ptr %15, align 8, !tbaa !27, !alias.scope !1836
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store i64 0, ptr %i.ao, align 8, !tbaa !32, !alias.scope !1836
  store i8 0, ptr %i.an, align 8, !tbaa !34, !alias.scope !1836
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32, !noalias !1836
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  store ptr %10, ptr %i.ap, align 8, !tbaa !1273, !noalias !1836
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 39 ; 4 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !1275, !noalias !1836
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32, !noalias !1836
  store i64 9223372036854775807, ptr %9, align 8, !tbaa !1737, !noalias !1836
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !1739, !noalias !1836
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 48, ptr %i.at, align 8, !tbaa !1740, !noalias !1836
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 48, ptr %i.au, align 4, !tbaa !1741, !noalias !1836
  %i.av = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIcEycE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExE11try_convertERKxRS7_.exit.i.i46 unwind label %.body.i41 ; 3 uses

_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExE11try_convertERKxRS7_.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32, !noalias !1836
  store ptr %i.av, ptr %i.ap, align 8, !tbaa !1273, !noalias !1836
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !1275, !noalias !1836
  %i.aw = load i64, ptr %i.ao, align 8, !tbaa !32, !alias.scope !1836
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef %i.aw, ptr noundef %i.av, i64 noundef %i.az)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExEET_RKT0_.exit48 unwind label %.body.i41 ; 0 uses

.body.i41:                                        ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExE11try_convertERKxRS7_.exit.i.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %15, align 8, !tbaa !30, !alias.scope !1836 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.an
  br i1 %i.bd, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42: ; preds = %.body.i41
  %i.be = load i64, ptr %i.an, align 8, !tbaa !34, !alias.scope !1836
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #34
  br label %common.resume

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExEET_RKT0_.exit48: ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExE11try_convertERKxRS7_.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32, !noalias !1836
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  invoke void @_Z6to_strIcxENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, i64 noundef 9223372036854775807)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExEET_RKT0_.exit48
  %i.bg = load i64, ptr %i.ao, align 8, !tbaa !32 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !32
  %i.bj = icmp eq i64 %i.bg, %i.bi
  br i1 %i.bj, label %bb.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit50

bb.g:                                             ; preds = %bb.f
  %i.bk = icmp eq i64 %i.bg, 0
  br i1 %i.bk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit50, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = load ptr, ptr %16, align 8, !tbaa !30
  %i.bm = load ptr, ptr %15, align 8, !tbaa !30
  %bcmp.i49 = call i32 @bcmp(ptr %i.bm, ptr %i.bl, i64 %i.bg)
  %i.bn = icmp eq i32 %bcmp.i49, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit50

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit50: ; preds = %bb.f, %bb.g, %bb.h
  %i.bo = phi i1 [ false, %bb.f ], [ %i.bn, %bb.h ], [ true, %bb.g ]
  %i.bp = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 166, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIxcEvT0_, i1 noundef zeroext %i.bo)
          to label %bb.i unwind label %bb.r       ; 0 uses

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit50
  %i.bq = load ptr, ptr %16, align 8, !tbaa !30   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.i
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !34
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.bv = load ptr, ptr %15, align 8, !tbaa !30   ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.an
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.bx = load i64, ptr %i.an, align 8, !tbaa !34
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.bz = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 39 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  br label %bb.j

.preheader173:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %i.ck = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 8 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 39 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  br label %bb.u

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %storemerge201 = phi i64 [ -9223372036854775808, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !1839)
  store ptr %i.bz, ptr %17, align 8, !tbaa !27, !alias.scope !1839
  store i64 0, ptr %i.ca, align 8, !tbaa !32, !alias.scope !1839
  store i8 0, ptr %i.bz, align 8, !tbaa !34, !alias.scope !1839
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32, !noalias !1839
  store ptr %8, ptr %i.cb, align 8, !tbaa !1273, !noalias !1839
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !1275, !noalias !1839
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !1839
  store i64 %storemerge201, ptr %7, align 8, !tbaa !1737, !noalias !1839
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !1739, !noalias !1839
  store i8 48, ptr %i.cf, align 8, !tbaa !1740, !noalias !1839
  store i32 48, ptr %i.cg, align 4, !tbaa !1741, !noalias !1839
  %i.cv = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIcEycE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExE11try_convertERKxRS7_.exit.i.i62 unwind label %.body.i57

_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExE11try_convertERKxRS7_.exit.i.i62: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !1839
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -1 ; 4 uses
  store i8 45, ptr %i.cw, align 1, !tbaa !34
  store ptr %i.cw, ptr %i.cb, align 8, !tbaa !1273, !noalias !1839
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !1275, !noalias !1839
  %i.cx = load i64, ptr %i.ca, align 8, !tbaa !32, !alias.scope !1839
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.ch, %i.cy
  %i.da = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef %i.cx, ptr noundef nonnull %i.cw, i64 noundef %i.cz)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExEET_RKT0_.exit64 unwind label %.body.i57 ; 0 uses

.body.i57:                                        ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExE11try_convertERKxRS7_.exit.i.i62, %bb.j
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = load ptr, ptr %17, align 8, !tbaa !30, !alias.scope !1839 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.bz
  br i1 %i.dd, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58: ; preds = %.body.i57
  %i.de = load i64, ptr %i.bz, align 8, !tbaa !34, !alias.scope !1839
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #34
  br label %common.resume

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExEET_RKT0_.exit64: ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExE11try_convertERKxRS7_.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32, !noalias !1839
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  invoke void @_Z6to_strIcxENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, i64 noundef %storemerge201)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExEET_RKT0_.exit64
  %i.dg = load i64, ptr %i.ca, align 8, !tbaa !32 ; 3 uses
  %i.dh = load i64, ptr %i.ci, align 8, !tbaa !32
  %i.di = icmp eq i64 %i.dg, %i.dh
  br i1 %i.di, label %bb.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit66

bb.l:                                             ; preds = %bb.k
  %i.dj = icmp eq i64 %i.dg, 0
  br i1 %i.dj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit66, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dk = load ptr, ptr %18, align 8, !tbaa !30
  %i.dl = load ptr, ptr %17, align 8, !tbaa !30
  %bcmp.i65 = call i32 @bcmp(ptr %i.dl, ptr %i.dk, i64 %i.dg)
  %i.dm = icmp eq i32 %bcmp.i65, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit66

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit66: ; preds = %bb.k, %bb.l, %bb.m
  %i.dn = phi i1 [ false, %bb.k ], [ %i.dm, %bb.m ], [ true, %bb.l ]
  %i.do = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 185, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIxcEvT0_, i1 noundef zeroext %i.dn)
          to label %bb.n unwind label %bb.t       ; 0 uses

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit66
  %i.dp = load ptr, ptr %18, align 8, !tbaa !30   ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.cj
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.n
  %i.dr = load i64, ptr %i.cj, align 8, !tbaa !34
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.dt = load ptr, ptr %17, align 8, !tbaa !30   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.bz
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.dv = load i64, ptr %i.bz, align 8, !tbaa !34
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.dx = add nuw nsw i64 %storemerge201, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.dx, -9223372036854775308
  br i1 %exitcond.not, label %.preheader173, label %bb.j, !llvm.loop !1842

bb.o:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExEET_RKT0_.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = load ptr, ptr %14, align 8, !tbaa !30   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.p
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !34
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %bb.o
  %.pn = phi { ptr, i32 } [ %i.dy, %bb.o ], [ %i.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %i.dz, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.ef = load ptr, ptr %13, align 8, !tbaa !30   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.a
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.eh = load i64, ptr %i.a, align 8, !tbaa !34
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %common.resume

bb.q:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExEET_RKT0_.exit48
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.r:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit50
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = load ptr, ptr %16, align 8, !tbaa !30   ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.r
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !34
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.q
  %.pn23 = phi { ptr, i32 } [ %i.ej, %bb.q ], [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %i.ek, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.eq = load ptr, ptr %15, align 8, !tbaa !30   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.an
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.es = load i64, ptr %i.an, align 8, !tbaa !34
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %common.resume

bb.s:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExEET_RKT0_.exit64
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.t:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit66
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = load ptr, ptr %18, align 8, !tbaa !30   ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.cj
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.t
  %i.ey = load i64, ptr %i.cj, align 8, !tbaa !34
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.s
  %.pn34 = phi { ptr, i32 } [ %i.eu, %bb.s ], [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.ev, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.fa = load ptr, ptr %17, align 8, !tbaa !30   ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.bz
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.fc = load i64, ptr %i.bz, align 8, !tbaa !34
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %common.resume

.preheader172:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.fe = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 8 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
end_hunk_6
begin_hunk_7_@_Z39test_conversion_from_integral_to_stringIxwEvT0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  invoke void @_Z6to_strIwxENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.9") align 8 %14, i64 noundef -9223372036854775808)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEExEET_RKT0_.exit
  %i.w = load i64, ptr %i.b, align 8, !tbaa !168  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !168
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.c, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %14, align 8, !tbaa !180
  %i.ac = load ptr, ptr %13, align 8, !tbaa !180
  %i.ad = call i32 @wmemcmp(ptr noundef %i.ac, ptr noundef %i.ab, i64 noundef %i.w) #36
  %i.ae = icmp eq i32 %i.ad, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.af = phi i1 [ false, %bb.b ], [ %i.ae, %bb.d ], [ true, %bb.c ]
  %i.ag = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 163, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIxwEvT0_, i1 noundef zeroext %i.af)
          to label %bb.e unwind label %bb.p       ; 0 uses

bb.e:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ah = load ptr, ptr %14, align 8, !tbaa !180  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !34
  %i.al = shl i64 %i.ak, 2
  %i.am = add i64 %i.al, 4
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.am) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.an = load ptr, ptr %13, align 8, !tbaa !180  ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.a
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !34
  %i.aq = shl i64 %i.ap, 2
  %i.ar = add i64 %i.aq, 4
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !1921)
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 8 uses
  store ptr %i.as, ptr %15, align 8, !tbaa !165, !alias.scope !1921
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store i64 0, ptr %i.at, align 8, !tbaa !168, !alias.scope !1921
  store i32 0, ptr %i.as, align 8, !tbaa !170, !alias.scope !1921
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32, !noalias !1921
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 160 ; 2 uses
  store ptr %10, ptr %i.au, align 8, !tbaa !1284, !noalias !1921
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 168 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 156 ; 4 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !1286, !noalias !1921
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32, !noalias !1921
  store i64 9223372036854775807, ptr %9, align 8, !tbaa !1745, !noalias !1921
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !1747, !noalias !1921
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 48, ptr %i.ay, align 8, !tbaa !1748, !noalias !1921
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 48, ptr %i.az, align 4, !tbaa !1749, !noalias !1921
  %i.ba = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEywE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEExE11try_convertERKxRS7_.exit.i.i46 unwind label %.body.i41 ; 3 uses

_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEExE11try_convertERKxRS7_.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32, !noalias !1921
  store ptr %i.ba, ptr %i.au, align 8, !tbaa !1284, !noalias !1921
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !1286, !noalias !1921
  %i.bb = load i64, ptr %i.at, align 8, !tbaa !168, !alias.scope !1921
  %i.bc = ptrtoint ptr %i.aw to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 2
  %i.bg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef %i.bb, ptr noundef %i.ba, i64 noundef %i.bf)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEExEET_RKT0_.exit48 unwind label %.body.i41 ; 0 uses

.body.i41:                                        ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEExE11try_convertERKxRS7_.exit.i.i46, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %15, align 8, !tbaa !180, !alias.scope !1921 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.as
  br i1 %i.bj, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i42

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i42: ; preds = %.body.i41
  %i.bk = load i64, ptr %i.as, align 8, !tbaa !34, !alias.scope !1921
  %i.bl = shl i64 %i.bk, 2
  %i.bm = add i64 %i.bl, 4
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #34
  br label %common.resume

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEExEET_RKT0_.exit48: ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEExE11try_convertERKxRS7_.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32, !noalias !1921
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  invoke void @_Z6to_strIwxENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.9") align 8 %16, i64 noundef 9223372036854775807)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEExEET_RKT0_.exit48
  %i.bn = load i64, ptr %i.at, align 8, !tbaa !168 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !168
  %i.bq = icmp eq i64 %i.bn, %i.bp
  br i1 %i.bq, label %bb.g, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49

bb.g:                                             ; preds = %bb.f
  %i.br = icmp eq i64 %i.bn, 0
  br i1 %i.br, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %16, align 8, !tbaa !180
  %i.bt = load ptr, ptr %15, align 8, !tbaa !180
  %i.bu = call i32 @wmemcmp(ptr noundef %i.bt, ptr noundef %i.bs, i64 noundef %i.bn) #36
  %i.bv = icmp eq i32 %i.bu, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49: ; preds = %bb.f, %bb.g, %bb.h
  %i.bw = phi i1 [ false, %bb.f ], [ %i.bv, %bb.h ], [ true, %bb.g ]
  %i.bx = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 166, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIxwEvT0_, i1 noundef zeroext %i.bw)
          to label %bb.i unwind label %bb.r       ; 0 uses

bb.i:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49
  %i.by = load ptr, ptr %16, align 8, !tbaa !180  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i50: ; preds = %bb.i
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !34
  %i.cc = shl i64 %i.cb, 2
  %i.cd = add i64 %i.cc, 4
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cd) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit52: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.ce = load ptr, ptr %15, align 8, !tbaa !180  ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.as
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit52
  %i.cg = load i64, ptr %i.as, align 8, !tbaa !34
  %i.ch = shl i64 %i.cg, 2
  %i.ci = add i64 %i.ch, 4
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit52, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.cj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 8 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 160 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 168 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 156 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  br label %bb.j

.preheader168:                                    ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit70
  %i.cu = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 156 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  br label %bb.u

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit70
  %storemerge196 = phi i64 [ -9223372036854775808, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit55 ], [ %i.em, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit70 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !1924)
  store ptr %i.cj, ptr %17, align 8, !tbaa !165, !alias.scope !1924
  store i64 0, ptr %i.ck, align 8, !tbaa !168, !alias.scope !1924
  store i32 0, ptr %i.cj, align 8, !tbaa !170, !alias.scope !1924
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32, !noalias !1924
  store ptr %8, ptr %i.cl, align 8, !tbaa !1284, !noalias !1924
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !1286, !noalias !1924
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !1924
  store i64 %storemerge196, ptr %7, align 8, !tbaa !1745, !noalias !1924
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !1747, !noalias !1924
  store i32 48, ptr %i.cp, align 8, !tbaa !1748, !noalias !1924
  store i32 48, ptr %i.cq, align 4, !tbaa !1749, !noalias !1924
  %i.df = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEywE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEExE11try_convertERKxRS7_.exit.i.i61 unwind label %.body.i56

_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEExE11try_convertERKxRS7_.exit.i.i61: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !1924
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -4 ; 4 uses
  store i32 45, ptr %i.dg, align 4, !tbaa !170
  store ptr %i.dg, ptr %i.cl, align 8, !tbaa !1284, !noalias !1924
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !1286, !noalias !1924
  %i.dh = load i64, ptr %i.ck, align 8, !tbaa !168, !alias.scope !1924
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.cr, %i.di
  %i.dk = ashr exact i64 %i.dj, 2
  %i.dl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef %i.dh, ptr noundef nonnull %i.dg, i64 noundef %i.dk)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEExEET_RKT0_.exit63 unwind label %.body.i56 ; 0 uses

.body.i56:                                        ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEExE11try_convertERKxRS7_.exit.i.i61, %bb.j
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = load ptr, ptr %17, align 8, !tbaa !180, !alias.scope !1924 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.cj
  br i1 %i.do, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i57

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i57: ; preds = %.body.i56
  %i.dp = load i64, ptr %i.cj, align 8, !tbaa !34, !alias.scope !1924
  %i.dq = shl i64 %i.dp, 2
  %i.dr = add i64 %i.dq, 4
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #34
  br label %common.resume

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEExEET_RKT0_.exit63: ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEExE11try_convertERKxRS7_.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32, !noalias !1924
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  invoke void @_Z6to_strIwxENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.9") align 8 %18, i64 noundef %storemerge196)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEExEET_RKT0_.exit63
  %i.ds = load i64, ptr %i.ck, align 8, !tbaa !168 ; 3 uses
  %i.dt = load i64, ptr %i.cs, align 8, !tbaa !168
  %i.du = icmp eq i64 %i.ds, %i.dt
  br i1 %i.du, label %bb.l, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit64

bb.l:                                             ; preds = %bb.k
  %i.dv = icmp eq i64 %i.ds, 0
  br i1 %i.dv, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit64, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dw = load ptr, ptr %18, align 8, !tbaa !180
  %i.dx = load ptr, ptr %17, align 8, !tbaa !180
  %i.dy = call i32 @wmemcmp(ptr noundef %i.dx, ptr noundef %i.dw, i64 noundef %i.ds) #36
  %i.dz = icmp eq i32 %i.dy, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit64

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit64: ; preds = %bb.k, %bb.l, %bb.m
  %i.ea = phi i1 [ false, %bb.k ], [ %i.dz, %bb.m ], [ true, %bb.l ]
  %i.eb = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 185, ptr noundef nonnull @__PRETTY_FUNCTION__._Z39test_conversion_from_integral_to_stringIxwEvT0_, i1 noundef zeroext %i.ea)
          to label %bb.n unwind label %bb.t       ; 0 uses

bb.n:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit64
  %i.ec = load ptr, ptr %18, align 8, !tbaa !180  ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.ct
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i65: ; preds = %bb.n
  %i.ee = load i64, ptr %i.ct, align 8, !tbaa !34
  %i.ef = shl i64 %i.ee, 2
  %i.eg = add i64 %i.ef, 4
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit67: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.eh = load ptr, ptr %17, align 8, !tbaa !180  ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.cj
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit67
  %i.ej = load i64, ptr %i.cj, align 8, !tbaa !34
  %i.ek = shl i64 %i.ej, 2
  %i.el = add i64 %i.ek, 4
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit70: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.em = add nuw nsw i64 %storemerge196, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.em, -9223372036854775308
  br i1 %exitcond.not, label %.preheader168, label %bb.j, !llvm.loop !1927

bb.o:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEExEET_RKT0_.exit
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit73

bb.p:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %14, align 8, !tbaa !180  ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i71: ; preds = %bb.p
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !34
  %i.et = shl i64 %i.es, 2
  %i.eu = add i64 %i.et, 4
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.eu) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit73: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i71, %bb.o
  %.pn = phi { ptr, i32 } [ %i.en, %bb.o ], [ %i.eo, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i71 ], [ %i.eo, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.ev = load ptr, ptr %13, align 8, !tbaa !180  ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.a
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit73
  %i.ex = load i64, ptr %i.a, align 8, !tbaa !34
  %i.ey = shl i64 %i.ex, 2
  %i.ez = add i64 %i.ey, 4
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ez) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %common.resume

bb.q:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEExEET_RKT0_.exit48
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit79

bb.r:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fc = load ptr, ptr %16, align 8, !tbaa !180  ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i77: ; preds = %bb.r
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !34
  %i.fg = shl i64 %i.ff, 2
  %i.fh = add i64 %i.fg, 4
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fh) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit79: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i77, %bb.q
  %.pn23 = phi { ptr, i32 } [ %i.fa, %bb.q ], [ %i.fb, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i77 ], [ %i.fb, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.fi = load ptr, ptr %15, align 8, !tbaa !180  ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.as
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit79
  %i.fk = load i64, ptr %i.as, align 8, !tbaa !34
  %i.fl = shl i64 %i.fk, 2
  %i.fm = add i64 %i.fl, 4
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fm) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit82: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit79, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %common.resume

bb.s:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEExEET_RKT0_.exit63
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit85

bb.t:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit64
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fp = load ptr, ptr %18, align 8, !tbaa !180  ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.ct
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i83: ; preds = %bb.t
  %i.fr = load i64, ptr %i.ct, align 8, !tbaa !34
  %i.fs = shl i64 %i.fr, 2
  %i.ft = add i64 %i.fs, 4
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit85: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i83, %bb.s
  %.pn34 = phi { ptr, i32 } [ %i.fn, %bb.s ], [ %i.fo, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i83 ], [ %i.fo, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.fu = load ptr, ptr %17, align 8, !tbaa !180  ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.cj
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i86: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit85
  %i.fw = load i64, ptr %i.cj, align 8, !tbaa !34
  %i.fx = shl i64 %i.fw, 2
  %i.fy = add i64 %i.fx, 4
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit88
end_hunk_7
