inline.NumInlined: 345
inline.NumDeleted: 160
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN11OpenImageIO4v3_115decode_iptc_iimEPKviRNS0_9ImageSpecE:bb.a

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.ci = load ptr, ptr %13, align 8, !tbaa !14
  store ptr %i.ci, ptr %12, align 8, !tbaa !23
  %i.cj = load i64, ptr %i.p, align 8, !tbaa !16
  store i64 %i.cj, ptr %i.q, align 8, !tbaa !25
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %11, ptr noundef nonnull dead_on_return %12)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %i.ck = load ptr, ptr %13, align 8, !tbaa !14   ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.o
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  %i.cm = load i64, ptr %i.o, align 8, !tbaa !7
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  %i.co = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.l
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cq = load i64, ptr %i.l, align 8, !tbaa !7
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %.loopexit

bb.w:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %13, align 8, !tbaa !14   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.o
  br i1 %i.cu, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.w, %bb.u
  %.sink = phi ptr [ %i.cg, %bb.u ], [ %i.ct, %bb.w ]
  %.pn.ph = phi { ptr, i32 } [ %lpad.phi80, %bb.u ], [ %i.cs, %bb.w ]
  %i.cv = load i64, ptr %i.o, align 8, !tbaa !7
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cw) #15
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.w, %bb.u
  %.pn = phi { ptr, i32 } [ %lpad.phi80, %bb.u ], [ %i.cs, %bb.w ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %bb.x

bb.x:                                             ; preds = %.loopexit75, %.loopexit.split-lp, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %lpad.loopexit, %.loopexit75 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.cx = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.l
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.x
  %i.cz = load i64, ptr %i.l, align 8, !tbaa !7
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %i.br, %bb.s ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %.pn.pn, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.z

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit57: ; preds = %bb.i
  store ptr %i.as, ptr %14, align 8, !tbaa !23
  %i.db = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #13
  store i64 %i.db, ptr %i.f, align 8, !tbaa !25
  %i.dc = load ptr, ptr %3, align 8, !tbaa !14
  store ptr %i.dc, ptr %15, align 8, !tbaa !23
  %i.dd = load i64, ptr %i.e, align 8, !tbaa !16
  store i64 %i.dd, ptr %i.g, align 8, !tbaa !25
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %14, ptr noundef nonnull dead_on_return %15)
          to label %.loopexit unwind label %bb.y

bb.y:                                             ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit57
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit:                                        ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit57
  %i.df = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.d
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %.loopexit
  %i.dh = load i64, ptr %i.d, align 8, !tbaa !7
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %bb.r
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %i.bq, %bb.r ], [ %i.de, %bb.y ]
  %i.dj = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.d
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.z
  %i.dl = load i64, ptr %i.d, align 8, !tbaa !7
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.aa:                                            ; preds = %.critedge2._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %.pre-phi = phi i64 [ %.pre120, %.critedge2._crit_edge ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.af, i64 %.pre-phi
  %i.do = sub nsw i32 %i.ag, %.sroa.speculated    ; 2 uses
  %i.dp = icmp sgt i32 %i.do, 4
  br i1 %i.dp, label %bb.b, label %.critedge, !llvm.loop !35

.critedge:                                        ; preds = %bb.aa, %bb.b, %bb.c, %bb.a
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN11OpenImageIO4v3_17Strutil5stripENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8, ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #2

declare void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8, ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_115encode_iptc_iimERKNS0_9ImageSpecERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::vector.3", align 8     ; 11 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5clearEv.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.c, ptr %i.d, align 8, !tbaa !39
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit

_ZNSt6vectorIcSaIcEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit

bb.b:                                             ; preds = %bb.ap
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.x = load ptr, ptr %1, align 8, !tbaa !37
  %i.y = icmp ne ptr %i.w, %i.x
  ret i1 %i.y

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit: ; preds = %_ZNSt6vectorIcSaIcEE5clearEv.exit, %bb.ap
  %indvars.iv = phi i64 [ 0, %_ZNSt6vectorIcSaIcEE5clearEv.exit ], [ %indvars.iv.next, %bb.ap ] ; 4 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 %indvars.iv ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !17 ; 2 uses
  store ptr %i.ab, ptr %2, align 8, !tbaa !23
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #13
  store i64 %i.ac, ptr %i.f, align 8, !tbaa !25
  %i.ad = call noundef ptr @_ZNK11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull dead_on_return %2, i64 256, i1 noundef zeroext false) ; 3 uses
  %.not38 = icmp eq ptr %i.ad, null
  br i1 %.not38, label %bb.ap, label %bb.c

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !20, !range !21, !noundef !22
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.d, label %bb.aa

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZNK11OpenImageIO4v3_110ParamValue10get_stringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(39) %i.ad, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ah = load ptr, ptr %3, align 8, !tbaa !14
  store ptr %i.ah, ptr %5, align 8, !tbaa !23
  %i.ai = load i64, ptr %i.m, align 8, !tbaa !16
  store i64 %i.ai, ptr %i.l, align 8, !tbaa !25
  store ptr @.str.1, ptr %6, align 8, !tbaa !23
  store i64 1, ptr %i.n, align 8, !tbaa !25
  invoke void @_ZN11OpenImageIO4v3_17Strutil5splitENS0_17basic_string_viewIcSt11char_traitsIcEEERSt6vectorINSt7__cxx1112basic_stringIcS4_SaIcEEESaISA_EES5_i(ptr noundef nonnull dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull dead_on_return %6, i32 noundef -1)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %4, align 8, !tbaa !40    ; 3 uses
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !40  ; 2 uses
  %.not8288 = icmp eq ptr %i.aj, %i.ak
  br i1 %.not8288, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  %15 = shl nuw i64 1, %indvars.iv
  %16 = and i64 %15, 4503597429623727
  %.not139 = icmp eq i64 %16, 0
  br label %bb.h

._crit_edge:                                      ; preds = %bb.y
  %.pre93 = load ptr, ptr %4, align 8, !tbaa !42  ; 3 uses
  %.pre94 = load ptr, ptr %i.o, align 8, !tbaa !44 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre93, %.pre94
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pre93, %._crit_edge ] ; 3 uses
  %i.am = load ptr, ptr %.05.i.i.i, align 8, !tbaa !14 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !7
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #15
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %.pre94
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !45

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %bb.e, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.as = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %.pre93, %._crit_edge ], [ %i.aj, %bb.e ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.aw) #15
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.ax = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.v
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.az = load i64, ptr %i.v, align 8, !tbaa !7
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.ap

bb.g:                                             ; preds = %bb.d
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.h:                                             ; preds = %.lr.ph, %bb.y
  %.sroa.077.089 = phi ptr [ %i.aj, %.lr.ph ], [ %i.cw, %bb.y ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.bc = load ptr, ptr %.sroa.077.089, align 8, !tbaa !14
  store ptr %i.bc, ptr %8, align 8, !tbaa !23
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.077.089, i64 8 ; 7 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !16
  store i64 %i.be, ptr %i.p, align 8, !tbaa !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  invoke void @_ZN11OpenImageIO4v3_17Strutil5stripENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %7, ptr noundef nonnull dead_on_return %8, ptr noundef nonnull dead_on_return %9)
          to label %bb.i unwind label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.bf = load ptr, ptr %7, align 8, !tbaa !23
  %i.bg = load i64, ptr %i.q, align 8, !tbaa !25
  %i.bh = load i64, ptr %i.bd, align 8, !tbaa !16
  %i.bi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.077.089, i64 noundef 0, i64 noundef %i.bh, ptr noundef %i.bf, i64 noundef %i.bg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSIN11OpenImageIO4v3_117basic_string_viewIcS2_EEEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_St17basic_string_viewIcS2_EESt6__not_ISB_IPSD_PKS4_EESI_ISB_ISE_PKcEEEE5valueERS4_E4typeESE_.exit unwind label %bb.u ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSIN11OpenImageIO4v3_117basic_string_viewIcS2_EEEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_St17basic_string_viewIcS2_EESt6__not_ISB_IPSD_PKS4_EESI_ISB_ISE_PKcEEEE5valueERS4_E4typeESE_.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !16 ; 3 uses
  %.not41 = icmp eq i64 %i.bj, 0
  br i1 %.not41, label %bb.y, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSIN11OpenImageIO4v3_117basic_string_viewIcS2_EEEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_St17basic_string_viewIcS2_EESt6__not_ISB_IPSD_PKS4_EESI_ISB_ISE_PKcEEEE5valueERS4_E4typeESE_.exit
  %i.bk = load i32, ptr %i.al, align 4, !tbaa !47 ; 2 uses
  %i.bl = zext i32 %i.bk to i64                   ; 3 uses
  %i.bm = icmp ugt i64 %i.bj, %i.bl
  br i1 %i.bm, label %bb.k, label %bb.w

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  store ptr %i.r, ptr %10, align 8, !tbaa !8, !alias.scope !48
  %i.bn = load ptr, ptr %.sroa.077.089, align 8, !tbaa !14, !noalias !48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13, !noalias !48
  store i64 %i.bl, ptr %i.b, align 8, !tbaa !12, !noalias !48
  br i1 %.not139, label %._crit_edge.i.i.i, label %.noexc10.i.i

.noexc10.i.i:                                     ; preds = %bb.k
  %i.bo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.v     ; 2 uses

.noexc:                                           ; preds = %.noexc10.i.i
  store ptr %i.bo, ptr %10, align 8, !tbaa !14, !alias.scope !48
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !12, !noalias !48
  store i64 %i.bp, ptr %i.r, align 8, !tbaa !7, !alias.scope !48
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.k
  %i.bq = phi ptr [ %i.bo, %.noexc ], [ %i.r, %bb.k ] ; 2 uses
  switch i32 %i.bk, label %bb.m [
    i32 1, label %bb.l
    i32 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.br = load i8, ptr %i.bn, align 1, !tbaa !7
  store i8 %i.br, ptr %i.bq, align 1, !tbaa !7
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.bn, i64 %i.bl, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !12, !noalias !48 ; 2 uses
  store i64 %i.bs, ptr %i.s, align 8, !tbaa !16, !alias.scope !48
  %i.bt = load ptr, ptr %10, align 8, !tbaa !14, !alias.scope !48
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs
  store i8 0, ptr %i.bu, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13, !noalias !48
  %i.bv = load ptr, ptr %.sroa.077.089, align 8, !tbaa !14 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.077.089, i64 16 ; 4 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  %i.by = load ptr, ptr %10, align 8, !tbaa !14   ; 6 uses
  %i.bz = icmp eq ptr %i.by, %i.r                 ; 2 uses
  br i1 %i.bx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.n
  br i1 %i.bz, label %bb.o, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.n
  br i1 %i.bz, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ca = load i64, ptr %i.s, align 8, !tbaa !16  ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 16
  call void @llvm.assume(i1 %i.cb)
  %.not21.i = icmp eq ptr %10, %.sroa.077.089
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.p, !prof !51

bb.p:                                             ; preds = %bb.o
  switch i64 %i.ca, label %bb.r [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.cc = load i8, ptr %i.by, align 1, !tbaa !7
  store i8 %i.cc, ptr %i.bv, align 1, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %i.by, i64 %i.ca, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.r, %bb.q, %bb.p
  %i.cd = load i64, ptr %i.s, align 8, !tbaa !16  ; 2 uses
  store i64 %i.cd, ptr %i.bd, align 8, !tbaa !16
  %i.ce = load ptr, ptr %.sroa.077.089, align 8, !tbaa !14
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cd
  store i8 0, ptr %i.cf, align 1, !tbaa !7
  %.pre.i = load ptr, ptr %10, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.by, ptr %.sroa.077.089, align 8, !tbaa !14
  %i.cg = load i64, ptr %i.s, align 8, !tbaa !16
  store i64 %i.cg, ptr %i.bd, align 8, !tbaa !16
  %i.ch = load i64, ptr %i.r, align 8, !tbaa !7
  store i64 %i.ch, ptr %i.bw, align 8, !tbaa !7
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ci = load i64, ptr %i.bw, align 8, !tbaa !7
  store ptr %i.by, ptr %.sroa.077.089, align 8, !tbaa !14
  %i.cj = load i64, ptr %i.s, align 8, !tbaa !16
  store i64 %i.cj, ptr %i.bd, align 8, !tbaa !16
  %i.ck = load i64, ptr %i.r, align 8, !tbaa !7
  store i64 %i.ck, ptr %i.bw, align 8, !tbaa !7
  %.not.i47 = icmp eq ptr %i.bv, null
  br i1 %.not.i47, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bv, ptr %10, align 8, !tbaa !14
  store i64 %i.ci, ptr %i.r, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.r, ptr %10, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.s, %bb.t
  %i.cl = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.bv, %bb.s ], [ %i.r, %bb.t ], [ %i.by, %bb.o ]
  store i64 0, ptr %i.s, align 8, !tbaa !16
  store i8 0, ptr %i.cl, align 1, !tbaa !7
  %i.cm = load ptr, ptr %10, align 8, !tbaa !14   ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.r
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.co = load i64, ptr %i.r, align 8, !tbaa !7
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  %.pre92 = load i64, ptr %i.bd, align 8, !tbaa !16
  br label %bb.w

bb.u:                                             ; preds = %bb.i, %bb.h
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.z

bb.v:                                             ; preds = %.noexc10.i.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.z

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %bb.j
  %i.cs = phi i64 [ %.pre92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %i.bj, %bb.j ]
  %i.ct = load i32, ptr %i.z, align 16, !tbaa !52
  %i.cu = load ptr, ptr %.sroa.077.089, align 8, !tbaa !14
  store ptr %i.cu, ptr %11, align 8, !tbaa !23
  store i64 %i.cs, ptr %i.t, align 8, !tbaa !25
  invoke fastcc void @_ZN11OpenImageIO4v3_1L23encode_iptc_iim_one_tagEiNS0_17basic_string_viewIcSt11char_traitsIcEEERSt6vectorIcSaIcEE(i32 noundef %i.ct, ptr noundef dead_on_return %11, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSIN11OpenImageIO4v3_117basic_string_viewIcS2_EEEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_St17basic_string_viewIcS2_EESt6__not_ISB_IPSD_PKS4_EESI_ISB_ISE_PKcEEEE5valueERS4_E4typeESE_.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.077.089, i64 32 ; 2 uses
  %.not82 = icmp eq ptr %i.cw, %i.ak
  br i1 %.not82, label %._crit_edge, label %bb.h

bb.z:                                             ; preds = %bb.u, %bb.v, %bb.x, %bb.g
  %.pn43.pn = phi { ptr, i32 } [ %i.bb, %bb.g ], [ %i.cv, %bb.x ], [ %i.cr, %bb.v ], [ %i.cq, %bb.u ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.cx = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.v
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.z
  %i.cz = load i64, ptr %i.v, align 8, !tbaa !7
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.aq

bb.aa:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @_ZNK11OpenImageIO4v3_110ParamValue10get_stringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(39) %i.ad, i32 noundef 0)
  %i.db = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !47 ; 2 uses
  %i.dd = zext i32 %i.dc to i64                   ; 3 uses
  %i.de = load i64, ptr %i.g, align 8, !tbaa !16  ; 2 uses
  %i.df = icmp ugt i64 %i.de, %i.dd
  br i1 %i.df, label %bb.ab, label %bb.al

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  store ptr %i.h, ptr %13, align 8, !tbaa !8, !alias.scope !53
  %i.dg = load ptr, ptr %12, align 8, !tbaa !14, !noalias !53 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !53
  store i64 %i.dd, ptr %i.a, align 8, !tbaa !12, !noalias !53
  %i.dh = shl nuw i64 1, %indvars.iv
  %i.di = and i64 %i.dh, 4503597429623727
  %.not81 = icmp eq i64 %i.di, 0
  br i1 %.not81, label %._crit_edge.i.i.i55, label %.noexc10.i.i56

.noexc10.i.i56:                                   ; preds = %bb.ab
  %i.dj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc57 unwind label %bb.ak  ; 2 uses

.noexc57:                                         ; preds = %.noexc10.i.i56
  store ptr %i.dj, ptr %13, align 8, !tbaa !14, !alias.scope !53
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !12, !noalias !53
  store i64 %i.dk, ptr %i.h, align 8, !tbaa !7, !alias.scope !53
  br label %._crit_edge.i.i.i55

._crit_edge.i.i.i55:                              ; preds = %.noexc57, %bb.ab
  %i.dl = phi ptr [ %i.dj, %.noexc57 ], [ %i.h, %bb.ab ] ; 2 uses
  switch i32 %i.dc, label %bb.ad [
    i32 1, label %bb.ac
    i32 0, label %bb.ae
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i.i55
  %i.dm = load i8, ptr %i.dg, align 1, !tbaa !7
  store i8 %i.dm, ptr %i.dl, align 1, !tbaa !7
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.i.i.i55
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr align 1 %i.dg, i64 %i.dd, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %._crit_edge.i.i.i55
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !12, !noalias !53 ; 2 uses
  store i64 %i.dn, ptr %i.i, align 8, !tbaa !16, !alias.scope !53
  %i.do = load ptr, ptr %13, align 8, !tbaa !14, !alias.scope !53
end_hunk_0
