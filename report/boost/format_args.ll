Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/format_args?download=true
inline.NumInlined: 783
inline.NumDeleted: 528
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5boost4urls6detail22integer_formatter_impl5parseERNS1_20format_parse_contextE:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.b, %bb.d, %bb.a
  %i.o = phi ptr [ %i.b, %bb.c ], [ %i.b, %bb.b ], [ %i.b, %bb.b ], [ %i.n, %bb.d ], [ %i.b, %bb.a ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !62
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.f, label %thread-pre-split

bb.f:                                             ; preds = %bb.e
  %i.s = load i8, ptr %i.o, align 1, !tbaa !21    ; 3 uses
  switch i8 %i.s, label %bb.h [
    i8 60, label %bb.g
    i8 62, label %bb.g
    i8 94, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !11
  store i8 %i.s, ptr %i.p, align 1, !tbaa !62
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.e, %bb.g
  %.ph = phi ptr [ %i.o, %bb.e ], [ %i.t, %bb.g ] ; 2 uses
  %.pr = load i8, ptr %.ph, align 1, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %bb.f
  %i.u = phi i8 [ %.pr, %thread-pre-split ], [ %i.s, %bb.f ] ; 2 uses
  %i.v = phi ptr [ %.ph, %thread-pre-split ], [ %i.o, %bb.f ] ; 3 uses
  switch i8 %i.u, label %bb.j [
    i8 43, label %bb.i
    i8 45, label %bb.i
    i8 32, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 3 uses
  store ptr %i.w, ptr %i.a, align 8, !tbaa !11
  %i.x = load i8, ptr %i.v, align 1, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.x, ptr %i.y, align 2, !tbaa !63
  %.pre = load i8, ptr %i.w, align 1, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.z = phi i8 [ %i.u, %bb.h ], [ %.pre, %bb.i ] ; 2 uses
  %i.aa = phi ptr [ %i.v, %bb.h ], [ %i.w, %bb.i ] ; 2 uses
  %i.ab = icmp eq i8 %i.z, 35
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 3 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !11
  %.pre21 = load i8, ptr %i.ac, align 1, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = phi i8 [ %.pre21, %bb.k ], [ %i.z, %bb.j ]
  %i.ae = phi ptr [ %i.ac, %bb.k ], [ %i.aa, %bb.j ] ; 3 uses
  %i.af = icmp eq i8 %i.ad, 48
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !11
  %i.ah = load i8, ptr %i.ae, align 1, !tbaa !21
  %i.ai = icmp ne i8 %i.ah, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ak = zext i1 %i.ai to i8
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = phi ptr [ %i.ag, %bb.m ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN5boost4urls6detail22integer_formatter_impl5parseERNS1_20format_parse_contextE.width_rule, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19, !noalias !116
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !116
  call void @_ZN5boost4urls7grammar6detail13parse_variantINS1_13unsigned_ruleImEEJNS1_22implementation_defined12tuple_rule_tINS6_14squelch_rule_tINS6_13ch_delim_ruleEEEJNS6_15optional_rule_tINS6_14variant_rule_tINS0_6detail17identifier_rule_tEJS5_EEEEESA_EEEELm0EEENS_6system6resultINS_8variant27variantIJNT_10value_typeEDpNT0_10value_typeEEEENSI_10error_codeEEERPKcSV_RKNS2_5tupleIJSM_DpSO_EEERKSt17integral_constantImXT1_EERKS12_IbLb1EE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::result.16") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.d, ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !116
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.an = load i8, ptr %i.am, align 8, !tbaa !31
  %i.ao = icmp eq i8 %i.an, 1
  br i1 %i.ao, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.al, ptr %i.a, align 8, !tbaa !11
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.ap = load i8, ptr %i.p, align 1, !tbaa !62
  %.not15 = icmp eq i8 %i.ap, 0
  br i1 %.not15, label %bb.u, label %_ZN5boost6system6resultINS_8variant27variantIJmNS_8optionalINS3_IJNS_4core17basic_string_viewIcEEmEEEEEEEENS0_10error_codeEEptEv.exit

_ZN5boost6system6resultINS_8variant27variantIJmNS_8optionalINS3_IJNS_4core17basic_string_viewIcEEmEEEEEEEENS0_10error_codeEEptEv.exit: ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !33
  switch i8 %i.ar, label %bb.q [
    i8 1, label %_ZN5boost8variant23getILm0EJmNS_8optionalINS0_7variantIJNS_4core17basic_string_viewIcEEmEEEEEEEERNS0_19variant_alternativeIXT_ENS3_IJDpT0_EEEE4typeERSC_.exit
    i8 2, label %_ZN5boost8variant23getILm1EJmNS_8optionalINS0_7variantIJNS_4core17basic_string_viewIcEEmEEEEEEEERNS0_19variant_alternativeIXT_ENS3_IJDpT0_EEEE4typeERSC_.exit
  ]

_ZN5boost8variant23getILm0EJmNS_8optionalINS0_7variantIJNS_4core17basic_string_viewIcEEmEEEEEEEERNS0_19variant_alternativeIXT_ENS3_IJDpT0_EEEE4typeERSC_.exit: ; preds = %_ZN5boost6system6resultINS_8variant27variantIJmNS_8optionalINS3_IJNS_4core17basic_string_viewIcEEmEEEEEEEENS0_10error_codeEEptEv.exit
  %i.as = load i64, ptr %5, align 8, !tbaa !34
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !117
  br label %bb.u

bb.q:                                             ; preds = %_ZN5boost6system6resultINS_8variant27variantIJmNS_8optionalINS3_IJNS_4core17basic_string_viewIcEEmEEEEEEEENS0_10error_codeEEptEv.exit
  call void @_ZN5boost8variant26detail24throw_bad_variant_accessEv() #21
  unreachable

_ZN5boost8variant23getILm1EJmNS_8optionalINS0_7variantIJNS_4core17basic_string_viewIcEEmEEEEEEEERNS0_19variant_alternativeIXT_ENS3_IJDpT0_EEEE4typeERSC_.exit: ; preds = %_ZN5boost6system6resultINS_8variant27variantIJmNS_8optionalINS3_IJNS_4core17basic_string_viewIcEEmEEEEEEEENS0_10error_codeEEptEv.exit
  %i.au = load i8, ptr %5, align 8, !tbaa !38, !range !39, !noundef !40
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN5boost8variant23getILm1EJmNS_8optionalINS0_7variantIJNS_4core17basic_string_viewIcEEmEEEEEEEERNS0_19variant_alternativeIXT_ENS3_IJDpT0_EEEE4typeERSC_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !41 ; 2 uses
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !41
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !65
  br label %bb.u

bb.s:                                             ; preds = %_ZN5boost8variant23getILm1EJmNS_8optionalINS0_7variantIJNS_4core17basic_string_viewIcEEmEEEEEEEERNS0_19variant_alternativeIXT_ENS3_IJDpT0_EEEE4typeERSC_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !44
  switch i8 %i.bc, label %bb.t [
    i8 1, label %_ZN5boost8variant23getILm0EJNS_4core17basic_string_viewIcEEmEEERNS0_19variant_alternativeIXT_ENS0_7variantIJDpT0_EEEE4typeERS9_.exit
    i8 2, label %_ZN5boost8variant23getILm1EJNS_4core17basic_string_viewIcEEmEEERNS0_19variant_alternativeIXT_ENS0_7variantIJDpT0_EEEE4typeERS9_.exit
  ]

_ZN5boost8variant23getILm0EJNS_4core17basic_string_viewIcEEmEEERNS0_19variant_alternativeIXT_ENS0_7variantIJDpT0_EEEE4typeERS9_.exit: ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !tbaa.struct !45
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @_ZN5boost8variant26detail24throw_bad_variant_accessEv() #21
  unreachable

_ZN5boost8variant23getILm1EJNS_4core17basic_string_viewIcEEmEEERNS0_19variant_alternativeIXT_ENS0_7variantIJDpT0_EEEE4typeERS9_.exit: ; preds = %bb.s
  %i.be = load i64, ptr %i.ba, align 8, !tbaa !34
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !65
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %_ZN5boost8variant23getILm1EJNS_4core17basic_string_viewIcEEmEEERNS0_19variant_alternativeIXT_ENS0_7variantIJDpT0_EEEE4typeERS9_.exit, %_ZN5boost8variant23getILm0EJNS_4core17basic_string_viewIcEEmEEERNS0_19variant_alternativeIXT_ENS0_7variantIJDpT0_EEEE4typeERS9_.exit, %bb.p, %_ZN5boost8variant23getILm0EJmNS_8optionalINS0_7variantIJNS_4core17basic_string_viewIcEEmEEEEEEEERNS0_19variant_alternativeIXT_ENS3_IJDpT0_EEEE4typeERSC_.exit, %bb.o
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !11  ; 3 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !21  ; 2 uses
  %i.bi = icmp eq i8 %i.bh, 100
  br i1 %i.bi, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 3 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !11
  %.pre22 = load i8, ptr %i.bj, align 1, !tbaa !21
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bk = phi i8 [ %.pre22, %bb.v ], [ %i.bh, %bb.u ]
  %i.bl = phi ptr [ %i.bj, %bb.v ], [ %i.bg, %bb.u ]
  %.not16 = icmp eq i8 %i.bk, 125
  br i1 %.not16, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr @.str, ptr %6, align 8, !tbaa !47
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.1, ptr %i.bm, align 8, !tbaa !48
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 348, ptr %i.bn, align 8, !tbaa !49
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 9, ptr %i.bo, align 4, !tbaa !50
  call void @_ZN5boost4urls6detail22throw_invalid_argumentERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(24) %6) #21
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %i.bl
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK5boost4urls6detail22integer_formatter_impl7measureExRNS1_15measure_contextERKNS0_7grammar9lut_charsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !34
  %4 = and i64 %i.c, 2048
  %.not.i = icmp eq i64 %4, 0
  %5 = select i1 %.not.i, i64 3, i64 1
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.d, align 2, !tbaa !63    ; 3 uses
  %.not = icmp eq i8 %i.e, 45
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i8 %i.e, 3
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !34
  %i.j = lshr i8 %i.e, 2
  %i.k = zext nneg i8 %i.j to i64
  %i.l = shl nuw i64 1, %i.k
  %i.m = and i64 %i.i, %i.l
  %.not.i35 = icmp eq i64 %i.m, 0
  %i.n = select i1 %.not.i35, i64 3, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.029 = phi i64 [ 1, %bb.b ], [ 1, %bb.d ], [ 0, %bb.c ]
  %.0 = phi i64 [ %5, %bb.b ], [ %i.n, %bb.d ], [ 0, %bb.c ]
  %i.o = tail call i64 @llvm.abs.i64(i64 %1, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.031 = phi i64 [ %i.o, %bb.e ], [ %i.q, %bb.f ] ; 3 uses
  %.130 = phi i64 [ %.029, %bb.e ], [ %i.z, %bb.f ]
  %.1 = phi i64 [ %.0, %bb.e ], [ %i.y, %bb.f ]
  %i.p = urem i64 %.031, 10                       ; 2 uses
  %i.q = udiv i64 %.031, 10
  %i.r = and i64 %i.p, 3
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !34
  %i.u = lshr i64 %i.p, 2
  %i.v = shl nuw nsw i64 4096, %i.u
  %i.w = and i64 %i.t, %i.v
  %.not.i36 = icmp eq i64 %i.w, 0
  %i.x = select i1 %.not.i36, i64 3, i64 1
  %i.y = add i64 %i.x, %.1                        ; 7 uses
  %i.z = add i64 %.130, 1                         ; 4 uses
  %.not33 = icmp ult i64 %.031, 10
  br i1 %.not33, label %bb.g, label %bb.f, !llvm.loop !118

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !65 ; 3 uses
  %.not34 = icmp eq i64 %i.ab, -1
  br i1 %.not34, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !51
  %.fr38.i51 = freeze i64 %i.ae                   ; 3 uses
  %i.af = icmp eq i64 %.fr38.i51, 0
  br i1 %i.af, label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit, label %bb.j

bb.i:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !53
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !34
  %i.ag = icmp ult i64 %i.ab, %.sroa.2.0.copyload.i
  br i1 %i.ag, label %_ZNK5boost4urls6detail11format_args3getEm.exit.sink.split.i, label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.01.0.copyload43 = load ptr, ptr %i.ah, align 8, !tbaa !11
  %.sroa.0.0.copyload.i46 = load ptr, ptr %2, align 8, !tbaa !53 ; 2 uses
  %.sroa.2.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i48 = load i64, ptr %.sroa.2.0..sroa_idx.i47, align 8, !tbaa !34 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.2.0.copyload.i48, 0
  br i1 %.not.i.i, label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread, label %.lr.ph.i.split.i

.lr.ph.i.split.i:                                 ; preds = %bb.j, %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.thread10.i.i
  %.012.i.i = phi i64 [ %i.am, %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.thread10.i.i ], [ 0, %bb.j ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.copyload.i46, i64 %.012.i.i ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !34, !noalias !121
  %i.aj = icmp eq i64 %.sroa.2.0.copyload.i.i.i, %.fr38.i51
  br i1 %i.aj, label %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.i.i, label %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.thread10.i.i

_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.i.i: ; preds = %.lr.ph.i.split.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !11, !noalias !121
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %.sroa.0.0.copyload.i.i.i, ptr readonly %.sroa.01.0.copyload43, i64 %.fr38.i51), !noalias !121
  %i.al = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.al, label %_ZNK5boost4urls6detail11format_args3getEm.exit.sink.split.i, label %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.thread10.i.i

_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.thread10.i.i: ; preds = %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.i.i, %.lr.ph.i.split.i
  %i.am = add nuw i64 %.012.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.am, %.sroa.2.0.copyload.i48
  br i1 %exitcond.not.i.i, label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread, label %.lr.ph.i.split.i, !llvm.loop !0

_ZNK5boost4urls6detail11format_args3getEm.exit.sink.split.i: ; preds = %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.i.i, %bb.i
  %.sroa.0.0.copyload.i54 = phi ptr [ %.sroa.0.0.copyload.i, %bb.i ], [ %.sroa.0.0.copyload.i46, %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.i.i ]
  %.sink50.i = phi i64 [ %i.ab, %bb.i ], [ %.012.i.i, %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.i.i ]
  %i.an = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.copyload.i54, i64 %.sink50.i
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  br label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit

_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit: ; preds = %_ZNK5boost4urls6detail11format_args3getEm.exit.sink.split.i, %bb.h
  %.042.in = phi ptr [ %i.ac, %bb.h ], [ %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i, %_ZNK5boost4urls6detail11format_args3getEm.exit.sink.split.i ]
  %.042 = load i64, ptr %.042.in, align 8, !tbaa !34 ; 3 uses
  %i.ao = icmp ugt i64 %.042, %i.z
  br i1 %i.ao, label %bb.k, label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread

bb.k:                                             ; preds = %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !64, !range !39, !noundef !40
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i8, ptr %0, align 8, !tbaa !61     ; 2 uses
  %i.at = and i8 %i.as, 3
  %i.au = zext nneg i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !34
  %i.ax = lshr i8 %i.as, 2
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = and i64 %i.az, %i.aw
  %.not.i38 = icmp eq i64 %i.ba, 0
  %i.bb = select i1 %.not.i38, i64 3, i64 1
  %i.bc = sub nuw i64 %.042, %i.z
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = add i64 %i.bd, %i.y
  br label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.bf = load i64, ptr %3, align 8, !tbaa !34
  %6 = and i64 %i.bf, 4096
  %.not.i39 = icmp eq i64 %6, 0
  %7 = select i1 %.not.i39, i64 3, i64 1
  %i.bg = sub nuw i64 %.042, %i.z
  %i.bh = mul i64 %7, %i.bg
  %i.bi = add i64 %i.bh, %i.y
  br label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread

_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread: ; preds = %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.thread10.i.i, %bb.j, %bb.i, %bb.l, %bb.m, %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit
  %.2 = phi i64 [ %i.bi, %bb.m ], [ %i.be, %bb.l ], [ %i.y, %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit ], [ %i.y, %bb.i ], [ %i.y, %bb.j ], [ %i.y, %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.thread10.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !57
  %i.bl = add i64 %i.bk, %.2
  ret i64 %i.bl
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK5boost4urls6detail22integer_formatter_impl7measureEyRNS1_15measure_contextERKNS0_7grammar9lut_charsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 2, !tbaa !63    ; 3 uses
  %.not = icmp eq i8 %i.b, 45
  br i1 %.not, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %i.b, 3
  %i.d = zext nneg i8 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34
  %i.g = lshr i8 %i.b, 2
  %i.h = zext nneg i8 %i.g to i64
  %i.i = shl nuw i64 1, %i.h
  %i.j = and i64 %i.f, %i.i
  %.not.i = icmp eq i64 %i.j, 0
  %i.k = select i1 %.not.i, i64 3, i64 1
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.a
  %.124.ph = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %.1.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.b ]
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %.124 = phi i64 [ %i.v, %bb.c ], [ %.124.ph, %.preheader ]
  %.1 = phi i64 [ %i.u, %bb.c ], [ %.1.ph, %.preheader ]
  %.0 = phi i64 [ %i.m, %bb.c ], [ %1, %.preheader ] ; 3 uses
  %i.l = urem i64 %.0, 10                         ; 2 uses
  %i.m = udiv i64 %.0, 10
  %i.n = and i64 %i.l, 3
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !34
  %i.q = lshr i64 %i.l, 2
  %i.r = shl nuw nsw i64 4096, %i.q
  %i.s = and i64 %i.r, %i.p
  %.not.i28 = icmp eq i64 %i.s, 0
  %i.t = select i1 %.not.i28, i64 3, i64 1
  %i.u = add i64 %i.t, %.1                        ; 7 uses
  %i.v = add i64 %.124, 1                         ; 4 uses
  %.not26 = icmp ult i64 %.0, 10
  br i1 %.not26, label %bb.d, label %bb.c, !llvm.loop !122

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !65   ; 3 uses
  %.not27 = icmp eq i64 %i.x, -1
  br i1 %.not27, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !51
  %.fr38.i43 = freeze i64 %i.aa                   ; 3 uses
  %i.ab = icmp eq i64 %.fr38.i43, 0
  br i1 %i.ab, label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !53
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !34
  %i.ac = icmp ult i64 %i.x, %.sroa.2.0.copyload.i
  br i1 %i.ac, label %_ZNK5boost4urls6detail11format_args3getEm.exit.sink.split.i, label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.01.0.copyload35 = load ptr, ptr %i.ad, align 8, !tbaa !11
  %.sroa.0.0.copyload.i38 = load ptr, ptr %2, align 8, !tbaa !53 ; 2 uses
  %.sroa.2.0..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i40 = load i64, ptr %.sroa.2.0..sroa_idx.i39, align 8, !tbaa !34 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.2.0.copyload.i40, 0
  br i1 %.not.i.i, label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread, label %.lr.ph.i.split.i

.lr.ph.i.split.i:                                 ; preds = %bb.g, %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.thread10.i.i
  %.012.i.i = phi i64 [ %i.ai, %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.thread10.i.i ], [ 0, %bb.g ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.copyload.i38, i64 %.012.i.i ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !34, !noalias !125
  %i.af = icmp eq i64 %.sroa.2.0.copyload.i.i.i, %.fr38.i43
  br i1 %i.af, label %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.i.i, label %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.thread10.i.i

_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.i.i: ; preds = %.lr.ph.i.split.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !11, !noalias !125
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %.sroa.0.0.copyload.i.i.i, ptr readonly %.sroa.01.0.copyload35, i64 %.fr38.i43), !noalias !125
  %i.ah = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ah, label %_ZNK5boost4urls6detail11format_args3getEm.exit.sink.split.i, label %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.thread10.i.i

_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.thread10.i.i: ; preds = %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.i.i, %.lr.ph.i.split.i
  %i.ai = add nuw i64 %.012.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ai, %.sroa.2.0.copyload.i40
  br i1 %exitcond.not.i.i, label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread, label %.lr.ph.i.split.i, !llvm.loop !0

_ZNK5boost4urls6detail11format_args3getEm.exit.sink.split.i: ; preds = %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.i.i, %bb.f
  %.sroa.0.0.copyload.i46 = phi ptr [ %.sroa.0.0.copyload.i, %bb.f ], [ %.sroa.0.0.copyload.i38, %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.i.i ]
  %.sink50.i = phi i64 [ %i.x, %bb.f ], [ %.012.i.i, %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.i.i ]
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.copyload.i46, i64 %.sink50.i
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  br label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit

_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit: ; preds = %_ZNK5boost4urls6detail11format_args3getEm.exit.sink.split.i, %bb.e
  %.034.in = phi ptr [ %i.y, %bb.e ], [ %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i, %_ZNK5boost4urls6detail11format_args3getEm.exit.sink.split.i ]
  %.034 = load i64, ptr %.034.in, align 8, !tbaa !34 ; 3 uses
  %i.ak = icmp ugt i64 %.034, %i.v
  br i1 %i.ak, label %bb.h, label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread

bb.h:                                             ; preds = %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !64, !range !39, !noundef !40
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load i8, ptr %0, align 8, !tbaa !61     ; 2 uses
  %i.ap = and i8 %i.ao, 3
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !34
  %i.at = lshr i8 %i.ao, 2
  %i.au = zext nneg i8 %i.at to i64
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.av, %i.as
  %.not.i30 = icmp eq i64 %i.aw, 0
  %i.ax = select i1 %.not.i30, i64 3, i64 1
  %i.ay = sub nuw i64 %.034, %i.v
  %i.az = mul i64 %i.ax, %i.ay
  %i.ba = add i64 %i.az, %i.u
  br label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.bb = load i64, ptr %3, align 8, !tbaa !34
  %4 = and i64 %i.bb, 4096
  %.not.i31 = icmp eq i64 %4, 0
  %5 = select i1 %.not.i31, i64 3, i64 1
  %i.bc = sub nuw i64 %.034, %i.v
  %i.bd = mul i64 %5, %i.bc
  %i.be = add i64 %i.bd, %i.u
  br label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread

_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread: ; preds = %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.thread10.i.i, %bb.g, %bb.f, %bb.i, %bb.j, %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit
  %.2 = phi i64 [ %i.be, %bb.j ], [ %i.ba, %bb.i ], [ %i.u, %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit ], [ %i.u, %bb.f ], [ %i.u, %bb.g ], [ %i.u, %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.thread10.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !57
  %i.bh = add i64 %i.bg, %.2
  ret i64 %i.bh
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK5boost4urls6detail22integer_formatter_impl6formatExRNS1_14format_contextERKNS0_7grammar9lut_charsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i64 %1, 0                       ; 2 uses
  %i.b = tail call i64 @llvm.abs.i64(i64 %1, i1 false) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2
  %.not = icmp ne i8 %i.d, 45
  %or.cond.not = select i1 %i.a, i1 true, i1 %.not
  %.060 = zext i1 %or.cond.not to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.161 = phi i64 [ %.060, %bb.a ], [ %i.h, %bb.b ] ; 5 uses
  %.058 = phi i64 [ 1, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %.056 = phi i64 [ %i.b, %bb.a ], [ %i.g, %bb.b ] ; 3 uses
  %i.e = icmp ugt i64 %.056, 9
  %i.f = mul i64 %.058, 10
  %spec.select = select i1 %i.e, i64 %i.f, i64 %.058 ; 2 uses
  %i.g = udiv i64 %.056, 10
  %i.h = add i64 %.161, 1                         ; 4 uses
  %.not66 = icmp ult i64 %.056, 10
  br i1 %.not66, label %bb.c, label %bb.b, !llvm.loop !126

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !65   ; 3 uses
  %.not67 = icmp eq i64 %i.j, -1
  br i1 %.not67, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !51
  %.fr38.i114 = freeze i64 %i.m                   ; 3 uses
  %i.n = icmp eq i64 %.fr38.i114, 0
  br i1 %i.n, label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !53
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !34
  %i.o = icmp ult i64 %i.j, %.sroa.2.0.copyload.i
  br i1 %i.o, label %_ZNK5boost4urls6detail11format_args3getEm.exit.sink.split.i, label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread.thread

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.016.0.copyload106 = load ptr, ptr %i.p, align 8, !tbaa !11
  %.sroa.0.0.copyload.i109 = load ptr, ptr %2, align 8, !tbaa !53 ; 2 uses
  %.sroa.2.0..sroa_idx.i110 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i111 = load i64, ptr %.sroa.2.0..sroa_idx.i110, align 8, !tbaa !34 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.2.0.copyload.i111, 0
  br i1 %.not.i.i, label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread.thread, label %.lr.ph.i.split.i

.lr.ph.i.split.i:                                 ; preds = %bb.f, %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.thread10.i.i
  %.012.i.i = phi i64 [ %i.u, %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.thread10.i.i ], [ 0, %bb.f ] ; 3 uses
  %i.q = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.copyload.i109, i64 %.012.i.i ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !34, !noalias !133
  %i.r = icmp eq i64 %.sroa.2.0.copyload.i.i.i, %.fr38.i114
  br i1 %i.r, label %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.i.i, label %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.thread10.i.i

_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.i.i: ; preds = %.lr.ph.i.split.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !11, !noalias !133
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %.sroa.0.0.copyload.i.i.i, ptr readonly %.sroa.016.0.copyload106, i64 %.fr38.i114), !noalias !133
  %i.t = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.t, label %_ZNK5boost4urls6detail11format_args3getEm.exit.sink.split.i, label %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.thread10.i.i

_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.thread10.i.i: ; preds = %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.i.i, %.lr.ph.i.split.i
  %i.u = add nuw i64 %.012.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %.sroa.2.0.copyload.i111
  br i1 %exitcond.not.i.i, label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread.thread, label %.lr.ph.i.split.i, !llvm.loop !0

_ZNK5boost4urls6detail11format_args3getEm.exit.sink.split.i: ; preds = %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.i.i, %bb.e
  %.sroa.0.0.copyload.i117 = phi ptr [ %.sroa.0.0.copyload.i, %bb.e ], [ %.sroa.0.0.copyload.i109, %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.i.i ]
  %.sink50.i = phi i64 [ %i.j, %bb.e ], [ %.012.i.i, %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.i.i ]
  %i.v = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.copyload.i117, i64 %.sink50.i
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  br label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit

_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit: ; preds = %_ZNK5boost4urls6detail11format_args3getEm.exit.sink.split.i, %bb.d
  %.0105.in = phi ptr [ %i.k, %bb.d ], [ %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i, %_ZNK5boost4urls6detail11format_args3getEm.exit.sink.split.i ]
  %.0105 = load i64, ptr %.0105.in, align 8, !tbaa !34 ; 2 uses
  %i.w = icmp ugt i64 %.0105, %i.h
  br i1 %i.w, label %bb.g, label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread.thread

bb.g:                                             ; preds = %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit
  %i.x = sub nuw i64 %.0105, %i.h                 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !64, !range !39, !noundef !40
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !62
  switch i8 %i.ac, label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread.thread [
    i8 60, label %bb.i
    i8 62, label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread
    i8 94, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  br label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread.thread

bb.j:                                             ; preds = %bb.h
  %i.ad = lshr i64 %i.x, 1                        ; 2 uses
  %i.ae = sub i64 %i.x, %i.ad
  br label %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread

_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread.thread: ; preds = %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.thread10.i.i, %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit, %bb.h, %bb.i, %bb.e, %bb.f
  %.1.ph = phi i64 [ 0, %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit ], [ 0, %bb.f ], [ 0, %bb.e ], [ %i.x, %bb.i ], [ 0, %bb.h ], [ 0, %_ZN5boost4coreeqENS0_17basic_string_viewIcEES2_.exit.thread10.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !59
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3
  br label %.loopexit125

_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread: ; preds = %bb.h, %bb.j, %bb.g
  %.155 = phi i64 [ %i.x, %bb.g ], [ %i.ad, %bb.j ], [ %i.x, %bb.h ] ; 4 uses
  %.1 = phi i64 [ 0, %bb.g ], [ %i.ae, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !59 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !64, !range !39, !noundef !40
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = icmp eq i64 %.155, 0                    ; 3 uses
  %or.cond.not152 = select i1 %i.am, i1 true, i1 %i.an
  br i1 %or.cond.not152, label %.loopexit125, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread, %_ZN5boost4urls6detail10encode_oneERPccRKNS0_7grammar9lut_charsE.exit
  %.052131 = phi i64 [ %i.bj, %_ZN5boost4urls6detail10encode_oneERPccRKNS0_7grammar9lut_charsE.exit ], [ 0, %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread ]
  %.0101130 = phi ptr [ %.8, %_ZN5boost4urls6detail10encode_oneERPccRKNS0_7grammar9lut_charsE.exit ], [ %i.aj, %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread ] ; 4 uses
  %i.ao = load i8, ptr %0, align 8, !tbaa !61     ; 4 uses
  %i.ap = and i8 %i.ao, 3
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !34
  %i.at = lshr i8 %i.ao, 2
  %i.au = zext nneg i8 %i.at to i64
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.av, %i.as
  %.not.i72 = icmp eq i64 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %.0101130, i64 1 ; 2 uses
  br i1 %.not.i72, label %bb.k, label %_ZN5boost4urls6detail10encode_oneERPccRKNS0_7grammar9lut_charsE.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ay = zext i8 %i.ao to i32                    ; 2 uses
  %i.az = lshr i32 %i.ay, 4
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @.str.24, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %.0101130, i64 2
  store i8 %i.bc, ptr %i.ax, align 1, !tbaa !21
  %i.be = and i32 %i.ay, 15
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @.str.24, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %.0101130, i64 3
  store i8 %i.bh, ptr %i.bd, align 1, !tbaa !21
  br label %_ZN5boost4urls6detail10encode_oneERPccRKNS0_7grammar9lut_charsE.exit

_ZN5boost4urls6detail10encode_oneERPccRKNS0_7grammar9lut_charsE.exit: ; preds = %.lr.ph, %bb.k
  %.sink = phi i8 [ 37, %bb.k ], [ %i.ao, %.lr.ph ]
  %.8 = phi ptr [ %i.bi, %bb.k ], [ %i.ax, %.lr.ph ] ; 2 uses
  store i8 %.sink, ptr %.0101130, align 1, !tbaa !21
  %i.bj = add nuw i64 %.052131, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bj, %.155
  br i1 %exitcond.not, label %.loopexit125, label %.lr.ph, !llvm.loop !129

.loopexit125:                                     ; preds = %_ZN5boost4urls6detail10encode_oneERPccRKNS0_7grammar9lut_charsE.exit, %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread.thread, %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread
  %i.bk = phi i1 [ %i.an, %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread ], [ true, %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread.thread ], [ %i.an, %_ZN5boost4urls6detail10encode_oneERPccRKNS0_7grammar9lut_charsE.exit ]
  %i.bl = phi ptr [ %i.ak, %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread ], [ %i.ah, %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread.thread ], [ %i.ak, %_ZN5boost4urls6detail10encode_oneERPccRKNS0_7grammar9lut_charsE.exit ] ; 2 uses
  %.1175 = phi i64 [ %.1, %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread ], [ %.1.ph, %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread.thread ], [ %.1, %_ZN5boost4urls6detail10encode_oneERPccRKNS0_7grammar9lut_charsE.exit ] ; 2 uses
  %.155174 = phi i64 [ %.155, %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread ], [ 0, %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread.thread ], [ %.155, %_ZN5boost4urls6detail10encode_oneERPccRKNS0_7grammar9lut_charsE.exit ] ; 4 uses
  %.1102 = phi ptr [ %i.aj, %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread ], [ %i.ag, %_ZN5boost4urls6detail19get_width_from_argsEmNS_4core17basic_string_viewIcEENS1_11format_argsERm.exit.thread.thread ], [ %.8, %_ZN5boost4urls6detail10encode_oneERPccRKNS0_7grammar9lut_charsE.exit ] ; 11 uses
  br i1 %i.a, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.loopexit125
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !34
  %i.bo = and i64 %i.bn, 2048
  %.not.i73 = icmp eq i64 %i.bo, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %.1102, i64 1 ; 2 uses
  br i1 %.not.i73, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 45, ptr %.1102, align 1, !tbaa !21
  br label %_ZN5boost4urls6detail10encode_oneERPccRKNS0_7grammar9lut_charsE.exit74
end_hunk_0
