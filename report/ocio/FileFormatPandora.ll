Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormatPandora?download=true
inline.NumInlined: 893
inline.NumDeleted: 340
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat13getFormatInfoERSt6vectorINS_10FormatInfoESaIS3_EE:bb.a
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ai = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.q
  br i1 %i.aj, label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ak = load i64, ptr %i.q, align 8, !tbaa !20
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #24
  br label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit

_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !25  ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.d
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15: ; preds = %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit
  %i.ao = load i64, ptr %i.d, align 8, !tbaa !20
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16: ; preds = %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15
  %i.aq = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.a
  br i1 %i.ar, label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16
  %i.as = load i64, ptr %i.a, align 8, !tbaa !20
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #24
  br label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit20

_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit20:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.f:                                             ; preds = %bb.c, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit8, %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_510FormatInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.av, %bb.g ], [ %i.au, %bb.f ]
  call void @_ZN16OpenColorIO_v2_510FormatInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i32 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %i.p = alloca i64, align 8                      ; 6 uses
  %i.q = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.r = alloca i32, align 4                      ; 8 uses
  %7 = alloca %"class.std::vector.9", align 16    ; 15 uses
  %8 = alloca %"class.std::vector.4", align 8     ; 13 uses
  %9 = alloca %"class.std::vector.9", align 16    ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.s = alloca i32, align 4                      ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %37 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !12
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %2, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !34
  %i.z = and i32 %i.y, 5
  %.not773 = icmp eq i32 %i.z, 0
  br i1 %.not773, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull @.str.5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aa) #23
  br label %bb.fr

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ac, ptr %5, align 8, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.ad, align 8, !tbaa !19
  store i8 0, ptr %i.ac, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ae, ptr %6, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.af, align 8, !tbaa !19
  store i8 0, ptr %i.ae, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #23
  store i32 0, ptr %i.r, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 10 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 12 uses
  %i.av = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 12 uses
  %i.az = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 10 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 10 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.e
  %.sroa.36.0.ph = phi ptr [ null, %bb.e ], [ %.sroa.36.0.ph.be, %.outer.backedge ] ; 35 uses
  %.sroa.20.0.ph = phi ptr [ null, %bb.e ], [ %.sroa.20.0.ph.be, %.outer.backedge ] ; 13 uses
  %.sroa.0703.0.ph = phi ptr [ null, %bb.e ], [ %.sroa.0703.0.ph.be, %.outer.backedge ] ; 45 uses
  %.0735.ph = phi i32 [ 0, %bb.e ], [ %.0735.ph.be, %.outer.backedge ] ; 11 uses
  %.081.ph = phi i1 [ false, %bb.e ], [ %.081.ph.be, %.outer.backedge ] ; 5 uses
  %.080.ph = phi i32 [ 0, %bb.e ], [ %i.bm, %.outer.backedge ]
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.outer
  %.080 = phi i32 [ %.080.ph, %.outer ], [ %i.bm, %.backedge.backedge ]
  %i.bl = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_58nextlineERSiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.f unwind label %.loopexit.loopexit

bb.f:                                             ; preds = %.backedge
  br i1 %i.bl, label %bb.g, label %bb.du

bb.g:                                             ; preds = %bb.f
  %i.bm = add nsw i32 %.080, 1                    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %i.ag, ptr %12, align 8, !tbaa !16
  %i.bn = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.bo = load i64, ptr %i.ad, align 8, !tbaa !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #23
  store i64 %i.bo, ptr %i.q, align 8, !tbaa !36
  %i.bp = icmp ugt i64 %i.bo, 15
  br i1 %i.bp, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.bq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 0)
          to label %.noexc unwind label %bb.q     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.bq, ptr %12, align 8, !tbaa !25
  %i.br = load i64, ptr %i.q, align 8, !tbaa !36
  store i64 %i.br, ptr %i.ag, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.g
  %i.bs = phi ptr [ %i.bq, %.noexc ], [ %i.ag, %bb.g ] ; 2 uses
  switch i64 %i.bo, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.bt = load i8, ptr %i.bn, align 1, !tbaa !20
  store i8 %i.bt, ptr %i.bs, align 1, !tbaa !20
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %i.bn, i64 %i.bo, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.bu = load i64, ptr %i.q, align 8, !tbaa !36  ; 2 uses
  store i64 %i.bu, ptr %i.ah, align 8, !tbaa !19
  %i.bv = load ptr, ptr %12, align 8, !tbaa !25
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bu
  store i8 0, ptr %i.bw, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  invoke void @_ZN11StringUtils4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 %12)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.bx = load ptr, ptr %11, align 8, !tbaa !25, !noalias !127 ; 7 uses
  %i.by = load i64, ptr %i.ai, align 8, !tbaa !19, !noalias !127 ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.by
  %.not6.i.i = icmp samesign eq i64 %i.by, 0
  br i1 %.not6.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i, label %iter.check1660

iter.check1660:                                   ; preds = %bb.k
  %min.iters.check1646 = icmp ult i64 %i.by, 8
  br i1 %min.iters.check1646, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check1647

vector.main.loop.iter.check1647:                  ; preds = %iter.check1660
  %min.iters.check1648 = icmp ult i64 %i.by, 32
  br i1 %min.iters.check1648, label %vec.epilog.ph1664, label %vector.ph1649

vector.ph1649:                                    ; preds = %vector.main.loop.iter.check1647
  %i.ca = and i64 %i.by, 24
  %n.vec1650.a = and i64 %i.by, -32               ; 4 uses
  %i.cb = getelementptr i8, ptr %i.bx, i64 %n.vec1650.a
  br label %vector.body1651

vector.body1651:                                  ; preds = %vector.body1651, %vector.ph1649
  %index1652.a = phi i64 [ 0, %vector.ph1649 ], [ %index.next1656, %vector.body1651 ] ; 2 uses
  %next.gep1653.a = getelementptr i8, ptr %i.bx, i64 %index1652.a ; 3 uses
  %i.cc = getelementptr i8, ptr %next.gep1653.a, i64 16 ; 2 uses
  %wide.load1654.a = load <16 x i8>, ptr %next.gep1653.a, align 1, !tbaa !20, !noalias !127 ; 3 uses
  %wide.load1655 = load <16 x i8>, ptr %i.cc, align 1, !tbaa !20, !noalias !127 ; 3 uses
  %i.cd = add <16 x i8> %wide.load1654.a, splat (i8 -65)
  %i.ce = add <16 x i8> %wide.load1655, splat (i8 -65)
  %i.cf = icmp ult <16 x i8> %i.cd, splat (i8 26)
  %i.cg = icmp ult <16 x i8> %i.ce, splat (i8 26)
  %i.ch = or disjoint <16 x i8> %wide.load1654.a, splat (i8 32)
  %i.ci = or disjoint <16 x i8> %wide.load1655, splat (i8 32)
  %i.cj = select <16 x i1> %i.cf, <16 x i8> %i.ch, <16 x i8> %wide.load1654.a
  %i.ck = select <16 x i1> %i.cg, <16 x i8> %i.ci, <16 x i8> %wide.load1655
  store <16 x i8> %i.cj, ptr %next.gep1653.a, align 1, !tbaa !20, !noalias !127
  store <16 x i8> %i.ck, ptr %i.cc, align 1, !tbaa !20, !noalias !127
  %index.next1656 = add nuw i64 %index1652.a, 32  ; 2 uses
  %i.cl = icmp eq i64 %index.next1656, %n.vec1650.a
  br i1 %i.cl, label %middle.block1657, label %vector.body1651, !llvm.loop !76

middle.block1657:                                 ; preds = %vector.body1651
  %cmp.n1658 = icmp eq i64 %i.by, %n.vec1650.a
  br i1 %cmp.n1658, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %vec.epilog.iter.check1662

vec.epilog.iter.check1662:                        ; preds = %middle.block1657
  %min.epilog.iters.check1663 = icmp eq i64 %i.ca, 0
  br i1 %min.epilog.iters.check1663, label %.lr.ph.i.i.preheader, label %vec.epilog.ph1664, !prof !130

vec.epilog.ph1664:                                ; preds = %vector.main.loop.iter.check1647, %vec.epilog.iter.check1662
  %vec.epilog.resume.val1659 = phi i64 [ %n.vec1650.a, %vec.epilog.iter.check1662 ], [ 0, %vector.main.loop.iter.check1647 ]
  %n.vec1665 = and i64 %i.by, -8                  ; 3 uses
  %i.cm = getelementptr i8, ptr %i.bx, i64 %n.vec1665
  br label %vec.epilog.vector.body1666

vec.epilog.vector.body1666:                       ; preds = %vec.epilog.vector.body1666, %vec.epilog.ph1664
  %index1667 = phi i64 [ %vec.epilog.resume.val1659, %vec.epilog.ph1664 ], [ %index.next1670, %vec.epilog.vector.body1666 ] ; 2 uses
  %next.gep1668 = getelementptr i8, ptr %i.bx, i64 %index1667 ; 2 uses
  %wide.load1669 = load <8 x i8>, ptr %next.gep1668, align 1, !tbaa !20, !noalias !127 ; 3 uses
  %i.cn = add <8 x i8> %wide.load1669, splat (i8 -65)
  %i.co = icmp ult <8 x i8> %i.cn, splat (i8 26)
  %i.cp = or disjoint <8 x i8> %wide.load1669, splat (i8 32)
  %i.cq = select <8 x i1> %i.co, <8 x i8> %i.cp, <8 x i8> %wide.load1669
  store <8 x i8> %i.cq, ptr %next.gep1668, align 1, !tbaa !20, !noalias !127
  %index.next1670 = add nuw i64 %index1667, 8     ; 2 uses
  %i.cr = icmp eq i64 %index.next1670, %n.vec1665
  br i1 %i.cr, label %vec.epilog.middle.block1671, label %vec.epilog.vector.body1666, !llvm.loop !77

vec.epilog.middle.block1671:                      ; preds = %vec.epilog.vector.body1666
  %cmp.n1672 = icmp eq i64 %i.by, %n.vec1665
  br i1 %cmp.n1672, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check1660, %vec.epilog.iter.check1662, %vec.epilog.middle.block1671
  %.sroa.0.08.i.i.ph = phi ptr [ %i.bx, %iter.check1660 ], [ %i.cb, %vec.epilog.iter.check1662 ], [ %i.cm, %vec.epilog.middle.block1671 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.cs = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !20, !noalias !127 ; 3 uses
  %i.ct = add i8 %i.cs, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.ct, 26
  %i.cu = or disjoint i8 %i.cs, 32
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.cu, i8 %i.cs
  store i8 %.0.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !20, !noalias !127
  %i.cv = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cv, %i.bz
  br i1 %.not.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !78

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block1671, %middle.block1657
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !25, !noalias !127
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, %bb.k
  %i.cw = phi ptr [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i ], [ %i.bx, %bb.k ] ; 2 uses
  store ptr %i.aj, ptr %10, align 8, !tbaa !16, !alias.scope !127
  %i.cx = icmp eq ptr %i.cw, %i.ak
  br i1 %i.cx, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.l:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  %i.cy = load i64, ptr %i.ai, align 8, !tbaa !19, !noalias !127 ; 3 uses
  %i.cz = icmp ult i64 %i.cy, 16
  call void @llvm.assume(i1 %i.cz)
  %i.da = add nuw nsw i64 %i.cy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.da, i1 false)
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  store ptr %i.cw, ptr %10, align 8, !tbaa !25, !alias.scope !127
  %i.db = load i64, ptr %i.ak, align 8, !tbaa !20, !noalias !127
  store i64 %i.db, ptr %i.aj, align 8, !tbaa !20, !alias.scope !127
  %.pre4.i = load i64, ptr %i.ai, align 8, !tbaa !19, !noalias !127
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %i.dc = phi i64 [ %i.cy, %bb.l ], [ %.pre4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  store i64 %i.dc, ptr %i.al, align 8, !tbaa !19, !alias.scope !127
  store ptr %i.ak, ptr %11, align 8, !tbaa !25, !noalias !127
  store i64 0, ptr %i.ai, align 8, !tbaa !19, !noalias !127
  store i8 0, ptr %i.ak, align 8, !tbaa !20, !noalias !127
  invoke void @_ZN11StringUtils18SplitByWhiteSpacesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.9") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.dd = load ptr, ptr %7, align 16, !tbaa !40   ; 5 uses
  %i.de = load ptr, ptr %i.am, align 8, !tbaa !41 ; 2 uses
  %i.df = load ptr, ptr %i.an, align 16, !tbaa !42
  %i.dg = load <2 x ptr>, ptr %9, align 16, !tbaa !131
  store <2 x ptr> %i.dg, ptr %7, align 16, !tbaa !131
  %i.dh = load ptr, ptr %i.ap, align 16, !tbaa !42
  store ptr %i.dh, ptr %i.an, align 16, !tbaa !42
  %.not4.i.i.i.i.i = icmp eq ptr %i.dd, %i.de
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.dn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.dd, %bb.n ] ; 3 uses
  %i.di = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !25 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !20
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dn, %i.de
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %bb.n
  %.not.i.i1.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.do = ptrtoint ptr %i.df to i64
  %i.dp = ptrtoint ptr %i.dd to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dq) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.o
  %i.dr = load ptr, ptr %9, align 16, !tbaa !40   ; 3 uses
  %i.ds = load ptr, ptr %i.ao, align 8, !tbaa !41 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.dr, %i.ds
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dy, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.dr, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %i.dt = load ptr, ptr %.05.i.i.i, align 8, !tbaa !25 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !20
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dy, %i.ds
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 16, !tbaa !40
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  %i.dz = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.dr, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ea = load ptr, ptr %i.ap, align 16, !tbaa !42
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dz to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ed) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.p
  %i.ee = load ptr, ptr %10, align 8, !tbaa !25   ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.aj
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.eg = load i64, ptr %i.aj, align 8, !tbaa !20
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  %i.ei = load ptr, ptr %11, align 8, !tbaa !25   ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.ak
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ek = load i64, ptr %i.ak, align 8, !tbaa !20
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214
  %i.em = load ptr, ptr %12, align 8, !tbaa !25   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ag
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216
  %i.eo = load i64, ptr %i.ag, align 8, !tbaa !20
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.eq = load ptr, ptr %7, align 16, !tbaa !131  ; 18 uses
  %i.er = load ptr, ptr %i.am, align 8, !tbaa !131 ; 6 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %.backedge.backedge, label %bb.t

.backedge.backedge:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit
  br label %.backedge, !llvm.loop !79

.loopexit.loopexit:                               ; preds = %.backedge
  %lpad.loopexit784 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i558, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i548, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.cy, %bb.bo
  %.sroa.36.1.ph.ph = phi ptr [ %.sroa.36.9, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i558 ], [ %.sroa.36.8, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i548 ], [ %.sroa.36.0.ph, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.36.0.ph, %bb.cy ], [ %.sroa.36.0.ph, %bb.bo ]
  %.sroa.0703.1.ph.ph = phi ptr [ %.sroa.0703.9, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i558 ], [ %.sroa.0703.8, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i548 ], [ %.sroa.0703.0.ph, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0703.0.ph, %bb.cy ], [ %.sroa.0703.0.ph, %bb.bo ]
  %lpad.loopexit.split-lp785 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %bb.dm, %bb.dr
  %.sroa.36.1.ph777 = phi ptr [ %.sroa.36.8, %bb.dm ], [ %.sroa.36.9, %bb.dr ]
  %.sroa.0703.1.ph778 = phi ptr [ %.sroa.0703.8, %bb.dm ], [ %.sroa.0703.9, %bb.dr ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.q:                                             ; preds = %.noexc.i
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

bb.r:                                             ; preds = %bb.j
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

bb.s:                                             ; preds = %bb.m
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = load ptr, ptr %10, align 8, !tbaa !25   ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.aj
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %bb.s
  %i.ey = load i64, ptr %i.aj, align 8, !tbaa !20
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220
  %i.fa = load ptr, ptr %11, align 8, !tbaa !25   ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.ak
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222
  %i.fc = load i64, ptr %i.ak, align 8, !tbaa !20
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223, %bb.r
  %.pn142.pn = phi { ptr, i32 } [ %i.eu, %bb.r ], [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223 ], [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ] ; 2 uses
  %i.fe = load ptr, ptr %12, align 8, !tbaa !25   ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.ag
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225
  %i.fg = load i64, ptr %i.ag, align 8, !tbaa !20
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226, %bb.q
  %.pn142.pn.pn = phi { ptr, i32 } [ %i.et, %bb.q ], [ %.pn142.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226 ], [ %.pn142.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.loopexit

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !19 ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit419.thread, label %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit

_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit: ; preds = %bb.t
  %i.fl = load ptr, ptr %i.eq, align 8, !tbaa !25 ; 4 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !20
  %i.fn = icmp eq i8 %i.fm, 35
  br i1 %i.fn, label %.backedge.backedge, label %.thread

.thread:                                          ; preds = %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit
  switch i64 %i.fj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit419.thread [
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit267
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit364
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.thread
  %i.fo = load i32, ptr %i.fl, align 1
  %i.fp = xor i32 %i.fo, 1851877475
  %i.fq = getelementptr i8, ptr %i.fl, i64 3
  %i.fr = load i32, ptr %i.fq, align 1
  %i.fs = xor i32 %i.fr, 1818586734
  %i.ft = or i32 %i.fp, %i.fs
  %i.fu = icmp ne i32 %i.ft, 0
  %i.fv = zext i1 %i.fu to i32
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread738, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit419.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread738: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.fx = ptrtoint ptr %i.er to i64
  %i.fy = ptrtoint ptr %i.eq to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %.not185 = icmp eq i64 %i.fz, 64
  br i1 %.not185, label %bb.u, label %.critedge195.thread

bb.u:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread738
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.ga = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  store ptr %i.aq, ptr %14, align 8, !tbaa !16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !25 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #23
  store i64 %i.gd, ptr %i.p, align 8, !tbaa !36
  %i.ge = icmp ugt i64 %i.gd, 15
  br i1 %i.ge, label %.noexc.i230, label %._crit_edge.i.i229

.noexc.i230:                                      ; preds = %bb.u
  %i.gf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0)
          to label %.noexc231 unwind label %bb.ab ; 2 uses

.noexc231:                                        ; preds = %.noexc.i230
  store ptr %i.gf, ptr %14, align 8, !tbaa !25
  %i.gg = load i64, ptr %i.p, align 8, !tbaa !36
  store i64 %i.gg, ptr %i.aq, align 8, !tbaa !20
  br label %._crit_edge.i.i229

._crit_edge.i.i229:                               ; preds = %.noexc231, %bb.u
  %i.gh = phi ptr [ %i.gf, %.noexc231 ], [ %i.aq, %bb.u ] ; 2 uses
  switch i64 %i.gd, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i229
  %i.gi = load i8, ptr %i.gb, align 1, !tbaa !20
  store i8 %i.gi, ptr %i.gh, align 1, !tbaa !20
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i229
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gh, ptr align 1 %i.gb, i64 %i.gd, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i229
  %i.gj = load i64, ptr %i.p, align 8, !tbaa !36  ; 2 uses
  store i64 %i.gj, ptr %i.ar, align 8, !tbaa !19
  %i.gk = load ptr, ptr %14, align 8, !tbaa !25
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gj
  store i8 0, ptr %i.gl, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.gm = load ptr, ptr %14, align 8, !tbaa !25, !noalias !132 ; 7 uses
  %i.gn = load i64, ptr %i.ar, align 8, !tbaa !19, !noalias !132 ; 9 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gn
  %.not6.i.i233 = icmp samesign eq i64 %i.gn, 0
  br i1 %.not6.i.i233, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i241, label %iter.check

iter.check:                                       ; preds = %bb.x
  %min.iters.check = icmp ult i64 %i.gn, 8
  br i1 %min.iters.check, label %.lr.ph.i.i234.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1525 = icmp ult i64 %i.gn, 32
  br i1 %min.iters.check1525, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gp = and i64 %i.gn, 24
  %n.vec = and i64 %i.gn, -32                     ; 4 uses
  %i.gq = getelementptr i8, ptr %i.gm, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gm, i64 %index ; 3 uses
  %i.gr = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !20, !noalias !132 ; 3 uses
  %wide.load1526 = load <16 x i8>, ptr %i.gr, align 1, !tbaa !20, !noalias !132 ; 3 uses
  %i.gs = add <16 x i8> %wide.load, splat (i8 -65)
  %i.gt = add <16 x i8> %wide.load1526, splat (i8 -65)
  %i.gu = icmp ult <16 x i8> %i.gs, splat (i8 26)
  %i.gv = icmp ult <16 x i8> %i.gt, splat (i8 26)
  %i.gw = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.gx = or disjoint <16 x i8> %wide.load1526, splat (i8 32)
  %i.gy = select <16 x i1> %i.gu, <16 x i8> %i.gw, <16 x i8> %wide.load
  %i.gz = select <16 x i1> %i.gv, <16 x i8> %i.gx, <16 x i8> %wide.load1526
  store <16 x i8> %i.gy, ptr %next.gep, align 1, !tbaa !20, !noalias !132
  store <16 x i8> %i.gz, ptr %i.gr, align 1, !tbaa !20, !noalias !132
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ha = icmp eq i64 %index.next, %n.vec
  br i1 %i.ha, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gn, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i239, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i234.preheader, label %vec.epilog.ph, !prof !130

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1527 = and i64 %i.gn, -8                  ; 3 uses
  %i.hb = getelementptr i8, ptr %i.gm, i64 %n.vec1527
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1528 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1531, %vec.epilog.vector.body ] ; 2 uses
  %next.gep1529 = getelementptr i8, ptr %i.gm, i64 %index1528 ; 2 uses
  %wide.load1530 = load <8 x i8>, ptr %next.gep1529, align 1, !tbaa !20, !noalias !132 ; 3 uses
  %i.hc = add <8 x i8> %wide.load1530, splat (i8 -65)
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491: ; preds = %.critedge206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i489
  %i.acs = load ptr, ptr %29, align 8, !tbaa !25  ; 2 uses
  %i.act = icmp eq ptr %i.acs, %i.au
  br i1 %i.act, label %.critedge207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i492

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i492: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491
  %i.acu = load i64, ptr %i.au, align 8, !tbaa !20
  %i.acv = add i64 %i.acu, 1
  call void @_ZdlPvm(ptr noundef %i.acs, i64 noundef %i.acv) #24
  br label %.critedge207

.critedge207:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i492
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br i1 %i.aco, label %.critedge207.thread, label %.outer.backedge

.critedge207.thread:                              ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit419.thread751, %.critedge207
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  %i.acw = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 4 uses
  store ptr %i.acw, ptr %34, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i64 63, ptr %i.f, align 8, !tbaa !36
  %i.acx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc497 unwind label %bb.cw ; 3 uses

.noexc497:                                        ; preds = %.critedge207.thread
  store ptr %i.acx, ptr %34, align 8, !tbaa !25
  %i.acy = load i64, ptr %i.f, align 8, !tbaa !36 ; 3 uses
  store i64 %i.acy, ptr %i.acw, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.acx, ptr noundef nonnull align 1 dereferenceable(63) @.str.23, i64 63, i1 false)
  %i.acz = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 %i.acy, ptr %i.acz, align 8, !tbaa !19
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acx, i64 %i.acy
  store i8 0, ptr %i.ada, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.unreachable767 unwind label %bb.cx

.unreachable767:                                  ; preds = %.noexc497
  unreachable

bb.ct:                                            ; preds = %.noexc.i421
  %i.adb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519

bb.cu:                                            ; preds = %.noexc.i440
  %i.adc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513

bb.cv:                                            ; preds = %.noexc.i459
  %i.add = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  %i.ade = load ptr, ptr %30, align 8, !tbaa !25  ; 2 uses
  %i.adf = icmp eq ptr %i.ade, %i.ba
  br i1 %i.adf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i508

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i508: ; preds = %bb.cv
  %i.adg = load i64, ptr %i.ba, align 8, !tbaa !20
  %i.adh = add i64 %i.adg, 1
  call void @_ZdlPvm(ptr noundef %i.ade, i64 noundef %i.adh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i508
  %i.adi = load ptr, ptr %31, align 8, !tbaa !25  ; 2 uses
  %i.adj = icmp eq ptr %i.adi, %i.ay
  br i1 %i.adj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i511

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i511: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510
  %i.adk = load i64, ptr %i.ay, align 8, !tbaa !20
  %i.adl = add i64 %i.adk, 1
  call void @_ZdlPvm(ptr noundef %i.adi, i64 noundef %i.adl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i511, %bb.cu
  %.pn152.pn.pn.pn.pn = phi { ptr, i32 } [ %i.adc, %bb.cu ], [ %i.add, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i511 ], [ %i.add, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  %i.adm = load ptr, ptr %28, align 8, !tbaa !25  ; 2 uses
  %i.adn = icmp eq ptr %i.adm, %i.aw
  br i1 %i.adn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513
  %i.ado = load i64, ptr %i.aw, align 8, !tbaa !20
  %i.adp = add i64 %i.ado, 1
  call void @_ZdlPvm(ptr noundef %i.adm, i64 noundef %i.adp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514
  %i.adq = load ptr, ptr %29, align 8, !tbaa !25  ; 2 uses
  %i.adr = icmp eq ptr %i.adq, %i.au
  br i1 %i.adr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i517

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i517: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516
  %i.ads = load i64, ptr %i.au, align 8, !tbaa !20
  %i.adt = add i64 %i.ads, 1
  call void @_ZdlPvm(ptr noundef %i.adq, i64 noundef %i.adt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i517, %bb.ct
  %.pn152.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.adb, %bb.ct ], [ %.pn152.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i517 ], [ %.pn152.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %.loopexit

bb.cw:                                            ; preds = %.critedge207.thread
  %i.adu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522

bb.cx:                                            ; preds = %.noexc497
  %i.adv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adw = load ptr, ptr %34, align 8, !tbaa !25  ; 2 uses
  %i.adx = icmp eq ptr %i.adw, %i.acw
  br i1 %i.adx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520: ; preds = %bb.cx
  %i.ady = load i64, ptr %i.acw, align 8, !tbaa !20
  %i.adz = add i64 %i.ady, 1
  call void @_ZdlPvm(ptr noundef %i.adw, i64 noundef %i.adz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520, %bb.cw
  %.pn161 = phi { ptr, i32 } [ %i.adu, %bb.cw ], [ %i.adv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520 ], [ %i.adv, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit419.thread: ; preds = %bb.t, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit364, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit267, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit419
  br i1 %.081.ph, label %bb.cy, label %.outer.backedge

bb.cy:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit419.thread
  %i.aea = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_517StringVecToIntVecERSt6vectorIiSaIiEERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.cz unwind label %.loopexit.loopexit.split-lp

bb.cz:                                            ; preds = %bb.cy
  br i1 %i.aea, label %bb.da, label %.noexc.i524

bb.da:                                            ; preds = %bb.cz
  %i.aeb = load ptr, ptr %i.bk, align 8, !tbaa !145
  %i.aec = load ptr, ptr %8, align 8, !tbaa !146  ; 3 uses
  %i.aed = ptrtoint ptr %i.aeb to i64
  %i.aee = ptrtoint ptr %i.aec to i64
  %i.aef = sub i64 %i.aed, %i.aee
  %.not146 = icmp eq i64 %i.aef, 16
  br i1 %.not146, label %bb.dd, label %.noexc.i524

.noexc.i524:                                      ; preds = %bb.da, %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  %i.aeg = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 4 uses
  store ptr %i.aeg, ptr %35, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i64 28, ptr %i.e, align 8, !tbaa !36
  %i.aeh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc525 unwind label %bb.db ; 2 uses

.noexc525:                                        ; preds = %.noexc.i524
  store ptr %i.aeh, ptr %35, align 8, !tbaa !25
  %i.aei = load i64, ptr %i.e, align 8, !tbaa !36 ; 3 uses
  store i64 %i.aei, ptr %i.aeg, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.aeh, ptr noundef nonnull align 1 dereferenceable(28) @.str.24, i64 28, i1 false)
  %i.aej = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %i.aei, ptr %i.aej, align 8, !tbaa !19
  %i.aek = load ptr, ptr %35, align 8, !tbaa !25
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 %i.aei
  store i8 0, ptr %i.ael, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.unreachable765 unwind label %bb.dc

.unreachable765:                                  ; preds = %.noexc525
  unreachable

bb.db:                                            ; preds = %.noexc.i524
  %i.aem = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532

bb.dc:                                            ; preds = %.noexc525
  %i.aen = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aeo = load ptr, ptr %35, align 8, !tbaa !25  ; 2 uses
  %i.aep = icmp eq ptr %i.aeo, %i.aeg
  br i1 %i.aep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530: ; preds = %bb.dc
  %i.aeq = load i64, ptr %i.aeg, align 8, !tbaa !20
  %i.aer = add i64 %i.aeq, 1
  call void @_ZdlPvm(ptr noundef %i.aeo, i64 noundef %i.aer) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530, %bb.db
  %.pn147 = phi { ptr, i32 } [ %i.aem, %bb.db ], [ %i.aen, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530 ], [ %i.aen, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  br label %.loopexit

bb.dd:                                            ; preds = %bb.da
  %i.aes = ptrtoint ptr %.sroa.20.0.ph to i64
  %i.aet = ptrtoint ptr %.sroa.0703.0.ph to i64   ; 2 uses
  %i.aeu = sub i64 %i.aes, %i.aet                 ; 4 uses
  %i.aev = ashr exact i64 %i.aeu, 2               ; 3 uses
  %i.aew = icmp ugt i64 %i.aev, 6440067
  br i1 %i.aew, label %.noexc.i534, label %bb.dg

.noexc.i534:                                      ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  %i.aex = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 4 uses
  store ptr %i.aex, ptr %36, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 24, ptr %i.d, align 8, !tbaa !36
  %i.aey = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc535 unwind label %bb.de ; 2 uses

.noexc535:                                        ; preds = %.noexc.i534
  store ptr %i.aey, ptr %36, align 8, !tbaa !25
  %i.aez = load i64, ptr %i.d, align 8, !tbaa !36 ; 3 uses
  store i64 %i.aez, ptr %i.aex, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aey, ptr noundef nonnull align 1 dereferenceable(24) @.str.25, i64 24, i1 false)
  %i.afa = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 %i.aez, ptr %i.afa, align 8, !tbaa !19
  %i.afb = load ptr, ptr %36, align 8, !tbaa !25
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 %i.aez
  store i8 0, ptr %i.afc, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.unreachable766 unwind label %bb.df

.unreachable766:                                  ; preds = %.noexc535
  unreachable

bb.de:                                            ; preds = %.noexc.i534
  %i.afd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542

bb.df:                                            ; preds = %.noexc535
  %i.afe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aff = load ptr, ptr %36, align 8, !tbaa !25  ; 2 uses
  %i.afg = icmp eq ptr %i.aff, %i.aex
  br i1 %i.afg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540: ; preds = %bb.df
  %i.afh = load i64, ptr %i.aex, align 8, !tbaa !20
  %i.afi = add i64 %i.afh, 1
  call void @_ZdlPvm(ptr noundef %i.aff, i64 noundef %i.afi) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540, %bb.de
  %.pn149 = phi { ptr, i32 } [ %i.afd, %bb.de ], [ %i.afe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540 ], [ %i.afe, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  br label %.loopexit

bb.dg:                                            ; preds = %bb.dd
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aec, i64 4 ; 2 uses
  %.not.i543 = icmp eq ptr %.sroa.20.0.ph, %.sroa.36.0.ph
  br i1 %.not.i543, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !35
  store i32 %i.afk, ptr %.sroa.20.0.ph, align 4, !tbaa !35
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dg
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aev, i64 1)
  %i.afl = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.aev ; 2 uses
  %i.afm = shl nuw nsw i64 %i.afl, 2
  %i.afn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afm) #22
          to label %.noexc546 unwind label %.loopexit.loopexit.split-lp ; 4 uses

.noexc546:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.afo = getelementptr inbounds i8, ptr %i.afn, i64 %i.aeu ; 2 uses
  %i.afp = load i32, ptr %i.afj, align 4, !tbaa !35
  store i32 %i.afp, ptr %i.afo, align 4, !tbaa !35
  %i.afq = icmp sgt i64 %i.aeu, 0
  br i1 %i.afq, label %bb.di, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.di:                                            ; preds = %.noexc546
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.afn, ptr align 4 %.sroa.0703.0.ph, i64 %i.aeu, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.di, %.noexc546
  %.not.i17.i.i = icmp eq ptr %.sroa.0703.0.ph, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.afr = ptrtoint ptr %.sroa.36.0.ph to i64
  %i.afs = sub i64 %i.afr, %i.aet
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0703.0.ph, i64 noundef %i.afs) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.dj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %i.afn, i64 %i.afl
  %.pre1106 = load ptr, ptr %8, align 8, !tbaa !146
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.dh
  %i.afu = phi ptr [ %.pre1106, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.aec, %bb.dh ] ; 2 uses
  %.sroa.36.8 = phi ptr [ %i.aft, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.36.0.ph, %bb.dh ] ; 5 uses
  %.pn774 = phi ptr [ %i.afo, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.20.0.ph, %bb.dh ] ; 2 uses
  %.sroa.0703.8 = phi ptr [ %i.afn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0703.0.ph, %bb.dh ] ; 7 uses
  %.sroa.20.3 = getelementptr inbounds nuw i8, ptr %.pn774, i64 4 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 8 ; 2 uses
  %.not.i547 = icmp eq ptr %.sroa.20.3, %.sroa.36.8
  br i1 %.not.i547, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !35
  store i32 %i.afw, ptr %.sroa.20.3, align 4, !tbaa !35
  %i.afx = getelementptr inbounds nuw i8, ptr %.pn774, i64 8
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit556

bb.dl:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.afy = ptrtoint ptr %.sroa.36.8 to i64
  %i.afz = ptrtoint ptr %.sroa.0703.8 to i64
  %i.aga = sub i64 %i.afy, %i.afz                 ; 6 uses
  %i.agb = icmp eq i64 %i.aga, 9223372036854775804
  br i1 %i.agb, label %bb.dm, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i548

bb.dm:                                            ; preds = %bb.dl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
          to label %.noexc554 unwind label %.loopexit.split-lp

.noexc554:                                        ; preds = %bb.dm
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i548: ; preds = %bb.dl
  %i.agc = ashr exact i64 %i.aga, 2               ; 3 uses
  %.sroa.speculated.i.i.i549 = call i64 @llvm.umax.i64(i64 %i.agc, i64 1)
  %i.agd = add nsw i64 %.sroa.speculated.i.i.i549, %i.agc ; 2 uses
  %i.age = icmp ult i64 %i.agd, %i.agc
  %i.agf = call i64 @llvm.umin.i64(i64 %i.agd, i64 2305843009213693951)
  %i.agg = select i1 %i.age, i64 2305843009213693951, i64 %i.agf ; 3 uses
  %.not.i.i.i550 = icmp ne i64 %i.agg, 0
  call void @llvm.assume(i1 %.not.i.i.i550)
  %i.agh = shl nuw nsw i64 %i.agg, 2
  %i.agi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agh) #22
          to label %.noexc555 unwind label %.loopexit.loopexit.split-lp ; 4 uses

.noexc555:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i548
  %i.agj = getelementptr inbounds i8, ptr %i.agi, i64 %i.aga ; 2 uses
  %i.agk = load i32, ptr %i.afv, align 4, !tbaa !35
  store i32 %i.agk, ptr %i.agj, align 4, !tbaa !35
  %i.agl = icmp sgt i64 %i.aga, 0
  br i1 %i.agl, label %bb.dn, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i551

bb.dn:                                            ; preds = %.noexc555
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.agi, ptr align 4 %.sroa.0703.8, i64 %i.aga, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i551

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i551: ; preds = %bb.dn, %.noexc555
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agj, i64 4
  %.not.i17.i.i552 = icmp eq ptr %.sroa.0703.8, null
  br i1 %.not.i17.i.i552, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i553, label %bb.do

bb.do:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i551
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0703.8, i64 noundef %i.aga) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i553

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i553: ; preds = %bb.do, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i551
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %i.agi, i64 %i.agg
  %.pre1107 = load ptr, ptr %8, align 8, !tbaa !146
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit556

_ZNSt6vectorIiSaIiEE9push_backERKi.exit556:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i553, %bb.dk
  %i.ago = phi ptr [ %.pre1107, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i553 ], [ %i.afu, %bb.dk ]
  %.sroa.36.9 = phi ptr [ %i.agn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i553 ], [ %.sroa.36.8, %bb.dk ] ; 5 uses
  %.sroa.20.4 = phi ptr [ %i.agm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i553 ], [ %i.afx, %bb.dk ] ; 3 uses
  %.sroa.0703.9 = phi ptr [ %i.agi, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i553 ], [ %.sroa.0703.8, %bb.dk ] ; 7 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 12 ; 2 uses
  %.not.i557 = icmp eq ptr %.sroa.20.4, %.sroa.36.9
  br i1 %.not.i557, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit556
  %i.agq = load i32, ptr %i.agp, align 4, !tbaa !35
  store i32 %i.agq, ptr %.sroa.20.4, align 4, !tbaa !35
  %i.agr = getelementptr inbounds nuw i8, ptr %.sroa.20.4, i64 4
  br label %.outer.backedge

bb.dq:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit556
  %i.ags = ptrtoint ptr %.sroa.36.9 to i64
  %i.agt = ptrtoint ptr %.sroa.0703.9 to i64
  %i.agu = sub i64 %i.ags, %i.agt                 ; 6 uses
  %i.agv = icmp eq i64 %i.agu, 9223372036854775804
  br i1 %i.agv, label %bb.dr, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i558

bb.dr:                                            ; preds = %bb.dq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
          to label %.noexc564 unwind label %.loopexit.split-lp

.noexc564:                                        ; preds = %bb.dr
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i558: ; preds = %bb.dq
  %i.agw = ashr exact i64 %i.agu, 2               ; 3 uses
  %.sroa.speculated.i.i.i559 = call i64 @llvm.umax.i64(i64 %i.agw, i64 1)
  %i.agx = add nsw i64 %.sroa.speculated.i.i.i559, %i.agw ; 2 uses
  %i.agy = icmp ult i64 %i.agx, %i.agw
  %i.agz = call i64 @llvm.umin.i64(i64 %i.agx, i64 2305843009213693951)
  %i.aha = select i1 %i.agy, i64 2305843009213693951, i64 %i.agz ; 3 uses
  %.not.i.i.i560 = icmp ne i64 %i.aha, 0
  call void @llvm.assume(i1 %.not.i.i.i560)
  %i.ahb = shl nuw nsw i64 %i.aha, 2
  %i.ahc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahb) #22
          to label %.noexc565 unwind label %.loopexit.loopexit.split-lp ; 4 uses

.noexc565:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i558
  %i.ahd = getelementptr inbounds i8, ptr %i.ahc, i64 %i.agu ; 2 uses
  %i.ahe = load i32, ptr %i.agp, align 4, !tbaa !35
  store i32 %i.ahe, ptr %i.ahd, align 4, !tbaa !35
  %i.ahf = icmp sgt i64 %i.agu, 0
  br i1 %i.ahf, label %bb.ds, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i561

bb.ds:                                            ; preds = %.noexc565
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ahc, ptr align 4 %.sroa.0703.9, i64 %i.agu, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i561

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i561: ; preds = %bb.ds, %.noexc565
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahd, i64 4
  %.not.i17.i.i562 = icmp eq ptr %.sroa.0703.9, null
  br i1 %.not.i17.i.i562, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i563, label %bb.dt

bb.dt:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i561
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0703.9, i64 noundef %i.agu) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i563

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i563: ; preds = %bb.dt, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i561
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %i.aha
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i563, %bb.dp, %.critedge207, %bb.bm, %.critedge198, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit419.thread, %bb.bp, %.critedge195
  %.sroa.36.0.ph.be = phi ptr [ %.sroa.36.9, %bb.dp ], [ %.sroa.36.0.ph, %.critedge195 ], [ %.sroa.36.7, %bb.bm ], [ %.sroa.36.0.ph, %bb.bp ], [ %i.ahh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i563 ], [ %.sroa.36.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit419.thread ], [ %.sroa.36.0.ph, %.critedge198 ], [ %.sroa.36.0.ph, %.critedge207 ]
  %.sroa.20.0.ph.be = phi ptr [ %i.agr, %bb.dp ], [ %.sroa.20.0.ph, %.critedge195 ], [ %.sroa.20.2, %bb.bm ], [ %.sroa.20.0.ph, %bb.bp ], [ %i.ahg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i563 ], [ %.sroa.20.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit419.thread ], [ %.sroa.20.0.ph, %.critedge198 ], [ %.sroa.20.0.ph, %.critedge207 ]
  %.sroa.0703.0.ph.be = phi ptr [ %.sroa.0703.9, %bb.dp ], [ %.sroa.0703.0.ph, %.critedge195 ], [ %.sroa.0703.7, %bb.bm ], [ %.sroa.0703.0.ph, %bb.bp ], [ %i.ahc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i563 ], [ %.sroa.0703.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit419.thread ], [ %.sroa.0703.0.ph, %.critedge198 ], [ %.sroa.0703.0.ph, %.critedge207 ]
  %.0735.ph.be = phi i32 [ %.0735.ph, %bb.dp ], [ %.0735.ph, %.critedge195 ], [ %i.qs, %bb.bm ], [ %.0735.ph, %bb.bp ], [ %.0735.ph, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i563 ], [ %.0735.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit419.thread ], [ %.0735.ph, %.critedge198 ], [ %.0735.ph, %.critedge207 ]
  %.081.ph.be = phi i1 [ true, %bb.dp ], [ %.081.ph, %.critedge195 ], [ %.081.ph, %bb.bm ], [ %.081.ph, %bb.bp ], [ true, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i563 ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit419.thread ], [ %.081.ph, %.critedge198 ], [ true, %.critedge207 ]
  br label %.outer, !llvm.loop !79

bb.du:                                            ; preds = %bb.f
  %i.ahi = load ptr, ptr %8, align 8, !tbaa !146  ; 3 uses
  %.not.i.i.i567 = icmp eq ptr %i.ahi, null
  br i1 %.not.i.i.i567, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ahj = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !147
  %i.ahl = ptrtoint ptr %i.ahk to i64
  %i.ahm = ptrtoint ptr %i.ahi to i64
  %i.ahn = sub i64 %i.ahl, %i.ahm
  call void @_ZdlPvm(ptr noundef nonnull %i.ahi, i64 noundef %i.ahn) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.du, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.aho = load ptr, ptr %7, align 16, !tbaa !40  ; 3 uses
  %i.ahp = load ptr, ptr %i.am, align 8, !tbaa !41 ; 2 uses
  %.not4.i.i.i568 = icmp eq ptr %i.aho, %i.ahp
  br i1 %.not4.i.i.i568, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i576, label %.lr.ph.i.i.i569

.lr.ph.i.i.i569:                                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i572
  %.05.i.i.i570 = phi ptr [ %i.ahv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i572 ], [ %i.aho, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %i.ahq = load ptr, ptr %.05.i.i.i570, align 8, !tbaa !25 ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %.05.i.i.i570, i64 16 ; 2 uses
  %i.ahs = icmp eq ptr %i.ahq, %i.ahr
end_hunk_1
