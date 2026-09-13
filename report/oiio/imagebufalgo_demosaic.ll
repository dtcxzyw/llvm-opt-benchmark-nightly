Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebufalgo_demosaic?download=true
inline.NumInlined: 17707
inline.NumDeleted: 3921
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 218
begin_hunk_0_@_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv
declare void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126)) local_unnamed_addr #2

declare noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 1 dereferenceable(1), i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA23_cJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(23) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.93", align 16 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.a = tail call i64 @strlen(ptr noundef nonnull align 1 dereferenceable(23) %1) #29, !noalias !1297
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29, !noalias !1297
  %i.b = load ptr, ptr %2, align 8, !tbaa !85, !noalias !1297
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !77, !noalias !1297
  %i.e = ptrtoint ptr %i.b to i64
  store i64 %i.e, ptr %3, align 16, !noalias !1297
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.d, ptr %.sroa_idx3.i, align 8, !noalias !1297
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull align 1 dereferenceable(23) %1, i64 %i.a, i64 13, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !1297
  %i.f = load ptr, ptr %5, align 8, !tbaa !85
  store ptr %i.f, ptr %4, align 8, !tbaa !72
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !77
  store i64 %i.i, ptr %i.g, align 8, !tbaa !73
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf5errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %5, align 8, !tbaa !85     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8, !tbaa !78
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %5, align 8, !tbaa !85     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.c
  %i.s = load i64, ptr %i.q, align 8, !tbaa !78
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %i.o
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS0_3ROIENS0_6paroptESt8functionIFvS2_EE(ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %0, ptr noundef byval(%"class.OpenImageIO::v3_1::paropt") align 8 %1, ptr noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %4 = alloca %"class.std::function.118", align 8 ; 12 uses
  call void @_ZN11OpenImageIO4v3_16paropt7resolveEv(ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.a = load i32, ptr %1, align 8, !tbaa !120
  %i.b = load i32, ptr %0, align 8, !tbaa !81     ; 6 uses
  %.not.i = icmp eq i32 %i.b, -2147483648         ; 2 uses
  br i1 %.not.i, label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !404
  %i.e = sub nsw i32 %i.d, %i.b
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !405
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !406
  %i.k = sub nsw i32 %i.h, %i.j
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %i.l, %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !1299
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !1300
  %i.r = sub nsw i32 %i.o, %i.q
  %i.s = sext i32 %i.r to i64
  %i.t = mul i64 %i.m, %i.s
  br label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit

_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit:        ; preds = %bb.a, %bb.b
  %i.u = phi i64 [ %i.t, %bb.b ], [ 0, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !123
  %sext = shl i64 %i.w, 32
  %i.x = ashr exact i64 %sext, 32                 ; 2 uses
  %i.y = udiv i64 %i.u, %i.x
  %i.z = trunc i64 %i.y to i32
  %i.aa = add nsw i32 %i.z, 1
  %.sroa.speculated32 = call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.a) ; 3 uses
  store i32 %.sroa.speculated32, ptr %1, align 8, !tbaa !120
  %i.ab = icmp eq i32 %.sroa.speculated32, 1
  br i1 %i.ab, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !135
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %bb.d, label %_ZNKSt8functionIFvN11OpenImageIO4v3_13ROIEEEclES2_.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZSt25__throw_bad_function_callv() #34
  unreachable

_ZNKSt8functionIFvN11OpenImageIO4v3_13ROIEEEclES2_.exit: ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !134
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3), !inline_history !1298
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.p

bb.e:                                             ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !122 ; 2 uses
  %i.ai = icmp eq i16 %i.ah, 3
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !404
  %i.al = sub nsw i32 %i.ak, %i.b
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !405
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !406
  %i.aq = sub nsw i32 %i.an, %i.ap
  %i.ar = icmp sle i32 %i.al, %i.aq
  %i.as = zext i1 %i.ar to i16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i16 [ %i.as, %bb.f ], [ %i.ah, %bb.e ]
  switch i16 %.0, label %bb.l [
    i16 1, label %bb.h
    i16 0, label %bb.i
    i16 4, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !404
  %i.av = sub nsw i32 %i.au, %i.b
  %i.aw = sext i32 %i.av to i64
  br label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit12

bb.i:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !405
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !406
  %i.bb = sub nsw i32 %i.ay, %i.ba
  %i.bc = sext i32 %i.bb to i64
  br label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit12

bb.j:                                             ; preds = %bb.g
  br i1 %.not.i, label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit12, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !404
  %i.bf = sub nsw i32 %i.be, %i.b
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !405
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !406
  %i.bl = sub nsw i32 %i.bi, %i.bk
  %i.bm = sext i32 %i.bl to i64
  %i.bn = mul nsw i64 %i.bm, %i.bg
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !1299
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !1300
  %i.bs = sub nsw i32 %i.bp, %i.br
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul i64 %i.bn, %i.bt
  %i.bv = call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.x)
  %i.bw = sitofp i64 %i.bv to double
  %i.bx = call double @llvm.sqrt.f64(double %i.bw)
  %i.by = fptosi double %i.bx to i32
  %5 = sdiv i32 %i.by, 4
  %i.bz = call i32 @llvm.smax.i32(i32 %5, i32 1)
  %i.ca = zext nneg i32 %i.bz to i64              ; 2 uses
  br label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit12

bb.l:                                             ; preds = %bb.g
  %i.cb = sitofp i32 %.sroa.speculated32 to double
  %i.cc = call noundef double @llvm.sqrt.f64(double %i.cb)
  %i.cd = fptosi double %i.cc to i64
  %6 = sdiv i64 %i.cd, 2
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %6, i64 1) ; 2 uses
  br label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit12

_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit12:      ; preds = %bb.k, %bb.j, %bb.i, %bb.l, %bb.h
  %.09 = phi i64 [ 0, %bb.h ], [ %i.bc, %bb.i ], [ %.sroa.speculated, %bb.l ], [ %i.ca, %bb.k ], [ 1, %bb.j ]
  %.08 = phi i64 [ %i.aw, %bb.h ], [ 0, %bb.i ], [ %.sroa.speculated, %bb.l ], [ %i.ca, %bb.k ], [ 1, %bb.j ]
  %i.ce = sext i32 %i.b to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !404
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !406
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !405
  %i.cn = sext i32 %i.cm to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %2, ptr %4, align 8, !tbaa !408
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !410
  store ptr @_ZNSt17_Function_handlerIFvllllEZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E9_M_invokeERKSt9_Any_dataOlSE_SE_SE_, ptr %i.cp, align 8, !tbaa !1302
  store ptr @_ZNSt17_Function_handlerIFvllllEZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.co, align 8, !tbaa !135
  invoke void @_ZN11OpenImageIO4v3_123parallel_for_chunked_2DEllllllOSt8functionIFvllllEENS0_6paroptE(i64 noundef %i.ce, i64 noundef %i.ch, i64 noundef %.08, i64 noundef %i.ck, i64 noundef %i.cn, i64 noundef %.09, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::paropt") align 8 %1)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit12
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !135 ; 2 uses
  %.not.i16 = icmp eq ptr %i.cq, null
  br i1 %.not.i16, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cr = invoke noundef zeroext i1 %i.cq(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt8functionIFvN11OpenImageIO4v3_13ROIEEEclES2_.exit
  ret void

bb.q:                                             ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit12
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %i.co, align 8, !tbaa !135 ; 2 uses
  %.not.i17 = icmp eq ptr %i.cv, null
  br i1 %.not.i17, label %_ZNSt14_Function_baseD2Ev.exit18, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cw = invoke noundef zeroext i1 %i.cv(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit18 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit18:                 ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %i.cu
}

declare void @_ZN11OpenImageIO4v3_16paropt7resolveEv(ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_123parallel_for_chunked_2DEllllllOSt8functionIFvllllEENS0_6paroptE(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef byval(%"class.OpenImageIO::v3_1::paropt") align 8) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvllllEZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E9_M_invokeERKSt9_Any_dataOlSE_SE_SE_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #1 align 2 {
bb.a:
  %5 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 8 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !200
  %i.b = load i64, ptr %2, align 8, !tbaa !200
  %i.c = load i64, ptr %3, align 8, !tbaa !200
  %i.d = load i64, ptr %4, align 8, !tbaa !200
  %i.e = load ptr, ptr %0, align 8, !tbaa !1305, !nonnull !195, !align !273 ; 3 uses
  %i.f = trunc i64 %i.a to i32
  %i.g = trunc i64 %i.b to i32
  %i.h = trunc i64 %i.c to i32
  %i.i = trunc i64 %i.d to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1306, !nonnull !195, !align !266
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = load <4 x i32>, ptr %i.l, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 %i.f, ptr %5, align 8
  store i32 %i.g, ptr %.sroa.2.0..sroa_idx.i.i.i, align 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4
  store <4 x i32> %i.m, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !135
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %bb.b, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS1_3ROIENS1_6paroptESt8functionIFvS3_EEEUlllllE_JllllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #34
  unreachable

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS1_3ROIENS1_6paroptESt8functionIFvS3_EEEUlllllE_JllllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !134
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %5), !inline_history !1303
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvllllEZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS0_3ROIENS0_6paroptESt8functionIFvS2_EEEUlllllE_, ptr %0, align 8, !tbaa !412
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !115
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1307
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, float, 2, 3, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window::Row", align 8 ; 37 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 8 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, float, 2, 3, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window", align 8 ; 21 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, float, 2, 3, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Context", align 8 ; 11 uses
  %6 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 10 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !115   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1317 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.d = load ptr, ptr %.val, align 8, !tbaa !1318, !nonnull !195, !align !273
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !406  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !405
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph54.i.i.i, label %._crit_edge55.i.i.i

.lr.ph54.i.i.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 56
end_hunk_0
