Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/NFFLoader?download=true
inline.NumInlined: 2277
inline.NumDeleted: 734
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
loop-unroll.NumUnrolledNotLatch: 7
begin_hunk_0_@_ZN6Assimp11NFFImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %.0.lcssa.i.i2199 = phi ptr [ %.0.i.i2196, %bb.adg ], [ %scevgep.i.i2195, %bb.adh ] ; 3 uses
  store ptr %.0.lcssa.i.i2199, ptr %i.j, align 8
  %i.dcb = load i8, ptr %.0.lcssa.i.i2199, align 1
  switch i8 %i.dcb, label %_ZN6Assimp9IsLineEndIcEEbT_.exit2201 [
    i8 13, label %_ZN6Assimp9IsLineEndIcEEbT_.exit2201.thread
    i8 10, label %_ZN6Assimp9IsLineEndIcEEbT_.exit2201.thread
    i8 0, label %_ZN6Assimp9IsLineEndIcEEbT_.exit2201.thread
    i8 12, label %_ZN6Assimp9IsLineEndIcEEbT_.exit2201.thread
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit2201:             ; preds = %.critedge.i.i2198
  %i.dcc = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i2199, ptr noundef nonnull align 4 dereferenceable(4) %i.ai, i1 noundef zeroext true)
          to label %bb.adj unwind label %.loopexit2973

bb.adj:                                           ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit2201
  store ptr %i.dcc, ptr %i.j, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit2201.thread

_ZN6Assimp9IsLineEndIcEEbT_.exit2201.thread:      ; preds = %.critedge.i.i2198, %.critedge.i.i2198, %.critedge.i.i2198, %.critedge.i.i2198, %bb.adj
  %i.dcd = invoke noundef zeroext i1 @_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.i)
          to label %bb.adk unwind label %.loopexit2973

bb.adk:                                           ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit2201.thread
  br i1 %i.dcd, label %.preheader5958, label %bb.adl

bb.adl:                                           ; preds = %bb.adk
  %i.dce = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.adm unwind label %.loopexit.split-lp2974

bb.adm:                                           ; preds = %bb.adl
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.dce, ptr noundef nonnull @.str.56)
          to label %.thread2862 unwind label %.loopexit.split-lp2974

.thread2862:                                      ; preds = %bb.adm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  br label %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit1475.thread

.preheader5958:                                   ; preds = %bb.adk, %bb.adn
  %.0.i.i2203.idx = phi i64 [ %.0.i.i2203.add, %bb.adn ], [ 0, %bb.adk ] ; 3 uses
  %.0.i.i2203.ptr = getelementptr inbounds nuw i8, ptr %i.i, i64 %.0.i.i2203.idx
  %i.dcf = load i8, ptr %.0.i.i2203.ptr, align 1  ; 2 uses
  switch i8 %i.dcf, label %.critedge.i.i2205 [
    i8 32, label %bb.adn
    i8 9, label %bb.adn
  ]

bb.adn:                                           ; preds = %.preheader5958, %.preheader5958
  %.0.i.i2203.add = add nuw nsw i64 %.0.i.i2203.idx, 1
  br label %.preheader5958, !llvm.loop !2

.critedge.i.i2205:                                ; preds = %.preheader5958
  %.0.i.i2203.ptr.le = getelementptr inbounds nuw i8, ptr %i.i, i64 %.0.i.i2203.idx ; 6 uses
  store ptr %.0.i.i2203.ptr.le, ptr %i.j, align 8
  switch i8 %i.dcf, label %_ZN6Assimp9IsLineEndIcEEbT_.exit2208 [
    i8 13, label %_ZN6Assimp9IsLineEndIcEEbT_.exit2208.thread
    i8 10, label %_ZN6Assimp9IsLineEndIcEEbT_.exit2208.thread
    i8 0, label %_ZN6Assimp9IsLineEndIcEEbT_.exit2208.thread
    i8 12, label %_ZN6Assimp9IsLineEndIcEEbT_.exit2208.thread
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit2208:             ; preds = %.critedge.i.i2205
  %i.dcg = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.i.i2203.ptr.le, ptr noundef nonnull align 4 dereferenceable(4) %40, i1 noundef zeroext true)
          to label %bb.ado unwind label %.loopexit2973 ; 2 uses

bb.ado:                                           ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit2208
  store ptr %i.dcg, ptr %i.j, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit2208.thread

_ZN6Assimp9IsLineEndIcEEbT_.exit2208.thread:      ; preds = %.critedge.i.i2205, %.critedge.i.i2205, %.critedge.i.i2205, %.critedge.i.i2205, %bb.ado
  %i.dch = phi ptr [ %.0.i.i2203.ptr.le, %.critedge.i.i2205 ], [ %.0.i.i2203.ptr.le, %.critedge.i.i2205 ], [ %.0.i.i2203.ptr.le, %.critedge.i.i2205 ], [ %.0.i.i2203.ptr.le, %.critedge.i.i2205 ], [ %i.dcg, %bb.ado ] ; 3 uses
  %i.dci = ptrtoaddr ptr %i.dch to i64
  %i.dcj = sub i64 %i.dd, %i.dci
  %scevgep.i.i2210 = getelementptr i8, ptr %i.dch, i64 %i.dcj
  br label %bb.adp

bb.adp:                                           ; preds = %bb.adr, %_ZN6Assimp9IsLineEndIcEEbT_.exit2208.thread
  %.0.i.i2211 = phi ptr [ %i.dch, %_ZN6Assimp9IsLineEndIcEEbT_.exit2208.thread ], [ %i.dcl, %bb.adr ] ; 4 uses
  %i.dck = load i8, ptr %.0.i.i2211, align 1
  switch i8 %i.dck, label %.critedge.i.i2213 [
    i8 32, label %bb.adq
    i8 9, label %bb.adq
  ]

bb.adq:                                           ; preds = %bb.adp, %bb.adp
  %.not.i.i2212 = icmp eq ptr %.0.i.i2211, %i.bg
  br i1 %.not.i.i2212, label %.critedge.i.i2213, label %bb.adr

bb.adr:                                           ; preds = %bb.adq
  %i.dcl = getelementptr inbounds nuw i8, ptr %.0.i.i2211, i64 1
  br label %bb.adp, !llvm.loop !2

.critedge.i.i2213:                                ; preds = %bb.adq, %bb.adp
  %.0.lcssa.i.i2214 = phi ptr [ %.0.i.i2211, %bb.adp ], [ %scevgep.i.i2210, %bb.adq ] ; 7 uses
  store ptr %.0.lcssa.i.i2214, ptr %i.j, align 8
  %i.dcm = load i8, ptr %.0.lcssa.i.i2214, align 1
  switch i8 %i.dcm, label %_ZN6Assimp9IsLineEndIcEEbT_.exit2216 [
    i8 13, label %_ZN6Assimp9IsLineEndIcEEbT_.exit2216.thread
    i8 10, label %_ZN6Assimp9IsLineEndIcEEbT_.exit2216.thread
    i8 0, label %_ZN6Assimp9IsLineEndIcEEbT_.exit2216.thread
    i8 12, label %_ZN6Assimp9IsLineEndIcEEbT_.exit2216.thread
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit2216:             ; preds = %.critedge.i.i2213
  %i.dcn = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i2214, ptr noundef nonnull align 4 dereferenceable(4) %i.db, i1 noundef zeroext true)
          to label %bb.ads unwind label %.loopexit2973 ; 2 uses

bb.ads:                                           ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit2216
  store ptr %i.dcn, ptr %i.j, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit2216.thread

_ZN6Assimp9IsLineEndIcEEbT_.exit2216.thread:      ; preds = %.critedge.i.i2213, %.critedge.i.i2213, %.critedge.i.i2213, %.critedge.i.i2213, %bb.ads
  %i.dco = phi ptr [ %.0.lcssa.i.i2214, %.critedge.i.i2213 ], [ %.0.lcssa.i.i2214, %.critedge.i.i2213 ], [ %.0.lcssa.i.i2214, %.critedge.i.i2213 ], [ %.0.lcssa.i.i2214, %.critedge.i.i2213 ], [ %i.dcn, %bb.ads ] ; 3 uses
  %i.dcp = ptrtoaddr ptr %i.dco to i64
  %i.dcq = sub i64 %i.dd, %i.dcp
  %scevgep.i.i2218 = getelementptr i8, ptr %i.dco, i64 %i.dcq
  br label %bb.adt

bb.adt:                                           ; preds = %bb.adv, %_ZN6Assimp9IsLineEndIcEEbT_.exit2216.thread
  %.0.i.i2219 = phi ptr [ %i.dco, %_ZN6Assimp9IsLineEndIcEEbT_.exit2216.thread ], [ %i.dcs, %bb.adv ] ; 4 uses
  %i.dcr = load i8, ptr %.0.i.i2219, align 1
  switch i8 %i.dcr, label %.critedge.i.i2221 [
    i8 32, label %bb.adu
    i8 9, label %bb.adu
  ]

bb.adu:                                           ; preds = %bb.adt, %bb.adt
  %.not.i.i2220 = icmp eq ptr %.0.i.i2219, %i.bg
  br i1 %.not.i.i2220, label %.critedge.i.i2221, label %bb.adv

bb.adv:                                           ; preds = %bb.adu
  %i.dcs = getelementptr inbounds nuw i8, ptr %.0.i.i2219, i64 1
  br label %bb.adt, !llvm.loop !2

.critedge.i.i2221:                                ; preds = %bb.adu, %bb.adt
  %.0.lcssa.i.i2222 = phi ptr [ %.0.i.i2219, %bb.adt ], [ %scevgep.i.i2218, %bb.adu ] ; 7 uses
  store ptr %.0.lcssa.i.i2222, ptr %i.j, align 8
  %i.dct = load i8, ptr %.0.lcssa.i.i2222, align 1
  switch i8 %i.dct, label %_ZN6Assimp9IsLineEndIcEEbT_.exit2224 [
    i8 13, label %_ZN6Assimp9IsLineEndIcEEbT_.exit2224.thread
    i8 10, label %_ZN6Assimp9IsLineEndIcEEbT_.exit2224.thread
    i8 0, label %_ZN6Assimp9IsLineEndIcEEbT_.exit2224.thread
    i8 12, label %_ZN6Assimp9IsLineEndIcEEbT_.exit2224.thread
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit2224:             ; preds = %.critedge.i.i2221
  %i.dcu = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i2222, ptr noundef nonnull align 4 dereferenceable(4) %i.dc, i1 noundef zeroext true)
          to label %bb.adw unwind label %.loopexit2973 ; 2 uses

bb.adw:                                           ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit2224
  store ptr %i.dcu, ptr %i.j, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit2224.thread

_ZN6Assimp9IsLineEndIcEEbT_.exit2224.thread:      ; preds = %.critedge.i.i2221, %.critedge.i.i2221, %.critedge.i.i2221, %.critedge.i.i2221, %bb.adw
  %i.dcv = phi ptr [ %.0.lcssa.i.i2222, %.critedge.i.i2221 ], [ %.0.lcssa.i.i2222, %.critedge.i.i2221 ], [ %.0.lcssa.i.i2222, %.critedge.i.i2221 ], [ %.0.lcssa.i.i2222, %.critedge.i.i2221 ], [ %i.dcu, %bb.adw ] ; 3 uses
  %i.dcw = ptrtoaddr ptr %i.dcv to i64
  %i.dcx = sub i64 %i.dd, %i.dcw
  %scevgep.i.i2226 = getelementptr i8, ptr %i.dcv, i64 %i.dcx
  br label %bb.adx

bb.adx:                                           ; preds = %bb.adz, %_ZN6Assimp9IsLineEndIcEEbT_.exit2224.thread
  %.0.i.i2227 = phi ptr [ %i.dcv, %_ZN6Assimp9IsLineEndIcEEbT_.exit2224.thread ], [ %i.dcz, %bb.adz ] ; 4 uses
  %i.dcy = load i8, ptr %.0.i.i2227, align 1
  switch i8 %i.dcy, label %.critedge.i.i2229 [
    i8 32, label %bb.ady
    i8 9, label %bb.ady
  ]

bb.ady:                                           ; preds = %bb.adx, %bb.adx
  %.not.i.i2228 = icmp eq ptr %.0.i.i2227, %i.bg
  br i1 %.not.i.i2228, label %.critedge.i.i2229, label %bb.adz

bb.adz:                                           ; preds = %bb.ady
  %i.dcz = getelementptr inbounds nuw i8, ptr %.0.i.i2227, i64 1
  br label %bb.adx, !llvm.loop !2

.critedge.i.i2229:                                ; preds = %bb.ady, %bb.adx
  %.0.lcssa.i.i2230 = phi ptr [ %.0.i.i2227, %bb.adx ], [ %scevgep.i.i2226, %bb.ady ] ; 3 uses
  store ptr %.0.lcssa.i.i2230, ptr %i.j, align 8
  %i.dda = load i8, ptr %.0.lcssa.i.i2230, align 1
  switch i8 %i.dda, label %_ZN6Assimp9IsLineEndIcEEbT_.exit2232 [
    i8 13, label %_ZN6Assimp9IsLineEndIcEEbT_.exit2232.thread
    i8 10, label %_ZN6Assimp9IsLineEndIcEEbT_.exit2232.thread
    i8 0, label %_ZN6Assimp9IsLineEndIcEEbT_.exit2232.thread
    i8 12, label %_ZN6Assimp9IsLineEndIcEEbT_.exit2232.thread
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit2232:             ; preds = %.critedge.i.i2229
  %i.ddb = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i2230, ptr noundef nonnull align 4 dereferenceable(4) %i.aj, i1 noundef zeroext true)
          to label %bb.aea unwind label %.loopexit2973

bb.aea:                                           ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit2232
  store ptr %i.ddb, ptr %i.j, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit2232.thread

_ZN6Assimp9IsLineEndIcEEbT_.exit2232.thread:      ; preds = %.critedge.i.i2229, %.critedge.i.i2229, %.critedge.i.i2229, %.critedge.i.i2229, %bb.aea
  %i.ddc = load <2 x float>, ptr %40, align 8
  %i.ddd = load <2 x float>, ptr %39, align 8
  %i.dde = fsub <2 x float> %i.ddc, %i.ddd        ; 5 uses
  %i.ddf = load float, ptr %i.dc, align 8
  %i.ddg = load float, ptr %i.da, align 8
  %i.ddh = fsub float %i.ddf, %i.ddg              ; 4 uses
  %i.ddi = getelementptr inbounds i8, ptr %i.dav, i64 -272
  store <2 x float> %i.dde, ptr %i.ddi, align 8
  %.sroa.5193.0..sroa_idx = getelementptr inbounds i8, ptr %i.dav, i64 -264
  store float %i.ddh, ptr %.sroa.5193.0..sroa_idx, align 8
  %i.ddj = extractelement <2 x float> %i.dde, i64 0 ; 2 uses
  %i.ddk = fmul float %i.ddh, 5.000000e-01
  %i.ddl = fmul <2 x float> %i.dde, splat (float 5.000000e-01)
  %i.ddm = load <2 x float>, ptr %39, align 8
  %i.ddn = fadd <2 x float> %i.ddl, %i.ddm
  %i.ddo = load float, ptr %i.da, align 8
  %i.ddp = fadd float %i.ddk, %i.ddo
  %i.ddq = getelementptr inbounds i8, ptr %i.dav, i64 -296
  store <2 x float> %i.ddn, ptr %i.ddq, align 8
  %.sroa.5187.0..sroa_idx = getelementptr inbounds i8, ptr %i.dav, i64 -288
  store float %i.ddp, ptr %.sroa.5187.0..sroa_idx, align 8
  %foldExtExtBinop = fmul <2 x float> %i.dde, %i.dde
  %i.ddr = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.dds = call float @llvm.fmuladd.f32(float %i.ddj, float %i.ddj, float %i.ddr)
  %i.ddt = call noundef float @llvm.fmuladd.f32(float %i.ddh, float %i.ddh, float %i.dds)
  %sqrt.i = call noundef float @sqrtf(float noundef %i.ddt) #27 ; 3 uses
  %i.ddu = fcmp olt float %sqrt.i, f0x3C23D70A
  br i1 %i.ddu, label %bb.aeb, label %_ZN10aiVector3tIfEdVEf.exit

bb.aeb:                                           ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit2232.thread
  %i.ddv = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.aec unwind label %.loopexit2983

bb.aec:                                           ; preds = %bb.aeb
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ddv, ptr noundef nonnull @.str.57)
          to label %bb.aei unwind label %.loopexit2983, !llvm.loop !78

.loopexit2983:                                    ; preds = %bb.aeb, %bb.aec
  %lpad.loopexit2985 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aej

.loopexit.split-lp2984:                           ; preds = %_ZN6Assimp11integer_powEjj.exit
  %lpad.loopexit.split-lp2986 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aej

_ZN10aiVector3tIfEdVEf.exit:                      ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit2232.thread
  %i.ddw = getelementptr inbounds i8, ptr %i.dav, i64 -272 ; 2 uses
  %.sroa.5193.0..sroa_idx.le = getelementptr inbounds i8, ptr %i.dav, i64 -264 ; 2 uses
  %i.ddx = fdiv float 1.000000e+00, %sqrt.i       ; 2 uses
  %46 = load <2 x float>, ptr %i.ddw, align 4
  %i.ddy = insertelement <2 x float> poison, float %i.ddx, i64 0
  %i.ddz = shufflevector <2 x float> %i.ddy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dea = fmul <2 x float> %i.ddz, %46
  store <2 x float> %i.dea, ptr %i.ddw, align 4
  %47 = load float, ptr %.sroa.5193.0..sroa_idx.le, align 4
  %i.deb = fmul float %i.ddx, %47
  store float %i.deb, ptr %.sroa.5193.0..sroa_idx.le, align 4
  %i.dec = load float, ptr %i.ai, align 4
  %i.ded = load float, ptr %i.aj, align 4
  %.not.i2241 = icmp eq i32 %.0644.ph4089, 0
  br i1 %.not.i2241, label %_ZN6Assimp11integer_powEjj.exit, label %.lr.ph.i2242.preheader

.lr.ph.i2242.preheader:                           ; preds = %_ZN10aiVector3tIfEdVEf.exit
  %i.dee = add i32 %.0644.ph4089, -1
  %xtraiter = and i32 %.0644.ph4089, 7            ; 3 uses
  %i.def = icmp ult i32 %i.dee, 7
  br i1 %i.def, label %.lr.ph.i2242.epil.preheader, label %.lr.ph.i2242.preheader.new

.lr.ph.i2242.preheader.new:                       ; preds = %.lr.ph.i2242.preheader
  %unroll_iter = and i32 %.0644.ph4089, -8
  br label %.lr.ph.i2242

.lr.ph.i2242:                                     ; preds = %.lr.ph.i2242, %.lr.ph.i2242.preheader.new
  %.067.i = phi i32 [ 1, %.lr.ph.i2242.preheader.new ], [ %i.deg, %.lr.ph.i2242 ]
  %niter = phi i32 [ 0, %.lr.ph.i2242.preheader.new ], [ %niter.next.7, %.lr.ph.i2242 ]
  %i.deg = shl i32 %.067.i, 16                    ; 3 uses
  %niter.next.7 = add nuw i32 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6Assimp11integer_powEjj.exit.loopexit.unr-lcssa, label %.lr.ph.i2242, !llvm.loop !79

_ZN6Assimp11integer_powEjj.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i2242
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6Assimp11integer_powEjj.exit, label %.lr.ph.i2242.epil.preheader

.lr.ph.i2242.epil.preheader:                      ; preds = %_ZN6Assimp11integer_powEjj.exit.loopexit.unr-lcssa, %.lr.ph.i2242.preheader
  %.067.i.epil.init = phi i32 [ 1, %.lr.ph.i2242.preheader ], [ %i.deg, %_ZN6Assimp11integer_powEjj.exit.loopexit.unr-lcssa ]
  %lcmp.mod7309 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod7309)
  br label %.lr.ph.i2242.epil

.lr.ph.i2242.epil:                                ; preds = %.lr.ph.i2242.epil, %.lr.ph.i2242.epil.preheader
  %.067.i.epil = phi i32 [ %i.deh, %.lr.ph.i2242.epil ], [ %.067.i.epil.init, %.lr.ph.i2242.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i2242.epil ], [ 0, %.lr.ph.i2242.epil.preheader ]
  %i.deh = shl i32 %.067.i.epil, 2                ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6Assimp11integer_powEjj.exit, label %.lr.ph.i2242.epil, !llvm.loop !80

_ZN6Assimp11integer_powEjj.exit:                  ; preds = %_ZN6Assimp11integer_powEjj.exit.loopexit.unr-lcssa, %.lr.ph.i2242.epil, %_ZN10aiVector3tIfEdVEf.exit
  %.06.lcssa.i = phi i32 [ 1, %_ZN10aiVector3tIfEdVEf.exit ], [ %i.deg, %_ZN6Assimp11integer_powEjj.exit.loopexit.unr-lcssa ], [ %i.deh, %.lr.ph.i2242.epil ]
  %i.dei = getelementptr inbounds i8, ptr %i.dav, i64 -128 ; 2 uses
  invoke void @_ZN6Assimp14StandardShapes8MakeConeEfffjRSt6vectorI10aiVector3tIfESaIS3_EEb(float noundef %sqrt.i, float noundef %i.dec, float noundef %i.ded, i32 noundef %.06.lcssa.i, ptr noundef nonnull align 8 dereferenceable(24) %i.dei, i1 noundef zeroext false)
          to label %bb.aed unwind label %.loopexit.split-lp2984

bb.aed:                                           ; preds = %_ZN6Assimp11integer_powEjj.exit
  %i.dej = getelementptr inbounds i8, ptr %i.dav, i64 -56
  %i.dek = getelementptr inbounds i8, ptr %i.dav, i64 -120
  %i.del = load ptr, ptr %i.dek, align 8
  %i.dem = load ptr, ptr %i.dei, align 8
  %i.den = ptrtoint ptr %i.del to i64
  %i.deo = ptrtoint ptr %i.dem to i64
  %i.dep = sub i64 %i.den, %i.deo
  %i.deq = sdiv exact i64 %i.dep, 12
  %i.der = udiv i64 %i.deq, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #27
  store i32 3, ptr %i.ak, align 4
  invoke void @_ZNSt6vectorIjSaIjEE6resizeEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.dej, i64 noundef %i.der, ptr noundef nonnull align 4 dereferenceable(4) %i.ak)
          to label %bb.aee unwind label %bb.aeg

bb.aee:                                           ; preds = %bb.aed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #27
  %i.des = load float, ptr %i.ai, align 4
  %i.det = load float, ptr %i.aj, align 4
  %i.deu = fcmp une float %i.des, %i.det
  %i.dev = getelementptr inbounds i8, ptr %i.dav, i64 -260 ; 2 uses
  br i1 %i.deu, label %bb.aef, label %bb.aeh

bb.aef:                                           ; preds = %bb.aee
  %i.dew = add i32 %.0654.ph4083, 1
  %i.dex = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dev, i64 noundef 128, ptr noundef nonnull @.str.58, i32 noundef %.0654.ph4083) #27 ; 0 uses
  br label %.thread2858

bb.aeg:                                           ; preds = %bb.aed
  %i.dey = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #27
  br label %bb.aej

bb.aeh:                                           ; preds = %bb.aee
  %i.dez = add i32 %.0648.ph4085, 1
  %i.dfa = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dev, i64 noundef 128, ptr noundef nonnull @.str.59, i32 noundef %.0648.ph4085) #27 ; 0 uses
  br label %.thread2858

.thread2858:                                      ; preds = %bb.aeh, %bb.aef
  %.3657.ph = phi i32 [ %.0654.ph4083, %bb.aeh ], [ %i.dew, %bb.aef ]
  %.3651.ph = phi i32 [ %i.dez, %bb.aeh ], [ %.0648.ph4085, %bb.aef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.aei:                                           ; preds = %bb.aec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  %i.dfb = load ptr, ptr %i.h, align 8            ; 2 uses
  %i.dfc = load i8, ptr %i.dfb, align 1           ; 2 uses
  %.not2893 = icmp eq i8 %i.dfc, 0
  br i1 %.not2893, label %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit1475.thread, label %.backedge

bb.aej:                                           ; preds = %.loopexit2983, %.loopexit.split-lp2984, %.loopexit2973, %.loopexit.split-lp2974, %bb.aeg
  %.pn722.pn = phi { ptr, i32 } [ %i.dey, %bb.aeg ], [ %lpad.loopexit.split-lp2976, %.loopexit.split-lp2974 ], [ %lpad.loopexit2975, %.loopexit2973 ], [ %lpad.loopexit2985, %.loopexit2983 ], [ %lpad.loopexit.split-lp2986, %.loopexit.split-lp2984 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  br label %bb.alj

bb.aek:                                           ; preds = %bb.ach, %bb.aci
  %rhsv = load i32, ptr %i.i, align 16
  switch i32 %rhsv, label %sub_02941 [
    i32 1936942452, label %bb.ael
    i32 1836020326, label %bb.aeq
  ]

bb.ael:                                           ; preds = %bb.aek
  %i.dfd = load i8, ptr %i.ex, align 4            ; 2 uses
  switch i8 %i.dfd, label %sub_02941 [
    i8 32, label %bb.aem
    i8 9, label %bb.aem
    i8 13, label %bb.aem
    i8 10, label %bb.aem
    i8 0, label %bb.aem
    i8 12, label %bb.aem
  ]

bb.aem:                                           ; preds = %bb.ael, %bb.ael, %bb.ael, %bb.ael, %bb.ael, %bb.ael
  %.not11.i2246 = icmp eq i8 %i.dfd, 0
  %storemerge.i2247 = select i1 %.not11.i2246, ptr %i.ex, ptr %i.ey ; 3 uses
  %i.dfe = ptrtoaddr ptr %storemerge.i2247 to i64
  %i.dff = sub i64 %i.dd, %i.dfe
  %scevgep.i.i2249 = getelementptr i8, ptr %storemerge.i2247, i64 %i.dff
  br label %bb.aen

bb.aen:                                           ; preds = %bb.aep, %bb.aem
  %.0.i.i2250 = phi ptr [ %storemerge.i2247, %bb.aem ], [ %i.dfh, %bb.aep ] ; 4 uses
  %i.dfg = load i8, ptr %.0.i.i2250, align 1
  switch i8 %i.dfg, label %.critedge.i.i2252 [
    i8 32, label %bb.aeo
    i8 9, label %bb.aeo
  ]

bb.aeo:                                           ; preds = %bb.aen, %bb.aen
  %.not.i.i2251 = icmp eq ptr %.0.i.i2250, %i.bg
  br i1 %.not.i.i2251, label %.critedge.i.i2252, label %bb.aep

bb.aep:                                           ; preds = %bb.aeo
  %i.dfh = getelementptr inbounds nuw i8, ptr %.0.i.i2250, i64 1
  br label %bb.aen, !llvm.loop !2

.critedge.i.i2252:                                ; preds = %bb.aeo, %bb.aen
  %.0.lcssa.i.i2253 = phi ptr [ %.0.i.i2250, %bb.aen ], [ %scevgep.i.i2249, %bb.aeo ] ; 3 uses
  store ptr %.0.lcssa.i.i2253, ptr %i.j, align 8
  %i.dfi = load i8, ptr %.0.lcssa.i.i2253, align 1 ; 2 uses
  %i.dfj = add i8 %i.dfi, -58
  %or.cond11.i2255 = icmp ult i8 %i.dfj, -10
  br i1 %or.cond11.i2255, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, label %.lr.ph.i2256

.lr.ph.i2256:                                     ; preds = %.critedge.i.i2252, %.lr.ph.i2256
  %i.dfk = phi i8 [ %i.dfp, %.lr.ph.i2256 ], [ %i.dfi, %.critedge.i.i2252 ]
  %.013.i2257 = phi i32 [ %i.dfn, %.lr.ph.i2256 ], [ 0, %.critedge.i.i2252 ]
  %.0812.i2258 = phi ptr [ %i.dfo, %.lr.ph.i2256 ], [ %.0.lcssa.i.i2253, %.critedge.i.i2252 ]
  %i.dfl = mul i32 %.013.i2257, 10
  %narrow.i2259 = add nsw i8 %i.dfk, -48
  %i.dfm = zext nneg i8 %narrow.i2259 to i32
  %i.dfn = add i32 %i.dfl, %i.dfm                 ; 2 uses
  %i.dfo = getelementptr inbounds nuw i8, ptr %.0812.i2258, i64 1 ; 2 uses
  %i.dfp = load i8, ptr %i.dfo, align 1           ; 2 uses
  %i.dfq = add i8 %i.dfp, -58
  %or.cond.i2260 = icmp ult i8 %i.dfq, -10
  br i1 %or.cond.i2260, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, label %.lr.ph.i2256, !llvm.loop !26

bb.aeq:                                           ; preds = %bb.aek
  %i.dfr = load i8, ptr %i.ev, align 4            ; 2 uses
  switch i8 %i.dfr, label %sub_02941 [
    i8 32, label %bb.aer
    i8 9, label %bb.aer
    i8 13, label %bb.aer
    i8 10, label %bb.aer
    i8 0, label %bb.aer
    i8 12, label %bb.aer
  ]

bb.aer:                                           ; preds = %bb.aeq, %bb.aeq, %bb.aeq, %bb.aeq, %bb.aeq, %bb.aeq
  %.not11.i2267 = icmp eq i8 %i.dfr, 0
  %storemerge.i2268 = select i1 %.not11.i2267, ptr %i.ev, ptr %i.ew ; 3 uses
  %i.dfs = ptrtoaddr ptr %storemerge.i2268 to i64
  %i.dft = sub i64 %i.dd, %i.dfs
  %scevgep.i.i2270 = getelementptr i8, ptr %storemerge.i2268, i64 %i.dft
  br label %bb.aes

bb.aes:                                           ; preds = %bb.aeu, %bb.aer
  %.0.i.i2271 = phi ptr [ %storemerge.i2268, %bb.aer ], [ %i.dfv, %bb.aeu ] ; 4 uses
  %i.dfu = load i8, ptr %.0.i.i2271, align 1
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj:bb.a
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !16

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = load ptr, ptr %i.c, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check112 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check112, label %.lr.ph.i.i.i71.preheader150, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec114 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec114, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert115 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat116 = shufflevector <4 x i32> %broadcast.splatinsert115, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph113
  %index118 = phi i64 [ 0, %vector.ph113 ], [ %index.next120, %vector.body117 ] ; 2 uses
  %i.bm = shl i64 %index118, 2
  %next.gep119 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep119, i64 16
  store <4 x i32> %broadcast.splat116, ptr %next.gep119, align 4
  store <4 x i32> %broadcast.splat116, ptr %i.bn, align 4
  %index.next120 = add nuw i64 %index118, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next120, %n.vec114
  br i1 %i.bo, label %middle.block121, label %vector.body117, !llvm.loop !203

middle.block121:                                  ; preds = %vector.body117
  %cmp.n122 = icmp eq i64 %i.bj, %n.vec114
  br i1 %cmp.n122, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader150

.lr.ph.i.i.i71.preheader150:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block121
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block121 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader150, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader150 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !204

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8               ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #31
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 2
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load i32, ptr %3, align 4               ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check138 = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check138, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph139

vector.ph139:                                     ; preds = %bb.t
  %n.vec140 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec140, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert141 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat142 = shufflevector <4 x i32> %broadcast.splatinsert141, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph139
  %index144 = phi i64 [ 0, %vector.ph139 ], [ %index.next146, %vector.body143 ] ; 2 uses
  %i.cn = shl i64 %index144, 2
  %next.gep145 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep145, i64 16
  store <4 x i32> %broadcast.splat142, ptr %next.gep145, align 4
  store <4 x i32> %broadcast.splat142, ptr %i.co, align 4
  %index.next146 = add nuw i64 %index144, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next146, %n.vec140
  br i1 %i.cp, label %middle.block147, label %vector.body143, !llvm.loop !205

middle.block147:                                  ; preds = %vector.body143
  %cmp.n148 = icmp eq i64 %i.ck, %n.vec140
  br i1 %cmp.n148, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block147
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block147 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !206

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block147
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !16

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4
  store i32 %i.ct, ptr %i.ce, align 4
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !16

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4
  store i32 %i.cy, ptr %i.cu, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load ptr, ptr %i.a, align 8
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.dc) #28
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8
  store ptr %i.cz, ptr %i.c, align 8
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.dd, ptr %i.a, align 8
  br label %_ZSt4fillIPjjEvT_S1_RKT0_.exit

_ZSt4fillIPjjEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block121, %middle.block134, %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #22

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt6vectorIN6Assimp11NFFImporter8MeshInfoESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6Assimp11NFFImporter8MeshInfoESaIS2_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 20226693063278017
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorIN6Assimp11NFFImporter8MeshInfoEE8allocateEmPKv.exit.i, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 40453386126556034
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt15__new_allocatorIN6Assimp11NFFImporter8MeshInfoEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = mul nuw nsw i64 %1, 456
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #29
  br label %_ZNSt12_Vector_baseIN6Assimp11NFFImporter8MeshInfoESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6Assimp11NFFImporter8MeshInfoESaIS2_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorIN6Assimp11NFFImporter8MeshInfoEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorIN6Assimp11NFFImporter8MeshInfoEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 6 uses
  %.not14.i.i.i.i = icmp eq ptr %2, %3
  br i1 %.not14.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN6Assimp11NFFImporter8MeshInfoEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN6Assimp11NFFImporter8MeshInfoESaIS2_EE11_M_allocateEm.exit, %_ZSt10_ConstructIN6Assimp11NFFImporter8MeshInfoEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.016.i.i.i.i = phi ptr [ %i.g, %_ZSt10_ConstructIN6Assimp11NFFImporter8MeshInfoEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.e, %_ZNSt12_Vector_baseIN6Assimp11NFFImporter8MeshInfoESaIS2_EE11_M_allocateEm.exit ] ; 4 uses
  %.01215.i.i.i.i = phi ptr [ %i.f, %_ZSt10_ConstructIN6Assimp11NFFImporter8MeshInfoEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %2, %_ZNSt12_Vector_baseIN6Assimp11NFFImporter8MeshInfoESaIS2_EE11_M_allocateEm.exit ] ; 2 uses
  invoke void @_ZN6Assimp11NFFImporter8MeshInfoC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(452) %.016.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(452) %.01215.i.i.i.i)
          to label %_ZSt10_ConstructIN6Assimp11NFFImporter8MeshInfoEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.f

_ZSt10_ConstructIN6Assimp11NFFImporter8MeshInfoEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 456 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 456
  %.not.i.i.i.i = icmp eq ptr %i.f, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN6Assimp11NFFImporter8MeshInfoEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !8

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.i) #27 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.e, %.016.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp11NFFImporter8MeshInfoEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i ], [ %i.e, %bb.f ] ; 2 uses
  tail call void @_ZN6Assimp11NFFImporter8MeshInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(452) dereferenceable(452) %.05.i.i.i.i.i.i) #27
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 456 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, %.016.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp11NFFImporter8MeshInfoEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN6Assimp11NFFImporter8MeshInfoEEvT_S4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.f
  invoke void @__cxa_rethrow() #31
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6Assimp11NFFImporter8MeshInfoEEvT_S4_.exit.i.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #32
  unreachable

bb.i:                                             ; preds = %_ZSt8_DestroyIPN6Assimp11NFFImporter8MeshInfoEEvT_S4_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIPKN6Assimp11NFFImporter8MeshInfoEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN6Assimp11NFFImporter8MeshInfoEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN6Assimp11NFFImporter8MeshInfoESaIS2_EE11_M_allocateEm.exit
  ret ptr %i.e

.body:                                            ; preds = %bb.g
  %i.o = extractvalue { ptr, i32 } %i.l, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #27 ; 0 uses
  %.not.i10 = icmp eq ptr %i.e, null
  br i1 %.not.i10, label %_ZNSt12_Vector_baseIN6Assimp11NFFImporter8MeshInfoESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.j

bb.j:                                             ; preds = %.body
  %i.q = mul i64 %1, 456
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.q) #28
  br label %_ZNSt12_Vector_baseIN6Assimp11NFFImporter8MeshInfoESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp11NFFImporter8MeshInfoESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %bb.j, %.body
  invoke void @__cxa_rethrow() #31
          to label %bb.n unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN6Assimp11NFFImporter8MeshInfoESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.r

bb.m:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #32
  unreachable

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIN6Assimp11NFFImporter8MeshInfoESaIS2_EE13_M_deallocateEPS2_m.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp11NFFImporter8MeshInfoESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not124 = icmp eq ptr %2, %3
  br i1 %.not124, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = sdiv exact i64 %i.c, 456                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 17 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 3 uses
  %i.n = sdiv exact i64 %i.m, 456                 ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp11NFFImporter8MeshInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %_ZSt10_ConstructIN6Assimp11NFFImporter8MeshInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.014.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN6Assimp11NFFImporter8MeshInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.h, %bb.d ] ; 4 uses
  %.sroa.08.013.i.i.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructIN6Assimp11NFFImporter8MeshInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  invoke void @_ZN6Assimp11NFFImporter8MeshInfoC2EOS1_(ptr noundef nonnull align 8 dereferenceable(452) %.014.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(452) %.sroa.08.013.i.i.i.i.i)
          to label %_ZSt10_ConstructIN6Assimp11NFFImporter8MeshInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.e

_ZSt10_ConstructIN6Assimp11NFFImporter8MeshInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i.i, i64 456 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 456
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN6Assimp11NFFImporter8MeshInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !209

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #27 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.h, %.014.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp11NFFImporter8MeshInfoEEvT_S4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i ], [ %i.h, %bb.e ] ; 2 uses
  tail call void @_ZN6Assimp11NFFImporter8MeshInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(452) dereferenceable(452) %.05.i.i.i.i.i.i.i) #27
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 456 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.v, %.014.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp11NFFImporter8MeshInfoEEvT_S4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN6Assimp11NFFImporter8MeshInfoEEvT_S4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.e
  invoke void @__cxa_rethrow() #31
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6Assimp11NFFImporter8MeshInfoEEvT_S4_.exit.i.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.g

common.resume:                                    ; preds = %bb.ah, %bb.n, %bb.j, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.be, %bb.n ], [ %i.w, %bb.f ], [ %i.as, %bb.j ], [ %i.df, %bb.ah ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #32
  unreachable
end_hunk_1
begin_hunk_2_@_ZN12aiMatrix3x3tIfE12FromToMatrixERK10aiVector3tIfES4_RS0_:bb.a
  %i.y = fneg float %i.f
  %i.z = select i1 %i.x, float %i.f, float %i.y   ; 2 uses
  %i.aa = fcmp olt float %i.t, %i.w
  br i1 %i.aa, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ab = fcmp olt float %i.t, %i.z
  br i1 %i.ab, label %_ZN12aiMatrix3x3tIfEixEj.exit.2, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  br label %_ZN12aiMatrix3x3tIfEixEj.exit.2

bb.e:                                             ; preds = %bb.b
  %i.ac = fcmp olt float %i.w, %i.z
  br i1 %i.ac, label %_ZN12aiMatrix3x3tIfEixEj.exit.2, label %bb.d

_ZN12aiMatrix3x3tIfEixEj.exit.2:                  ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.20.0 = phi float [ 0.000000e+00, %bb.e ], [ 1.000000e+00, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.ad = phi <4 x float> [ <float 0.000000e+00, float 1.000000e+00, float poison, float poison>, %bb.e ], [ <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, %bb.d ], [ <float 1.000000e+00, float 0.000000e+00, float poison, float poison>, %bb.c ]
  %i.ae = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.e ], [ zeroinitializer, %bb.d ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.c ]
  %i.af = fsub <2 x float> %i.ae, %i.h            ; 6 uses
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 7 uses
  %i.ah = extractelement <2 x float> %i.af, i64 0 ; 3 uses
  %i.ai = fneg float %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.am = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %.sroa.20.0, i64 0
  %i.an = shufflevector <4 x float> %i.am, <4 x float> %i.ad, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ao = shufflevector <2 x float> %i.b, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ap = insertelement <4 x float> %i.ao, float 0.000000e+00, i64 3
  %i.aq = shufflevector <2 x float> %i.e, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> %i.ap, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.as = fsub <4 x float> %i.an, %i.ar           ; 12 uses
  %i.at = extractelement <4 x float> %i.as, i64 2
  %i.au = extractelement <4 x float> %i.as, i64 1 ; 3 uses
  %i.av = extractelement <4 x float> %i.as, i64 0
  %i.aw = extractelement <2 x float> %i.af, i64 1
  %i.ax = fmul float %i.at, %i.aw
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.au, float %i.ah, float %i.ax)
  %i.az = shufflevector <4 x float> %i.as, <4 x float> %i.ag, <2 x i32> <i32 2, i32 5> ; 2 uses
  %i.ba = fmul <2 x float> %i.az, %i.az
  %i.bb = shufflevector <4 x float> %i.as, <4 x float> %i.ag, <2 x i32> <i32 1, i32 4> ; 2 uses
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bb, <2 x float> %i.ba)
  %i.bd = shufflevector <4 x float> %i.as, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.be = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.bf = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 1>
  %i.bg = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 2> ; 2 uses
  %i.bh = shufflevector <4 x float> %i.as, <4 x float> %i.ag, <2 x i32> <i32 0, i32 4>
  %i.bi = shufflevector <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x float> %i.ag, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.bj = fneg <4 x float> %i.ag
  %i.bk = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.bj, <4 x i32> <i32 poison, i32 poison, i32 5, i32 3>
  %i.bl = fsub float %.sroa.20.0, %i.n            ; 8 uses
  %i.bm = tail call noundef float @llvm.fmuladd.f32(float %i.av, float %i.bl, float %i.ay)
  %i.bn = insertelement <2 x float> %i.bd, float %i.bl, i64 1 ; 2 uses
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bn, <2 x float> %i.bc)
  %i.bp = fdiv <2 x float> splat (float 2.000000e+00), %i.bo ; 5 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0 ; 2 uses
  %i.br = fneg float %i.bq                        ; 3 uses
  %i.bs = extractelement <2 x float> %i.bp, i64 1 ; 2 uses
  %i.bt = fmul float %i.bq, %i.bs
  %i.bu = fmul float %i.bs, %i.ah
  %i.bv = fmul float %i.bu, %i.ai
  %i.bw = insertelement <4 x float> poison, float %i.br, i64 0 ; 2 uses
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.by = fmul <4 x float> %i.be, %i.bx
  %i.bz = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ca = fmul <4 x float> %i.bz, %i.ag
  %i.cb = insertelement <4 x float> %i.bf, float %i.bl, i64 2
  %i.cc = fneg <4 x float> %i.cb
  %i.cd = fmul <4 x float> %i.ca, %i.cc
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.by, <4 x float> %i.bg, <4 x float> %i.cd)
  %i.cf = insertelement <2 x float> %i.bp, float %i.bm, i64 0
  %i.cg = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.ch = insertelement <2 x float> %i.cg, float %i.bl, i64 1 ; 2 uses
  %i.ci = fmul <2 x float> %i.cf, %i.ch           ; 4 uses
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ck = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cl = fmul <4 x float> %i.ck, %i.ag
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.bg, <4 x float> %i.ce)
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.cn, ptr %i.aj, align 4
  %i.co = load float, ptr %i.al, align 4
  %i.cp = fadd float %i.co, 1.000000e+00
  store float %i.cp, ptr %i.al, align 4
  %i.cq = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> %i.af, <2 x i32> <i32 0, i32 2>
  %i.cs = fneg <2 x float> %i.cr
  %i.ct = fmul float %i.au, %i.br
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.au, float %i.bv)
  %i.cv = insertelement <2 x float> poison, float %i.br, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> %i.ci, <2 x i32> <i32 0, i32 2>
  %i.cx = fmul <2 x float> %i.cw, %i.bh
  %i.cy = fneg float %i.bl
  %i.cz = shufflevector <2 x float> %i.af, <2 x float> %i.ch, <4 x i32> <i32 1, i32 3, i32 poison, i32 3>
  %i.da = insertelement <4 x float> %i.cz, float %i.cy, i64 2
  %i.db = fmul <4 x float> %i.cj, %i.da           ; 2 uses
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.dd = insertelement <2 x float> %i.dc, float %i.cu, i64 1
  %i.de = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.bd, <2 x float> %i.dd) ; 2 uses
  %i.df = extractelement <2 x float> %i.de, i64 1
  %i.dg = fadd float %i.df, 1.000000e+00
  store float %i.dg, ptr %2, align 4
  %i.dh = shufflevector <2 x float> %i.bp, <2 x float> %i.de, <4 x i32> <i32 1, i32 1, i32 1, i32 2>
  %i.di = insertelement <4 x float> %i.bi, float %i.bl, i64 1
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 2>
  %i.dk = fmul <4 x float> %i.dh, %i.dj
  %i.dl = shufflevector <2 x float> %i.cs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> %i.bk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dn = fmul <4 x float> %i.dk, %i.dm
  %i.do = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 0, i32 poison>
  %i.dp = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dq = shufflevector <4 x float> %i.do, <4 x float> %i.dp, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.dr = insertelement <4 x float> %i.bw, float %i.bl, i64 3
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.dt = fmul <4 x float> %i.dq, %i.ds
  %i.du = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> %i.du, <4 x float> %i.dn)
  %i.dw = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.db, <4 x i32> <i32 4, i32 5, i32 7, i32 3>
  %i.dx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dw, <4 x float> %i.as, <4 x float> %i.dv)
  store <4 x float> %i.dx, ptr %i.ak, align 4
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.dy = fneg float %i.i
  %i.dz = fmul float %i.f, %i.dy
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.j, float %i.n, float %i.dz) ; 4 uses
  %i.eb = fadd float %i.o, 1.000000e+00
  %i.ec = fdiv float 1.000000e+00, %i.eb          ; 2 uses
  %i.ed = fmul float %i.ea, %i.ec                 ; 2 uses
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ed, float %i.ea, float %i.o)
  store float %i.ee, ptr %2, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eh = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ei = insertelement <2 x float> %i.eh, float %i.n, i64 0
  %i.ej = fneg <2 x float> %i.ei
  %i.ek = shufflevector <2 x float> %i.b, <2 x float> %i.e, <2 x i32> <i32 0, i32 2>
  %i.el = fmul <2 x float> %i.ek, %i.ej
  %i.em = shufflevector <2 x float> %i.e, <2 x float> %i.b, <2 x i32> <i32 1, i32 2>
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.h, <2 x float> %i.el) ; 7 uses
  %i.eo = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.ep = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eq = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = fmul <2 x float> %i.ep, %i.eq           ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.er, %i.en
  %i.es = extractelement <2 x float> %foldExtExtBinop, i64 1
  store float %i.es, ptr %i.ef, align 4
  %i.et = fadd <2 x float> %i.en, %i.er
  store <2 x float> %i.et, ptr %i.eg, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 20
  %foldExtExtBinop179 = fsub <2 x float> %i.er, %i.en
  %i.ew = extractelement <2 x float> %foldExtExtBinop179, i64 0
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float %i.ew, ptr %i.ex, align 4
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ez = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fmul <2 x float> %i.en, %i.fa           ; 2 uses
  %shift = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop181 = fmul <2 x float> %i.en, %shift
  %i.fc = extractelement <2 x float> %foldExtExtBinop181, i64 0 ; 2 uses
  %i.fd = insertelement <2 x float> poison, float %i.o, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.en, <2 x float> %i.fe) ; 2 uses
  %i.fg = extractelement <2 x float> %i.ff, i64 0
  store float %i.fg, ptr %i.eu, align 4
  %i.fh = fsub float %i.fc, %i.ea
  store float %i.fh, ptr %i.ev, align 4
  %i.fi = fadd float %i.ea, %i.fc
  store float %i.fi, ptr %i.ey, align 4
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fk = extractelement <2 x float> %i.ff, i64 1
  store float %i.fk, ptr %i.fj, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN12aiMatrix3x3tIfEixEj.exit.2, %bb.f
  ret ptr %2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { noreturn }
attributes #32 = { noreturn nounwind }

!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}

!0 = distinct !{null}
!1 = distinct !{!1, !12}
!2 = distinct !{!2, !12}
!3 = distinct !{null, null}
!4 = distinct !{!4, !12}
!5 = distinct !{!5, !12}
!6 = distinct !{!6, !12}
!7 = distinct !{!7, !12}
!8 = distinct !{!8, !12}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{i8 0, i8 2}
!14 = !{}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!23 = distinct !{!23, !22, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!24 = distinct !{!24, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!25 = distinct !{!25, !24, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, i1 false, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!29 = distinct !{!29, !28, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!30 = distinct !{!30, !28, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, i1 false, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!33 = distinct !{!33, !32, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!34 = distinct !{!34, !32, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, i1 false, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!37 = distinct !{!37, !36, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!38 = distinct !{!38, !36, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, i1 false, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!41 = distinct !{!41, !40, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!42 = distinct !{!42, !40, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!43 = distinct !{!43, i1 false, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!44 = distinct !{!44, !43, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!45 = distinct !{!45, !43, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!46 = distinct !{!46, i1 false, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!47 = distinct !{!47, !46, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!48 = distinct !{!48, !46, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!49 = distinct !{!49, i1 false, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!50 = distinct !{!50, !49, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!51 = distinct !{!51, !49, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!52 = distinct !{!52, !12}
!53 = distinct !{!53, !12}
!54 = distinct !{!54, !12}
!55 = distinct !{!55, !12}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !12}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, i1 false, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!61 = distinct !{!61, !60, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!62 = distinct !{!62, !60, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!63 = distinct !{!63, i1 false, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!64 = distinct !{!64, !63, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!65 = distinct !{!65, !63, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!66 = distinct !{!66, i1 false, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!67 = distinct !{!67, !66, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!68 = distinct !{!68, !66, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!69 = distinct !{!69, i1 false, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!70 = distinct !{!70, !69, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!71 = distinct !{!71, !69, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!72 = distinct !{!72, !12}
!73 = distinct !{!73, !12}
!74 = distinct !{!74, !12}
!75 = distinct !{!75, !12}
!76 = distinct !{!76, !12}
!77 = distinct !{!77, !12}
!78 = distinct !{!78, !12}
!79 = distinct !{!79, !12}
!80 = distinct !{!80, !106}
!81 = distinct !{!81, !12}
!82 = distinct !{!82, i1 false, !"_ZNK9aiColor3DmlEf"}
!83 = distinct !{!83, !82, !"_ZNK9aiColor3DmlEf: argument 0"}
!84 = distinct !{!84, !12}
!85 = distinct !{!85, !106}
!86 = distinct !{!86, !12}
!87 = distinct !{!87, !12}
!88 = distinct !{!88, i1 false, !"_ZNK9aiColor3DmlERKS_"}
!89 = distinct !{!89, !88, !"_ZNK9aiColor3DmlERKS_: argument 0"}
!90 = distinct !{!90, i1 false, !"_ZNK9aiColor3DmlERKS_"}
!91 = distinct !{!91, !90, !"_ZNK9aiColor3DmlERKS_: argument 0"}
!92 = distinct !{!92, !12}
!93 = !{!23}
!94 = !{!25}
!95 = !{!30, !29}
!96 = !{!34, !33}
!97 = !{!38, !37}
!98 = !{!42, !41}
!99 = !{!45, !44}
!100 = !{!48, !47}
!101 = !{!51, !50}
!102 = !{!62, !61}
!103 = !{!65, !64}
!104 = !{!68, !67}
!105 = !{!71, !70}
!106 = !{!"llvm.loop.unroll.disable"}
!107 = !{!83}
!108 = !{!89}
!109 = !{!91}
!110 = distinct !{!110, i1 false, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!111 = distinct !{!111, !110, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!112 = distinct !{!112, i1 false, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!113 = distinct !{!113, !112, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!114 = distinct !{!114, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!115 = distinct !{!115, !114, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!116 = !{!111}
!117 = !{!113}
!118 = !{!115}
!119 = !{!115, !113, !111}
!120 = distinct !{!120, i1 false, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!121 = distinct !{!121, !120, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!122 = distinct !{!122, i1 false, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!123 = distinct !{!123, !122, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!124 = distinct !{!124, i1 false, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!125 = distinct !{!125, !124, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!126 = distinct !{!126, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!127 = distinct !{!127, !126, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!128 = !{!121}
!129 = !{!123}
!130 = !{!125}
!131 = !{!127}
!132 = !{!127, !125, !123, !121}
!133 = distinct !{!133, i1 false, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!134 = distinct !{!134, !133, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!135 = distinct !{!135, i1 false, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!136 = distinct !{!136, !135, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!137 = distinct !{!137, i1 false, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!138 = distinct !{!138, !137, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!139 = distinct !{!139, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!140 = distinct !{!140, !139, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!141 = !{!134}
!142 = !{!136}
!143 = !{!138}
!144 = !{!140}
!145 = !{!140, !138, !136, !134}
!146 = distinct !{!146, !12}
!147 = distinct !{!147, i1 false, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!148 = distinct !{!148, !147, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!149 = distinct !{!149, i1 false, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!150 = distinct !{!150, !149, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!151 = distinct !{!151, i1 false, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!152 = distinct !{!152, !151, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!153 = distinct !{!153, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!154 = distinct !{!154, !153, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
end_hunk_2
