inline.NumInlined: 2980
inline.NumDeleted: 773
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN11OpenImageIO4v3_19ICOOutput5closeEv:bb.a
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !65
  %.not.i.i.i10 = icmp eq ptr %i.an, %i.al
  br i1 %.not.i.i.i10, label %_ZN11OpenImageIO4v3_19ICOOutput4initEv.exit, label %_ZSt8_DestroyIP15png_text_structS0_EvT_S2_RSaIT0_E.exit.i.i.i11

_ZSt8_DestroyIP15png_text_structS0_EvT_S2_RSaIT0_E.exit.i.i.i11: ; preds = %bb.l
  store ptr %i.al, ptr %i.am, align 8, !tbaa !65
  br label %_ZN11OpenImageIO4v3_19ICOOutput4initEv.exit

_ZN11OpenImageIO4v3_19ICOOutput4initEv.exit:      ; preds = %_ZSt8_DestroyIP15png_text_structS0_EvT_S2_RSaIT0_E.exit.i.i.i11, %bb.l, %_ZSt8_DestroyIP15png_text_structS0_EvT_S2_RSaIT0_E.exit.i.i.i, %bb.b
  %.0 = phi i1 [ true, %_ZSt8_DestroyIP15png_text_structS0_EvT_S2_RSaIT0_E.exit.i.i.i ], [ true, %bb.b ], [ %.03, %bb.l ], [ %.03, %_ZSt8_DestroyIP15png_text_structS0_EvT_S2_RSaIT0_E.exit.i.i.i11 ]
  ret i1 %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #30 ; 0 uses
  tail call void @_ZSt9terminatev() #32
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11OpenImageIO4v3_19ICOOutputD0Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN11OpenImageIO4v3_19ICOOutputD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) #30
  tail call void @_ZN11OpenImageIO4v3_111ImageOutputdlEPv(ptr noundef nonnull %0) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19ICOOutput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_9ImageSpecENS0_11ImageOutput8OpenModeE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(160) %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.OpenImageIO::v3_1::ROI", align 16 ; 3 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %10 = alloca %"struct.OpenImageIO::v3_1::ICO_pvt::ico_header", align 2 ; 11 uses
  %i.a = alloca [512 x i8], align 16              ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %11 = alloca %"struct.OpenImageIO::v3_1::ICO_pvt::ico_subimage", align 4 ; 9 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %i.d = alloca float, align 4                    ; 3 uses
  %i.e = alloca i8, align 1                       ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %13 = alloca %"struct.OpenImageIO::v3_1::ICO_pvt::ico_bitmapinfo", align 4 ; 12 uses
  %i.f = alloca [512 x i8], align 16              ; 5 uses
  %i.g = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_19ICOOutput5closeEv(ptr noundef nonnull align 8 dereferenceable(344) %0) ; 0 uses
  store <4 x i32> <i32 0, i32 256, i32 0, i32 256>, ptr %4, align 16, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <4 x i32> <i32 0, i32 1, i32 0, i32 4>, ptr %i.h, align 16, !tbaa !3
  %i.i = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput10check_openENS1_8OpenModeERKNS0_9ImageSpecENS0_3ROIEm(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i64 noundef 0)
  br i1 %i.i, label %bb.b, label %bb.ap

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !74
  %i.m = icmp eq i8 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 3 uses
  %i.o = load i8, ptr %i.n, align 1
  %i.p = icmp eq i8 %i.o, 1
  %or.cond.i = select i1 %i.m, i1 %i.p, i1 false
  br i1 %or.cond.i, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.r = load i32, ptr %i.q, align 4, !tbaa !75
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.c, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit
  tail call void @_ZN11OpenImageIO4v3_19ImageSpec10set_formatENS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %i.j, i64 258) #30
  br label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %bb.b, %bb.c, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit
  store ptr @.str.1, ptr %5, align 8, !tbaa !76
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 7, ptr %i.s, align 8, !tbaa !78
  %i.t = call noundef ptr @_ZN11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160) %i.j, ptr noundef nonnull dead_on_return %5, i64 263, i1 noundef zeroext false) ; 3 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 38
  %i.v = load i8, ptr %i.u, align 2, !tbaa !79, !range !82, !noundef !83
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = select i1 %i.w, ptr %i.y, ptr %i.x
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %.not54 = icmp eq i32 %i.aa, 0
  br i1 %.not54, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !84 ; 3 uses
  %i.ad = icmp eq i32 %i.ac, 256
  br i1 %i.ad, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  store i8 1, ptr %i.ae, align 4, !tbaa !85
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !71
  %i.ah = icmp eq i32 %i.ag, 256                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 4 uses
  %i.aj = zext i1 %i.ah to i8
  store i8 %i.aj, ptr %i.ai, align 4, !tbaa !85
  br i1 %i.ah, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.thread, %bb.f
  %i.ak = phi ptr [ %i.ae, %.thread ], [ %i.ai, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @_ZN11OpenImageIO4v3_17PNG_pvt19create_write_structB5cxx11ERP14png_struct_defRP12png_info_defRiRNS0_9ImageSpecEPNS0_11ImageOutputE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 8 dereferenceable(160) %i.j, ptr noundef null)
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !13
  %.not55 = icmp eq i64 %i.ap, 0
  br i1 %.not55, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.2, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %6, align 8, !tbaa !64    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.au = load i64, ptr %i.as, align 8, !tbaa !16
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %i.aq

bb.j:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %6, align 8, !tbaa !64    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.j
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !16
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.ap

bb.k:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !86
  %switch.tableidx = add i32 %i.bc, -1            ; 3 uses
  %i.bd = icmp ult i32 %switch.tableidx, 4
  br i1 %i.bd, label %switch.lookup, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.3, ptr noundef nonnull align 4 dereferenceable(4) %i.bb)
  br label %bb.ap

switch.lookup:                                    ; preds = %bb.k
  %i.be = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN11OpenImageIO4v3_17PNG_pvt19create_write_structB5cxx11ERP14png_struct_defRP12png_info_defRiRNS0_9ImageSpecEPNS0_11ImageOutputE, i64 %i.be
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.bf = zext nneg i32 %switch.tableidx to i64
  %switch.gep144 = getelementptr inbounds nuw i8, ptr @switch.table._ZN11OpenImageIO4v3_19ICOOutput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_9ImageSpecENS0_11ImageOutput8OpenModeE.1, i64 %i.bf
  %switch.load145 = load i8, ptr %switch.gep144, align 1
  %switch.ext146 = zext i8 %switch.load145 to i32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 %switch.ext, ptr %i.bg, align 8, !tbaa !87
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i32 %switch.ext146, ptr %i.bh, align 4, !tbaa !88
  %i.bi = mul nsw i32 %i.ac, %switch.ext146
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.bk = add nsw i32 %i.ac, 7
  %i.bl = or disjoint i32 %i.bi, 7
  %i.bm = insertelement <2 x i32> poison, i32 %i.bl, i64 0
  %i.bn = insertelement <2 x i32> %i.bm, i32 %i.bk, i64 1
  %i.bo = sdiv <2 x i32> %i.bn, splat (i32 8)
  %14 = add nsw <2 x i32> %i.bo, splat (i32 3)
  %i.bp = and <2 x i32> %14, splat (i32 -4)
  store <2 x i32> %i.bp, ptr %i.bj, align 4, !tbaa !3
  %i.bq = load i8, ptr %i.k, align 8, !tbaa !74
  %.not.i81 = icmp eq i8 %i.bq, 2
  %i.br = load i8, ptr %i.n, align 1
  %.not3.i = icmp eq i8 %i.br, 1
  %or.cond.i82 = select i1 %.not.i81, i1 %.not3.i, i1 false
  br i1 %or.cond.i82, label %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit, label %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit: ; preds = %switch.lookup
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !75
  %.not121 = icmp eq i32 %i.bt, 0
  br i1 %.not121, label %bb.m, label %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %switch.lookup, %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit
  call void @_ZN11OpenImageIO4v3_19ImageSpec10set_formatENS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %i.j, i64 258) #30
  br label %bb.m

.critedge:                                        ; preds = %bb.g
  %i.bu = load ptr, ptr %6, align 8, !tbaa !64    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %.critedge
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !16
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit, %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.bz = phi ptr [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %i.ai, %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit ], [ %i.ai, %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread ] ; 2 uses
  %i.ca = load i8, ptr %i.k, align 8, !tbaa !74
  %i.cb = icmp eq i8 %i.ca, 2
  %i.cc = load i8, ptr %i.n, align 1
  %i.cd = icmp eq i8 %i.cc, 1
  %or.cond.i86 = select i1 %i.cb, i1 %i.cd, i1 false
  br i1 %or.cond.i86, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit88, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit88.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit88: ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !75
  %.not.i87 = icmp eq i32 %i.cf, 0
  br i1 %.not.i87, label %bb.n, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit88.thread

bb.n:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit88
  store ptr @.str.4, ptr %7, align 8, !tbaa !76
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 11, ptr %i.cg, align 8, !tbaa !78
  %i.ch = call noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.j, ptr noundef nonnull dead_on_return %7, i32 noundef 0)
  br label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit88.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit88.thread: ; preds = %bb.m, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit88, %bb.n
  %i.ci = phi i32 [ %i.ch, %bb.n ], [ 0, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit88 ], [ 0, %bb.m ]
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !89
  %i.ck = load ptr, ptr %1, align 8, !tbaa !64
  store ptr %i.ck, ptr %8, align 8, !tbaa !76
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !13
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !78
  %i.co = icmp eq i32 %3, 1                       ; 2 uses
  %i.cp = select i1 %i.co, ptr @.str.5, ptr @.str.6
  store ptr %i.cp, ptr %9, align 8, !tbaa !76
  %i.cq = select i1 %i.co, i64 3, i64 2
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !78
  %i.cs = call noundef ptr @_ZN11OpenImageIO4v3_110Filesystem5fopenENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %8, ptr noundef nonnull dead_on_return %9) ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 20 uses
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !17
  %.not56 = icmp eq ptr %i.cs, null
  br i1 %.not56, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit88.thread
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.ap

bb.p:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit88.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.cu = icmp eq i32 %3, 0
  br i1 %i.cu, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store i16 0, ptr %10, align 2
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 2
  store i16 1, ptr %i.cv, align 2, !tbaa !90
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i16 1, ptr %i.cw, align 2, !tbaa !93
  %i.cx = call i64 @fwrite(ptr noundef nonnull %10, i64 noundef 6, i64 noundef 1, ptr noundef nonnull %i.cs)
  %.not.i90 = icmp eq i64 %i.cx, 1
  br i1 %.not.i90, label %bb.r, label %_ZN11OpenImageIO4v3_19ICOOutput6fwriteINS0_7ICO_pvt10ico_headerEEEbPKT_mm.exit

_ZN11OpenImageIO4v3_19ICOOutput6fwriteINS0_7ICO_pvt10ico_headerEEEbPKT_mm.exit: ; preds = %bb.q
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull @.str.111)
  br label %bb.ao

bb.r:                                             ; preds = %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 22, ptr %i.cy, align 8, !tbaa !94
  br label %bb.ac

bb.s:                                             ; preds = %bb.p
  %i.cz = call i64 @fread(ptr noundef nonnull %10, i64 noundef 6, i64 noundef 1, ptr noundef nonnull %i.cs)
  %.not.i91 = icmp eq i64 %i.cz, 1
  br i1 %.not.i91, label %bb.t, label %_ZN11OpenImageIO4v3_19ICOOutput5freadINS0_7ICO_pvt10ico_headerEEEbPT_mm.exit

_ZN11OpenImageIO4v3_19ICOOutput5freadINS0_7ICO_pvt10ico_headerEEEbPT_mm.exit: ; preds = %bb.s
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull @.str.112)
  br label %bb.ao

bb.t:                                             ; preds = %bb.s
  %i.da = load i16, ptr %10, align 2, !tbaa !95
  %i.db = icmp ne i16 %i.da, 0
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 2
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = icmp ne i16 %i.dd, 1
  %or.cond = select i1 %i.db, i1 true, i1 %i.de
  br i1 %or.cond, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.8)
  br label %bb.ao

bb.v:                                             ; preds = %bb.t
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !93 ; 4 uses
  %i.dh = add i16 %i.dg, 1
  store i16 %i.dh, ptr %i.df, align 2, !tbaa !93
  %i.di = sext i16 %i.dg to i32                   ; 2 uses
  %i.dj = load ptr, ptr %i.ct, align 8, !tbaa !17
  %i.dk = call i32 @fseek(ptr noundef %i.dj, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.dl = load ptr, ptr %i.ct, align 8, !tbaa !17
  %i.dm = call i64 @ftell(ptr noundef %i.dl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.dn = load ptr, ptr %i.ct, align 8, !tbaa !17
  %i.do = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 16, i64 noundef 1, ptr noundef %i.dn)
  %.not.i92 = icmp eq i64 %i.do, 1
  br i1 %.not.i92, label %bb.w, label %.critedge67.sink.split

bb.w:                                             ; preds = %bb.v
  %i.dp = trunc i64 %i.dm to i32                  ; 2 uses
  %i.dq = shl nsw i32 %i.di, 4
  %i.dr = add nsw i32 %i.dq, -10                  ; 2 uses
  %i.ds = sub nsw i32 %i.dp, %i.dr                ; 2 uses
  %i.dt = icmp slt i32 %i.ds, 1
  br i1 %i.dt, label %.critedge63, label %.lr.ph

bb.x:                                             ; preds = %bb.y
  %i.du = add nsw i32 %storemerge122, -512
  %i.dv = icmp slt i32 %storemerge122, 513
  br i1 %i.dv, label %.critedge63, label %.lr.ph, !llvm.loop !96

.lr.ph:                                           ; preds = %bb.w, %bb.x
  %storemerge122 = phi i32 [ %i.du, %bb.x ], [ %i.ds, %bb.w ] ; 4 uses
  %.sroa.speculated108 = call i32 @llvm.umin.i32(i32 %storemerge122, i32 512) ; 2 uses
  %i.dw = load ptr, ptr %i.ct, align 8, !tbaa !17
  %i.dx = add nsw i32 %storemerge122, %i.dr
  %i.dy = sub i32 %i.dx, %.sroa.speculated108
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %i.ea = call i32 @fseek(ptr noundef %i.dw, i64 noundef %i.dz, i32 noundef 0) ; 0 uses
  %i.eb = zext nneg i32 %.sroa.speculated108 to i64 ; 4 uses
  %i.ec = load ptr, ptr %i.ct, align 8, !tbaa !17
  %i.ed = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %i.eb, ptr noundef %i.ec)
  %.not.i93 = icmp eq i64 %i.ed, %i.eb
  br i1 %.not.i93, label %bb.y, label %.critedge67.sink.split

bb.y:                                             ; preds = %.lr.ph
  %i.ee = load ptr, ptr %i.ct, align 8, !tbaa !17
  %i.ef = add nsw i64 %i.dz, 16
  %i.eg = call i32 @fseek(ptr noundef %i.ee, i64 noundef %i.ef, i32 noundef 0) ; 0 uses
  %i.eh = load ptr, ptr %i.ct, align 8, !tbaa !17
  %i.ei = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %i.eb, ptr noundef %i.eh)
  %.not.i94 = icmp eq i64 %i.ei, %i.eb
  br i1 %.not.i94, label %bb.x, label %.critedge67.sink.split

.critedge63:                                      ; preds = %bb.x, %bb.w
  %i.ej = load ptr, ptr %i.ct, align 8, !tbaa !17
  %i.ek = call i32 @fseek(ptr noundef %i.ej, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.el = call noundef zeroext i1 @_ZN11OpenImageIO4v3_19ICOOutput6fwriteINS0_7ICO_pvt10ico_headerEEEbPKT_mm(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull %10, i64 noundef 6, i64 noundef 1)
  br i1 %i.el, label %bb.z, label %.critedge67

bb.z:                                             ; preds = %.critedge63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.em = load ptr, ptr %i.ct, align 8, !tbaa !17
  %i.en = call i32 @fseek(ptr noundef %i.em, i64 noundef 12, i32 noundef 1) ; 0 uses
  %.not57.not123 = icmp sgt i16 %i.dg, 0
  br i1 %.not57.not123, label %.lr.ph125, label %.critedge65

.lr.ph125:                                        ; preds = %bb.z, %bb.ab
  %.0124 = phi i32 [ %i.ey, %bb.ab ], [ 0, %bb.z ]
  %i.eo = load ptr, ptr %i.ct, align 8, !tbaa !17
  %i.ep = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1, ptr noundef %i.eo)
  %.not.i96 = icmp eq i64 %i.ep, 1
  br i1 %.not.i96, label %bb.aa, label %.critedge73

bb.aa:                                            ; preds = %.lr.ph125
end_hunk_0
