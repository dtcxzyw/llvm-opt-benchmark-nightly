inline.NumInlined: 1319
inline.NumDeleted: 545
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp6Logger5errorIJRA35_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %4, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %4, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #25
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #24
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA35_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp8Q3Shader10LoadShaderERNS0_10ShaderDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.f, ptr %3, align 8
  store i16 29810, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 0, ptr %i.h, align 2
  %i.i = load ptr, ptr %1, align 8
  %i.j = load ptr, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.i, ptr noundef nonnull %i.f)
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.a, !inline_history !3 ; 9 uses

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %._crit_edge.i.i
  %i.n = load ptr, ptr %3, align 8                ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.f
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %i.p = load i64, ptr %i.f, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.r = icmp ne ptr %i.m, null                   ; 2 uses
  br i1 %i.r, label %bb.b, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %3, align 8                ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.f
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.a
  %i.v = load i64, ptr %i.f, align 8
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.ed

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp6Logger4infoIJRA28_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.x, ptr noundef nonnull align 1 dereferenceable(28) @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.m, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.q       ; 5 uses

bb.e:                                             ; preds = %bb.d
  %i.ac = add i64 %i.ab, 1                        ; 6 uses
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.112) #26
          to label %.noexc77 unwind label %bb.r

.noexc77:                                         ; preds = %bb.f
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.e
  %.not.i.i.i.i = icmp ne i64 %i.ac, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #27
          to label %.noexc78 unwind label %bb.r   ; 9 uses

.noexc78:                                         ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  store i8 0, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  %i.ag = icmp eq i64 %i.ab, 0
  br i1 %i.ag, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.g

bb.g:                                             ; preds = %.noexc78
  %i.ah = getelementptr i8, ptr %i.ae, i64 %i.ac
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.af, i8 0, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit:               ; preds = %bb.g, %.noexc78
  %.0.i.i.i.i.i = phi ptr [ %i.ah, %bb.g ], [ %i.af, %.noexc78 ] ; 16 uses
  %i.ai = load ptr, ptr %i.m, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = invoke noundef i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.ae, i64 noundef %i.ab, i64 noundef 1)
          to label %bb.h unwind label %.thread    ; 0 uses

bb.h:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  store i8 0, ptr %i.am, align 1
  invoke void @_ZN6Assimp14CommentRemover18RemoveLineCommentsEPKcPcc(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.ae, i8 noundef signext 32)
          to label %bb.i unwind label %.thread

bb.i:                                             ; preds = %bb.h
  %i.an = ptrtoint ptr %.0.i.i.i.i.i to i64       ; 15 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  br label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit230

_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit230.loopexit: ; preds = %bb.ea, %bb.eb
  %.0276.ph = phi ptr [ %scevgep25.i.i225, %bb.eb ], [ %.1.i.i226, %bb.ea ]
  br label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit230

_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit230:         ; preds = %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit230.loopexit, %bb.i
  %.0276 = phi ptr [ %i.ae, %bb.i ], [ %.0276.ph, %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit230.loopexit ] ; 3 uses
  %.0 = phi ptr [ null, %bb.i ], [ %.1, %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit230.loopexit ] ; 6 uses
  %9 = ptrtoaddr ptr %.0276 to i64
  %i.ba = sub i64 %i.an, %9
  %scevgep.i.i = getelementptr i8, ptr %.0276, i64 %i.ba ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit230
  %.0.i.i = phi ptr [ %.0276, %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit230 ], [ %i.bc, %bb.l ] ; 4 uses
  %i.bb = load i8, ptr %.0.i.i, align 1           ; 2 uses
  switch i8 %i.bb, label %.loopexit313 [
    i8 32, label %bb.k
    i8 9, label %bb.k
    i8 13, label %bb.k
    i8 10, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j
  %.not.i.i = icmp eq ptr %.0.i.i, %.0.i.i.i.i.i
  br i1 %.not.i.i, label %thread-pre-split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.j, !llvm.loop !4

thread-pre-split:                                 ; preds = %bb.k
  %.pr = load i8, ptr %scevgep.i.i, align 1
  br label %.loopexit313

.loopexit313:                                     ; preds = %bb.j, %thread-pre-split
  %i.bd = phi i8 [ %.pr, %thread-pre-split ], [ %i.bb, %bb.j ]
  %.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %thread-pre-split ], [ %.0.i.i, %bb.j ] ; 4 uses
  switch i8 %i.bd, label %bb.dg [
    i8 0, label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i
    i8 123, label %bb.m
  ]

bb.m:                                             ; preds = %.loopexit313
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %.0, i64 56 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 3 uses
  br label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit195

bb.n:                                             ; preds = %bb.m
  %i.bj = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.bj, ptr noundef nonnull @.str.9)
          to label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.c, %bb.b
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit237

bb.q:                                             ; preds = %bb.d
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit237

bb.r:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i, %bb.f
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit237

.thread:                                          ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, %bb.h
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit312:                                     ; preds = %bb.cy, %bb.cz, %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.dg
  %lpad.loopexit314 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.o, %bb.n
  %lpad.loopexit.split-lp315 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit195.loopexit: ; preds = %bb.dd, %bb.de
  %.1277.ph = phi ptr [ %scevgep25.i.i190, %bb.de ], [ %.1.i.i191, %bb.dd ]
  br label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit195

_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit195:         ; preds = %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit195.loopexit, %.preheader
  %.1277 = phi ptr [ %i.be, %.preheader ], [ %.1277.ph, %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit195.loopexit ] ; 3 uses
  %10 = ptrtoaddr ptr %.1277 to i64
  %i.bo = sub i64 %i.an, %10
  %scevgep.i.i79 = getelementptr i8, ptr %.1277, i64 %i.bo ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit195
  %.0.i.i80 = phi ptr [ %.1277, %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit195 ], [ %i.bq, %bb.u ] ; 4 uses
  %i.bp = load i8, ptr %.0.i.i80, align 1         ; 2 uses
  switch i8 %i.bp, label %.loopexit310 [
    i8 32, label %bb.t
    i8 9, label %bb.t
    i8 13, label %bb.t
    i8 10, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s, %bb.s, %bb.s
  %.not.i.i81 = icmp eq ptr %.0.i.i80, %.0.i.i.i.i.i
  br i1 %.not.i.i81, label %thread-pre-split278, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i80, i64 1
  br label %bb.s, !llvm.loop !4

thread-pre-split278:                              ; preds = %bb.t
  %.pr279 = load i8, ptr %scevgep.i.i79, align 1
  br label %.loopexit310

.loopexit310:                                     ; preds = %bb.s, %thread-pre-split278
  %i.br = phi i8 [ %.pr279, %thread-pre-split278 ], [ %i.bp, %bb.s ]
  %.0.lcssa.i.i82 = phi ptr [ %scevgep.i.i79, %thread-pre-split278 ], [ %.0.i.i80, %bb.s ] ; 8 uses
  switch i8 %i.br, label %bb.cm [
    i8 0, label %.loopexit311
    i8 123, label %bb.v
    i8 125, label %bb.cl
  ]

bb.v:                                             ; preds = %.loopexit310
  %i.bs = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27
          to label %bb.w unwind label %.loopexit312 ; 7 uses

bb.w:                                             ; preds = %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i82, i64 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 32 ; 2 uses
  store ptr %i.bv, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store i64 0, ptr %i.bw, align 8
  store i8 0, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  store i32 0, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 52
  store i32 0, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  store i32 0, ptr %i.bz, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.bf) #24
  %i.ca = load i64, ptr %i.bg, align 8
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr %i.bg, align 8
  %i.cc = load ptr, ptr %i.bh, align 8            ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 32 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 24 ; 3 uses
  %.not21.i = icmp eq ptr %4, %i.cd
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 48 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 52 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  br label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit

_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit.loopexit:   ; preds = %bb.ci, %bb.cj
  %.2.ph = phi ptr [ %scevgep25.i.i, %bb.cj ], [ %.1.i.i, %bb.ci ]
  br label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit

_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit:            ; preds = %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit.loopexit, %bb.w
  %.2 = phi ptr [ %i.bt, %bb.w ], [ %.2.ph, %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit.loopexit ] ; 3 uses
  %11 = ptrtoaddr ptr %.2 to i64
  %i.cj = sub i64 %i.an, %11
  %scevgep.i.i85 = getelementptr i8, ptr %.2, i64 %i.cj ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit
  %.0.i.i86 = phi ptr [ %.2, %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit ], [ %i.cl, %bb.z ] ; 4 uses
  %i.ck = load i8, ptr %.0.i.i86, align 1         ; 2 uses
  switch i8 %i.ck, label %.loopexit [
    i8 32, label %bb.y
    i8 9, label %bb.y
    i8 13, label %bb.y
    i8 10, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x, %bb.x, %bb.x
  %.not.i.i87 = icmp eq ptr %.0.i.i86, %.0.i.i.i.i.i
  br i1 %.not.i.i87, label %thread-pre-split280, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i86, i64 1
  br label %bb.x, !llvm.loop !4

thread-pre-split280:                              ; preds = %bb.y
  %.pr281 = load i8, ptr %scevgep.i.i85, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.x, %thread-pre-split280
  %i.cm = phi i8 [ %.pr281, %thread-pre-split280 ], [ %i.ck, %bb.x ] ; 2 uses
  %.0.lcssa.i.i88 = phi ptr [ %scevgep.i.i85, %thread-pre-split280 ], [ %.0.i.i86, %bb.x ] ; 14 uses
  %.not309 = icmp eq i8 %i.cm, 0
  br i1 %.not309, label %_ZN6Assimp11TokenMatchIERPKcS1_j.exit174.thread, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %i.cn = call i32 @strncasecmp(ptr noundef nonnull @.str.10, ptr noundef nonnull %.0.lcssa.i.i88, i64 noundef 3) #28
  %.not.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i, label %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i, label %bb.ab

_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i: ; preds = %bb.aa
  %i.co = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i88, i64 3
  %i.cp = load i8, ptr %i.co, align 1             ; 2 uses
  %i.cq = icmp ult i8 %i.cp, 33
  %switch.maskindex = zext nneg i8 %i.cp to i64
  %switch.shifted = lshr i64 4294981121, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond = select i1 %i.cq, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %_ZN6Assimp11TokenMatchIERPKcS1_j.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i, %bb.aa
  %i.cr = call i32 @strncasecmp(ptr noundef nonnull @.str.11, ptr noundef nonnull %.0.lcssa.i.i88, i64 noundef 8) #28
  %.not.i90 = icmp eq i32 %i.cr, 0
  br i1 %.not.i90, label %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i92, label %bb.ar

_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i92: ; preds = %bb.ab
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i88, i64 8
  %i.ct = load i8, ptr %i.cs, align 1             ; 2 uses
  %i.cu = icmp ult i8 %i.ct, 33
  %switch.maskindex470 = zext nneg i8 %i.ct to i64
  %switch.shifted471 = lshr i64 4294981121, %switch.maskindex470
  %switch.lobit472 = trunc i64 %switch.shifted471 to i1
  %or.cond473 = select i1 %i.cu, i1 %switch.lobit472, i1 false
  br i1 %or.cond473, label %_ZN6Assimp11TokenMatchIERPKcS1_j.exit, label %bb.ar

_ZN6Assimp11TokenMatchIERPKcS1_j.exit:            ; preds = %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i92, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i
  %.sink = phi i64 [ 4, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i ], [ 9, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i92 ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i88, i64 %.sink ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %12 = ptrtoaddr ptr %i.cv to i64
  %i.cw = sub i64 %i.an, %12
  %scevgep.i.i.i = getelementptr i8, ptr %i.cv, i64 %i.cw
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %_ZN6Assimp11TokenMatchIERPKcS1_j.exit
  %.0.i.i.i = phi ptr [ %i.cv, %_ZN6Assimp11TokenMatchIERPKcS1_j.exit ], [ %i.cy, %bb.ae ] ; 4 uses
  %i.cx = load i8, ptr %.0.i.i.i, align 1, !noalias !6
  switch i8 %i.cx, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i [
    i8 32, label %bb.ad
    i8 9, label %bb.ad
    i8 13, label %bb.ad
    i8 10, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac, %bb.ac, %bb.ac
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %.0.i.i.i.i.i
  br i1 %.not.i.i.i, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.ac, !llvm.loop !4

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i: ; preds = %bb.ad, %bb.ac
  %.0.lcssa.i.i.i = phi ptr [ %.0.i.i.i, %bb.ac ], [ %scevgep.i.i.i, %bb.ad ] ; 4 uses
  br label %bb.af

bb.af:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i
  %storemerge.i = phi ptr [ %.0.lcssa.i.i.i, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i ], [ %i.da, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i ] ; 4 uses
  %i.cz = load i8, ptr %storemerge.i, align 1, !noalias !6
  switch i8 %i.cz, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i [
    i8 32, label %bb.ag
    i8 9, label %bb.ag
    i8 13, label %bb.ag
    i8 10, label %bb.ag
    i8 0, label %bb.ag
    i8 12, label %bb.ag
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i:       ; preds = %bb.af
  %i.da = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 1
  br label %bb.af, !llvm.loop !9

bb.ag:                                            ; preds = %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af
  %i.db = ptrtoint ptr %storemerge.i to i64
  %i.dc = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 4 uses
  store ptr %i.ao, ptr %4, align 8, !alias.scope !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24, !noalias !6
  store i64 %i.dd, ptr %i.e, align 8, !noalias !6
  %i.de = icmp ugt i64 %i.dd, 15
  br i1 %i.de, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.ag
  %i.df = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc94 unwind label %bb.aq  ; 2 uses

.noexc94:                                         ; preds = %.noexc.i.i
  store ptr %i.df, ptr %4, align 8, !alias.scope !6
  %i.dg = load i64, ptr %i.e, align 8, !noalias !6
  store i64 %i.dg, ptr %i.ao, align 8, !alias.scope !6
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc94, %bb.ag
  %i.dh = phi ptr [ %i.df, %.noexc94 ], [ %i.ao, %bb.ag ] ; 2 uses
  switch i64 %i.dd, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %bb.aj
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i.i
  %i.di = load i8, ptr %.0.lcssa.i.i.i, align 1
  store i8 %i.di, ptr %i.dh, align 1
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dh, ptr align 1 %.0.lcssa.i.i.i, i64 %i.dd, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i.i
  %i.dj = load i64, ptr %i.e, align 8, !noalias !6 ; 2 uses
  store i64 %i.dj, ptr %i.ap, align 8, !alias.scope !6
  %i.dk = load ptr, ptr %4, align 8, !alias.scope !6
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dj
  store i8 0, ptr %i.dl, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24, !noalias !6
  %i.dm = load ptr, ptr %i.cd, align 8            ; 6 uses
  %i.dn = icmp eq ptr %i.dm, %i.ce
  %i.do = load ptr, ptr %4, align 8               ; 6 uses
  %i.dp = icmp eq ptr %i.do, %i.ao                ; 2 uses
  br i1 %i.dn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.aj
  br i1 %i.dp, label %bb.ak, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.aj
  br i1 %i.dp, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dq = load i64, ptr %i.ap, align 8            ; 3 uses
  %i.dr = icmp ult i64 %i.dq, 16
  call void @llvm.assume(i1 %i.dr)
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.al, !prof !10

bb.al:                                            ; preds = %bb.ak
  switch i64 %i.dq, label %bb.an [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al
  %i.ds = load i8, ptr %i.do, align 1
  store i8 %i.ds, ptr %i.dm, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.an:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr align 1 %i.do, i64 %i.dq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.an, %bb.am, %bb.al
  %i.dt = load i64, ptr %i.ap, align 8            ; 2 uses
  store i64 %i.dt, ptr %i.cf, align 8
  %i.du = load ptr, ptr %i.cd, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dt
  store i8 0, ptr %i.dv, align 1
  %.pre.i = load ptr, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.do, ptr %i.cd, align 8
  %i.dw = load <2 x i64>, ptr %i.ap, align 8
  store <2 x i64> %i.dw, ptr %i.cf, align 8
  br label %bb.ap

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.dx = load i64, ptr %i.ce, align 8
  store ptr %i.do, ptr %i.cd, align 8
  %i.dy = load <2 x i64>, ptr %i.ap, align 8
  store <2 x i64> %i.dy, ptr %i.cf, align 8
  %.not.i95 = icmp eq ptr %i.dm, null
  br i1 %.not.i95, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.dm, ptr %4, align 8
  store i64 %i.dx, ptr %i.ao, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ao, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ao, %bb.ap
  %i.dz = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.dm, %bb.ao ], [ %i.ao, %bb.ap ], [ %i.do, %bb.ak ]
  store i64 0, ptr %i.ap, align 8
  store i8 0, ptr %i.dz, align 1
  %i.ea = load ptr, ptr %4, align 8               ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.ao
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ec = load i64, ptr %i.ao, align 8
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ce

bb.aq:                                            ; preds = %.noexc.i.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.loopexit.split-lp

bb.ar:                                            ; preds = %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i92, %bb.ab
  %i.ef = call i32 @strncasecmp(ptr noundef nonnull @.str.12, ptr noundef nonnull %.0.lcssa.i.i88, i64 noundef 9) #28
  %.not.i99 = icmp eq i32 %i.ef, 0
  br i1 %.not.i99, label %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i102, label %bb.br

_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i102: ; preds = %bb.ar
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i88, i64 9
  %i.eh = load i8, ptr %i.eg, align 1
  switch i8 %i.eh, label %bb.br [
    i8 32, label %bb.as
    i8 9, label %bb.as
    i8 13, label %bb.as
    i8 10, label %bb.as
    i8 0, label %bb.as
    i8 12, label %bb.as
  ]

bb.as:                                            ; preds = %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i102, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i102, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i102, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i102, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i102, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i102
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i88, i64 10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %13 = ptrtoaddr ptr %i.ei to i64
  %i.ej = sub i64 %i.an, %13
  %scevgep.i.i.i104 = getelementptr i8, ptr %i.ei, i64 %i.ej
  br label %bb.at

bb.at:                                            ; preds = %bb.av, %bb.as
  %.0.i.i.i105 = phi ptr [ %i.ei, %bb.as ], [ %i.el, %bb.av ] ; 4 uses
  %i.ek = load i8, ptr %.0.i.i.i105, align 1, !noalias !11
  switch i8 %i.ek, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i107 [
    i8 32, label %bb.au
    i8 9, label %bb.au
    i8 13, label %bb.au
    i8 10, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at, %bb.at, %bb.at, %bb.at
  %.not.i.i.i106 = icmp eq ptr %.0.i.i.i105, %.0.i.i.i.i.i
  br i1 %.not.i.i.i106, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i107, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.el = getelementptr inbounds nuw i8, ptr %.0.i.i.i105, i64 1
  br label %bb.at, !llvm.loop !4

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i107: ; preds = %bb.au, %bb.at
  %.0.lcssa.i.i.i108 = phi ptr [ %.0.i.i.i105, %bb.at ], [ %scevgep.i.i.i104, %bb.au ] ; 4 uses
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i112, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i107
  %storemerge.i109 = phi ptr [ %.0.lcssa.i.i.i108, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i107 ], [ %i.en, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i112 ] ; 9 uses
  %i.em = load i8, ptr %storemerge.i109, align 1, !noalias !11
  switch i8 %i.em, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i112 [
    i8 32, label %bb.ax
    i8 9, label %bb.ax
    i8 13, label %bb.ax
    i8 10, label %bb.ax
    i8 0, label %bb.ax
    i8 12, label %bb.ax
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i112:    ; preds = %bb.aw
  %i.en = getelementptr inbounds nuw i8, ptr %storemerge.i109, i64 1
  br label %bb.aw, !llvm.loop !9

bb.ax:                                            ; preds = %bb.aw, %bb.aw, %bb.aw, %bb.aw, %bb.aw, %bb.aw
  %i.eo = ptrtoint ptr %storemerge.i109 to i64
  %i.ep = ptrtoint ptr %.0.lcssa.i.i.i108 to i64
  %i.eq = sub i64 %i.eo, %i.ep                    ; 4 uses
  store ptr %i.aq, ptr %5, align 8, !alias.scope !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24, !noalias !11
  store i64 %i.eq, ptr %i.d, align 8, !noalias !11
  %i.er = icmp ugt i64 %i.eq, 15
  br i1 %i.er, label %.noexc.i.i111, label %._crit_edge.i.i.i110

.noexc.i.i111:                                    ; preds = %bb.ax
  %i.es = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc113 unwind label %bb.bb ; 2 uses

.noexc113:                                        ; preds = %.noexc.i.i111
  store ptr %i.es, ptr %5, align 8, !alias.scope !11
  %i.et = load i64, ptr %i.d, align 8, !noalias !11
  store i64 %i.et, ptr %i.aq, align 8, !alias.scope !11
  br label %._crit_edge.i.i.i110

._crit_edge.i.i.i110:                             ; preds = %.noexc113, %bb.ax
  %i.eu = phi ptr [ %i.es, %.noexc113 ], [ %i.aq, %bb.ax ] ; 2 uses
  switch i64 %i.eq, label %bb.az [
    i64 1, label %bb.ay
    i64 0, label %bb.ba
  ]

bb.ay:                                            ; preds = %._crit_edge.i.i.i110
  %i.ev = load i8, ptr %.0.lcssa.i.i.i108, align 1
  store i8 %i.ev, ptr %i.eu, align 1
  br label %bb.ba

bb.az:                                            ; preds = %._crit_edge.i.i.i110
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eu, ptr align 1 %.0.lcssa.i.i.i108, i64 %i.eq, i1 false)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i.i.i110
  %i.ew = load i64, ptr %i.d, align 8, !noalias !11 ; 2 uses
  store i64 %i.ew, ptr %i.ar, align 8, !alias.scope !11
  %i.ex = load ptr, ptr %5, align 8, !alias.scope !11
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ew
  store i8 0, ptr %i.ey, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !11
  %i.ez = load i64, ptr %i.ar, align 8            ; 3 uses
  switch i64 %i.ez, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118.thread293 [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.ba
  %i.fa = load ptr, ptr %5, align 8               ; 3 uses
  %i.fb = load i16, ptr %i.fa, align 1
  %i.fc = xor i16 %i.fb, 25697
  %i.fd = getelementptr i8, ptr %i.fa, i64 2
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = zext i8 %i.fe to i16
  %i.fg = xor i16 %i.ff, 100
  %i.fh = or i16 %i.fc, %i.fg
  %i.fi = icmp ne i16 %i.fh, 0
  %i.fj = zext i1 %i.fi to i32
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118.thread293

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  store i32 1, ptr %i.cg, align 8
  store i32 1, ptr %i.ch, align 4
  br label %bb.bp

bb.bb:                                            ; preds = %.noexc.i.i111
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

bb.bc:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118.thread293
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116: ; preds = %bb.ba
  %.pre = load ptr, ptr %5, align 8               ; 2 uses
  %bcmp.i115 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.14, i64 %i.ez)
  %i.fn = icmp eq i32 %bcmp.i115, 0
  br i1 %i.fn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118.thread293

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116
  store i32 3, ptr %i.cg, align 8
  store i32 2, ptr %i.ch, align 4
  br label %bb.bp

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118: ; preds = %bb.ba
  %.pre373 = load ptr, ptr %5, align 8            ; 2 uses
  %bcmp.i117 = call i32 @bcmp(ptr %.pre373, ptr nonnull @.str.15, i64 %i.ez)
  %i.fo = icmp eq i32 %bcmp.i117, 0
  br i1 %i.fo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118.thread293

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118
  store i32 5, ptr %i.cg, align 8
  store i32 6, ptr %i.ch, align 4
  br label %bb.bp

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118.thread293: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.ba, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118
  %i.fp = invoke noundef i32 @_Z17StringToBlendFuncRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.bd unwind label %bb.bc

bb.bd:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118.thread293
  store i32 %i.fp, ptr %i.cg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  %14 = ptrtoaddr ptr %storemerge.i109 to i64
  %i.fq = sub i64 %i.an, %14
  %scevgep.i.i.i119 = getelementptr i8, ptr %storemerge.i109, i64 %i.fq
  br label %bb.be

bb.be:                                            ; preds = %bb.bg, %bb.bd
  %.0.i.i.i120 = phi ptr [ %storemerge.i109, %bb.bd ], [ %i.fs, %bb.bg ] ; 4 uses
  %i.fr = load i8, ptr %.0.i.i.i120, align 1, !noalias !14
  switch i8 %i.fr, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i122 [
    i8 32, label %bb.bf
    i8 9, label %bb.bf
    i8 13, label %bb.bf
    i8 10, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be, %bb.be, %bb.be, %bb.be
  %.not.i.i.i121 = icmp eq ptr %.0.i.i.i120, %.0.i.i.i.i.i
  br i1 %.not.i.i.i121, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i122, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i.i.i120, i64 1
  br label %bb.be, !llvm.loop !4

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i122: ; preds = %bb.bf, %bb.be
  %.0.lcssa.i.i.i123 = phi ptr [ %.0.i.i.i120, %bb.be ], [ %scevgep.i.i.i119, %bb.bf ] ; 4 uses
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i127, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i122
  %storemerge.i124 = phi ptr [ %.0.lcssa.i.i.i123, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i122 ], [ %i.fu, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i127 ] ; 4 uses
  %i.ft = load i8, ptr %storemerge.i124, align 1, !noalias !14
  switch i8 %i.ft, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i127 [
    i8 32, label %bb.bi
    i8 9, label %bb.bi
    i8 13, label %bb.bi
    i8 10, label %bb.bi
    i8 0, label %bb.bi
    i8 12, label %bb.bi
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i127:    ; preds = %bb.bh
  %i.fu = getelementptr inbounds nuw i8, ptr %storemerge.i124, i64 1
  br label %bb.bh, !llvm.loop !9

bb.bi:                                            ; preds = %bb.bh, %bb.bh, %bb.bh, %bb.bh, %bb.bh, %bb.bh
  %i.fv = ptrtoint ptr %storemerge.i124 to i64
  %i.fw = ptrtoint ptr %.0.lcssa.i.i.i123 to i64
  %i.fx = sub i64 %i.fv, %i.fw                    ; 4 uses
  store ptr %i.as, ptr %6, align 8, !alias.scope !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24, !noalias !14
  store i64 %i.fx, ptr %i.c, align 8, !noalias !14
  %i.fy = icmp ugt i64 %i.fx, 15
  br i1 %i.fy, label %.noexc.i.i126, label %._crit_edge.i.i.i125

.noexc.i.i126:                                    ; preds = %bb.bi
  %i.fz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc128 unwind label %bb.bn ; 2 uses

.noexc128:                                        ; preds = %.noexc.i.i126
  store ptr %i.fz, ptr %6, align 8, !alias.scope !14
  %i.ga = load i64, ptr %i.c, align 8, !noalias !14
  store i64 %i.ga, ptr %i.as, align 8, !alias.scope !14
  br label %._crit_edge.i.i.i125

._crit_edge.i.i.i125:                             ; preds = %.noexc128, %bb.bi
  %i.gb = phi ptr [ %i.fz, %.noexc128 ], [ %i.as, %bb.bi ] ; 2 uses
  switch i64 %i.fx, label %bb.bk [
    i64 1, label %bb.bj
    i64 0, label %bb.bl
  ]

bb.bj:                                            ; preds = %._crit_edge.i.i.i125
  %i.gc = load i8, ptr %.0.lcssa.i.i.i123, align 1
  store i8 %i.gc, ptr %i.gb, align 1
  br label %bb.bl

bb.bk:                                            ; preds = %._crit_edge.i.i.i125
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gb, ptr align 1 %.0.lcssa.i.i.i123, i64 %i.fx, i1 false)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %._crit_edge.i.i.i125
  %i.gd = load i64, ptr %i.c, align 8, !noalias !14 ; 2 uses
  store i64 %i.gd, ptr %i.at, align 8, !alias.scope !14
  %i.ge = load ptr, ptr %6, align 8, !alias.scope !14
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gd
  store i8 0, ptr %i.gf, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !14
  %i.gg = invoke noundef i32 @_Z17StringToBlendFuncRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  store i32 %i.gg, ptr %i.ch, align 4
  %i.gh = load ptr, ptr %6, align 8               ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.as
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.bm
  %i.gj = load i64, ptr %i.as, align 8
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.pre374 = load ptr, ptr %5, align 8
  br label %bb.bp

bb.bn:                                            ; preds = %.noexc.i.i126
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

bb.bo:                                            ; preds = %bb.bl
  %i.gm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gn = load ptr, ptr %6, align 8               ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.as
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %bb.bo
  %i.gp = load i64, ptr %i.as, align 8
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133, %bb.bn
  %.pn62 = phi { ptr, i32 } [ %i.gl, %bb.bn ], [ %i.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133 ], [ %i.gm, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.bq

bb.bp:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.gr = phi ptr [ %i.fa, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.pre, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116.thread ], [ %.pre373, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118.thread ], [ %.pre374, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ] ; 2 uses
  %.4 = phi ptr [ %storemerge.i109, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %storemerge.i109, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116.thread ], [ %storemerge.i109, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118.thread ], [ %storemerge.i124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ]
  %i.gs = icmp eq ptr %i.gr, %i.aq
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.bp
  %i.gt = load i64, ptr %i.aq, align 8
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ce

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %bb.bc
  %.pn62.pn = phi { ptr, i32 } [ %.pn62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ], [ %i.fm, %bb.bc ] ; 2 uses
  %i.gv = load ptr, ptr %5, align 8               ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.aq
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.bq
  %i.gx = load i64, ptr %i.aq, align 8
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139, %bb.bb
  %.pn62.pn.pn = phi { ptr, i32 } [ %i.fl, %bb.bb ], [ %.pn62.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139 ], [ %.pn62.pn, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.loopexit.split-lp

bb.br:                                            ; preds = %bb.ar, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i102
  %i.gz = call i32 @strncasecmp(ptr noundef nonnull @.str.16, ptr noundef nonnull %.0.lcssa.i.i88, i64 noundef 9) #28
  %.not.i142 = icmp eq i32 %i.gz, 0
  br i1 %.not.i142, label %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i145, label %bb.cc

_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i145: ; preds = %bb.br
  %i.ha = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i88, i64 9
  %i.hb = load i8, ptr %i.ha, align 1
  switch i8 %i.hb, label %bb.cc [
    i8 32, label %bb.bs
    i8 9, label %bb.bs
    i8 13, label %bb.bs
    i8 10, label %bb.bs
    i8 0, label %bb.bs
    i8 12, label %bb.bs
  ]

bb.bs:                                            ; preds = %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i145, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i145, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i145, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i145, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i145, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i145
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i88, i64 10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %15 = ptrtoaddr ptr %i.hc to i64
  %i.hd = sub i64 %i.an, %15
  %scevgep.i.i.i147 = getelementptr i8, ptr %i.hc, i64 %i.hd
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bv, %bb.bs
  %.0.i.i.i148 = phi ptr [ %i.hc, %bb.bs ], [ %i.hf, %bb.bv ] ; 4 uses
  %i.he = load i8, ptr %.0.i.i.i148, align 1, !noalias !17
  switch i8 %i.he, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i150 [
    i8 32, label %bb.bu
    i8 9, label %bb.bu
    i8 13, label %bb.bu
    i8 10, label %bb.bu
  ]

bb.bu:                                            ; preds = %bb.bt, %bb.bt, %bb.bt, %bb.bt
  %.not.i.i.i149 = icmp eq ptr %.0.i.i.i148, %.0.i.i.i.i.i
  br i1 %.not.i.i.i149, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i150, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.i.i.i148, i64 1
  br label %bb.bt, !llvm.loop !4

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i150: ; preds = %bb.bu, %bb.bt
  %.0.lcssa.i.i.i151 = phi ptr [ %.0.i.i.i148, %bb.bt ], [ %scevgep.i.i.i147, %bb.bu ] ; 4 uses
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i155, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i150
  %storemerge.i152 = phi ptr [ %.0.lcssa.i.i.i151, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i150 ], [ %i.hh, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i155 ] ; 4 uses
  %i.hg = load i8, ptr %storemerge.i152, align 1, !noalias !17
  switch i8 %i.hg, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i155 [
    i8 32, label %bb.bx
    i8 9, label %bb.bx
    i8 13, label %bb.bx
    i8 10, label %bb.bx
    i8 0, label %bb.bx
    i8 12, label %bb.bx
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i155:    ; preds = %bb.bw
  %i.hh = getelementptr inbounds nuw i8, ptr %storemerge.i152, i64 1
  br label %bb.bw, !llvm.loop !9

bb.bx:                                            ; preds = %bb.bw, %bb.bw, %bb.bw, %bb.bw, %bb.bw, %bb.bw
  %i.hi = ptrtoint ptr %storemerge.i152 to i64
  %i.hj = ptrtoint ptr %.0.lcssa.i.i.i151 to i64
  %i.hk = sub i64 %i.hi, %i.hj                    ; 4 uses
  store ptr %i.au, ptr %7, align 8, !alias.scope !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !17
  store i64 %i.hk, ptr %i.b, align 8, !noalias !17
  %i.hl = icmp ugt i64 %i.hk, 15
  br i1 %i.hl, label %.noexc.i.i154, label %._crit_edge.i.i.i153

.noexc.i.i154:                                    ; preds = %bb.bx
  %i.hm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc156 unwind label %bb.cb ; 2 uses

.noexc156:                                        ; preds = %.noexc.i.i154
  store ptr %i.hm, ptr %7, align 8, !alias.scope !17
  %i.hn = load i64, ptr %i.b, align 8, !noalias !17
  store i64 %i.hn, ptr %i.au, align 8, !alias.scope !17
  br label %._crit_edge.i.i.i153

._crit_edge.i.i.i153:                             ; preds = %.noexc156, %bb.bx
  %i.ho = phi ptr [ %i.hm, %.noexc156 ], [ %i.au, %bb.bx ] ; 2 uses
  switch i64 %i.hk, label %bb.bz [
    i64 1, label %bb.by
    i64 0, label %bb.ca
  ]

bb.by:                                            ; preds = %._crit_edge.i.i.i153
  %i.hp = load i8, ptr %.0.lcssa.i.i.i151, align 1
  store i8 %i.hp, ptr %i.ho, align 1
  br label %bb.ca

bb.bz:                                            ; preds = %._crit_edge.i.i.i153
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ho, ptr align 1 %.0.lcssa.i.i.i151, i64 %i.hk, i1 false)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %._crit_edge.i.i.i153
  %i.hq = load i64, ptr %i.b, align 8, !noalias !17 ; 2 uses
  store i64 %i.hq, ptr %i.av, align 8, !alias.scope !17
  %i.hr = load ptr, ptr %7, align 8, !alias.scope !17
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hq
  store i8 0, ptr %i.hs, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !17
  %i.ht = load i64, ptr %i.av, align 8            ; 2 uses
  %.pre375 = load ptr, ptr %7, align 8            ; 8 uses
  switch i64 %i.ht, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread299 [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159: ; preds = %bb.ca
  %i.hu = load i16, ptr %.pre375, align 1
  %i.hv = xor i16 %i.hu, 21575
  %i.hw = getelementptr i8, ptr %.pre375, i64 2
  %i.hx = load i8, ptr %i.hw, align 1
  %i.hy = zext i8 %i.hx to i16
  %i.hz = xor i16 %i.hy, 48
  %i.ia = or i16 %i.hv, %i.hz
  %i.ib = icmp ne i16 %i.ia, 0
  %i.ic = zext i1 %i.ib to i32
  %i.id = icmp eq i32 %i.ic, 0
  br i1 %i.id, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread299.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread299

bb.cb:                                            ; preds = %.noexc.i.i154
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.loopexit.split-lp

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161: ; preds = %bb.ca
  %i.if = load i32, ptr %.pre375, align 1
  %i.ig = xor i32 %i.if, 842093644
  %i.ih = getelementptr i8, ptr %.pre375, i64 4
  %i.ii = load i8, ptr %i.ih, align 1
  %i.ij = zext i8 %i.ii to i32
  %i.ik = xor i32 %i.ij, 56
  %i.il = or i32 %i.ig, %i.ik
  %i.im = icmp ne i32 %i.il, 0
  %i.in = zext i1 %i.im to i32
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread299.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161
  %i.ip = load i32, ptr %.pre375, align 1
  %i.iq = xor i32 %i.ip, 842089799
  %i.ir = getelementptr i8, ptr %.pre375, i64 4
  %i.is = load i8, ptr %i.ir, align 1
  %i.it = zext i8 %i.is to i32
  %i.iu = xor i32 %i.it, 56
  %i.iv = or i32 %i.iq, %i.iu
  %i.iw = icmp ne i32 %i.iv, 0
  %i.ix = zext i1 %i.iw to i32
  %i.iy = icmp eq i32 %i.ix, 0
  br i1 %i.iy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread299.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread299

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread299.sink.split: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159
  %.sink443 = phi i32 [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159 ], [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161 ], [ 3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163 ]
  store i32 %.sink443, ptr %i.ci, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread299

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread299: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread299.sink.split, %bb.ca, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163
  %i.iz = icmp eq ptr %.pre375, %i.au
  br i1 %i.iz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i165: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread299
  %i.ja = icmp ult i64 %i.ht, 16
  call void @llvm.assume(i1 %i.ja)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread299
  %i.jb = load i64, ptr %i.au, align 8
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %.pre375, i64 noundef %i.jc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i165, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.ce

bb.cc:                                            ; preds = %bb.br, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i145
  %i.jd = icmp eq i8 %i.cm, 125
  br i1 %i.jd, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.je = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i88, i64 1
  br label %_ZN6Assimp11TokenMatchIERPKcS1_j.exit174.thread

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %bb.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %.5 = phi ptr [ %storemerge.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ %storemerge.i152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ], [ %.0.lcssa.i.i88, %bb.cc ] ; 3 uses
  %16 = ptrtoaddr ptr %.5 to i64
  %i.jf = sub i64 %i.an, %16
  %scevgep.i.i167 = getelementptr i8, ptr %.5, i64 %i.jf
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ch, %bb.ce
  %.0.i.i168 = phi ptr [ %.5, %bb.ce ], [ %i.jh, %bb.ch ] ; 7 uses
  %i.jg = load i8, ptr %.0.i.i168, align 1
  switch i8 %i.jg, label %bb.cg [
    i8 13, label %.critedge.i.i
    i8 10, label %.critedge.i.i
    i8 0, label %.critedge.i.i
    i8 35, label %.critedge.i.i
  ]

bb.cg:                                            ; preds = %bb.cf
  %.not22.i.i = icmp eq ptr %.0.i.i168, %.0.i.i.i.i.i
  br i1 %.not22.i.i, label %.critedge.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jh = getelementptr inbounds nuw i8, ptr %.0.i.i168, i64 1
  br label %bb.cf, !llvm.loop !20

.critedge.i.i:                                    ; preds = %bb.cg, %bb.cf, %bb.cf, %bb.cf, %bb.cf
  %.0.lcssa.i.i169 = phi ptr [ %.0.i.i168, %bb.cf ], [ %.0.i.i168, %bb.cf ], [ %.0.i.i168, %bb.cf ], [ %.0.i.i168, %bb.cf ], [ %scevgep.i.i167, %bb.cg ] ; 3 uses
  %.0.lcssa24.i.i = ptrtoaddr ptr %.0.lcssa.i.i169 to i64
  %i.ji = sub i64 %i.an, %.0.lcssa24.i.i
  %scevgep25.i.i = getelementptr i8, ptr %.0.lcssa.i.i169, i64 %i.ji
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ck, %.critedge.i.i
  %.1.i.i = phi ptr [ %.0.lcssa.i.i169, %.critedge.i.i ], [ %i.jk, %bb.ck ] ; 4 uses
  %i.jj = load i8, ptr %.1.i.i, align 1
  switch i8 %i.jj, label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit.loopexit [
    i8 13, label %bb.cj
    i8 10, label %bb.cj
  ]

bb.cj:                                            ; preds = %bb.ci, %bb.ci
  %.not23.i.i = icmp eq ptr %.1.i.i, %.0.i.i.i.i.i
  br i1 %.not23.i.i, label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit.loopexit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jk = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br label %bb.ci, !llvm.loop !21

bb.cl:                                            ; preds = %.loopexit310
  %i.jl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i82, i64 1
  br label %.loopexit311

bb.cm:                                            ; preds = %.loopexit310
  %i.jm = call i32 @strncasecmp(ptr noundef nonnull @.str.20, ptr noundef nonnull %.0.lcssa.i.i82, i64 noundef 4) #28
  %.not.i170 = icmp eq i32 %i.jm, 0
  br i1 %.not.i170, label %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i173, label %_ZN6Assimp11TokenMatchIERPKcS1_j.exit174.thread

_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i173: ; preds = %bb.cm
  %i.jn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i82, i64 4
  %i.jo = load i8, ptr %i.jn, align 1
  switch i8 %i.jo, label %_ZN6Assimp11TokenMatchIERPKcS1_j.exit174.thread [
    i8 32, label %bb.cn
    i8 9, label %bb.cn
    i8 13, label %bb.cn
    i8 10, label %bb.cn
    i8 0, label %bb.cn
    i8 12, label %bb.cn
  ]

bb.cn:                                            ; preds = %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i173, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i173, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i173, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i173, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i173, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i173
  %i.jp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i82, i64 5 ; 3 uses
  %17 = ptrtoaddr ptr %i.jp to i64
  %i.jq = sub i64 %i.an, %17
  %scevgep.i.i175 = getelementptr i8, ptr %i.jp, i64 %i.jq
  br label %bb.co

bb.co:                                            ; preds = %bb.cq, %bb.cn
  %.0.i.i176 = phi ptr [ %i.jp, %bb.cn ], [ %i.js, %bb.cq ] ; 4 uses
  %i.jr = load i8, ptr %.0.i.i176, align 1
  switch i8 %i.jr, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit [
    i8 32, label %bb.cp
    i8 9, label %bb.cp
  ]

bb.cp:                                            ; preds = %bb.co, %bb.co
  %.not.i.i177 = icmp eq ptr %.0.i.i176, %.0.i.i.i.i.i
  br i1 %.not.i.i177, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.js = getelementptr inbounds nuw i8, ptr %.0.i.i176, i64 1
  br label %bb.co, !llvm.loop !22

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %bb.co, %bb.cp
  %.0.lcssa.i.i179 = phi ptr [ %.0.i.i176, %bb.co ], [ %scevgep.i.i175, %bb.cp ] ; 9 uses
  %i.jt = call i32 @strncasecmp(ptr noundef %.0.lcssa.i.i179, ptr noundef nonnull @.str.21, i64 noundef 4) #28
  %.not57 = icmp eq i32 %i.jt, 0
  br i1 %.not57, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  store i32 2, ptr %i.bi, align 8
  br label %_ZN6Assimp11TokenMatchIERPKcS1_j.exit174.thread

bb.cs:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  %i.ju = call i32 @strncasecmp(ptr noundef %.0.lcssa.i.i179, ptr noundef nonnull @.str.22, i64 noundef 5) #28
  %.not58 = icmp eq i32 %i.ju, 0
  br i1 %.not58, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i32 1, ptr %i.bi, align 8
  br label %_ZN6Assimp11TokenMatchIERPKcS1_j.exit174.thread

bb.cu:                                            ; preds = %bb.cs
  %i.jv = call i32 @strncasecmp(ptr noundef %.0.lcssa.i.i179, ptr noundef nonnull @.str.23, i64 noundef 4) #28
  %.not59 = icmp eq i32 %i.jv, 0
  br i1 %.not59, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.jw = call i32 @strncasecmp(ptr noundef %.0.lcssa.i.i179, ptr noundef nonnull @.str.24, i64 noundef 8) #28
  %.not60 = icmp eq i32 %i.jw, 0
  br i1 %.not60, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.jx = call i32 @strncasecmp(ptr noundef %.0.lcssa.i.i179, ptr noundef nonnull @.str.25, i64 noundef 7) #28
  %.not61 = icmp eq i32 %i.jx, 0
  br i1 %.not61, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu
  store i32 0, ptr %i.bi, align 8
  br label %_ZN6Assimp11TokenMatchIERPKcS1_j.exit174.thread

bb.cy:                                            ; preds = %bb.cw
  %i.jy = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cz unwind label %.loopexit312

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.jy, ptr noundef nonnull @.str.26)
          to label %_ZN6Assimp11TokenMatchIERPKcS1_j.exit174.thread unwind label %.loopexit312

_ZN6Assimp11TokenMatchIERPKcS1_j.exit174.thread:  ; preds = %.loopexit, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i173, %bb.cm, %bb.cd, %bb.ct, %bb.cz, %bb.cx, %bb.cr
  %.6 = phi ptr [ %.0.lcssa.i.i179, %bb.cr ], [ %.0.lcssa.i.i179, %bb.ct ], [ %.0.lcssa.i.i179, %bb.cx ], [ %.0.lcssa.i.i179, %bb.cz ], [ %.0.lcssa.i.i82, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i173 ], [ %i.je, %bb.cd ], [ %.0.lcssa.i.i82, %bb.cm ], [ %.0.lcssa.i.i88, %.loopexit ] ; 3 uses
  %18 = ptrtoaddr ptr %.6 to i64
  %i.jz = sub i64 %i.an, %18
  %scevgep.i.i185 = getelementptr i8, ptr %.6, i64 %i.jz
  br label %bb.da

bb.da:                                            ; preds = %bb.dc, %_ZN6Assimp11TokenMatchIERPKcS1_j.exit174.thread
  %.0.i.i186 = phi ptr [ %.6, %_ZN6Assimp11TokenMatchIERPKcS1_j.exit174.thread ], [ %i.kb, %bb.dc ] ; 7 uses
  %i.ka = load i8, ptr %.0.i.i186, align 1
  switch i8 %i.ka, label %bb.db [
    i8 13, label %.critedge.i.i187
    i8 10, label %.critedge.i.i187
    i8 0, label %.critedge.i.i187
    i8 35, label %.critedge.i.i187
  ]

bb.db:                                            ; preds = %bb.da
  %.not22.i.i194 = icmp eq ptr %.0.i.i186, %.0.i.i.i.i.i
  br i1 %.not22.i.i194, label %.critedge.i.i187, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.kb = getelementptr inbounds nuw i8, ptr %.0.i.i186, i64 1
  br label %bb.da, !llvm.loop !20

.critedge.i.i187:                                 ; preds = %bb.db, %bb.da, %bb.da, %bb.da, %bb.da
  %.0.lcssa.i.i188 = phi ptr [ %.0.i.i186, %bb.da ], [ %.0.i.i186, %bb.da ], [ %.0.i.i186, %bb.da ], [ %.0.i.i186, %bb.da ], [ %scevgep.i.i185, %bb.db ] ; 3 uses
  %.0.lcssa24.i.i189 = ptrtoaddr ptr %.0.lcssa.i.i188 to i64
  %i.kc = sub i64 %i.an, %.0.lcssa24.i.i189
  %scevgep25.i.i190 = getelementptr i8, ptr %.0.lcssa.i.i188, i64 %i.kc
  br label %bb.dd

bb.dd:                                            ; preds = %bb.df, %.critedge.i.i187
  %.1.i.i191 = phi ptr [ %.0.lcssa.i.i188, %.critedge.i.i187 ], [ %i.ke, %bb.df ] ; 4 uses
  %i.kd = load i8, ptr %.1.i.i191, align 1
  switch i8 %i.kd, label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit195.loopexit [
    i8 13, label %bb.de
    i8 10, label %bb.de
  ]

bb.de:                                            ; preds = %bb.dd, %bb.dd
  %.not23.i.i192 = icmp eq ptr %.1.i.i191, %.0.i.i.i.i.i
  br i1 %.not23.i.i192, label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit195.loopexit, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ke = getelementptr inbounds nuw i8, ptr %.1.i.i191, i64 1
  br label %bb.dd, !llvm.loop !21

bb.dg:                                            ; preds = %.loopexit313
  %i.kf = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27
          to label %bb.dh unwind label %.loopexit.split-lp.loopexit ; 8 uses

bb.dh:                                            ; preds = %bb.dg
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 32 ; 2 uses
  store ptr %i.kh, ptr %i.kg, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  store i64 0, ptr %i.ki, align 8
  store i8 0, ptr %i.kh, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 48
  store i32 1, ptr %i.kj, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kf, i64 56 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kf, i64 64
  store ptr %i.kk, ptr %i.kl, align 8
  store ptr %i.kk, ptr %i.kk, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kf, i64 72
  store i64 0, ptr %i.km, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.kf, ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  %i.kn = load i64, ptr %i.aw, align 8
  %i.ko = add i64 %i.kn, 1
  store i64 %i.ko, ptr %i.aw, align 8
  %i.kp = load ptr, ptr %i.ax, align 8            ; 5 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %19 = ptrtoaddr ptr %.0.lcssa.i.i to i64
  %i.kr = sub i64 %i.an, %19
  %scevgep.i.i.i197 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.kr
  br label %bb.di

bb.di:                                            ; preds = %bb.dk, %bb.dh
  %.0.i.i.i198 = phi ptr [ %.0.lcssa.i.i, %bb.dh ], [ %i.kt, %bb.dk ] ; 4 uses
  %i.ks = load i8, ptr %.0.i.i.i198, align 1, !noalias !23
  switch i8 %i.ks, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i200 [
    i8 32, label %bb.dj
    i8 9, label %bb.dj
    i8 13, label %bb.dj
    i8 10, label %bb.dj
  ]

bb.dj:                                            ; preds = %bb.di, %bb.di, %bb.di, %bb.di
  %.not.i.i.i199 = icmp eq ptr %.0.i.i.i198, %.0.i.i.i.i.i
  br i1 %.not.i.i.i199, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i200, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.kt = getelementptr inbounds nuw i8, ptr %.0.i.i.i198, i64 1
  br label %bb.di, !llvm.loop !4

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i200: ; preds = %bb.dj, %bb.di
  %.0.lcssa.i.i.i201 = phi ptr [ %.0.i.i.i198, %bb.di ], [ %scevgep.i.i.i197, %bb.dj ] ; 4 uses
  br label %bb.dl

bb.dl:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i205, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i200
  %storemerge.i202 = phi ptr [ %.0.lcssa.i.i.i201, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i200 ], [ %i.kv, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i205 ] ; 4 uses
  %i.ku = load i8, ptr %storemerge.i202, align 1, !noalias !23
  switch i8 %i.ku, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i205 [
    i8 32, label %bb.dm
    i8 9, label %bb.dm
    i8 13, label %bb.dm
    i8 10, label %bb.dm
    i8 0, label %bb.dm
    i8 12, label %bb.dm
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i205:    ; preds = %bb.dl
  %i.kv = getelementptr inbounds nuw i8, ptr %storemerge.i202, i64 1
  br label %bb.dl, !llvm.loop !9

bb.dm:                                            ; preds = %bb.dl, %bb.dl, %bb.dl, %bb.dl, %bb.dl, %bb.dl
  %i.kw = ptrtoint ptr %storemerge.i202 to i64
  %i.kx = ptrtoint ptr %.0.lcssa.i.i.i201 to i64
  %i.ky = sub i64 %i.kw, %i.kx                    ; 4 uses
  store ptr %i.ay, ptr %8, align 8, !alias.scope !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !23
  store i64 %i.ky, ptr %i.a, align 8, !noalias !23
  %i.kz = icmp ugt i64 %i.ky, 15
  br i1 %i.kz, label %.noexc.i.i204, label %._crit_edge.i.i.i203

.noexc.i.i204:                                    ; preds = %bb.dm
  %i.la = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc206 unwind label %bb.dw ; 2 uses

.noexc206:                                        ; preds = %.noexc.i.i204
  store ptr %i.la, ptr %8, align 8, !alias.scope !23
  %i.lb = load i64, ptr %i.a, align 8, !noalias !23
  store i64 %i.lb, ptr %i.ay, align 8, !alias.scope !23
  br label %._crit_edge.i.i.i203

._crit_edge.i.i.i203:                             ; preds = %.noexc206, %bb.dm
  %i.lc = phi ptr [ %i.la, %.noexc206 ], [ %i.ay, %bb.dm ] ; 2 uses
  switch i64 %i.ky, label %bb.do [
    i64 1, label %bb.dn
    i64 0, label %bb.dp
  ]

bb.dn:                                            ; preds = %._crit_edge.i.i.i203
  %i.ld = load i8, ptr %.0.lcssa.i.i.i201, align 1
  store i8 %i.ld, ptr %i.lc, align 1
  br label %bb.dp

bb.do:                                            ; preds = %._crit_edge.i.i.i203
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lc, ptr align 1 %.0.lcssa.i.i.i201, i64 %i.ky, i1 false)
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn, %._crit_edge.i.i.i203
  %i.le = load i64, ptr %i.a, align 8, !noalias !23 ; 2 uses
  store i64 %i.le, ptr %i.az, align 8, !alias.scope !23
  %i.lf = load ptr, ptr %8, align 8, !alias.scope !23
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.le
  store i8 0, ptr %i.lg, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !23
  %i.lh = load ptr, ptr %i.kq, align 8            ; 6 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.kp, i64 32 ; 2 uses
  %i.lj = icmp eq ptr %i.lh, %i.li
  %i.lk = load ptr, ptr %8, align 8               ; 6 uses
  %i.ll = icmp eq ptr %i.lk, %i.ay                ; 2 uses
  br i1 %i.lj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i214: ; preds = %bb.dp
  br i1 %i.ll, label %bb.dq, label %.thread.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i208: ; preds = %bb.dp
  br i1 %i.ll, label %bb.dq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i209

bb.dq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i214
  %i.lm = load i64, ptr %i.az, align 8            ; 3 uses
  %i.ln = icmp ult i64 %i.lm, 16
  call void @llvm.assume(i1 %i.ln)
  %.not21.i211 = icmp eq ptr %8, %i.kq
  br i1 %.not21.i211, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit216, label %bb.dr, !prof !10

bb.dr:                                            ; preds = %bb.dq
  switch i64 %i.lm, label %bb.dt [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i212
    i64 1, label %bb.ds
  ]

bb.ds:                                            ; preds = %bb.dr
  %i.lo = load i8, ptr %i.lk, align 1
  store i8 %i.lo, ptr %i.lh, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i212

bb.dt:                                            ; preds = %bb.dr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lh, ptr align 1 %i.lk, i64 %i.lm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i212: ; preds = %bb.dt, %bb.ds, %bb.dr
  %i.lp = load i64, ptr %i.az, align 8            ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  store i64 %i.lp, ptr %i.lq, align 8
  %i.lr = load ptr, ptr %i.kq, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lp
  store i8 0, ptr %i.ls, align 1
  %.pre.i213 = load ptr, ptr %8, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit216

.thread.i215:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i214
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  store ptr %i.lk, ptr %i.kq, align 8
  %i.lu = load <2 x i64>, ptr %i.az, align 8
  store <2 x i64> %i.lu, ptr %i.lt, align 8
  br label %bb.dv

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i209: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i208
  %i.lv = load i64, ptr %i.li, align 8
  store ptr %i.lk, ptr %i.kq, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.lx = load <2 x i64>, ptr %i.az, align 8
  store <2 x i64> %i.lx, ptr %i.lw, align 8
  %.not.i210 = icmp eq ptr %i.lh, null
  br i1 %.not.i210, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i209
  store ptr %i.lh, ptr %8, align 8
  store i64 %i.lv, ptr %i.ay, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit216

bb.dv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i209, %.thread.i215
  store ptr %i.ay, ptr %8, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit216: ; preds = %bb.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i212, %bb.du, %bb.dv
  %i.ly = phi ptr [ %.pre.i213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i212 ], [ %i.lh, %bb.du ], [ %i.ay, %bb.dv ], [ %i.lk, %bb.dq ]
  store i64 0, ptr %i.az, align 8
  store i8 0, ptr %i.ly, align 1
  %i.lz = load ptr, ptr %8, align 8               ; 2 uses
  %i.ma = icmp eq ptr %i.lz, %i.ay
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit216
  %i.mb = load i64, ptr %i.ay, align 8
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.mc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit216, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.loopexit311

bb.dw:                                            ; preds = %.noexc.i.i204
  %i.md = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.loopexit.split-lp

.loopexit311:                                     ; preds = %.loopexit310, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, %bb.cl
  %.7 = phi ptr [ %i.jl, %bb.cl ], [ %storemerge.i202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %.0.lcssa.i.i82, %.loopexit310 ] ; 3 uses
  %.1 = phi ptr [ null, %bb.cl ], [ %i.kq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %.0, %.loopexit310 ]
  %20 = ptrtoaddr ptr %.7 to i64
  %i.me = sub i64 %i.an, %20
  %scevgep.i.i220 = getelementptr i8, ptr %.7, i64 %i.me
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dz, %.loopexit311
  %.0.i.i221 = phi ptr [ %.7, %.loopexit311 ], [ %i.mg, %bb.dz ] ; 7 uses
  %i.mf = load i8, ptr %.0.i.i221, align 1
  switch i8 %i.mf, label %bb.dy [
    i8 13, label %.critedge.i.i222
    i8 10, label %.critedge.i.i222
    i8 0, label %.critedge.i.i222
    i8 35, label %.critedge.i.i222
  ]

bb.dy:                                            ; preds = %bb.dx
  %.not22.i.i229 = icmp eq ptr %.0.i.i221, %.0.i.i.i.i.i
  br i1 %.not22.i.i229, label %.critedge.i.i222, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.mg = getelementptr inbounds nuw i8, ptr %.0.i.i221, i64 1
  br label %bb.dx, !llvm.loop !20

.critedge.i.i222:                                 ; preds = %bb.dy, %bb.dx, %bb.dx, %bb.dx, %bb.dx
  %.0.lcssa.i.i223 = phi ptr [ %.0.i.i221, %bb.dx ], [ %.0.i.i221, %bb.dx ], [ %.0.i.i221, %bb.dx ], [ %.0.i.i221, %bb.dx ], [ %scevgep.i.i220, %bb.dy ] ; 3 uses
  %.0.lcssa24.i.i224 = ptrtoaddr ptr %.0.lcssa.i.i223 to i64
  %i.mh = sub i64 %i.an, %.0.lcssa24.i.i224
  %scevgep25.i.i225 = getelementptr i8, ptr %.0.lcssa.i.i223, i64 %i.mh
  br label %bb.ea

bb.ea:                                            ; preds = %bb.ec, %.critedge.i.i222
  %.1.i.i226 = phi ptr [ %.0.lcssa.i.i223, %.critedge.i.i222 ], [ %i.mj, %bb.ec ] ; 4 uses
  %i.mi = load i8, ptr %.1.i.i226, align 1
  switch i8 %i.mi, label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit230.loopexit [
    i8 13, label %bb.eb
    i8 10, label %bb.eb
  ]

bb.eb:                                            ; preds = %bb.ea, %bb.ea
  %.not23.i.i227 = icmp eq ptr %.1.i.i226, %.0.i.i.i.i.i
  br i1 %.not23.i.i227, label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit230.loopexit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.mj = getelementptr inbounds nuw i8, ptr %.1.i.i226, i64 1
  br label %bb.ea, !llvm.loop !21

.loopexit.split-lp:                               ; preds = %.loopexit312, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.dw, %bb.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %bb.aq, %.thread
  %.pn66.pn305 = phi { ptr, i32 } [ %i.bn, %.thread ], [ %i.md, %bb.dw ], [ %i.ie, %bb.cb ], [ %i.ee, %bb.aq ], [ %.pn62.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %lpad.loopexit, %.loopexit312 ], [ %lpad.loopexit314, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp315, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ac) #25
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit237

_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i: ; preds = %.loopexit313, %bb.o
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ac) #25
  %i.mk = load ptr, ptr %i.m, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8
  call void %i.mm(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #24, !inline_history !26
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i
  ret i1 %i.r

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit237: ; preds = %bb.r, %.loopexit.split-lp, %bb.q, %bb.p
  %.pn66.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.p ], [ %i.bl, %bb.q ], [ %i.bm, %bb.r ], [ %.pn66.pn305, %.loopexit.split-lp ]
  %i.mn = load ptr, ptr %i.m, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8
  call void %i.mp(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #24, !inline_history !26
  br label %bb.ed

bb.ed:                                            ; preds = %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit237, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %.pn66.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn66.pn.pn.pn.pn, %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit237 ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ]
  resume { ptr, i32 } %.pn66.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4infoIJRA28_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(28) %1) #24
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 1 dereferenceable(28) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA28_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #24
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA28_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA28_cEERKT_.exit
  %i.d = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %4, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %4, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #25
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #24
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA28_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume
}

declare void @_ZN6Assimp14CommentRemover18RemoveLineCommentsEPKcPcc(ptr noundef, ptr noundef, i8 noundef signext) local_unnamed_addr #1

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp8Q3Shader8LoadSkinERNS0_8SkinDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.c, ptr %3, align 8
  store i16 29810, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 0, ptr %i.e, align 2
  %i.f = load ptr, ptr %1, align 8
  %i.g = load ptr, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.f, ptr noundef nonnull %i.c)
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.a, !inline_history !3 ; 9 uses

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %._crit_edge.i.i
  %i.k = load ptr, ptr %3, align 8                ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.c
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %i.m = load i64, ptr %i.c, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.o = icmp ne ptr %i.j, null                   ; 2 uses
  br i1 %i.o, label %bb.b, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit

bb.a:                                             ; preds = %._crit_edge.i.i
end_hunk_0
begin_hunk_1_@_ZN6Assimp8Q3Shader8LoadSkinERNS0_8SkinDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemE:._crit_edge.i.i
  br i1 %i.ct, label %pred.store.if219, label %pred.store.continue220

pred.store.if219:                                 ; preds = %pred.store.continue218
  store i8 32, ptr %next.gep163, align 1
  br label %pred.store.continue220

pred.store.continue220:                           ; preds = %pred.store.if219, %pred.store.continue218
  %i.cu = extractelement <16 x i1> %i.bt, i64 10
  br i1 %i.cu, label %pred.store.if221, label %pred.store.continue222

pred.store.if221:                                 ; preds = %pred.store.continue220
  store i8 32, ptr %next.gep164, align 1
  br label %pred.store.continue222

pred.store.continue222:                           ; preds = %pred.store.if221, %pred.store.continue220
  %i.cv = extractelement <16 x i1> %i.bt, i64 11
  br i1 %i.cv, label %pred.store.if223, label %pred.store.continue224

pred.store.if223:                                 ; preds = %pred.store.continue222
  store i8 32, ptr %next.gep165, align 1
  br label %pred.store.continue224

pred.store.continue224:                           ; preds = %pred.store.if223, %pred.store.continue222
  %i.cw = extractelement <16 x i1> %i.bt, i64 12
  br i1 %i.cw, label %pred.store.if225, label %pred.store.continue226

pred.store.if225:                                 ; preds = %pred.store.continue224
  store i8 32, ptr %next.gep166, align 1
  br label %pred.store.continue226

pred.store.continue226:                           ; preds = %pred.store.if225, %pred.store.continue224
  %i.cx = extractelement <16 x i1> %i.bt, i64 13
  br i1 %i.cx, label %pred.store.if227, label %pred.store.continue228

pred.store.if227:                                 ; preds = %pred.store.continue226
  store i8 32, ptr %next.gep167, align 1
  br label %pred.store.continue228

pred.store.continue228:                           ; preds = %pred.store.if227, %pred.store.continue226
  %i.cy = extractelement <16 x i1> %i.bt, i64 14
  br i1 %i.cy, label %pred.store.if229, label %pred.store.continue230

pred.store.if229:                                 ; preds = %pred.store.continue228
  store i8 32, ptr %next.gep168, align 1
  br label %pred.store.continue230

pred.store.continue230:                           ; preds = %pred.store.if229, %pred.store.continue228
  %i.cz = extractelement <16 x i1> %i.bt, i64 15
  br i1 %i.cz, label %pred.store.if231, label %pred.store.continue232

pred.store.if231:                                 ; preds = %pred.store.continue230
  store i8 32, ptr %next.gep169, align 1
  br label %pred.store.continue232

pred.store.continue232:                           ; preds = %pred.store.if231, %pred.store.continue230
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %pred.store.continue232
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RKT0_SA_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec234 = and i64 %i.z, 9223372036854775800   ; 3 uses
  %i.db = getelementptr i8, ptr %i.ab, i64 %n.vec234
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue260, %vec.epilog.ph
  %index235 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next261, %pred.store.continue260 ] ; 9 uses
  %next.gep236 = getelementptr i8, ptr %i.ab, i64 %index235 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.ab, i64 %index235
  %next.gep237 = getelementptr i8, ptr %i.dc, i64 1
  %i.dd = getelementptr i8, ptr %i.ab, i64 %index235
  %next.gep238 = getelementptr i8, ptr %i.dd, i64 2
  %i.de = getelementptr i8, ptr %i.ab, i64 %index235
  %next.gep239 = getelementptr i8, ptr %i.de, i64 3
  %i.df = getelementptr i8, ptr %i.ab, i64 %index235
  %next.gep240 = getelementptr i8, ptr %i.df, i64 4
  %i.dg = getelementptr i8, ptr %i.ab, i64 %index235
  %next.gep241 = getelementptr i8, ptr %i.dg, i64 5
  %i.dh = getelementptr i8, ptr %i.ab, i64 %index235
  %next.gep242 = getelementptr i8, ptr %i.dh, i64 6
  %i.di = getelementptr i8, ptr %i.ab, i64 %index235
  %next.gep243 = getelementptr i8, ptr %i.di, i64 7
  %wide.load244 = load <8 x i8>, ptr %next.gep236, align 1
  %i.dj = icmp eq <8 x i8> %wide.load244, splat (i8 44) ; 8 uses
  %i.dk = extractelement <8 x i1> %i.dj, i64 0
  br i1 %i.dk, label %pred.store.if245, label %pred.store.continue246

pred.store.if245:                                 ; preds = %vec.epilog.vector.body
  store i8 32, ptr %next.gep236, align 1
  br label %pred.store.continue246

pred.store.continue246:                           ; preds = %pred.store.if245, %vec.epilog.vector.body
  %i.dl = extractelement <8 x i1> %i.dj, i64 1
  br i1 %i.dl, label %pred.store.if247, label %pred.store.continue248

pred.store.if247:                                 ; preds = %pred.store.continue246
  store i8 32, ptr %next.gep237, align 1
  br label %pred.store.continue248

pred.store.continue248:                           ; preds = %pred.store.if247, %pred.store.continue246
  %i.dm = extractelement <8 x i1> %i.dj, i64 2
  br i1 %i.dm, label %pred.store.if249, label %pred.store.continue250

pred.store.if249:                                 ; preds = %pred.store.continue248
  store i8 32, ptr %next.gep238, align 1
  br label %pred.store.continue250

pred.store.continue250:                           ; preds = %pred.store.if249, %pred.store.continue248
  %i.dn = extractelement <8 x i1> %i.dj, i64 3
  br i1 %i.dn, label %pred.store.if251, label %pred.store.continue252

pred.store.if251:                                 ; preds = %pred.store.continue250
  store i8 32, ptr %next.gep239, align 1
  br label %pred.store.continue252

pred.store.continue252:                           ; preds = %pred.store.if251, %pred.store.continue250
  %i.do = extractelement <8 x i1> %i.dj, i64 4
  br i1 %i.do, label %pred.store.if253, label %pred.store.continue254

pred.store.if253:                                 ; preds = %pred.store.continue252
  store i8 32, ptr %next.gep240, align 1
  br label %pred.store.continue254

pred.store.continue254:                           ; preds = %pred.store.if253, %pred.store.continue252
  %i.dp = extractelement <8 x i1> %i.dj, i64 5
  br i1 %i.dp, label %pred.store.if255, label %pred.store.continue256

pred.store.if255:                                 ; preds = %pred.store.continue254
  store i8 32, ptr %next.gep241, align 1
  br label %pred.store.continue256

pred.store.continue256:                           ; preds = %pred.store.if255, %pred.store.continue254
  %i.dq = extractelement <8 x i1> %i.dj, i64 6
  br i1 %i.dq, label %pred.store.if257, label %pred.store.continue258

pred.store.if257:                                 ; preds = %pred.store.continue256
  store i8 32, ptr %next.gep242, align 1
  br label %pred.store.continue258

pred.store.continue258:                           ; preds = %pred.store.if257, %pred.store.continue256
  %i.dr = extractelement <8 x i1> %i.dj, i64 7
  br i1 %i.dr, label %pred.store.if259, label %pred.store.continue260

pred.store.if259:                                 ; preds = %pred.store.continue258
  store i8 32, ptr %next.gep243, align 1
  br label %pred.store.continue260

pred.store.continue260:                           ; preds = %pred.store.if259, %pred.store.continue258
  %index.next261 = add nuw i64 %index235, 8       ; 2 uses
  %i.ds = icmp eq i64 %index.next261, %n.vec234
  br i1 %i.ds, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %pred.store.continue260
  %cmp.n262 = icmp eq i64 %i.z, %n.vec234
  br i1 %cmp.n262, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RKT0_SA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.02.07.i.ph = phi ptr [ %i.ab, %iter.check ], [ %i.al, %vec.epilog.iter.check ], [ %i.db, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.j
  %.sroa.02.07.i = phi ptr [ %i.dv, %bb.j ], [ %.sroa.02.07.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.dt = load i8, ptr %.sroa.02.07.i, align 1
  %i.du = icmp eq i8 %i.dt, 44
  br i1 %i.du, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  store i8 32, ptr %.sroa.02.07.i, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.dv, %.0.i.i.i.i.i
  br i1 %.not.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RKT0_SA_.exit, label %.lr.ph.i, !llvm.loop !32

_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RKT0_SA_.exit: ; preds = %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h
  %i.dw = load i8, ptr %i.ab, align 1             ; 2 uses
  %.not109 = icmp eq i8 %i.dw, 0
  br i1 %.not109, label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RKT0_SA_.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.ed = phi i8 [ %i.dw, %.lr.ph ], [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ]
  %.0110 = phi ptr [ %i.ab, %.lr.ph ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ] ; 3 uses
  %6 = ptrtoaddr ptr %.0110 to i64
  %i.ee = sub i64 %i.af, %6
  %scevgep.i.i = getelementptr i8, ptr %.0110, i64 %i.ee
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  %i.ef = phi i8 [ %i.ed, %bb.k ], [ %.pre, %bb.n ]
  %.0.i.i = phi ptr [ %.0110, %bb.k ], [ %i.eg, %bb.n ] ; 3 uses
  switch i8 %i.ef, label %bb.o [
    i8 32, label %bb.m
    i8 9, label %bb.m
    i8 13, label %bb.m
    i8 10, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %.not.i.i = icmp eq ptr %.0.i.i, %.0.i.i.i.i.i
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.eg, align 1
  br label %bb.l, !llvm.loop !4

bb.o:                                             ; preds = %bb.m, %bb.l
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.l ], [ %scevgep.i.i, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %7 = ptrtoaddr ptr %.0.lcssa.i.i to i64
  %i.eh = sub i64 %i.af, %7
  %scevgep.i.i.i = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.eh
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  %.0.i.i.i = phi ptr [ %.0.lcssa.i.i, %bb.o ], [ %i.ej, %bb.r ] ; 4 uses
  %i.ei = load i8, ptr %.0.i.i.i, align 1, !noalias !33
  switch i8 %i.ei, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i [
    i8 32, label %bb.q
    i8 9, label %bb.q
    i8 13, label %bb.q
    i8 10, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %.0.i.i.i.i.i
  br i1 %.not.i.i.i, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.p, !llvm.loop !4

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i: ; preds = %bb.q, %bb.p
  %.0.lcssa.i.i.i = phi ptr [ %.0.i.i.i, %bb.p ], [ %scevgep.i.i.i, %bb.q ] ; 4 uses
  br label %bb.s

bb.s:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i
  %storemerge.i = phi ptr [ %.0.lcssa.i.i.i, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i ], [ %i.el, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i ] ; 7 uses
  %i.ek = load i8, ptr %storemerge.i, align 1, !noalias !33
  switch i8 %i.ek, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i [
    i8 32, label %bb.t
    i8 9, label %bb.t
    i8 13, label %bb.t
    i8 10, label %bb.t
    i8 0, label %bb.t
    i8 12, label %bb.t
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i:       ; preds = %bb.s
  %i.el = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 1
  br label %bb.s, !llvm.loop !9

bb.t:                                             ; preds = %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s
  %i.em = ptrtoint ptr %storemerge.i to i64
  %i.en = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.eo = sub i64 %i.em, %i.en                    ; 4 uses
  store ptr %i.dx, ptr %4, align 8, !alias.scope !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !33
  store i64 %i.eo, ptr %i.b, align 8, !noalias !33
  %i.ep = icmp ugt i64 %i.eo, 15
  br i1 %i.ep, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.t
  %i.eq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc43 unwind label %bb.aa  ; 2 uses

.noexc43:                                         ; preds = %.noexc.i.i
  store ptr %i.eq, ptr %4, align 8, !alias.scope !33
  %i.er = load i64, ptr %i.b, align 8, !noalias !33
  store i64 %i.er, ptr %i.dx, align 8, !alias.scope !33
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc43, %bb.t
  %i.es = phi ptr [ %i.eq, %.noexc43 ], [ %i.dx, %bb.t ] ; 2 uses
  switch i64 %i.eo, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %bb.w
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i
  %i.et = load i8, ptr %.0.lcssa.i.i.i, align 1
  store i8 %i.et, ptr %i.es, align 1
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.es, ptr align 1 %.0.lcssa.i.i.i, i64 %i.eo, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i
  %i.eu = load i64, ptr %i.b, align 8, !noalias !33 ; 2 uses
  store i64 %i.eu, ptr %i.dy, align 8, !alias.scope !33
  %i.ev = load ptr, ptr %4, align 8, !alias.scope !33
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.eu
  store i8 0, ptr %i.ew, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !33
  %i.ex = load ptr, ptr %4, align 8               ; 2 uses
  %i.ey = load i64, ptr %i.dy, align 8
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.ey, i64 4)
  %i.ez = call i32 @strncmp(ptr noundef nonnull %i.ex, ptr noundef nonnull @.str.28, i64 noundef %.sroa.speculated) #28
  %.not27 = icmp eq i32 %i.ez, 0
  br i1 %.not27, label %bb.as, label %bb.ac, !llvm.loop !36

bb.x:                                             ; preds = %bb.c, %bb.b
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit73

bb.y:                                             ; preds = %bb.d
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit73

bb.z:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i, %bb.f
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit73

.thread:                                          ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aa:                                            ; preds = %.noexc.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i65

bb.ab:                                            ; preds = %bb.ac
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ac:                                            ; preds = %bb.w
  %i.fg = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #27
          to label %bb.ad unwind label %bb.ab     ; 6 uses

bb.ad:                                            ; preds = %bb.ac
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fi, i8 0, i64 56, i1 false)
  store ptr %i.fi, ptr %i.fh, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  store i64 0, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 64
  store ptr %i.fl, ptr %i.fk, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  %i.fm = load i64, ptr %i.dz, align 8
  %i.fn = add i64 %i.fm, 1
  store i64 %i.fn, ptr %i.dz, align 8
  %i.fo = load ptr, ptr %i.ea, align 8            ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fp, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %8 = ptrtoaddr ptr %storemerge.i to i64
  %i.fq = sub i64 %i.af, %8
  %scevgep.i.i.i46 = getelementptr i8, ptr %storemerge.i, i64 %i.fq
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %.0.i.i.i47 = phi ptr [ %storemerge.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ %i.fs, %bb.ag ] ; 4 uses
  %i.fr = load i8, ptr %.0.i.i.i47, align 1, !noalias !37
  switch i8 %i.fr, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i49 [
    i8 32, label %bb.af
    i8 9, label %bb.af
    i8 13, label %bb.af
    i8 10, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae
  %.not.i.i.i48 = icmp eq ptr %.0.i.i.i47, %.0.i.i.i.i.i
  br i1 %.not.i.i.i48, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i49, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i.i.i47, i64 1
  br label %bb.ae, !llvm.loop !4

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i49: ; preds = %bb.af, %bb.ae
  %.0.lcssa.i.i.i50 = phi ptr [ %.0.i.i.i47, %bb.ae ], [ %scevgep.i.i.i46, %bb.af ] ; 4 uses
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i54, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i49
  %storemerge.i51 = phi ptr [ %.0.lcssa.i.i.i50, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i49 ], [ %i.fu, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i54 ] ; 4 uses
  %i.ft = load i8, ptr %storemerge.i51, align 1, !noalias !37
  switch i8 %i.ft, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i54 [
    i8 32, label %bb.ai
    i8 9, label %bb.ai
    i8 13, label %bb.ai
    i8 10, label %bb.ai
    i8 0, label %bb.ai
    i8 12, label %bb.ai
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i54:     ; preds = %bb.ah
  %i.fu = getelementptr inbounds nuw i8, ptr %storemerge.i51, i64 1
  br label %bb.ah, !llvm.loop !9

bb.ai:                                            ; preds = %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah
  %i.fv = ptrtoint ptr %storemerge.i51 to i64
  %i.fw = ptrtoint ptr %.0.lcssa.i.i.i50 to i64
  %i.fx = sub i64 %i.fv, %i.fw                    ; 4 uses
  store ptr %i.eb, ptr %5, align 8, !alias.scope !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !37
  store i64 %i.fx, ptr %i.a, align 8, !noalias !37
  %i.fy = icmp ugt i64 %i.fx, 15
  br i1 %i.fy, label %.noexc.i.i53, label %._crit_edge.i.i.i52

.noexc.i.i53:                                     ; preds = %bb.ai
  %i.fz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc55 unwind label %bb.au  ; 2 uses

.noexc55:                                         ; preds = %.noexc.i.i53
  store ptr %i.fz, ptr %5, align 8, !alias.scope !37
  %i.ga = load i64, ptr %i.a, align 8, !noalias !37
  store i64 %i.ga, ptr %i.eb, align 8, !alias.scope !37
  br label %._crit_edge.i.i.i52

._crit_edge.i.i.i52:                              ; preds = %.noexc55, %bb.ai
  %i.gb = phi ptr [ %i.fz, %.noexc55 ], [ %i.eb, %bb.ai ] ; 2 uses
  switch i64 %i.fx, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i52
  %i.gc = load i8, ptr %.0.lcssa.i.i.i50, align 1
  store i8 %i.gc, ptr %i.gb, align 1
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i.i52
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gb, ptr align 1 %.0.lcssa.i.i.i50, i64 %i.fx, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i.i52
  %i.gd = load i64, ptr %i.a, align 8, !noalias !37 ; 2 uses
  store i64 %i.gd, ptr %i.ec, align 8, !alias.scope !37
  %i.ge = load ptr, ptr %5, align 8, !alias.scope !37
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gd
  store i8 0, ptr %i.gf, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !37
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fo, i64 48 ; 5 uses
  %i.gh = load ptr, ptr %i.gg, align 8            ; 6 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fo, i64 64 ; 2 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  %i.gk = load ptr, ptr %5, align 8               ; 6 uses
  %i.gl = icmp eq ptr %i.gk, %i.eb                ; 2 uses
  br i1 %i.gj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.al
  br i1 %i.gl, label %bb.am, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.al
  br i1 %i.gl, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.gm = load i64, ptr %i.ec, align 8            ; 3 uses
  %i.gn = icmp ult i64 %i.gm, 16
  call void @llvm.assume(i1 %i.gn)
  %.not21.i = icmp eq ptr %5, %i.gg
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.an, !prof !10

bb.an:                                            ; preds = %bb.am
  switch i64 %i.gm, label %bb.ap [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an
  %i.go = load i8, ptr %i.gk, align 1
  store i8 %i.go, ptr %i.gh, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gh, ptr align 1 %i.gk, i64 %i.gm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ap, %bb.ao, %bb.an
  %i.gp = load i64, ptr %i.ec, align 8            ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fo, i64 56
  store i64 %i.gp, ptr %i.gq, align 8
  %i.gr = load ptr, ptr %i.gg, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gp
  store i8 0, ptr %i.gs, align 1
  %.pre.i = load ptr, ptr %5, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fo, i64 56
  store ptr %i.gk, ptr %i.gg, align 8
  %i.gu = load <2 x i64>, ptr %i.ec, align 8
  store <2 x i64> %i.gu, ptr %i.gt, align 8
  br label %bb.ar

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.gv = load i64, ptr %i.gi, align 8
  store ptr %i.gk, ptr %i.gg, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fo, i64 56
  %i.gx = load <2 x i64>, ptr %i.ec, align 8
  store <2 x i64> %i.gx, ptr %i.gw, align 8
  %.not.i57 = icmp eq ptr %i.gh, null
  br i1 %.not.i57, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.gh, ptr %5, align 8
  store i64 %i.gv, ptr %i.eb, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.eb, ptr %5, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.aq, %bb.ar
  %i.gy = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.gh, %bb.aq ], [ %i.eb, %bb.ar ], [ %i.gk, %bb.am ]
  store i64 0, ptr %i.ec, align 8
  store i8 0, ptr %i.gy, align 1
  %i.gz = load ptr, ptr %5, align 8               ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.eb
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.hb = load i64, ptr %i.eb, align 8
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %.pre111 = load ptr, ptr %4, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %i.hd = phi ptr [ %i.ex, %bb.w ], [ %.pre111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ] ; 2 uses
  %.1 = phi ptr [ %storemerge.i, %bb.w ], [ %storemerge.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ] ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.dx
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.as
  %i.hf = load i64, ptr %i.dx, align 8
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.hh = load i8, ptr %.1, align 1               ; 2 uses
  %.not = icmp eq i8 %i.hh, 0
  br i1 %.not, label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i, label %bb.k

bb.at:                                            ; preds = %bb.ad
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %.noexc.i.i53
  %i.hj = landingpad { ptr, i32 }
          cleanup
end_hunk_1
