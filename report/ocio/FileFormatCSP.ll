Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormatCSP?download=true
inline.NumInlined: 1221
inline.NumDeleted: 444
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %i.bfr = ptrtoint ptr %i.bfn to i64
  %i.bfs = sub i64 %i.bfq, %i.bfr
  call void @_ZdlPvm(ptr noundef nonnull %i.bfn, i64 noundef %i.bfs) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit895.1

_ZNSt6vectorIfSaIfEED2Ev.exit895.1:               ; preds = %bb.oe, %_ZNSt6vectorIfSaIfEED2Ev.exit895
  %i.bft = load ptr, ptr %23, align 16, !tbaa !111 ; 3 uses
  %.not.i.i.i894.2 = icmp eq ptr %i.bft, null
  br i1 %.not.i.i.i894.2, label %_ZNSt6vectorIfSaIfEED2Ev.exit895.2, label %bb.of

bb.of:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit895.1
  %i.bfu = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.bfv = load ptr, ptr %i.bfu, align 16, !tbaa !113
  %i.bfw = ptrtoint ptr %i.bfv to i64
  %i.bfx = ptrtoint ptr %i.bft to i64
  %i.bfy = sub i64 %i.bfw, %i.bfx
  call void @_ZdlPvm(ptr noundef nonnull %i.bft, i64 noundef %i.bfy) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit895.2

_ZNSt6vectorIfSaIfEED2Ev.exit895.2:               ; preds = %bb.of, %_ZNSt6vectorIfSaIfEED2Ev.exit895.1
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  br label %bb.og

bb.og:                                            ; preds = %.loopexit990, %.loopexit.split-lp991, %_ZNSt6vectorIfSaIfEED2Ev.exit895.2, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485
  %.pn357.pn = phi { ptr, i32 } [ %.pn357, %.body ], [ %i.gr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491 ], [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485 ], [ %.pn348.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit895.2 ], [ %i.gm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488 ], [ %lpad.loopexit992, %.loopexit990 ], [ %lpad.loopexit.split-lp993, %.loopexit.split-lp991 ] ; 2 uses
  %i.bfz = load ptr, ptr %18, align 8, !tbaa !26  ; 2 uses
  %i.bga = icmp eq ptr %i.bfz, %i.dv
  br i1 %i.bga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i896

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i896: ; preds = %bb.og
  %i.bgb = load i64, ptr %i.dv, align 8, !tbaa !21
  %i.bgc = add i64 %i.bgb, 1
  call void @_ZdlPvm(ptr noundef %i.bfz, i64 noundef %i.bgc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898: ; preds = %bb.og, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i896
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.bgd = load ptr, ptr %17, align 8, !tbaa !26  ; 2 uses
  %i.bge = icmp eq ptr %i.bgd, %i.dj
  br i1 %i.bge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit901, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i899

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i899: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898
  %i.bgf = load i64, ptr %i.dj, align 8, !tbaa !21
  %i.bgg = add i64 %i.bgf, 1
  call void @_ZdlPvm(ptr noundef %i.bgd, i64 noundef %i.bgg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit901

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit901: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i899, %bb.bb
  %.pn357.pn.pn = phi { ptr, i32 } [ %i.gg, %bb.bb ], [ %.pn357.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i899 ], [ %.pn357.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.oh

bb.oh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit901, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412, %bb.m, %bb.g
  %.pn365.pn.pn.pn = phi { ptr, i32 } [ %.pn365.pn.pn, %bb.y ], [ %.pn361.pn.pn, %bb.an ], [ %.pn357.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit901 ], [ %.pn270.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447 ], [ %i.r, %bb.g ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412 ], [ %.pn.pn.pn, %bb.m ]
  %i.bgh = load ptr, ptr %7, align 8, !tbaa !26   ; 2 uses
  %i.bgi = icmp eq ptr %i.bgh, %i.g
  br i1 %i.bgi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit904, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i902

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i902: ; preds = %bb.oh
  %i.bgj = load i64, ptr %i.g, align 8, !tbaa !21
  %i.bgk = add i64 %i.bgj, 1
  call void @_ZdlPvm(ptr noundef %i.bgh, i64 noundef %i.bgk) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit904

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit904: ; preds = %bb.oh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i902
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn365.pn.pn.pn

bb.oi:                                            ; preds = %bb.jt, %bb.iq, %bb.ie, %bb.hn, %bb.gs, %bb.fs, %bb.fe, %bb.dq, %bb.cv, %bb.bq, %bb.ae, %bb.r, %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4bakeERKNS_5BakerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::shared_ptr.65", align 8 ; 8 uses
  %5 = alloca %"class.OpenColorIO_v2_5::PackedImageDesc", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::shared_ptr.68", align 8 ; 7 uses
  %8 = alloca %"class.OpenColorIO_v2_5::PackedImageDesc", align 8 ; 7 uses
  %9 = alloca %"class.std::shared_ptr.68", align 8 ; 7 uses
  %10 = alloca %"class.std::shared_ptr.71", align 8 ; 10 uses
  %11 = alloca %"class.std::shared_ptr.74", align 16 ; 10 uses
  %12 = alloca %"class.std::shared_ptr.68", align 8 ; 8 uses
  %13 = alloca %"class.std::shared_ptr.77", align 8 ; 7 uses
  %14 = alloca %"class.std::shared_ptr.80", align 16 ; 7 uses
  %15 = alloca %"class.OpenColorIO_v2_5::PackedImageDesc", align 8 ; 7 uses
  %16 = alloca %"class.std::shared_ptr.68", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNK16OpenColorIO_v2_55Baker9getConfigEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.65") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = invoke noundef i32 @_ZNK16OpenColorIO_v2_55Baker11getCubeSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i unwind label %bb.b ; 2 uses

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.a
  %i.c = icmp eq i32 %i.b, -1
  %i.d = call i32 @llvm.smax.i32(i32 %i.b, i32 2)
  %.sroa.speculated402 = select i1 %i.c, i32 32, i32 %i.d ; 7 uses
  %i.e = mul nuw nsw i32 %.sroa.speculated402, %.sroa.speculated402
  %i.f = mul nuw nsw i32 %i.e, %.sroa.speculated402 ; 2 uses
  %i.g = mul nuw nsw i32 %i.f, 3
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 2                  ; 4 uses
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #24
          to label %bb.c unwind label %.thread452 ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit254

bb.c:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !47
  %i.l = getelementptr i8, ptr %i.j, i64 4
  %.idx.i.i.i.i.i31.i = add nsw i64 %i.i, -4
  call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !47
  invoke void @_ZN16OpenColorIO_v2_521GenerateIdentityLut3DEPfiiNS_10Lut3DOrderE(ptr noundef nonnull %i.j, i32 noundef %.sroa.speculated402, i32 noundef 3, i32 noundef 0)
          to label %bb.d unwind label %bb.fc

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.m = zext nneg i32 %i.f to i64                ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_515PackedImageDescC1EPvlll(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.j, i64 noundef %i.m, i64 noundef 1, i64 noundef 3)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.n = invoke noundef ptr @_ZNK16OpenColorIO_v2_55Baker14getShaperSpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.f unwind label %bb.p       ; 4 uses

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.o, ptr %6, align 8, !tbaa !17
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.41) #27
          to label %.noexc127 unwind label %bb.q

.noexc127:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.q, ptr %i.a, align 8, !tbaa !27
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.h
  %i.s = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc128 unwind label %bb.q  ; 2 uses

.noexc128:                                        ; preds = %.noexc.i
  store ptr %i.s, ptr %6, align 8, !tbaa !26
  %i.t = load i64, ptr %i.a, align 8, !tbaa !27
  store i64 %i.t, ptr %i.o, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc128, %bb.h
  %i.u = phi ptr [ %i.s, %.noexc128 ], [ %i.o, %bb.h ] ; 2 uses
  switch i64 %i.q, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.v = load i8, ptr %i.n, align 1, !tbaa !21
  store i8 %i.v, ptr %i.u, align 1, !tbaa !21
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull align 1 %i.n, i64 %i.q, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i
  %i.w = load i64, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.w, ptr %i.x, align 8, !tbaa !20
  %i.y = load ptr, ptr %6, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !20
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.au, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = invoke noundef i32 @_ZNK16OpenColorIO_v2_55Baker13getShaperSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.m unwind label %bb.r       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.ad = icmp eq i32 %i.ac, -1
  %spec.store.select1 = select i1 %i.ad, i32 1024, i32 %i.ac ; 6 uses
  %i.ae = mul nsw i32 %spec.store.select1, 3
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  %i.ag = icmp ne i32 %spec.store.select1, 0
  call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp slt i32 %spec.store.select1, 0
  br i1 %i.ah, label %bb.n, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i265

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #27
          to label %.noexc273 unwind label %bb.r

.noexc273:                                        ; preds = %bb.n
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i265: ; preds = %bb.m
  %i.ai = shl nuw nsw i64 %i.af, 2                ; 3 uses
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #24
          to label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i267 unwind label %bb.r ; 9 uses

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i267: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i265
  store float 0.000000e+00, ptr %i.aj, align 4, !tbaa !47
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %.idx.i.i.i.i.i31.i268 = add nsw i64 %i.ai, -4  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.ak, i8 0, i64 %.idx.i.i.i.i.i31.i268, i1 false), !tbaa !47
  %17 = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.af ; 5 uses
  %18 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #24
          to label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i284 unwind label %bb.r ; 9 uses

bb.o:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.p:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit250.thread

bb.q:                                             ; preds = %.noexc.i, %bb.g
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit250.thread

bb.r:                                             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i267, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i265, %bb.n, %bb.s, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i284, %bb.l
  %.sroa.0360.0 = phi ptr [ %18, %bb.s ], [ %18, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i284 ], [ null, %bb.l ], [ null, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i267 ], [ null, %bb.n ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i265 ]
  %.sroa.37.0 = phi ptr [ %19, %bb.s ], [ %19, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i284 ], [ null, %bb.l ], [ null, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i267 ], [ null, %bb.n ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i265 ]
  %.sroa.0341.0 = phi ptr [ %i.aj, %bb.s ], [ %i.aj, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i284 ], [ null, %bb.l ], [ %i.aj, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i267 ], [ null, %bb.n ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i265 ]
  %.sroa.27.0 = phi ptr [ %17, %bb.s ], [ %17, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i284 ], [ null, %bb.l ], [ %17, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i267 ], [ null, %bb.n ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i265 ]
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.split

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i284: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i267
  store float 0.000000e+00, ptr %18, align 4, !tbaa !47
  %i.ap = getelementptr i8, ptr %18, i64 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.ap, i8 0, i64 %.idx.i.i.i.i.i31.i268, i1 false), !tbaa !47
  %19 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %i.af ; 4 uses
  invoke void @_ZN16OpenColorIO_v2_521GenerateIdentityLut1DEPfii(ptr noundef nonnull %i.aj, i32 noundef %spec.store.select1, i32 noundef 3)
          to label %bb.s unwind label %bb.r

bb.s:                                             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i284
  invoke void @_ZN16OpenColorIO_v2_521GenerateIdentityLut1DEPfii(ptr noundef nonnull %18, i32 noundef %spec.store.select1, i32 noundef 3)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN16OpenColorIO_v2_525GetShaperToInputProcessorERKNS_5BakerE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.68") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.u unwind label %bb.al

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.aq = zext nneg i32 %spec.store.select1 to i64
  invoke void @_ZN16OpenColorIO_v2_515PackedImageDescC1EPvlll(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %18, i64 noundef %i.aq, i64 noundef 1, i64 noundef 3)
          to label %bb.v unwind label %bb.am

bb.v:                                             ; preds = %bb.u
  %i.ar = load ptr, ptr %7, align 8, !tbaa !181
  invoke void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescE(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.w unwind label %bb.an

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZN16OpenColorIO_v2_526GetShaperToTargetProcessorERKNS_5BakerE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.68") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.x unwind label %bb.ao

bb.x:                                             ; preds = %bb.w
  %i.as = load ptr, ptr %9, align 8, !tbaa !181
  invoke void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescE(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.y unwind label %bb.ap

bb.y:                                             ; preds = %bb.x
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !54 ; 8 uses
  %.not.i.i137 = icmp eq ptr %i.au, null
  br i1 %.not.i.i137, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.av, align 8, !tbaa !49
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !50
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !169
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !169
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !38
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i = phi i32 [ %i.ay, %bb.ac ], [ %i.bi, %bb.ad ]
  %i.bj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bj, label %bb.ae, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.y, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !54 ; 8 uses
  %.not.i.i138 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i138, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142, label %bb.af

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.bm, align 8, !tbaa !49
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !50
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25, !inline_history !169
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25, !inline_history !169
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142

bb.ah:                                            ; preds = %bb.af
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i139 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i139, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !38
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140

bb.aj:                                            ; preds = %bb.ah
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i141 = phi i32 [ %i.bp, %bb.ai ], [ %i.bz, %bb.aj ]
  %i.ca = icmp eq i32 %.0.i.i.i.i141, 1
  br i1 %i.ca, label %bb.ak, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142, !prof !55

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.dv

bb.al:                                            ; preds = %bb.t
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.am:                                            ; preds = %bb.u
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.an:                                            ; preds = %bb.v
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ao:                                            ; preds = %bb.w
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.x
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #25
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.ap ], [ %i.ce, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.aq ], [ %i.cd, %bb.an ]
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #25
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.am
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ar ], [ %i.cc, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #25
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.al
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.as ], [ %i.cb, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.split

bb.au:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.cg = load ptr, ptr %4, align 8, !tbaa !184
  %i.ch = invoke noundef ptr @_ZNK16OpenColorIO_v2_55Baker13getInputSpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.av unwind label %bb.bc

bb.av:                                            ; preds = %bb.au
  invoke void @_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.71") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef %i.ch)
          to label %bb.aw unwind label %bb.bc

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZN16OpenColorIO_v2_519AllocationTransform6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.74") align 8 %11)
          to label %bb.ax unwind label %bb.bd

bb.ax:                                            ; preds = %bb.aw
  %i.ci = load ptr, ptr %11, align 16, !tbaa !187
  %i.cj = load ptr, ptr %10, align 8, !tbaa !190
  %i.ck = call noundef i32 @_ZNK16OpenColorIO_v2_510ColorSpace13getAllocationEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cj) #25
  invoke void @_ZN16OpenColorIO_v2_519AllocationTransform13setAllocationENS_10AllocationE(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i32 noundef %i.ck)
          to label %bb.ay unwind label %bb.be

bb.ay:                                            ; preds = %bb.ax
  %i.cl = load ptr, ptr %10, align 8, !tbaa !190
  %i.cm = invoke noundef i32 @_ZNK16OpenColorIO_v2_510ColorSpace20getAllocationNumVarsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cl)
          to label %bb.az unwind label %bb.bf     ; 3 uses

bb.az:                                            ; preds = %bb.ay
  %i.cn = icmp sgt i32 %i.cm, 0
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4bakeERKNS_5BakerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo:bb.a
  br i1 %i.gw, label %bb.cu, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit175, !prof !55

bb.cu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i173
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gh) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit175

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit175: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit170, %bb.cq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i173, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.gx = load ptr, ptr %i.dv, align 8, !tbaa !54 ; 8 uses
  %.not.i.i176 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i176, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519AllocationTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit175
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 4 uses
  %i.gz = load atomic i64, ptr %i.gy acquire, align 8 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 4294967297
  %i.hb = trunc i64 %i.gz to i32                  ; 2 uses
  br i1 %i.ha, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store i32 0, ptr %i.gy, align 8, !tbaa !49
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  store i32 0, ptr %i.hc, align 4, !tbaa !50
  %i.hd = load ptr, ptr %i.gx, align 8, !tbaa !13
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #25, !inline_history !172
  %i.hg = load ptr, ptr %i.gx, align 8, !tbaa !13
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #25, !inline_history !172
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519AllocationTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cx:                                            ; preds = %bb.cv
  %i.hj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i177 = icmp eq i8 %i.hj, 0
  br i1 %.not.i.i.i177, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.hk = add nsw i32 %i.hb, -1
  store i32 %i.hk, ptr %i.gy, align 8, !tbaa !38
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i178

bb.cz:                                            ; preds = %bb.cx
  %i.hl = atomicrmw volatile add ptr %i.gy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i178

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i178: ; preds = %bb.cz, %bb.cy
  %.0.i.i.i.i179 = phi i32 [ %i.hb, %bb.cy ], [ %i.hl, %bb.cz ]
  %i.hm = icmp eq i32 %.0.i.i.i.i179, 1
  br i1 %i.hm, label %bb.da, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519AllocationTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.da:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i178
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #25
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519AllocationTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_519AllocationTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit175, %bb.cw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i178, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.hn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !54 ; 8 uses
  %.not.i.i180 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i180, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.db

bb.db:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519AllocationTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 4 uses
  %i.hq = load atomic i64, ptr %i.hp acquire, align 8 ; 2 uses
  %i.hr = icmp eq i64 %i.hq, 4294967297
  %i.hs = trunc i64 %i.hq to i32                  ; 2 uses
  br i1 %i.hr, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  store i32 0, ptr %i.hp, align 8, !tbaa !49
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  store i32 0, ptr %i.ht, align 4, !tbaa !50
  %i.hu = load ptr, ptr %i.ho, align 8, !tbaa !13
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(16) %i.ho) #25, !inline_history !173
  %i.hx = load ptr, ptr %i.ho, align 8, !tbaa !13
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(16) %i.ho) #25, !inline_history !173
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.dd:                                            ; preds = %bb.db
  %i.ia = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i181 = icmp eq i8 %i.ia, 0
  br i1 %.not.i.i.i181, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ib = add nsw i32 %i.hs, -1
  store i32 %i.ib, ptr %i.hp, align 8, !tbaa !38
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i182

bb.df:                                            ; preds = %bb.dd
  %i.ic = atomicrmw volatile add ptr %i.hp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i182

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i182: ; preds = %bb.df, %bb.de
  %.0.i.i.i.i183 = phi i32 [ %i.hs, %bb.de ], [ %i.ic, %bb.df ]
  %i.id = icmp eq i32 %.0.i.i.i.i183, 1
  br i1 %i.id, label %bb.dg, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.dg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i182
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ho) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519AllocationTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.dc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i182, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.dv

bb.dh:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2INS0_19AllocationTransformEvEERKS_IT_E.exit
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.di:                                            ; preds = %bb.bq
  %i.if = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #25
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.pn103 = phi { ptr, i32 } [ %i.if, %bb.di ], [ %i.ie, %bb.dh ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.dr

bb.dk:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dl:                                            ; preds = %bb.cf, %bb.ce
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dm:                                            ; preds = %bb.cg
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.dn:                                            ; preds = %bb.ch
  %i.ij = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #25
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.pn105 = phi { ptr, i32 } [ %i.ij, %bb.dn ], [ %i.ii, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dl
  %.pn105.pn = phi { ptr, i32 } [ %.pn105, %bb.do ], [ %i.ih, %bb.dl ]
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #25
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.dk
  %.pn105.pn.pn = phi { ptr, i32 } [ %.pn105.pn, %bb.dp ], [ %i.ig, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #25
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dj
  %.pn105.pn.pn.pn = phi { ptr, i32 } [ %.pn105.pn.pn, %bb.dq ], [ %.pn103, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.ds

bb.ds:                                            ; preds = %bb.bj, %bb.dr, %bb.bg, %_ZNSt6vectorIfSaIfEED2Ev.exit146, %bb.bf, %bb.be
  %.sroa.0360.3 = phi ptr [ null, %bb.bg ], [ null, %bb.be ], [ null, %bb.bf ], [ null, %_ZNSt6vectorIfSaIfEED2Ev.exit146 ], [ %i.dq, %bb.dr ], [ %.sroa.0360.1, %bb.bj ]
  %.sroa.37.3 = phi ptr [ null, %bb.bg ], [ null, %bb.be ], [ null, %bb.bf ], [ null, %_ZNSt6vectorIfSaIfEED2Ev.exit146 ], [ %i.ds, %bb.dr ], [ %.sroa.37.1, %bb.bj ]
  %.sroa.0341.3 = phi ptr [ null, %bb.bg ], [ null, %bb.be ], [ null, %bb.bf ], [ null, %_ZNSt6vectorIfSaIfEED2Ev.exit146 ], [ %i.dm, %bb.dr ], [ %.sroa.0341.1, %bb.bj ]
  %.sroa.27.3 = phi ptr [ null, %bb.bg ], [ null, %bb.be ], [ null, %bb.bf ], [ null, %_ZNSt6vectorIfSaIfEED2Ev.exit146 ], [ %i.dp, %bb.dr ], [ %.sroa.27.1, %bb.bj ]
  %.pn105.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.da, %bb.bg ], [ %i.cy, %bb.be ], [ %i.cz, %bb.bf ], [ %i.db, %_ZNSt6vectorIfSaIfEED2Ev.exit146 ], [ %.pn105.pn.pn.pn, %bb.dr ], [ %i.dn, %bb.bj ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519AllocationTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #25
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.bd
  %.sroa.0360.4 = phi ptr [ %.sroa.0360.3, %bb.ds ], [ null, %bb.bd ]
  %.sroa.37.4 = phi ptr [ %.sroa.37.3, %bb.ds ], [ null, %bb.bd ]
  %.sroa.0341.4 = phi ptr [ %.sroa.0341.3, %bb.ds ], [ null, %bb.bd ]
  %.sroa.27.4 = phi ptr [ %.sroa.27.3, %bb.ds ], [ null, %bb.bd ]
  %.pn105.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn105.pn.pn.pn.pn.pn.pn, %bb.ds ], [ %i.cx, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #25
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.bc
  %.sroa.0360.5 = phi ptr [ %.sroa.0360.4, %bb.dt ], [ null, %bb.bc ]
  %.sroa.37.5 = phi ptr [ %.sroa.37.4, %bb.dt ], [ null, %bb.bc ]
  %.sroa.0341.5 = phi ptr [ %.sroa.0341.4, %bb.dt ], [ null, %bb.bc ]
  %.sroa.27.5 = phi ptr [ %.sroa.27.4, %bb.dt ], [ null, %bb.bc ]
  %.pn105.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn105.pn.pn.pn.pn.pn.pn.pn, %bb.dt ], [ %i.cw, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.split

bb.dv:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142
  %.sroa.0360.6 = phi ptr [ %i.dq, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %18, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142 ] ; 20 uses
  %.sroa.22.0 = phi ptr [ %i.ds, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %19, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142 ]
  %.sroa.0341.6 = phi ptr [ %i.dm, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.aj, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142 ] ; 19 uses
  %.sroa.16.0 = phi ptr [ %i.dp, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %17, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142 ] ; 15 uses
  %.sroa.22.0.fr = freeze ptr %.sroa.22.0         ; 16 uses
  %i.ik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.46, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.dx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.dv
  %i.il = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.47, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186 unwind label %bb.dx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.im = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188 unwind label %bb.dx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186
  %i.in = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.48, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit190 unwind label %bb.dx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit190: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188
  %i.io = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK16OpenColorIO_v2_55Baker17getFormatMetadataEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.dw unwind label %bb.dy     ; 4 uses

bb.dw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit190
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !13
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 72
  %i.ir = load ptr, ptr %i.iq, align 8
  %i.is = call noundef i32 %i.ir(ptr noundef nonnull align 8 dereferenceable(8) %i.io) #25 ; 2 uses
  %i.it = icmp sgt i32 %i.is, 0
  br i1 %i.it, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197, %bb.dw
  %i.iu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.49, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192 unwind label %bb.eg ; 0 uses

bb.dx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.dv
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %.split

bb.dy:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit190
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %.split

.lr.ph:                                           ; preds = %bb.dw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197
  %.069460 = phi i32 [ %i.jp, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197 ], [ 0, %bb.dw ] ; 2 uses
  %i.ix = load ptr, ptr %i.io, align 8, !tbaa !13
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 80
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.iz(ptr noundef nonnull align 8 dereferenceable(8) %i.io, i32 noundef %.069460)
          to label %bb.dz unwind label %bb.ec     ; 2 uses

bb.dz:                                            ; preds = %.lr.ph
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !13
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8
  %i.je = call noundef ptr %i.jd(ptr noundef nonnull align 8 dereferenceable(8) %i.ja) #25 ; 3 uses
  %.not.i = icmp eq ptr %i.je, null
  br i1 %.not.i, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.jf = load ptr, ptr %3, align 8, !tbaa !13
  %i.jg = getelementptr i8, ptr %i.jf, i64 -24
  %i.jh = load i64, ptr %i.jg, align 8
  %i.ji = getelementptr inbounds i8, ptr %3, i64 %i.jh ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !36
  %i.jl = or i32 %i.jk, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ji, i32 noundef %i.jl)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195 unwind label %bb.ec

bb.eb:                                            ; preds = %bb.dz
  %i.jm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.je) #25
  %i.jn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.je, i64 noundef %i.jm)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195 unwind label %bb.ec ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195: ; preds = %bb.ea, %bb.eb
  %i.jo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197 unwind label %bb.ec ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195
  %i.jp = add nuw nsw i32 %.069460, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.jp, %i.is
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !174

bb.ec:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195, %bb.eb, %bb.ea, %.lr.ph
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %.split

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192: ; preds = %._crit_edge
  %i.jr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %bb.ed unwind label %bb.eg     ; 0 uses

bb.ed:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192
  %i.js = load ptr, ptr %3, align 8, !tbaa !13
  %i.jt = getelementptr i8, ptr %i.js, i64 -24    ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8
  %i.jv = getelementptr inbounds i8, ptr %3, i64 %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 24 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !195
  %i.jy = and i32 %i.jx, -261
  %i.jz = or disjoint i32 %i.jy, 4
  store i32 %i.jz, ptr %i.jw, align 8, !tbaa !196
  %i.ka = load i64, ptr %i.jt, align 8
  %i.kb = getelementptr inbounds i8, ptr %3, i64 %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  store i64 6, ptr %i.kc, align 8, !tbaa !197
  %i.kd = ptrtoint ptr %.sroa.16.0 to i64
  %i.ke = ptrtoint ptr %.sroa.0341.6 to i64
  %i.kf = sub i64 %i.kd, %i.ke                    ; 3 uses
  %i.kg = ptrtoint ptr %.sroa.22.0.fr to i64
  %i.kh = ptrtoint ptr %.sroa.0360.6 to i64
  %i.ki = sub i64 %i.kg, %i.kh                    ; 2 uses
  %i.kj = ashr i64 %i.ki, 2                       ; 2 uses
  %.not = icmp eq i64 %i.kf, %i.ki
  br i1 %.not, label %bb.ei, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.kk = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.kk, ptr noundef nonnull @.str.50)
          to label %bb.ef unwind label %bb.eh

bb.ef:                                            ; preds = %bb.ee
  invoke void @__cxa_throw(ptr nonnull %i.kk, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #27
          to label %bb.fe unwind label %bb.eg

bb.eg:                                            ; preds = %bb.es, %bb.er, %bb.eq, %bb.ep, %.loopexit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192, %._crit_edge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215, %bb.ef
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %.split

bb.eh:                                            ; preds = %bb.ee
  %i.km = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.kk) #25
  br label %.split

bb.ei:                                            ; preds = %bb.ed
  %i.kn = icmp eq ptr %.sroa.0360.6, %.sroa.22.0.fr
  br i1 %i.kn, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ei
  %i.ko = udiv i64 %i.kj, 3                       ; 12 uses
  %i.kp = icmp ugt i64 %i.kj, 2
  br i1 %i.kp, label %.preheader.split.us.preheader, label %.preheader.split.split.preheader

.preheader.split.us.preheader:                    ; preds = %.preheader
  %i.kq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.ko)
          to label %_ZNSolsEm.exit.us unwind label %.split.us

_ZNSolsEm.exit.us:                                ; preds = %.preheader.split.us.preheader
  %i.kr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kq, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %.lr.ph462.us unwind label %.split.us ; 0 uses

.lr.ph462.us:                                     ; preds = %_ZNSolsEm.exit.us, %_ZNSolsEf.exit.us
  %.067461.us = phi i32 [ %i.kz, %_ZNSolsEf.exit.us ], [ 0, %_ZNSolsEm.exit.us ] ; 3 uses
  %.not116.us = icmp eq i32 %.067461.us, 0
  br i1 %.not116.us, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206.us, label %bb.ej

bb.ej:                                            ; preds = %.lr.ph462.us
  %i.ks = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.51, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206.us unwind label %.split467.us.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206.us: ; preds = %bb.ej, %.lr.ph462.us
  %i.kt = mul i32 %.067461.us, 3
  %i.ku = zext i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0360.6, i64 %i.ku
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !47
  %i.kx = fpext float %i.kw to double
  %i.ky = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.kx)
          to label %_ZNSolsEf.exit.us unwind label %.split467.us.loopexit ; 0 uses

_ZNSolsEf.exit.us:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206.us
  %i.kz = add i32 %.067461.us, 1                  ; 2 uses
  %i.la = zext i32 %i.kz to i64
  %i.lb = icmp samesign ugt i64 %i.ko, %i.la
  br i1 %i.lb, label %.lr.ph462.us, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202._crit_edge.us, !llvm.loop !175

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202._crit_edge.us: ; preds = %_ZNSolsEf.exit.us
  %i.lc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204.preheader.us unwind label %.split.us ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204.preheader.us: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202._crit_edge.us, %_ZNSolsEf.exit213.us
  %.066463.us = phi i32 [ %i.lk, %_ZNSolsEf.exit213.us ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202._crit_edge.us ] ; 3 uses
  %.not115.us = icmp eq i32 %.066463.us, 0
  br i1 %.not115.us, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.us, label %bb.ek

bb.ek:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204.preheader.us
  %i.ld = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.51, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.us unwind label %.split470.us.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.us: ; preds = %bb.ek, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204.preheader.us
  %i.le = mul i32 %.066463.us, 3
  %i.lf = zext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0341.6, i64 %i.lf
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !47
  %i.li = fpext float %i.lh to double
  %i.lj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.li)
          to label %_ZNSolsEf.exit213.us unwind label %.split470.us.loopexit ; 0 uses

_ZNSolsEf.exit213.us:                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.us
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4bakeERKNS_5BakerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo:bb.a
          to label %_ZNSolsEm.exit unwind label %.split.split

_ZNSolsEm.exit:                                   ; preds = %.preheader.split.split.preheader
  %i.nq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.np, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202.preheader unwind label %.split.split ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202.preheader: ; preds = %_ZNSolsEm.exit
  %i.nr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204.preheader unwind label %.split.split ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204.preheader: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202.preheader
  %i.ns = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209 unwind label %.split.split ; 0 uses

.split.split:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204.preheader.2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202.preheader.2, %_ZNSolsEm.exit.2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204.preheader.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202.preheader.1, %_ZNSolsEm.exit.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202.preheader, %_ZNSolsEm.exit, %.preheader.split.split.preheader
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %.split

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204.preheader
  %i.nu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.ko)
          to label %_ZNSolsEm.exit.1 unwind label %.split.split

_ZNSolsEm.exit.1:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209
  %i.nv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nu, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202.preheader.1 unwind label %.split.split ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202.preheader.1: ; preds = %_ZNSolsEm.exit.1
  %i.nw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204.preheader.1 unwind label %.split.split ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204.preheader.1: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202.preheader.1
  %i.nx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209.1 unwind label %.split.split ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209.1: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204.preheader.1
  %i.ny = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.ko)
          to label %_ZNSolsEm.exit.2 unwind label %.split.split

_ZNSolsEm.exit.2:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209.1
  %i.nz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ny, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202.preheader.2 unwind label %.split.split ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202.preheader.2: ; preds = %_ZNSolsEm.exit.2
  %i.oa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204.preheader.2 unwind label %.split.split ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204.preheader.2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202.preheader.2
  %i.ob = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %.loopexit unwind label %.split.split ; 0 uses

.loopexit:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204.preheader.2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204._crit_edge.us.2, %bb.ei
  %i.oc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215 unwind label %bb.eg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215: ; preds = %.loopexit
  %i.od = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.sroa.speculated402)
          to label %bb.ep unwind label %bb.eg     ; 2 uses

bb.ep:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215
  %i.oe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.od, ptr noundef nonnull @.str.51, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217 unwind label %bb.eg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217: ; preds = %bb.ep
  %i.of = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.od, i32 noundef %.sroa.speculated402)
          to label %bb.eq unwind label %bb.eg     ; 2 uses

bb.eq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217
  %i.og = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.of, ptr noundef nonnull @.str.51, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219 unwind label %bb.eg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219: ; preds = %bb.eq
  %i.oh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.of, i32 noundef %.sroa.speculated402)
          to label %bb.er unwind label %bb.eg

bb.er:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219
  %i.oi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oh, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221.preheader unwind label %bb.eg ; 0 uses

bb.es:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235
  %i.oj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223 unwind label %bb.eg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221.preheader: ; preds = %bb.er, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235
  %indvars.iv531 = phi i64 [ %indvars.iv.next532, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235 ], [ 0, %bb.er ] ; 2 uses
  %.idx = mul nuw nsw i64 %indvars.iv531, 12
  %i.ok = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 3 uses
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !47
  %i.om = fpext float %i.ol to double
  %i.on = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.om)
          to label %_ZNSolsEf.exit225 unwind label %bb.et ; 2 uses

_ZNSolsEf.exit225:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221.preheader
  %i.oo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.on, ptr noundef nonnull @.str.51, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227 unwind label %bb.et ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227: ; preds = %_ZNSolsEf.exit225
  %i.op = getelementptr inbounds nuw i8, ptr %i.ok, i64 4
  %i.oq = load float, ptr %i.op, align 4, !tbaa !47
  %i.or = fpext float %i.oq to double
  %i.os = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.on, double noundef %i.or)
          to label %_ZNSolsEf.exit229 unwind label %bb.et ; 2 uses

_ZNSolsEf.exit229:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227
  %i.ot = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.os, ptr noundef nonnull @.str.51, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit231 unwind label %bb.et ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit231: ; preds = %_ZNSolsEf.exit229
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !47
  %i.ow = fpext float %i.ov to double
  %i.ox = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.os, double noundef %i.ow)
          to label %_ZNSolsEf.exit233 unwind label %bb.et

_ZNSolsEf.exit233:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit231
  %i.oy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ox, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235 unwind label %bb.et ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235: ; preds = %_ZNSolsEf.exit233
  %indvars.iv.next532 = add nuw nsw i64 %indvars.iv531, 1 ; 2 uses
  %exitcond535.not = icmp eq i64 %indvars.iv.next532, %i.m
  br i1 %exitcond535.not, label %bb.es, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221.preheader, !llvm.loop !177

bb.et:                                            ; preds = %_ZNSolsEf.exit233, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit231, %_ZNSolsEf.exit229, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227, %_ZNSolsEf.exit225, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221.preheader
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %.split

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223: ; preds = %bb.es
  %i.pa = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.pb = icmp eq ptr %i.pa, %i.o
  br i1 %i.pb, label %_ZNSt6vectorIfSaIfEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223
  %i.pc = load i64, ptr %i.o, align 8, !tbaa !21
  %i.pd = add i64 %i.pc, 1
  call void @_ZdlPvm(ptr noundef %i.pa, i64 noundef %i.pd) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit241

_ZNSt6vectorIfSaIfEED2Ev.exit241:                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0341.6, i64 noundef %i.kf) #26
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0360.6, i64 noundef %i.kf) #26
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.i) #26
  %i.pe = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !54 ; 8 uses
  %.not.i.i242 = icmp eq ptr %i.pf, null
  br i1 %.not.i.i242, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.eu

bb.eu:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit241
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8 ; 4 uses
  %i.ph = load atomic i64, ptr %i.pg acquire, align 8 ; 2 uses
  %i.pi = icmp eq i64 %i.ph, 4294967297
  %i.pj = trunc i64 %i.ph to i32                  ; 2 uses
  br i1 %i.pi, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  store i32 0, ptr %i.pg, align 8, !tbaa !49
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pf, i64 12
  store i32 0, ptr %i.pk, align 4, !tbaa !50
  %i.pl = load ptr, ptr %i.pf, align 8, !tbaa !13
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %i.pn = load ptr, ptr %i.pm, align 8
  call void %i.pn(ptr noundef nonnull align 8 dereferenceable(16) %i.pf) #25, !inline_history !178
  %i.po = load ptr, ptr %i.pf, align 8, !tbaa !13
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 24
  %i.pq = load ptr, ptr %i.pp, align 8
  call void %i.pq(ptr noundef nonnull align 8 dereferenceable(16) %i.pf) #25, !inline_history !178
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ew:                                            ; preds = %bb.eu
  %i.pr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i243 = icmp eq i8 %i.pr, 0
  br i1 %.not.i.i.i243, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ps = add nsw i32 %i.pj, -1
  store i32 %i.ps, ptr %i.pg, align 8, !tbaa !38
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i244

bb.ey:                                            ; preds = %bb.ew
  %i.pt = atomicrmw volatile add ptr %i.pg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i244

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i244: ; preds = %bb.ey, %bb.ex
  %.0.i.i.i.i245 = phi i32 [ %i.pj, %bb.ex ], [ %i.pt, %bb.ey ]
  %i.pu = icmp eq i32 %.0.i.i.i.i245, 1
  br i1 %i.pu, label %bb.ez, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.ez:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i244
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pf) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit241, %bb.ev, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i244, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

.split:                                           ; preds = %.split470.us.loopexit, %.split470.us.loopexit.split-lp.loopexit.split-lp, %.split470.us.loopexit.split-lp.loopexit, %.split467.us.loopexit, %.split467.us.loopexit.split-lp.loopexit.split-lp, %.split467.us.loopexit.split-lp.loopexit, %.split.us, %.split.split, %bb.dy, %bb.et, %bb.eh, %bb.eg, %bb.ec, %bb.r, %bb.at, %bb.dx, %bb.du
  %.sroa.0360.7 = phi ptr [ %.sroa.0360.6, %bb.ec ], [ %.sroa.0360.6, %bb.et ], [ %.sroa.0360.6, %bb.eg ], [ %.sroa.0360.6, %.split.us ], [ %.sroa.0360.6, %.split467.us.loopexit ], [ %.sroa.0360.0, %bb.r ], [ %.sroa.0360.6, %bb.eh ], [ %.sroa.0360.6, %bb.dy ], [ %.sroa.0360.6, %bb.dx ], [ %.sroa.0360.5, %bb.du ], [ %18, %bb.at ], [ %.sroa.0360.6, %.split.split ], [ %.sroa.0360.6, %.split467.us.loopexit.split-lp.loopexit ], [ %.sroa.0360.6, %.split467.us.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0360.6, %.split470.us.loopexit.split-lp.loopexit ], [ %.sroa.0360.6, %.split470.us.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0360.6, %.split470.us.loopexit ] ; 3 uses
  %.sroa.37.7 = phi ptr [ %.sroa.22.0.fr, %bb.ec ], [ %.sroa.22.0.fr, %bb.et ], [ %.sroa.22.0.fr, %bb.eg ], [ %.sroa.22.0.fr, %.split.us ], [ %.sroa.22.0.fr, %.split467.us.loopexit ], [ %.sroa.37.0, %bb.r ], [ %.sroa.22.0.fr, %bb.eh ], [ %.sroa.22.0.fr, %bb.dy ], [ %.sroa.22.0.fr, %bb.dx ], [ %.sroa.37.5, %bb.du ], [ %19, %bb.at ], [ %.sroa.22.0.fr, %.split.split ], [ %.sroa.22.0.fr, %.split467.us.loopexit.split-lp.loopexit ], [ %.sroa.22.0.fr, %.split467.us.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.22.0.fr, %.split470.us.loopexit.split-lp.loopexit ], [ %.sroa.22.0.fr, %.split470.us.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.22.0.fr, %.split470.us.loopexit ]
  %.sroa.0341.7 = phi ptr [ %.sroa.0341.6, %bb.ec ], [ %.sroa.0341.6, %bb.et ], [ %.sroa.0341.6, %bb.eg ], [ %.sroa.0341.6, %.split.us ], [ %.sroa.0341.6, %.split467.us.loopexit ], [ %.sroa.0341.0, %bb.r ], [ %.sroa.0341.6, %bb.eh ], [ %.sroa.0341.6, %bb.dy ], [ %.sroa.0341.6, %bb.dx ], [ %.sroa.0341.5, %bb.du ], [ %i.aj, %bb.at ], [ %.sroa.0341.6, %.split.split ], [ %.sroa.0341.6, %.split467.us.loopexit.split-lp.loopexit ], [ %.sroa.0341.6, %.split467.us.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0341.6, %.split470.us.loopexit.split-lp.loopexit ], [ %.sroa.0341.6, %.split470.us.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0341.6, %.split470.us.loopexit ] ; 3 uses
  %.sroa.27.7 = phi ptr [ %.sroa.16.0, %bb.ec ], [ %.sroa.16.0, %bb.et ], [ %.sroa.16.0, %bb.eg ], [ %.sroa.16.0, %.split.us ], [ %.sroa.16.0, %.split467.us.loopexit ], [ %.sroa.27.0, %bb.r ], [ %.sroa.16.0, %bb.eh ], [ %.sroa.16.0, %bb.dy ], [ %.sroa.16.0, %bb.dx ], [ %.sroa.27.5, %bb.du ], [ %17, %bb.at ], [ %.sroa.16.0, %.split.split ], [ %.sroa.16.0, %.split467.us.loopexit.split-lp.loopexit ], [ %.sroa.16.0, %.split467.us.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.16.0, %.split470.us.loopexit.split-lp.loopexit ], [ %.sroa.16.0, %.split470.us.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.16.0, %.split470.us.loopexit ]
  %.pn119.pn.pn = phi { ptr, i32 } [ %i.jq, %bb.ec ], [ %i.oz, %bb.et ], [ %i.kl, %bb.eg ], [ %i.no, %.split.us ], [ %lpad.loopexit, %.split467.us.loopexit ], [ %i.ao, %bb.r ], [ %i.km, %bb.eh ], [ %i.iw, %bb.dy ], [ %i.iv, %bb.dx ], [ %.pn105.pn.pn.pn.pn.pn.pn.pn.pn, %bb.du ], [ %.pn.pn.pn.pn, %bb.at ], [ %i.nt, %.split.split ], [ %lpad.loopexit525, %.split467.us.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp526, %.split467.us.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit528, %.split470.us.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp529, %.split470.us.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit522, %.split470.us.loopexit ] ; 2 uses
  %i.pv = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.pw = icmp eq ptr %i.pv, %i.o
  br i1 %i.pw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %.split
  %i.px = load i64, ptr %i.o, align 8, !tbaa !21
  %i.py = add i64 %i.px, 1
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.py) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt6vectorIfSaIfEED2Ev.exit250.thread:          ; preds = %bb.p, %bb.q
  %.pn119.pn.pn.pn.ph = phi { ptr, i32 } [ %i.an, %bb.q ], [ %i.am, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit252

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.not.i.i.i249 = icmp eq ptr %.sroa.0341.7, null
  br i1 %.not.i.i.i249, label %_ZNSt6vectorIfSaIfEED2Ev.exit250, label %bb.fa

bb.fa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  %i.pz = ptrtoint ptr %.sroa.27.7 to i64
  %i.qa = ptrtoint ptr %.sroa.0341.7 to i64
  %i.qb = sub i64 %i.pz, %i.qa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0341.7, i64 noundef %i.qb) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit250

_ZNSt6vectorIfSaIfEED2Ev.exit250:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %bb.fa
  %.not.i.i.i251 = icmp eq ptr %.sroa.0360.7, null
  br i1 %.not.i.i.i251, label %_ZNSt6vectorIfSaIfEED2Ev.exit252, label %bb.fb

bb.fb:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit250
  %i.qc = ptrtoint ptr %.sroa.37.7 to i64
  %i.qd = ptrtoint ptr %.sroa.0360.7 to i64
  %i.qe = sub i64 %i.qc, %i.qd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0360.7, i64 noundef %i.qe) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit252

_ZNSt6vectorIfSaIfEED2Ev.exit252:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit250.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit250, %bb.fb
  %.pn119.pn.pn.pn438443 = phi { ptr, i32 } [ %.pn119.pn.pn.pn.ph, %_ZNSt6vectorIfSaIfEED2Ev.exit250.thread ], [ %.pn119.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit250 ], [ %.pn119.pn.pn, %bb.fb ]
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  br label %.thread

.thread:                                          ; preds = %bb.o, %_ZNSt6vectorIfSaIfEED2Ev.exit252
  %.pn119.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn119.pn.pn.pn438443, %_ZNSt6vectorIfSaIfEED2Ev.exit252 ], [ %i.al, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.fd

.thread452:                                       ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit254

bb.fc:                                            ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %.thread
  %.pn119.pn.pn.pn.pn.pn450 = phi { ptr, i32 } [ %.pn119.pn.pn.pn.pn, %.thread ], [ %lpad.thr_comm.split-lp, %bb.fc ]
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.i) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit254

_ZNSt6vectorIfSaIfEED2Ev.exit254:                 ; preds = %bb.fd, %.thread452, %bb.b
  %.pn119.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.k, %bb.b ], [ %lpad.thr_comm, %.thread452 ], [ %.pn119.pn.pn.pn.pn.pn450, %bb.fd ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn119.pn.pn.pn.pn.pn.pn

bb.fe:                                            ; preds = %bb.ef
  unreachable
}

declare void @_ZNK16OpenColorIO_v2_510FileFormat5writeERKSt10shared_ptrIKNS_6ConfigEERKS1_IKNS_7ContextEERKNS_14GroupTransformERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat12buildFileOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEES7_INS_10CachedFileEERKNS_13FileTransformENS_18TransformDirectionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 1 captures(none) %3, ptr nofree noundef readonly align 8 captures(none) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i8, align 1                       ; 8 uses
  %9 = alloca %"class.std::shared_ptr.3", align 8 ; 10 uses
  %10 = alloca %"class.std::shared_ptr.3", align 8 ; 10 uses
  %11 = alloca %"class.std::shared_ptr.6", align 8 ; 10 uses
  %.val = load ptr, ptr %4, align 8, !tbaa !70    ; 2 uses
  %i.b = getelementptr i8, ptr %4, i64 8
  %.val50 = load ptr, ptr %i.b, align 8           ; 13 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_113CachedFileCSPENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__dynamic_cast(ptr nonnull %.val, ptr nonnull @_ZTIN16OpenColorIO_v2_510CachedFileE, ptr nonnull @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_113CachedFileCSPE, i64 0) #25, !noalias !203 ; 10 uses
  %.not.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.not.i.i, label %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_113CachedFileCSPENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq ptr %.val50, null     ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.val50, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21, !noalias !203
  %.not.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %i.e, align 4, !tbaa !38, !noalias !203
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !38, !noalias !203
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4, !noalias !203 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57
  %.not89 = icmp eq ptr %i.m, null
  br i1 %.not89, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !60
  %.not90 = icmp eq ptr %i.o, null
  br i1 %.not90, label %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_113CachedFileCSPENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit, label %bb.s

_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_113CachedFileCSPENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit: ; preds = %bb.b, %bb.a, %bb.i
  %.sroa.16.085 = phi ptr [ %.val50, %bb.i ], [ null, %bb.a ], [ null, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_113CachedFileCSPENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.54, i64 noundef 40)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.j
  %i.q = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.k unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = load ptr, ptr %8, align 8, !tbaa !26
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef %i.r)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #27
          to label %bb.bx unwind label %bb.o

bb.m:                                             ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_113CachedFileCSPENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.n:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.p

bb.o:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i1 [ false, %bb.l ], [ true, %bb.k ]  ; 2 uses
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.w = load ptr, ptr %8, align 8, !tbaa !26     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.z = load i64, ptr %i.x, align 8, !tbaa !21
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.p, label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn88 = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.q) #25
  br label %bb.q

end_hunk_2
