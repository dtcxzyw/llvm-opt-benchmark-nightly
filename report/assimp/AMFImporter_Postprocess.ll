inline.NumInlined: 1393
inline.NumDeleted: 732
begin_hunk_0_@_ZN6Assimp11AMFImporter40PostprocessHelper_GetTextureID_Or_CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_:bb.a
  %i.pp = load ptr, ptr %11, align 8              ; 2 uses
  %i.pq = icmp eq ptr %i.pp, %i.fq
  br i1 %i.pq, label %_ZNSt6vectorIP10AMFTextureSaIS1_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.cs
  %i.pr = load i64, ptr %i.fq, align 8
  %i.ps = add i64 %i.pr, 1
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.ps) #23
  br label %_ZNSt6vectorIP10AMFTextureSaIS1_EED2Ev.exit

_ZNSt6vectorIP10AMFTextureSaIS1_EED2Ev.exit:      ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.pt = ptrtoint ptr %.sroa.46.4 to i64
  %i.pu = sub i64 %i.pt, %i.il
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0284.4, i64 noundef %i.pu) #23
  %.pre = load ptr, ptr %5, align 8
  br label %.thread345

bb.ct:                                            ; preds = %bb.co
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cu:                                            ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %"_ZZN6Assimp11AMFImporter40PostprocessHelper_GetTextureID_Or_CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_ENK3$_0clES8_mmh.exit248"
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ct, %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp11AMFImporter11SPP_TextureEEEED2Ev.exit9.i.i, %bb.cu, %bb.bx, %bb.by, %bb.bs
  %.sroa.46.6 = phi ptr [ %.sroa.46.4, %bb.by ], [ %.sroa.46.4, %bb.bx ], [ %.sroa.46.5, %bb.bs ], [ %.sroa.46.4, %bb.cu ], [ %.sroa.46.4, %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp11AMFImporter11SPP_TextureEEEED2Ev.exit9.i.i ], [ %.sroa.46.4, %bb.ct ]
  %.sroa.0284.6 = phi ptr [ %.sroa.0284.4, %bb.by ], [ %.sroa.0284.4, %bb.bx ], [ %.sroa.0284.5, %bb.bs ], [ %.sroa.0284.4, %bb.cu ], [ %.sroa.0284.4, %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp11AMFImporter11SPP_TextureEEEED2Ev.exit9.i.i ], [ %.sroa.0284.4, %bb.ct ] ; 3 uses
  %.pn128.pn = phi { ptr, i32 } [ %i.jj, %bb.by ], [ %i.ji, %bb.bx ], [ %.pn121, %bb.bs ], [ %i.pw, %bb.cu ], [ %i.pg, %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp11AMFImporter11SPP_TextureEEEED2Ev.exit9.i.i ], [ %i.pv, %bb.ct ] ; 2 uses
  %i.px = load ptr, ptr %11, align 8              ; 2 uses
  %i.py = icmp eq ptr %i.px, %i.fq
  br i1 %i.py, label %_ZN6Assimp11AMFImporter11SPP_TextureD2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i252: ; preds = %.body
  %i.pz = load i64, ptr %i.fq, align 8
  %i.qa = add i64 %i.pz, 1
  call void @_ZdlPvm(ptr noundef %i.px, i64 noundef %i.qa) #23
  br label %_ZN6Assimp11AMFImporter11SPP_TextureD2Ev.exit254

_ZN6Assimp11AMFImporter11SPP_TextureD2Ev.exit254: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %.not.i.i.i255 = icmp eq ptr %.sroa.0284.6, null
  br i1 %.not.i.i.i255, label %_ZNSt6vectorIP10AMFTextureSaIS1_EED2Ev.exit256, label %bb.cv

bb.cv:                                            ; preds = %_ZN6Assimp11AMFImporter11SPP_TextureD2Ev.exit254
  %i.qb = ptrtoint ptr %.sroa.46.6 to i64
  %i.qc = ptrtoint ptr %.sroa.0284.6 to i64
  %i.qd = sub i64 %i.qb, %i.qc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0284.6, i64 noundef %i.qd) #23
  br label %_ZNSt6vectorIP10AMFTextureSaIS1_EED2Ev.exit256

_ZNSt6vectorIP10AMFTextureSaIS1_EED2Ev.exit256:   ; preds = %_ZN6Assimp11AMFImporter11SPP_TextureD2Ev.exit254, %bb.cv
  %i.qe = load ptr, ptr %5, align 8               ; 2 uses
  %i.qf = icmp eq ptr %i.qe, %i.da
  br i1 %i.qf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257: ; preds = %_ZNSt6vectorIP10AMFTextureSaIS1_EED2Ev.exit256
  %i.qg = load i64, ptr %i.da, align 8
  %i.qh = add i64 %i.qg, 1
  call void @_ZdlPvm(ptr noundef %i.qe, i64 noundef %i.qh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259

.thread345:                                       ; preds = %bb.ac, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZNSt6vectorIP10AMFTextureSaIS1_EED2Ev.exit
  %i.qi = phi ptr [ %.pre, %_ZNSt6vectorIP10AMFTextureSaIS1_EED2Ev.exit ], [ %i.ei, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %i.ei, %bb.ac ] ; 2 uses
  %.0109376 = phi i64 [ %.0109.lcssa, %_ZNSt6vectorIP10AMFTextureSaIS1_EED2Ev.exit ], [ %.0109379, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %.0109379, %bb.ac ]
  %i.qj = icmp eq ptr %i.qi, %i.da
  br i1 %i.qj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260: ; preds = %.thread345
  %i.qk = load i64, ptr %i.da, align 8
  %i.ql = add i64 %i.qk, 1
  call void @_ZdlPvm(ptr noundef %i.qi, i64 noundef %i.ql) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262: ; preds = %.thread345, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret i64 %.0109376

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259: ; preds = %_ZNSt6vectorIP10AMFTextureSaIS1_EED2Ev.exit256, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
  %.pn128.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191 ], [ %.pn128.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257 ], [ %.pn128.pn, %_ZNSt6vectorIP10AMFTextureSaIS1_EED2Ev.exit256 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %common.resume

bb.cw:                                            ; preds = %bb.bw
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare noundef zeroext i1 @_ZNK6Assimp11AMFImporter16Find_NodeElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN18AMFNodeElementBase5ETypeEPPS9_(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZNK6Assimp11AMFImporter17Throw_ID_NotFoundERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11AMFImporter39PostprocessHelper_SplitFacesByTextureIDERNSt7__cxx114listINS0_12SComplexFaceESaIS3_EEERNS2_IS5_SaIS5_EEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::list.49", align 8 ; 16 uses
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %.not8.i.i = icmp eq ptr %i.a, %2
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listINS0_IN6Assimp11AMFImporter12SComplexFaceESaIS3_EEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.b, %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = load ptr, ptr %.09.i.i, align 8          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.e, %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %i.e = load ptr, ptr %.09.i.i.i.i, align 8      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #23
  br label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i.i.i

_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 48) #23
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !39

_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit.i.i: ; preds = %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i.i.i, %.lr.ph.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 40) #23
  %.not.i.i = icmp eq ptr %i.b, %2
  br i1 %.not.i.i, label %_ZNSt7__cxx114listINS0_IN6Assimp11AMFImporter12SComplexFaceESaIS3_EEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !40

_ZNSt7__cxx114listINS0_IN6Assimp11AMFImporter12SComplexFaceESaIS3_EEESaIS5_EE5clearEv.exit: ; preds = %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit.i.i, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %2, ptr %i.i, align 8
  store ptr %2, ptr %2, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 0, ptr %i.j, align 8
  %i.k = load ptr, ptr %1, align 8                ; 2 uses
  %i.l = icmp eq ptr %i.k, %1
  br i1 %i.l, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx114listINS0_IN6Assimp11AMFImporter12SComplexFaceESaIS3_EEESaIS5_EE5clearEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit
  %i.p = phi ptr [ %i.k, %.preheader ], [ %i.cy, %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %_ZN6Assimp11AMFImporter12SComplexFaceC2ERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 2                  ; 2 uses
  %i.u = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.u, ptr align 4 %i.w, i64 %i.t, i1 false)
  br label %_ZN6Assimp11AMFImporter12SComplexFaceC2ERKS1_.exit

_ZN6Assimp11AMFImporter12SComplexFaceC2ERKS1_.exit: ; preds = %bb.c, %bb.d
  %.sroa.540.0 = phi ptr [ %i.u, %bb.d ], [ null, %bb.c ] ; 4 uses
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.11.16.copyload = load ptr, ptr %.sroa.11.16..sroa_idx, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %3, ptr %i.m, align 8
  store ptr %3, ptr %3, align 8
  store i64 0, ptr %i.n, align 8
  %.not37 = icmp eq ptr %i.p, %1
  br i1 %.not37, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6Assimp11AMFImporter12SComplexFaceC2ERKS1_.exit
  %i.x = icmp eq ptr %.sroa.11.16.copyload, null  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.11.16.copyload, i64 120
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.11.16.copyload, i64 128
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.11.16.copyload, i64 152
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.11.16.copyload, i64 160
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.11.16.copyload, i64 184
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.11.16.copyload, i64 192
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.11.16.copyload, i64 216
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.11.16.copyload, i64 224
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.o
  %.pre = load ptr, ptr %3, align 8               ; 2 uses
  %i.ag = icmp eq ptr %.pre, %3
  br i1 %i.ag, label %bb.r, label %bb.p

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %.sroa.022.038 = phi ptr [ %.sroa.022.1, %bb.o ], [ %i.p, %.lr.ph.preheader ] ; 10 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.022.038, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.022.038, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8            ; 9 uses
  %i.ak = icmp eq ptr %i.aj, null                 ; 2 uses
  %brmerge16.i = or i1 %i.x, %i.ak
  br i1 %brmerge16.i, label %"_ZZN6Assimp11AMFImporter39PostprocessHelper_SplitFacesByTextureIDERNSt7__cxx114listINS0_12SComplexFaceESaIS3_EEERNS2_IS5_SaIS5_EEEENK3$_0clEPK9AMFTexMapSD_.exit", label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 120
  %i.am = load i64, ptr %i.z, align 8             ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 128
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.f, label %"_ZZN6Assimp11AMFImporter39PostprocessHelper_SplitFacesByTextureIDERNSt7__cxx114listINS0_12SComplexFaceESaIS3_EEERNS2_IS5_SaIS5_EEEENK3$_0clEPK9AMFTexMapSD_.exit.thread"

bb.f:                                             ; preds = %bb.e
  %i.aq = icmp eq i64 %i.am, 0
  br i1 %i.aq, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread1.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.f
  %i.ar = load ptr, ptr %i.al, align 8
  %i.as = load ptr, ptr %i.y, align 8
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.as, ptr %i.ar, i64 %i.am)
  %.not.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread1.i, label %"_ZZN6Assimp11AMFImporter39PostprocessHelper_SplitFacesByTextureIDERNSt7__cxx114listINS0_12SComplexFaceESaIS3_EEERNS2_IS5_SaIS5_EEEENK3$_0clEPK9AMFTexMapSD_.exit.thread"

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread1.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 152
  %i.au = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 160
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %bb.g, label %"_ZZN6Assimp11AMFImporter39PostprocessHelper_SplitFacesByTextureIDERNSt7__cxx114listINS0_12SComplexFaceESaIS3_EEERNS2_IS5_SaIS5_EEEENK3$_0clEPK9AMFTexMapSD_.exit.thread"

bb.g:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread1.i
  %i.ay = icmp eq i64 %i.au, 0
  br i1 %i.ay, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit18.thread2.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit18.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit18.i: ; preds = %bb.g
  %i.az = load ptr, ptr %i.at, align 8
  %i.ba = load ptr, ptr %i.aa, align 8
  %bcmp.i.i17.i = call i32 @bcmp(ptr %i.ba, ptr %i.az, i64 %i.au)
  %.not7.i = icmp eq i32 %bcmp.i.i17.i, 0
  br i1 %.not7.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit18.thread2.i, label %"_ZZN6Assimp11AMFImporter39PostprocessHelper_SplitFacesByTextureIDERNSt7__cxx114listINS0_12SComplexFaceESaIS3_EEERNS2_IS5_SaIS5_EEEENK3$_0clEPK9AMFTexMapSD_.exit.thread"

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit18.thread2.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit18.i, %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 184
  %i.bc = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 192
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = icmp eq i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.h, label %"_ZZN6Assimp11AMFImporter39PostprocessHelper_SplitFacesByTextureIDERNSt7__cxx114listINS0_12SComplexFaceESaIS3_EEERNS2_IS5_SaIS5_EEEENK3$_0clEPK9AMFTexMapSD_.exit.thread"

bb.h:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit18.thread2.i
  %i.bg = icmp eq i64 %i.bc, 0
  br i1 %i.bg, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit20.thread3.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit20.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit20.i: ; preds = %bb.h
  %i.bh = load ptr, ptr %i.bb, align 8
  %i.bi = load ptr, ptr %i.ac, align 8
  %bcmp.i.i19.i = call i32 @bcmp(ptr %i.bi, ptr %i.bh, i64 %i.bc)
  %.not8.i = icmp eq i32 %bcmp.i.i19.i, 0
  br i1 %.not8.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit20.thread3.i, label %"_ZZN6Assimp11AMFImporter39PostprocessHelper_SplitFacesByTextureIDERNSt7__cxx114listINS0_12SComplexFaceESaIS3_EEERNS2_IS5_SaIS5_EEEENK3$_0clEPK9AMFTexMapSD_.exit.thread"

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit20.thread3.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit20.i, %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 216
  %i.bk = load i64, ptr %i.af, align 8            ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aj, i64 224
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = icmp eq i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.i, label %"_ZZN6Assimp11AMFImporter39PostprocessHelper_SplitFacesByTextureIDERNSt7__cxx114listINS0_12SComplexFaceESaIS3_EEERNS2_IS5_SaIS5_EEEENK3$_0clEPK9AMFTexMapSD_.exit.thread"

bb.i:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit20.thread3.i
  %i.bo = icmp eq i64 %i.bk, 0
  br i1 %i.bo, label %"_ZZN6Assimp11AMFImporter39PostprocessHelper_SplitFacesByTextureIDERNSt7__cxx114listINS0_12SComplexFaceESaIS3_EEERNS2_IS5_SaIS5_EEEENK3$_0clEPK9AMFTexMapSD_.exit.thread29", label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit22.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit22.i: ; preds = %bb.i
  %i.bp = load ptr, ptr %i.bj, align 8
  %i.bq = load ptr, ptr %i.ae, align 8
  %bcmp.i.i21.i = call i32 @bcmp(ptr %i.bq, ptr %i.bp, i64 %i.bk)
  %bcmp.i.i21.fr.i = freeze i32 %bcmp.i.i21.i
  %.not9.i = icmp eq i32 %bcmp.i.i21.fr.i, 0
  br i1 %.not9.i, label %"_ZZN6Assimp11AMFImporter39PostprocessHelper_SplitFacesByTextureIDERNSt7__cxx114listINS0_12SComplexFaceESaIS3_EEERNS2_IS5_SaIS5_EEEENK3$_0clEPK9AMFTexMapSD_.exit.thread29", label %"_ZZN6Assimp11AMFImporter39PostprocessHelper_SplitFacesByTextureIDERNSt7__cxx114listINS0_12SComplexFaceESaIS3_EEERNS2_IS5_SaIS5_EEEENK3$_0clEPK9AMFTexMapSD_.exit.thread"

"_ZZN6Assimp11AMFImporter39PostprocessHelper_SplitFacesByTextureIDERNSt7__cxx114listINS0_12SComplexFaceESaIS3_EEERNS2_IS5_SaIS5_EEEENK3$_0clEPK9AMFTexMapSD_.exit": ; preds = %.lr.ph
  %.mux.mux.i = and i1 %i.x, %i.ak
  br i1 %.mux.mux.i, label %"_ZZN6Assimp11AMFImporter39PostprocessHelper_SplitFacesByTextureIDERNSt7__cxx114listINS0_12SComplexFaceESaIS3_EEERNS2_IS5_SaIS5_EEEENK3$_0clEPK9AMFTexMapSD_.exit.thread29", label %"_ZZN6Assimp11AMFImporter39PostprocessHelper_SplitFacesByTextureIDERNSt7__cxx114listINS0_12SComplexFaceESaIS3_EEERNS2_IS5_SaIS5_EEEENK3$_0clEPK9AMFTexMapSD_.exit.thread"

"_ZZN6Assimp11AMFImporter39PostprocessHelper_SplitFacesByTextureIDERNSt7__cxx114listINS0_12SComplexFaceESaIS3_EEERNS2_IS5_SaIS5_EEEENK3$_0clEPK9AMFTexMapSD_.exit.thread29": ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit22.i, %bb.i, %"_ZZN6Assimp11AMFImporter39PostprocessHelper_SplitFacesByTextureIDERNSt7__cxx114listINS0_12SComplexFaceESaIS3_EEERNS2_IS5_SaIS5_EEEENK3$_0clEPK9AMFTexMapSD_.exit"
  %i.br = load ptr, ptr %.sroa.022.038, align 8
  %i.bs = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
          to label %.noexc unwind label %bb.n     ; 6 uses

.noexc:                                           ; preds = %"_ZZN6Assimp11AMFImporter39PostprocessHelper_SplitFacesByTextureIDERNSt7__cxx114listINS0_12SComplexFaceESaIS3_EEERNS2_IS5_SaIS5_EEEENK3$_0clEPK9AMFTexMapSD_.exit.thread29"
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  store i32 0, ptr %i.bt, align 8
  %4 = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 3 uses
  store ptr null, ptr %4, align 8
  %i.bu = icmp eq ptr %.sroa.022.038, %i.bs
  br i1 %i.bu, label %bb.l, label %5

5:                                                ; preds = %.noexc
  %6 = load i32, ptr %i.ah, align 8               ; 3 uses
  store i32 %6, ptr %i.bt, align 8
  %.not.i.i.i.i.i.i = icmp eq i32 %6, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %5
  %i.bv = zext i32 %6 to i64
  %i.bw = shl nuw nsw i64 %i.bv, 2                ; 2 uses
  %i.bx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bw) #24
          to label %.noexc.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp11AMFImporter12SComplexFaceEEEED2Ev.exit9.i.i.i ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.j
  store ptr %i.bx, ptr %4, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.022.038, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bx, ptr align 4 %i.bz, i64 %i.bw, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %5
  store ptr null, ptr %4, align 8
  br label %bb.l

_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp11AMFImporter12SComplexFaceEEEED2Ev.exit9.i.i.i: ; preds = %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef 48) #23
  br label %.body

bb.l:                                             ; preds = %bb.k, %.noexc.i.i.i, %.noexc
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.022.038, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %3) #21
  %i.cd = load i64, ptr %i.n, align 8
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %i.n, align 8
  %i.cf = load i64, ptr %i.o, align 8
  %i.cg = add i64 %i.cf, -1
  store i64 %i.cg, ptr %i.o, align 8
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.022.038) #21
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.022.038, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZNSt7__cxx114listIN6Assimp11AMFImporter12SComplexFaceESaIS3_EE5eraseESt20_List_const_iteratorIS3_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.ci) #23
  br label %_ZNSt7__cxx114listIN6Assimp11AMFImporter12SComplexFaceESaIS3_EE5eraseESt20_List_const_iteratorIS3_E.exit

_ZNSt7__cxx114listIN6Assimp11AMFImporter12SComplexFaceESaIS3_EE5eraseESt20_List_const_iteratorIS3_E.exit: ; preds = %bb.l, %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.022.038, i64 noundef 48) #23
  br label %bb.o

bb.n:                                             ; preds = %"_ZZN6Assimp11AMFImporter39PostprocessHelper_SplitFacesByTextureIDERNSt7__cxx114listINS0_12SComplexFaceESaIS3_EEERNS2_IS5_SaIS5_EEEENK3$_0clEPK9AMFTexMapSD_.exit.thread29"
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body

"_ZZN6Assimp11AMFImporter39PostprocessHelper_SplitFacesByTextureIDERNSt7__cxx114listINS0_12SComplexFaceESaIS3_EEERNS2_IS5_SaIS5_EEEENK3$_0clEPK9AMFTexMapSD_.exit.thread": ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit20.thread3.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit22.i, %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit18.thread2.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit18.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread1.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit20.i, %"_ZZN6Assimp11AMFImporter39PostprocessHelper_SplitFacesByTextureIDERNSt7__cxx114listINS0_12SComplexFaceESaIS3_EEERNS2_IS5_SaIS5_EEEENK3$_0clEPK9AMFTexMapSD_.exit"
  %i.cl = load ptr, ptr %.sroa.022.038, align 8
  br label %bb.o

bb.o:                                             ; preds = %"_ZZN6Assimp11AMFImporter39PostprocessHelper_SplitFacesByTextureIDERNSt7__cxx114listINS0_12SComplexFaceESaIS3_EEERNS2_IS5_SaIS5_EEEENK3$_0clEPK9AMFTexMapSD_.exit.thread", %_ZNSt7__cxx114listIN6Assimp11AMFImporter12SComplexFaceESaIS3_EE5eraseESt20_List_const_iteratorIS3_E.exit
  %.sroa.022.1 = phi ptr [ %i.br, %_ZNSt7__cxx114listIN6Assimp11AMFImporter12SComplexFaceESaIS3_EE5eraseESt20_List_const_iteratorIS3_E.exit ], [ %i.cl, %"_ZZN6Assimp11AMFImporter39PostprocessHelper_SplitFacesByTextureIDERNSt7__cxx114listINS0_12SComplexFaceESaIS3_EEERNS2_IS5_SaIS5_EEEENK3$_0clEPK9AMFTexMapSD_.exit.thread" ] ; 2 uses
  %.not = icmp eq ptr %.sroa.022.1, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !41

bb.p:                                             ; preds = %._crit_edge
  %i.cm = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %.noexc11 unwind label %bb.q   ; 3 uses

.noexc11:                                         ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  invoke void @_ZNSt7__cxx114listIN6Assimp11AMFImporter12SComplexFaceESaIS3_EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNSt7__cxx114listINS0_IN6Assimp11AMFImporter12SComplexFaceESaIS3_EEESaIS5_EE9push_backERKS5_.exit unwind label %_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx114listIN6Assimp11AMFImporter12SComplexFaceESaIS5_EEEEEED2Ev.exit9.i.i.i

_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx114listIN6Assimp11AMFImporter12SComplexFaceESaIS5_EEEEEED2Ev.exit9.i.i.i: ; preds = %.noexc11
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef 40) #23
  br label %.body

_ZNSt7__cxx114listINS0_IN6Assimp11AMFImporter12SComplexFaceESaIS3_EEESaIS5_EE9push_backERKS5_.exit: ; preds = %.noexc11
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %2) #21
  %i.cp = load i64, ptr %i.j, align 8
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr %i.j, align 8
  %.pre42 = load ptr, ptr %3, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %_ZNSt7__cxx114listINS0_IN6Assimp11AMFImporter12SComplexFaceESaIS3_EEESaIS5_EE9push_backERKS5_.exit, %._crit_edge
  %i.cs = phi ptr [ %.pre42, %_ZNSt7__cxx114listINS0_IN6Assimp11AMFImporter12SComplexFaceESaIS3_EEESaIS5_EE9push_backERKS5_.exit ], [ %.pre, %._crit_edge ] ; 2 uses
  %.not8.i.i14 = icmp eq ptr %i.cs, %3
  br i1 %.not8.i.i14, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit, label %.lr.ph.i.i15

.lr.ph.i.i15:                                     ; preds = %bb.r, %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i
  %.09.i.i16 = phi ptr [ %i.ct, %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i ], [ %i.cs, %bb.r ] ; 3 uses
  %i.ct = load ptr, ptr %.09.i.i16, align 8       ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.09.i.i16, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i15
  call void @_ZdaPv(ptr noundef nonnull %i.cv) #23
  br label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i

_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i: ; preds = %bb.s, %.lr.ph.i.i15
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i16, i64 noundef 48) #23
  %.not.i.i17 = icmp eq ptr %i.ct, %3
  br i1 %.not.i.i17, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit, label %.lr.ph.i.i15, !llvm.loop !39

_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit: ; preds = %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i, %_ZN6Assimp11AMFImporter12SComplexFaceC2ERKS1_.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.cx = icmp eq ptr %.sroa.540.0, null
  br i1 %i.cx, label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.540.0) #23
  br label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit

_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit:   ; preds = %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit, %bb.t
  %i.cy = load ptr, ptr %1, align 8               ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %1
  br i1 %i.cz, label %.loopexit, label %bb.c, !llvm.loop !42

.loopexit:                                        ; preds = %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit, %_ZNSt7__cxx114listINS0_IN6Assimp11AMFImporter12SComplexFaceESaIS3_EEESaIS5_EE5clearEv.exit
  ret void

.body:                                            ; preds = %bb.q, %_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx114listIN6Assimp11AMFImporter12SComplexFaceESaIS5_EEEEEED2Ev.exit9.i.i.i, %bb.n, %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp11AMFImporter12SComplexFaceEEEED2Ev.exit9.i.i.i
  %.pn = phi { ptr, i32 } [ %i.ca, %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp11AMFImporter12SComplexFaceEEEED2Ev.exit9.i.i.i ], [ %i.ck, %bb.n ], [ %i.cr, %bb.q ], [ %i.co, %_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx114listIN6Assimp11AMFImporter12SComplexFaceESaIS5_EEEEEED2Ev.exit9.i.i.i ]
  call void @_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.da = icmp eq ptr %.sroa.540.0, null
  br i1 %i.da, label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit18, label %bb.u

bb.u:                                             ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %.sroa.540.0) #23
  br label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit18

_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit18: ; preds = %.body, %bb.u
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not8.i = icmp eq ptr %i.a, %0
  br i1 %.not8.i, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EE8_M_clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i
  %.09.i = phi ptr [ %i.b, %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = load ptr, ptr %.09.i, align 8            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.09.i, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #23
  br label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i

_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i, i64 noundef 48) #23
  %.not.i = icmp eq ptr %i.b, %0
  br i1 %.not.i, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EE8_M_clearEv.exit, label %.lr.ph.i, !llvm.loop !39

_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EE8_M_clearEv.exit: ; preds = %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp11AMFImporter23Postprocess_AddMetadataERKSt6vectorIP11AMFMetadataSaIS3_EER6aiNode(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1144) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.aiString, align 4           ; 5 uses
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1136 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #21
  resume { ptr, i32 } %i.h

bb.f:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = ptrtoint ptr %i.a to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 3                   ; 2 uses
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZN10aiMetadata5AllocEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %i.m, ptr %i.o, align 8
  %i.q = and i64 %i.l, 4294967295                 ; 3 uses
  %i.r = mul nuw nsw i64 %i.q, 1028               ; 3 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #24 ; 2 uses
  %i.t = add nsw i64 %i.r, -1028
  %i.u = urem i64 %i.t, 1028
  %i.v = sub nsw i64 %i.r, %i.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.s, i8 0, i64 %i.v, i1 false)
  store ptr %i.s, ptr %i.p, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a
.body.sink.split:                                 ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ %i.z, %bb.e ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #23
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #21
  resume { ptr, i32 } %.pn
}

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #8 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not8.i = icmp eq ptr %i.a, %0
  br i1 %.not8.i, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EE8_M_clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN6Assimp11AMFImporter13SPP_CompositeD2Ev.exit.i
  %.09.i = phi ptr [ %i.b, %_ZN6Assimp11AMFImporter13SPP_CompositeD2Ev.exit.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.b = load ptr, ptr %.09.i, align 8            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.09.i, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.09.i, i64 40 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN6Assimp11AMFImporter13SPP_CompositeD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.g = load i64, ptr %i.e, align 8
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #23
  br label %_ZN6Assimp11AMFImporter13SPP_CompositeD2Ev.exit.i

_ZN6Assimp11AMFImporter13SPP_CompositeD2Ev.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i, i64 noundef 56) #23
  %.not.i = icmp eq ptr %i.b, %0
  br i1 %.not.i, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EE8_M_clearEv.exit, label %.lr.ph.i, !llvm.loop !87

_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EE8_M_clearEv.exit: ; preds = %_ZN6Assimp11AMFImporter13SPP_CompositeD2Ev.exit.i, %bb.a
  ret void
}

declare noundef ptr @_ZN6aiNode8FindNodeEPKc(ptr noundef nonnull align 8 dereferenceable(1144), ptr noundef) local_unnamed_addr #5

declare noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIP8AMFColorSaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPP8AMFColormS1_ET_S3_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPP8AMFColormS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPP8AMFColormS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPP8AMFColormS1_ET_S3_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPP8AMFColormS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPP8AMFColormS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPP8AMFColormS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIP8AMFColorSaIS1_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #22
  unreachable

_ZNKSt6vectorIP8AMFColorSaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #24 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store ptr null, ptr %i.y, align 8
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPP8AMFColormS1_ET_S3_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPP8AMFColormS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPP8AMFColormS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIP8AMFColorSaIS1_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPP8AMFColormS1_ET_S3_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPP8AMFColormS1_ET_S3_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPP8AMFColormS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIP8AMFColorSaIS1_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIP8AMFColorSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPP8AMFColormS1_ET_S3_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIP8AMFColorSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

_ZNSt6vectorIP8AMFColorSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPP8AMFColormS1_ET_S3_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIP8AMFColorSaIS1_EE13_M_deallocateEPS1_m.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIP8AMFColorSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #23
  br label %_ZNSt12_Vector_baseIP8AMFColorSaIS1_EE13_M_deallocateEPS1_m.exit36

_ZNSt12_Vector_baseIP8AMFColorSaIS1_EE13_M_deallocateEPS1_m.exit36: ; preds = %_ZNSt6vectorIP8AMFColorSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPP8AMFColormS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIP8AMFColorSaIS1_EE13_M_deallocateEPS1_m.exit36, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx114listIN6Assimp11AMFImporter12SComplexFaceESaIS3_EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %0, ptr %i.a, align 8
  store ptr %0, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 0, ptr %i.b, align 8
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %.not4.i = icmp eq ptr %i.c, %1
  br i1 %.not4.i, label %_ZNSt7__cxx114listIN6Assimp11AMFImporter12SComplexFaceESaIS3_EE22_M_initialize_dispatchISt20_List_const_iteratorIS3_EEEvT_S9_St12__false_type.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt7__cxx114listIN6Assimp11AMFImporter12SComplexFaceESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit.i
  %.sroa.01.05.i = phi ptr [ %i.q, %_ZNSt7__cxx114listIN6Assimp11AMFImporter12SComplexFaceESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit.i ], [ %i.c, %bb.a ] ; 5 uses
  %i.d = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
          to label %.noexc unwind label %bb.d     ; 6 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i32 0, ptr %i.e, align 8
  %2 = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  store ptr null, ptr %2, align 8
  %i.f = icmp eq ptr %.sroa.01.05.i, %i.d
  br i1 %i.f, label %_ZNSt7__cxx114listIN6Assimp11AMFImporter12SComplexFaceESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit.i, label %3

3:                                                ; preds = %.noexc
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 16
  %5 = load i32, ptr %4, align 8                  ; 3 uses
  store i32 %5, ptr %i.e, align 8
  %.not.i.i.i.i.i.i.i = icmp eq i32 %5, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %3
  %i.g = zext i32 %5 to i64
  %i.h = shl nuw nsw i64 %i.g, 2                  ; 2 uses
  %i.i = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #24
          to label %.noexc.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp11AMFImporter12SComplexFaceEEEED2Ev.exit9.i.i.i.i ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %bb.b
  store ptr %i.i, ptr %2, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr align 4 %i.k, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx114listIN6Assimp11AMFImporter12SComplexFaceESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit.i

bb.c:                                             ; preds = %3
  store ptr null, ptr %2, align 8
  br label %_ZNSt7__cxx114listIN6Assimp11AMFImporter12SComplexFaceESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit.i

_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp11AMFImporter12SComplexFaceEEEED2Ev.exit9.i.i.i.i: ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 48) #23
  br label %.body

_ZNSt7__cxx114listIN6Assimp11AMFImporter12SComplexFaceESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit.i: ; preds = %bb.c, %.noexc.i.i.i.i, %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %0) #21
  %i.o = load i64, ptr %i.b, align 8
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.b, align 8
  %i.q = load ptr, ptr %.sroa.01.05.i, align 8    ; 2 uses
  %.not.i = icmp eq ptr %i.q, %1
  br i1 %.not.i, label %_ZNSt7__cxx114listIN6Assimp11AMFImporter12SComplexFaceESaIS3_EE22_M_initialize_dispatchISt20_List_const_iteratorIS3_EEEvT_S9_St12__false_type.exit, label %.lr.ph.i, !llvm.loop !115

_ZNSt7__cxx114listIN6Assimp11AMFImporter12SComplexFaceESaIS3_EE22_M_initialize_dispatchISt20_List_const_iteratorIS3_EEEvT_S9_St12__false_type.exit: ; preds = %_ZNSt7__cxx114listIN6Assimp11AMFImporter12SComplexFaceESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit.i, %bb.a
  ret void

bb.d:                                             ; preds = %.lr.ph.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp11AMFImporter12SComplexFaceEEEED2Ev.exit9.i.i.i.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.l, %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp11AMFImporter12SComplexFaceEEEED2Ev.exit9.i.i.i.i ]
  tail call void @_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #21
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp11AMFImporter12SPP_MaterialC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.e, ptr %i.a, align 8
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8
  %i.h = load i64, ptr %i.a, align 8
  store i64 %i.h, ptr %i.b, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1
  store i8 %i.j, ptr %i.i, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.o, ptr %i.q, align 8
  store ptr %i.o, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i64 0, ptr %i.r, align 8
  %i.s = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.s, %i.p
  br i1 %.not4.i.i, label %_ZNSt7__cxx114listIP11AMFMetadataSaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %.noexc.i8
  %.sroa.01.05.i.i = phi ptr [ %i.z, %.noexc.i8 ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  %i.t = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %.noexc.i8 unwind label %bb.d  ; 2 uses

.noexc.i8:                                        ; preds = %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = load ptr, ptr %i.u, align 8
  store ptr %i.w, ptr %i.v, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.o) #21
  %i.x = load i64, ptr %i.r, align 8
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.r, align 8
  %i.z = load ptr, ptr %.sroa.01.05.i.i, align 8  ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.p
  br i1 %.not.i.i, label %_ZNSt7__cxx114listIP11AMFMetadataSaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i, !llvm.loop !116

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %i.o, align 8             ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.ab, %i.o
  br i1 %.not8.i.i.i, label %.body, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ac = load ptr, ptr %.09.i.i.i, align 8       ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #23
  %.not.i.i.i = icmp eq ptr %i.ac, %i.o
  br i1 %.not.i.i.i, label %.body, label %.lr.ph.i.i.i, !llvm.loop !88

_ZNSt7__cxx114listIP11AMFMetadataSaIS2_EEC2ERKS4_.exit: ; preds = %.noexc.i8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.af = load ptr, ptr %i.ae, align 8
  store ptr %i.af, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ag, ptr %i.ai, align 8
  store ptr %i.ag, ptr %i.ag, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.aj, align 8
  %i.ak = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not4.i.i9 = icmp eq ptr %i.ak, %i.ah
  br i1 %.not4.i.i9, label %_ZNSt7__cxx114listIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i10

.lr.ph.i.i10:                                     ; preds = %_ZNSt7__cxx114listIP11AMFMetadataSaIS2_EEC2ERKS4_.exit, %.noexc.i12
  %.sroa.01.05.i.i11 = phi ptr [ %i.am, %.noexc.i12 ], [ %i.ak, %_ZNSt7__cxx114listIP11AMFMetadataSaIS2_EEC2ERKS4_.exit ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i11, i64 16
  invoke void @_ZNSt7__cxx114listIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EE9_M_insertIJRKS3_EEEvSt14_List_iteratorIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(40) %i.al)
          to label %.noexc.i12 unwind label %.body14

.noexc.i12:                                       ; preds = %.lr.ph.i.i10
  %i.am = load ptr, ptr %.sroa.01.05.i.i11, align 8 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.am, %i.ah
  br i1 %.not.i.i13, label %_ZNSt7__cxx114listIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i10, !llvm.loop !117

.body14:                                          ; preds = %.lr.ph.i.i10
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ag) #21
  %i.ao = load ptr, ptr %i.o, align 8             ; 2 uses
  %.not8.i.i = icmp eq ptr %i.ao, %i.o
  br i1 %.not8.i.i, label %.body, label %.lr.ph.i.i16

_ZNSt7__cxx114listIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EEC2ERKS5_.exit: ; preds = %.noexc.i12, %_ZNSt7__cxx114listIP11AMFMetadataSaIS2_EEC2ERKS4_.exit
  ret void

.lr.ph.i.i16:                                     ; preds = %.body14, %.lr.ph.i.i16
  %.09.i.i = phi ptr [ %i.ap, %.lr.ph.i.i16 ], [ %i.ao, %.body14 ] ; 2 uses
  %i.ap = load ptr, ptr %.09.i.i, align 8         ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #23
  %.not.i.i17 = icmp eq ptr %i.ap, %i.o
  br i1 %.not.i.i17, label %.body, label %.lr.ph.i.i16, !llvm.loop !88

.body:                                            ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i16, %.body14, %bb.d
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.d ], [ %i.an, %.body14 ], [ %i.an, %.lr.ph.i.i16 ], [ %i.aa, %.lr.ph.i.i.i ]
  %i.aq = load ptr, ptr %0, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.b
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.as = load i64, ptr %i.b, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx114listIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EE9_M_insertIJRKS3_EEEvSt14_List_iteratorIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %2, align 8
  store ptr %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.j, ptr %i.a, align 8
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp11AMFImporter13SPP_CompositeEEEED2Ev.exit9.i ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i.i
  store ptr %i.l, ptr %i.e, align 8
end_hunk_1
