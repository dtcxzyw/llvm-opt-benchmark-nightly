Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebufalgo_mad?download=true
inline.NumInlined: 4684
inline.NumDeleted: 1360
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN11OpenImageIO4v3_112ImageBufAlgo3madERNS0_8ImageBufENS0_14Image_or_ConstES4_S4_NS0_3ROIEi:bb.a
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.u
  %i.ac = phi ptr [ %i.ab, %bb.u ], [ @_ZN11OpenImageIO4v3_111TypeUnknownE, %bb.s ]
  %.sroa.0239.0.copyload = load i64, ptr %i.ac, align 4
  %i.ad = invoke noundef i32 @_ZN11OpenImageIO4v3_18TypeDesc14basetype_mergeES1_S1_(i64 %.sroa.0241.0.copyload, i64 %.sroa.0240.0.copyload)
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.v
  %i.ae = and i32 %i.ad, 255
  %i.af = or disjoint i32 %i.ae, 256
  %.sroa.0.0.insert.insert.i = zext nneg i32 %i.af to i64
  %i.ag = invoke noundef i32 @_ZN11OpenImageIO4v3_18TypeDesc14basetype_mergeES1_S1_(i64 %.sroa.0.0.insert.insert.i, i64 %.sroa.0239.0.copyload)
          to label %_ZN11OpenImageIO4v3_18TypeDesc14basetype_mergeES1_S1_S1_.exit unwind label %bb.aa ; 4 uses

_ZN11OpenImageIO4v3_18TypeDesc14basetype_mergeES1_S1_S1_.exit: ; preds = %.noexc
  %i.ah = trunc i32 %i.ag to i8                   ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %_ZN11OpenImageIO4v3_18TypeDesc14basetype_mergeES1_S1_S1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.ai = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %bb.z unwind label %bb.ae      ; 4 uses

bb.z:                                             ; preds = %bb.y
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !330
  %i.al = icmp ne i8 %i.ak, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 65
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = icmp ne i8 %i.an, 1
  %or.cond.not1458 = select i1 %i.al, i1 true, i1 %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 66
  %i.aq = load i8, ptr %i.ap, align 2
  %i.ar = icmp ne i8 %i.aq, 0
  %or.cond1412.not1455 = select i1 %or.cond.not1458, i1 true, i1 %i.ar
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 68
  %i.at = load i32, ptr %i.as, align 4
  %i.au = icmp ne i32 %i.at, 0
  %or.cond1415 = select i1 %or.cond1412.not1455, i1 true, i1 %i.au
  br i1 %or.cond1415, label %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit.thread, label %bb.af

_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit.thread: ; preds = %bb.z
  %.mask = and i32 %i.ag, 255
  %i.av = or disjoint i32 %.mask, 256
  %.sroa.0965.0.insert.insert973 = zext nneg i32 %i.av to i64
  %i.aw = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18ImageBuf4copyERKS1_NS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 %.sroa.0965.0.insert.insert973)
          to label %bb.af unwind label %bb.ae     ; 0 uses

bb.aa:                                            ; preds = %.noexc, %bb.v, %bb.t, %bb.q, %bb.o
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.ab:                                            ; preds = %_ZN11OpenImageIO4v3_18TypeDesc14basetype_mergeES1_S1_S1_.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

bb.ac:                                            ; preds = %bb.w
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

bb.ad:                                            ; preds = %bb.x
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.ae:                                            ; preds = %bb.al, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit541.thread, %bb.aj, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit540.thread, %bb.ag, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit.thread, %bb.y
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.af:                                            ; preds = %bb.z, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit.thread
  %.0436 = phi ptr [ %i.m, %bb.z ], [ %9, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit.thread ] ; 21 uses
  br i1 %.not478, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bc = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %bb.ah unwind label %bb.ae     ; 4 uses

bb.ah:                                            ; preds = %bb.ag
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !330
  %i.bf = icmp ne i8 %i.be, %i.ah
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 65
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = icmp ne i8 %i.bh, 1
  %or.cond1418.not1463 = select i1 %i.bf, i1 true, i1 %i.bi
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 66
  %i.bk = load i8, ptr %i.bj, align 2
  %i.bl = icmp ne i8 %i.bk, 0
  %or.cond1421.not1460 = select i1 %or.cond1418.not1463, i1 true, i1 %i.bl
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 68
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = icmp ne i32 %i.bn, 0
  %or.cond1424 = select i1 %or.cond1421.not1460, i1 true, i1 %i.bo
  br i1 %or.cond1424, label %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit540.thread, label %bb.ai

_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit540.thread: ; preds = %bb.ah
  %.mask1464 = and i32 %i.ag, 255
  %i.bp = or disjoint i32 %.mask1464, 256
  %.sroa.0965.0.insert.insert970 = zext nneg i32 %i.bp to i64
  %i.bq = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18ImageBuf4copyERKS1_NS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 %.sroa.0965.0.insert.insert970)
          to label %bb.ai unwind label %bb.ae     ; 0 uses

bb.ai:                                            ; preds = %bb.ah, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit540.thread, %bb.af
  %.0437 = phi ptr [ null, %bb.af ], [ %i.o, %bb.ah ], [ %10, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit540.thread ] ; 16 uses
  br i1 %.not479, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.br = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %bb.ak unwind label %bb.ae     ; 4 uses

bb.ak:                                            ; preds = %bb.aj
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !330
  %i.bu = icmp ne i8 %i.bt, %i.ah
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 65
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = icmp ne i8 %i.bw, 1
  %or.cond1427.not1469 = select i1 %i.bu, i1 true, i1 %i.bx
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 66
  %i.bz = load i8, ptr %i.by, align 2
  %i.ca = icmp ne i8 %i.bz, 0
  %or.cond1430.not1466 = select i1 %or.cond1427.not1469, i1 true, i1 %i.ca
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 68
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = icmp ne i32 %i.cc, 0
  %or.cond1433 = select i1 %or.cond1430.not1466, i1 true, i1 %i.cd
  br i1 %or.cond1433, label %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit541.thread, label %bb.al

_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit541.thread: ; preds = %bb.ak
  %.mask1470 = and i32 %i.ag, 255
  %i.ce = or disjoint i32 %.mask1470, 256
  %.sroa.0965.0.insert.insert = zext nneg i32 %i.ce to i64
  %i.cf = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18ImageBuf4copyERKS1_NS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 %.sroa.0965.0.insert.insert)
          to label %bb.al unwind label %bb.ae     ; 0 uses

bb.al:                                            ; preds = %bb.ak, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit541.thread, %bb.ai
  %.0438 = phi ptr [ null, %bb.ai ], [ %i.q, %bb.ak ], [ %11, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit541.thread ] ; 18 uses
  %.not480 = icmp eq ptr %.0437, null             ; 2 uses
  %i.cg = select i1 %.not480, ptr %.0438, ptr %.0437
  %i.ch = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_S7_S7_PNS0_9ImageSpecEi(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull %0, ptr noundef nonnull %.0436, ptr noundef %i.cg, ptr noundef %.0438, ptr noundef null, i32 noundef 0)
          to label %bb.am unwind label %bb.ae

bb.am:                                            ; preds = %bb.al
  br i1 %i.ch, label %bb.an, label %bb.gg

bb.an:                                            ; preds = %bb.am
  br i1 %.not480, label %bb.dg, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not505 = icmp eq ptr %.0438, null
  br i1 %.not505, label %bb.bu, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ci = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf11initializedEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.aq unwind label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.ci, label %bb.as, label %bb.ar, !prof !58

bb.ar:                                            ; preds = %bb.aq
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.ck = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cj, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 194, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_112ImageBufAlgo3madERNS0_8ImageBufENS0_14Image_or_ConstES4_S4_NS0_3ROIEi, ptr noundef nonnull @.str.5) #29 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.cl = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.av unwind label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.cn = load i64, ptr %i.cm, align 8            ; 4 uses
  %.sroa.0923.0.extract.trunc = trunc i64 %i.cn to i8 ; 4 uses
  %.sroa.22942.0.extract.shift = lshr i64 %i.cn, 16
  %.sroa.22942.0.extract.trunc = trunc i64 %.sroa.22942.0.extract.shift to i8 ; 2 uses
  %.sroa.30955.0.extract.shift = lshr i64 %i.cn, 32 ; 2 uses
  switch i8 %i.ah, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit [
    i8 11, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit.thread
    i8 4, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit.thread
    i8 2, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit.thread
    i8 10, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit.thread
  ]

_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit: ; preds = %bb.av
  %i.co = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18ImageBuf4copyERKS1_NS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %.0436, i64 267)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit.thread unwind label %bb.ba ; 0 uses

bb.aw:                                            ; preds = %bb.ap
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.ax:                                            ; preds = %bb.as
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.ay:                                            ; preds = %bb.at
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.az:                                            ; preds = %bb.au
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.ba:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit550, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit549, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit548, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bl, %bb.bk, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit543, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit.thread: ; preds = %bb.av, %bb.av, %bb.av, %bb.av, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit
  %.sroa.0901.0 = phi i8 [ 11, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit ], [ %i.ah, %bb.av ], [ %i.ah, %bb.av ], [ %i.ah, %bb.av ], [ %i.ah, %bb.av ] ; 2 uses
  %.0446 = phi ptr [ %13, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit ], [ %.0436, %bb.av ], [ %.0436, %bb.av ], [ %.0436, %bb.av ], [ %.0436, %bb.av ] ; 7 uses
  switch i8 %.sroa.0923.0.extract.trunc, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit543 [
    i8 11, label %bb.bb
    i8 4, label %bb.bb
    i8 2, label %bb.bb
    i8 10, label %bb.bb
  ]

bb.bb:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit.thread, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit.thread, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit.thread, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit.thread
  %i.cu = icmp eq i8 %.sroa.0901.0, %.sroa.0923.0.extract.trunc
  %i.cv = and i64 %i.cn, 65280
  %i.cw = icmp eq i64 %i.cv, 256                  ; 2 uses
  %or.cond1434 = and i1 %i.cu, %i.cw
  br i1 %or.cond1434, label %bb.bc, label %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit544.thread

bb.bc:                                            ; preds = %bb.bb
  %i.cx = icmp ne i8 %.sroa.22942.0.extract.trunc, 0
  %i.cy = icmp ne i64 %.sroa.30955.0.extract.shift, 0
  %or.cond1450 = select i1 %i.cx, i1 true, i1 %i.cy
  br i1 %or.cond1450, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit543, label %bb.bd

_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit544.thread: ; preds = %bb.bb
  %24 = icmp ne i8 %.sroa.0923.0.extract.trunc, 11
  %.not1541 = xor i1 %i.cw, true
  %or.cond1435.not1476 = or i1 %24, %.not1541
  %i.cz = icmp ne i8 %.sroa.22942.0.extract.trunc, 0
  %or.cond1436.not1473 = select i1 %or.cond1435.not1476, i1 true, i1 %i.cz
  %i.da = icmp ne i64 %.sroa.30955.0.extract.shift, 0
  %or.cond1437 = select i1 %or.cond1436.not1473, i1 true, i1 %i.da
  br i1 %or.cond1437, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit543, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit547

_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit543: ; preds = %bb.bc, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit544.thread, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit.thread
  %i.db = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18ImageBuf4copyERKS1_NS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 267)
          to label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit547 unwind label %bb.ba ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  switch i8 %.sroa.0923.0.extract.trunc, label %.thread1173 [
    i8 11, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit547
    i8 2, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit548
    i8 10, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit549
    i8 4, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit550
  ]

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit547:  ; preds = %bb.bd, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit544.thread, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit543
  %.0445112311311160 = phi ptr [ %0, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit544.thread ], [ %12, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit543 ], [ %0, %bb.bd ] ; 7 uses
  switch i8 %.sroa.0901.0, label %bb.bi [
    i8 11, label %bb.be
    i8 2, label %bb.bf
    i8 10, label %bb.bg
    i8 4, label %bb.bh
  ]

bb.be:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit547
  invoke fastcc void @_ZN11OpenImageIO4v3_1L8mad_implIffEEbRNS0_8ImageBufERKS2_S5_S5_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %.0445112311311160, ptr noundef nonnull align 8 dereferenceable(16) %.0446, ptr noundef nonnull align 8 dereferenceable(16) %.0437, ptr noundef nonnull align 8 dereferenceable(16) %.0438, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %bb.bi unwind label %bb.ba

bb.bf:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit547
  invoke fastcc void @_ZN11OpenImageIO4v3_1L8mad_implIfhEEbRNS0_8ImageBufERKS2_S5_S5_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %.0445112311311160, ptr noundef nonnull align 8 dereferenceable(16) %.0446, ptr noundef nonnull align 8 dereferenceable(16) %.0437, ptr noundef nonnull align 8 dereferenceable(16) %.0438, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %bb.bi unwind label %bb.ba

bb.bg:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit547
  invoke fastcc void @_ZN11OpenImageIO4v3_1L8mad_implIfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_S7_S7_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %.0445112311311160, ptr noundef nonnull align 8 dereferenceable(16) %.0446, ptr noundef nonnull align 8 dereferenceable(16) %.0437, ptr noundef nonnull align 8 dereferenceable(16) %.0438, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %bb.bi unwind label %bb.ba

bb.bh:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit547
  invoke fastcc void @_ZN11OpenImageIO4v3_1L8mad_implIftEEbRNS0_8ImageBufERKS2_S5_S5_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %.0445112311311160, ptr noundef nonnull align 8 dereferenceable(16) %.0446, ptr noundef nonnull align 8 dereferenceable(16) %.0437, ptr noundef nonnull align 8 dereferenceable(16) %.0438, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %bb.bi unwind label %bb.ba

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit548:  ; preds = %bb.bd
  invoke fastcc void @_ZN11OpenImageIO4v3_1L8mad_implIhhEEbRNS0_8ImageBufERKS2_S5_S5_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.0446, ptr noundef nonnull align 8 dereferenceable(16) %.0437, ptr noundef nonnull align 8 dereferenceable(16) %.0438, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %.thread1173 unwind label %bb.ba

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit549:  ; preds = %bb.bd
  invoke fastcc void @_ZN11OpenImageIO4v3_1L8mad_implIN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_S7_S7_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.0446, ptr noundef nonnull align 8 dereferenceable(16) %.0437, ptr noundef nonnull align 8 dereferenceable(16) %.0438, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %.thread1173 unwind label %bb.ba

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit550:  ; preds = %bb.bd
  invoke fastcc void @_ZN11OpenImageIO4v3_1L8mad_implIttEEbRNS0_8ImageBufERKS2_S5_S5_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.0446, ptr noundef nonnull align 8 dereferenceable(16) %.0437, ptr noundef nonnull align 8 dereferenceable(16) %.0438, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %.thread1173 unwind label %bb.ba

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit547
  %.0439 = phi i8 [ 1, %bb.bh ], [ 0, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit547 ], [ 1, %bb.be ], [ 1, %bb.bf ], [ 1, %bb.bg ] ; 2 uses
  %.not518 = icmp eq ptr %.0445112311311160, %0
  br i1 %.not518, label %.thread1173, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dc = trunc nuw i8 %.0439 to i1
  br i1 %i.dc, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.dd = invoke i64 @_ZNK11OpenImageIO4v3_18ImageBuf9pixeltypeEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.bl unwind label %bb.ba

bb.bl:                                            ; preds = %bb.bk
  %i.de = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18ImageBuf4copyERKS1_NS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.0445112311311160, i64 %i.dd)
          to label %.thread1173 unwind label %bb.ba ; 0 uses

bb.bm:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8geterrorB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %.0445112311311160, i1 noundef zeroext true)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA3_cJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(3) @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.df = load ptr, ptr %14, align 8, !tbaa !63   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bo
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !64
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %.thread1173

bb.bp:                                            ; preds = %bb.bm
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553

bb.bq:                                            ; preds = %bb.bn
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = load ptr, ptr %14, align 8, !tbaa !63   ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551: ; preds = %bb.bq
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !64
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551, %bb.bp
  %.pn519 = phi { ptr, i32 } [ %i.dk, %bb.bp ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551 ], [ %i.dl, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.br

.thread1173:                                      ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit550, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit549, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit548, %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bl, %bb.bi
  %.04391177 = phi i8 [ %.0439, %bb.bi ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %bb.bl ], [ 1, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit548 ], [ 0, %bb.bd ], [ 1, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit549 ], [ 1, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit550 ]
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.gf

bb.br:                                            ; preds = %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553, %bb.az
  %.pn521.pn = phi { ptr, i32 } [ %i.cs, %bb.az ], [ %i.ct, %bb.ba ], [ %.pn519, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553 ]
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #28
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.ay
  %.pn521.pn.pn = phi { ptr, i32 } [ %.pn521.pn, %bb.br ], [ %i.cr, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #28
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.ax
  %.pn521.pn.pn.pn = phi { ptr, i32 } [ %.pn521.pn.pn, %bb.bs ], [ %i.cq, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.gh

bb.bu:                                            ; preds = %bb.ao
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.dr, align 8, !tbaa !327 ; 8 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !56
  %.sroa.2.0.copyload.i.fr = freeze i64 %.sroa.2.0.copyload.i ; 10 uses
  %i.ds = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  %i.dt = sext i32 %i.ds to i64
  %i.du = icmp slt i64 %.sroa.2.0.copyload.i.fr, %i.dt
  br i1 %i.du, label %bb.bw, label %bb.cc

bb.bw:                                            ; preds = %bb.bv
  %i.dv = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.bx unwind label %bb.cb     ; 9 uses

bb.bx:                                            ; preds = %bb.bw
  %.not506 = icmp eq i32 %i.dv, 0
  br i1 %.not506, label %._crit_edge, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.dw = sext i32 %i.dv to i64
  %i.dx = shl nsw i64 %i.dw, 2
  %i.dy = alloca i8, i64 %i.dx, align 16          ; 29 uses
  %i.dz = icmp sgt i32 %i.dv, 0
  br i1 %i.dz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.by
  %.not517 = icmp eq i64 %.sroa.2.0.copyload.i.fr, 0
  %wide.trip.count1514 = zext nneg i32 %i.dv to i64 ; 2 uses
  br i1 %.not517, label %bb.bz, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ea = getelementptr [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i.fr
  %i.eb = getelementptr i8, ptr %i.ea, i64 -4
  %i.ec = icmp sgt i64 %.sroa.2.0.copyload.i.fr, 0
  %spec.select = select i1 %i.ec, ptr %.sroa.0.0.copyload.i, ptr %i.eb
  %i.ed = load float, ptr %spec.select, align 4, !tbaa !66
  store float %i.ed, ptr %i.dy, align 16, !tbaa !66
  %exitcond.peel.not = icmp eq i32 %i.dv, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.split.preheader1601

.lr.ph.split.preheader1601:                       ; preds = %.lr.ph.split.preheader
  %i.ee = add nsw i64 %wide.trip.count1514, -1    ; 2 uses
  %xtraiter = and i64 %i.ee, 3                    ; 3 uses
  %i.ef = add nsw i32 %i.dv, -2
  %i.eg = icmp ult i32 %i.ef, 3
  br i1 %i.eg, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader1601.new

.lr.ph.split.preheader1601.new:                   ; preds = %.lr.ph.split.preheader1601
  %unroll_iter = and i64 %i.ee, -4
  br label %.lr.ph.split

bb.bz:                                            ; preds = %.lr.ph
  store float 0.000000e+00, ptr %i.dy, align 16, !tbaa !66
  %exitcond1515.peel.not = icmp eq i32 %i.dv, 1
  br i1 %exitcond1515.peel.not, label %._crit_edge, label %.lr.ph.split.us.peel.next.preheader

.lr.ph.split.us.peel.next.preheader:              ; preds = %bb.bz
  %load_initial1595 = load float, ptr %i.dy, align 16 ; 9 uses
  %i.eh = add nsw i64 %wide.trip.count1514, -1    ; 2 uses
  %xtraiter1604 = and i64 %i.eh, 7                ; 3 uses
  %i.ei = add nsw i32 %i.dv, -2
  %i.ej = icmp ult i32 %i.ei, 7
  br i1 %i.ej, label %.lr.ph.split.us.peel.next.epil.preheader, label %.lr.ph.split.us.peel.next.preheader.new

.lr.ph.split.us.peel.next.preheader.new:          ; preds = %.lr.ph.split.us.peel.next.preheader
  %unroll_iter1608 = and i64 %i.eh, -8
  br label %.lr.ph.split.us.peel.next

.lr.ph.split.us.peel.next:                        ; preds = %.lr.ph.split.us.peel.next, %.lr.ph.split.us.peel.next.preheader.new
  %indvars.iv1511 = phi i64 [ 1, %.lr.ph.split.us.peel.next.preheader.new ], [ %indvars.iv.next1512.7, %.lr.ph.split.us.peel.next ] ; 9 uses
  %niter1609 = phi i64 [ 0, %.lr.ph.split.us.peel.next.preheader.new ], [ %niter1609.next.7, %.lr.ph.split.us.peel.next ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv1511
  store float %load_initial1595, ptr %i.ek, align 4, !tbaa !66
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv1511
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store float %load_initial1595, ptr %i.em, align 4, !tbaa !66
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv1511
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store float %load_initial1595, ptr %i.eo, align 4, !tbaa !66
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv1511
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  store float %load_initial1595, ptr %i.eq, align 4, !tbaa !66
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv1511
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store float %load_initial1595, ptr %i.es, align 4, !tbaa !66
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv1511
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 20
  store float %load_initial1595, ptr %i.eu, align 4, !tbaa !66
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv1511
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  store float %load_initial1595, ptr %i.ew, align 4, !tbaa !66
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv1511
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 28
  store float %load_initial1595, ptr %i.ey, align 4, !tbaa !66
  %indvars.iv.next1512.7 = add nuw nsw i64 %indvars.iv1511, 8 ; 2 uses
  %niter1609.next.7 = add i64 %niter1609, 8       ; 2 uses
  %niter1609.ncmp.7 = icmp eq i64 %niter1609.next.7, %unroll_iter1608
  br i1 %niter1609.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us.peel.next, !llvm.loop !314

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.us.peel.next
  %lcmp.mod1606.not = icmp eq i64 %xtraiter1604, 0
  br i1 %lcmp.mod1606.not, label %._crit_edge, label %.lr.ph.split.us.peel.next.epil.preheader

.lr.ph.split.us.peel.next.epil.preheader:         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.peel.next.preheader
  %indvars.iv1511.epil.init = phi i64 [ 1, %.lr.ph.split.us.peel.next.preheader ], [ %indvars.iv.next1512.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod1607 = icmp ne i64 %xtraiter1604, 0
  call void @llvm.assume(i1 %lcmp.mod1607)
  br label %.lr.ph.split.us.peel.next.epil

.lr.ph.split.us.peel.next.epil:                   ; preds = %.lr.ph.split.us.peel.next.epil, %.lr.ph.split.us.peel.next.epil.preheader
  %indvars.iv1511.epil = phi i64 [ %indvars.iv.next1512.epil, %.lr.ph.split.us.peel.next.epil ], [ %indvars.iv1511.epil.init, %.lr.ph.split.us.peel.next.epil.preheader ] ; 2 uses
  %epil.iter1605 = phi i64 [ %epil.iter1605.next, %.lr.ph.split.us.peel.next.epil ], [ 0, %.lr.ph.split.us.peel.next.epil.preheader ]
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv1511.epil
  store float %load_initial1595, ptr %i.ez, align 4, !tbaa !66
  %indvars.iv.next1512.epil = add nuw nsw i64 %indvars.iv1511.epil, 1
  %epil.iter1605.next = add i64 %epil.iter1605, 1 ; 2 uses
  %epil.iter1605.cmp.not = icmp eq i64 %epil.iter1605.next, %xtraiter1604
  br i1 %epil.iter1605.cmp.not, label %._crit_edge, label %.lr.ph.split.us.peel.next.epil, !llvm.loop !315

._crit_edge.loopexit1602.unr-lcssa:               ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit1602.unr-lcssa, %.lr.ph.split.preheader1601
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.split.preheader1601 ], [ %indvars.iv.next.3, %._crit_edge.loopexit1602.unr-lcssa ]
  %lcmp.mod1603 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1603)
  br label %.lr.ph.split.epil

.lr.ph.split.epil:                                ; preds = %.lr.ph.split.epil, %.lr.ph.split.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.split.epil ], [ %indvars.iv.epil.init, %.lr.ph.split.epil.preheader ] ; 5 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.epil ], [ 0, %.lr.ph.split.epil.preheader ]
  %i.fa = icmp sgt i64 %.sroa.2.0.copyload.i.fr, %indvars.iv.epil
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %indvars.iv.epil
  %i.fc = getelementptr [4 x i8], ptr %i.dy, i64 %indvars.iv.epil
  %i.fd = getelementptr i8, ptr %i.fc, i64 -4
  %.in.epil = select i1 %i.fa, ptr %i.fb, ptr %i.fd
  %i.fe = load float, ptr %.in.epil, align 4, !tbaa !66
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.epil
  store float %i.fe, ptr %i.ff, align 4, !tbaa !66
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.epil, !llvm.loop !316

._crit_edge:                                      ; preds = %._crit_edge.loopexit1602.unr-lcssa, %.lr.ph.split.epil, %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.peel.next.epil, %bb.bx, %.lr.ph.split.preheader, %bb.bz, %bb.by
  %i.fg = phi ptr [ %i.dy, %.lr.ph.split.preheader ], [ %i.dy, %bb.bz ], [ %i.dy, %bb.by ], [ null, %bb.bx ], [ %i.dy, %._crit_edge.loopexit.unr-lcssa ], [ %i.dy, %.lr.ph.split.us.peel.next.epil ], [ %i.dy, %.lr.ph.split.epil ], [ %i.dy, %._crit_edge.loopexit1602.unr-lcssa ]
  %i.fh = sext i32 %i.dv to i64
  br label %bb.cc

bb.ca:                                            ; preds = %bb.cc, %bb.bu
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.cb:                                            ; preds = %bb.bw
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader1601.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.split.preheader1601.new ], [ %indvars.iv.next.3, %.lr.ph.split ] ; 8 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader1601.new ], [ %niter.next.3, %.lr.ph.split ]
  %i.fk = icmp sgt i64 %.sroa.2.0.copyload.i.fr, %indvars.iv
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %indvars.iv
  %i.fm = getelementptr [4 x i8], ptr %i.dy, i64 %indvars.iv
  %i.fn = getelementptr i8, ptr %i.fm, i64 -4
  %.in = select i1 %i.fk, ptr %i.fl, ptr %i.fn
  %i.fo = load float, ptr %.in, align 4, !tbaa !66
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv
  store float %i.fo, ptr %i.fp, align 4, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.fq = icmp sgt i64 %.sroa.2.0.copyload.i.fr, %indvars.iv.next
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %indvars.iv.next
  %i.fs = getelementptr [4 x i8], ptr %i.dy, i64 %indvars.iv.next
  %i.ft = getelementptr i8, ptr %i.fs, i64 -4
  %.in.1 = select i1 %i.fq, ptr %i.fr, ptr %i.ft
  %i.fu = load float, ptr %.in.1, align 4, !tbaa !66
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next
  store float %i.fu, ptr %i.fv, align 4, !tbaa !66
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %i.fw = icmp sgt i64 %.sroa.2.0.copyload.i.fr, %indvars.iv.next.1
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %indvars.iv.next.1
  %i.fy = getelementptr [4 x i8], ptr %i.dy, i64 %indvars.iv.next.1
  %i.fz = getelementptr i8, ptr %i.fy, i64 -4
  %.in.2 = select i1 %i.fw, ptr %i.fx, ptr %i.fz
  %i.ga = load float, ptr %.in.2, align 4, !tbaa !66
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next.1
  store float %i.ga, ptr %i.gb, align 4, !tbaa !66
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 4 uses
  %i.gc = icmp sgt i64 %.sroa.2.0.copyload.i.fr, %indvars.iv.next.2
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %indvars.iv.next.2
  %i.ge = getelementptr [4 x i8], ptr %i.dy, i64 %indvars.iv.next.2
  %i.gf = getelementptr i8, ptr %i.ge, i64 -4
  %.in.3 = select i1 %i.gc, ptr %i.gd, ptr %i.gf
  %i.gg = load float, ptr %.in.3, align 4, !tbaa !66
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next.2
  store float %i.gg, ptr %i.gh, align 4, !tbaa !66
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit1602.unr-lcssa, label %.lr.ph.split, !llvm.loop !317

bb.cc:                                            ; preds = %._crit_edge, %bb.bv
  %.sroa.0875.0 = phi ptr [ %i.fg, %._crit_edge ], [ %.sroa.0.0.copyload.i, %bb.bv ] ; 7 uses
  %.sroa.17877.0 = phi i64 [ %i.fh, %._crit_edge ], [ %.sroa.2.0.copyload.i.fr, %bb.bv ] ; 7 uses
  %i.gi = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf11initializedEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.cd unwind label %bb.ca

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.gi, label %bb.cf, label %bb.ce, !prof !58

bb.ce:                                            ; preds = %bb.cd
  %i.gj = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.gk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gj, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 200, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_112ImageBufAlgo3madERNS0_8ImageBufENS0_14Image_or_ConstES4_S4_NS0_3ROIEi, ptr noundef nonnull @.str.5) #29 ; 0 uses
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.cg unwind label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.ch unwind label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  %i.gl = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.ci unwind label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 64
  %i.gn = load i64, ptr %i.gm, align 8            ; 4 uses
  %.sroa.0831.0.extract.trunc = trunc i64 %i.gn to i8 ; 4 uses
  %.sroa.22850.0.extract.shift = lshr i64 %i.gn, 16
  %.sroa.22850.0.extract.trunc = trunc i64 %.sroa.22850.0.extract.shift to i8 ; 2 uses
  %.sroa.30863.0.extract.shift = lshr i64 %i.gn, 32 ; 2 uses
  switch i8 %i.ah, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit555 [
    i8 11, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit555.thread
    i8 4, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit555.thread
    i8 2, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit555.thread
    i8 10, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit555.thread
  ]

_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit555: ; preds = %bb.ci
  %i.go = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18ImageBuf4copyERKS1_NS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %.0436, i64 267)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit555.thread unwind label %bb.cm ; 0 uses

bb.cj:                                            ; preds = %bb.cf
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.ck:                                            ; preds = %bb.cg
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.cl:                                            ; preds = %bb.ch
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.cm:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit565, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit564, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit563, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cx, %bb.cw, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit557, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit555
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit555.thread: ; preds = %bb.ci, %bb.ci, %bb.ci, %bb.ci, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit555
  %.sroa.0809.0 = phi i8 [ 11, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit555 ], [ %i.ah, %bb.ci ], [ %i.ah, %bb.ci ], [ %i.ah, %bb.ci ], [ %i.ah, %bb.ci ] ; 2 uses
  %.0449 = phi ptr [ %16, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit555 ], [ %.0436, %bb.ci ], [ %.0436, %bb.ci ], [ %.0436, %bb.ci ], [ %.0436, %bb.ci ] ; 7 uses
  switch i8 %.sroa.0831.0.extract.trunc, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit557 [
    i8 11, label %bb.cn
    i8 4, label %bb.cn
    i8 2, label %bb.cn
    i8 10, label %bb.cn
  ]

bb.cn:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit555.thread, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit555.thread, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit555.thread, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit555.thread
  %i.gt = icmp eq i8 %.sroa.0809.0, %.sroa.0831.0.extract.trunc
  %i.gu = and i64 %i.gn, 65280
  %i.gv = icmp eq i64 %i.gu, 256                  ; 2 uses
  %or.cond1438 = and i1 %i.gt, %i.gv
  br i1 %or.cond1438, label %bb.co, label %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit558.thread

bb.co:                                            ; preds = %bb.cn
  %i.gw = icmp ne i8 %.sroa.22850.0.extract.trunc, 0
  %i.gx = icmp ne i64 %.sroa.30863.0.extract.shift, 0
  %or.cond1451 = select i1 %i.gw, i1 true, i1 %i.gx
  br i1 %or.cond1451, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit557, label %bb.cp

_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit558.thread: ; preds = %bb.cn
  %25 = icmp ne i8 %.sroa.0831.0.extract.trunc, 11
  %.not1543 = xor i1 %i.gv, true
  %or.cond1439.not1482 = or i1 %25, %.not1543
  %i.gy = icmp ne i8 %.sroa.22850.0.extract.trunc, 0
  %or.cond1440.not1479 = select i1 %or.cond1439.not1482, i1 true, i1 %i.gy
  %i.gz = icmp ne i64 %.sroa.30863.0.extract.shift, 0
  %or.cond1441 = select i1 %or.cond1440.not1479, i1 true, i1 %i.gz
  br i1 %or.cond1441, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit557, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit562

_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit557: ; preds = %bb.co, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit558.thread, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit555.thread
  %i.ha = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18ImageBuf4copyERKS1_NS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 267)
          to label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit562 unwind label %bb.cm ; 0 uses

bb.cp:                                            ; preds = %bb.co
  switch i8 %.sroa.0831.0.extract.trunc, label %.thread1247 [
    i8 11, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit562
    i8 2, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit563
    i8 10, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit564
    i8 4, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit565
  ]

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit562:  ; preds = %bb.cp, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit558.thread, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit557
  %.0448119712051234 = phi ptr [ %0, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit558.thread ], [ %15, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit557 ], [ %0, %bb.cp ] ; 7 uses
  switch i8 %.sroa.0809.0, label %bb.cu [
    i8 11, label %bb.cq
    i8 2, label %bb.cr
    i8 10, label %bb.cs
    i8 4, label %bb.ct
  ]

bb.cq:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit562
  invoke fastcc void @_ZN11OpenImageIO4v3_1L12mad_impl_iicIffEEbRNS0_8ImageBufERKS2_S5_NS0_4spanIKfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %.0448119712051234, ptr noundef nonnull align 8 dereferenceable(16) %.0449, ptr noundef nonnull align 8 dereferenceable(16) %.0437, ptr %.sroa.0875.0, i64 %.sroa.17877.0, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %bb.cu unwind label %bb.cm

bb.cr:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit562
  invoke fastcc void @_ZN11OpenImageIO4v3_1L12mad_impl_iicIfhEEbRNS0_8ImageBufERKS2_S5_NS0_4spanIKfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %.0448119712051234, ptr noundef nonnull align 8 dereferenceable(16) %.0449, ptr noundef nonnull align 8 dereferenceable(16) %.0437, ptr %.sroa.0875.0, i64 %.sroa.17877.0, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %bb.cu unwind label %bb.cm

bb.cs:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit562
  invoke fastcc void @_ZN11OpenImageIO4v3_1L12mad_impl_iicIfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_S7_NS0_4spanIKfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %.0448119712051234, ptr noundef nonnull align 8 dereferenceable(16) %.0449, ptr noundef nonnull align 8 dereferenceable(16) %.0437, ptr %.sroa.0875.0, i64 %.sroa.17877.0, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %bb.cu unwind label %bb.cm

bb.ct:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit562
  invoke fastcc void @_ZN11OpenImageIO4v3_1L12mad_impl_iicIftEEbRNS0_8ImageBufERKS2_S5_NS0_4spanIKfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %.0448119712051234, ptr noundef nonnull align 8 dereferenceable(16) %.0449, ptr noundef nonnull align 8 dereferenceable(16) %.0437, ptr %.sroa.0875.0, i64 %.sroa.17877.0, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %bb.cu unwind label %bb.cm

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit563:  ; preds = %bb.cp
  invoke fastcc void @_ZN11OpenImageIO4v3_1L12mad_impl_iicIhhEEbRNS0_8ImageBufERKS2_S5_NS0_4spanIKfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.0449, ptr noundef nonnull align 8 dereferenceable(16) %.0437, ptr %.sroa.0875.0, i64 %.sroa.17877.0, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %.thread1247 unwind label %bb.cm

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit564:  ; preds = %bb.cp
  invoke fastcc void @_ZN11OpenImageIO4v3_1L12mad_impl_iicIN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_S7_NS0_4spanIKfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.0449, ptr noundef nonnull align 8 dereferenceable(16) %.0437, ptr %.sroa.0875.0, i64 %.sroa.17877.0, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %.thread1247 unwind label %bb.cm

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit565:  ; preds = %bb.cp
  invoke fastcc void @_ZN11OpenImageIO4v3_1L12mad_impl_iicIttEEbRNS0_8ImageBufERKS2_S5_NS0_4spanIKfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.0449, ptr noundef nonnull align 8 dereferenceable(16) %.0437, ptr %.sroa.0875.0, i64 %.sroa.17877.0, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %.thread1247 unwind label %bb.cm

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cq, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit562
  %.1440 = phi i8 [ 1, %bb.ct ], [ 0, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit562 ], [ 1, %bb.cq ], [ 1, %bb.cr ], [ 1, %bb.cs ] ; 2 uses
  %.not507 = icmp eq ptr %.0448119712051234, %0
  br i1 %.not507, label %.thread1247, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.hb = trunc nuw i8 %.1440 to i1
  br i1 %i.hb, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.hc = invoke i64 @_ZNK11OpenImageIO4v3_18ImageBuf9pixeltypeEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.cx unwind label %bb.cm

bb.cx:                                            ; preds = %bb.cw
  %i.hd = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18ImageBuf4copyERKS1_NS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.0448119712051234, i64 %i.hc)
          to label %.thread1247 unwind label %bb.cm ; 0 uses

bb.cy:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8geterrorB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %.0448119712051234, i1 noundef zeroext true)
          to label %bb.cz unwind label %bb.db

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA3_cJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(3) @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.da unwind label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.he = load ptr, ptr %17, align 8, !tbaa !63   ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566: ; preds = %bb.da
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !64
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.thread1247

bb.db:                                            ; preds = %bb.cy
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit571

bb.dc:                                            ; preds = %bb.cz
  %i.hk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hl = load ptr, ptr %17, align 8, !tbaa !63   ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit571, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i569

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i569: ; preds = %bb.dc
  %i.ho = load i64, ptr %i.hm, align 8, !tbaa !64
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.hp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit571

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit571: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i569, %bb.db
  %.pn508 = phi { ptr, i32 } [ %i.hj, %bb.db ], [ %i.hk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i569 ], [ %i.hk, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %bb.dd

.thread1247:                                      ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit565, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit564, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit563, %bb.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568, %bb.cx, %bb.cu
  %.14401251 = phi i8 [ %.1440, %bb.cu ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568 ], [ 1, %bb.cx ], [ 1, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit563 ], [ 0, %bb.cp ], [ 1, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit564 ], [ 1, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit565 ]
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.gf

bb.dd:                                            ; preds = %bb.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit571, %bb.cl
  %.pn510.pn = phi { ptr, i32 } [ %i.gr, %bb.cl ], [ %i.gs, %bb.cm ], [ %.pn508, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit571 ]
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #28
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.ck
  %.pn510.pn.pn = phi { ptr, i32 } [ %.pn510.pn, %bb.dd ], [ %i.gq, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #28
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.cj
  %.pn510.pn.pn.pn = phi { ptr, i32 } [ %.pn510.pn.pn, %bb.de ], [ %i.gp, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.gh

bb.dg:                                            ; preds = %bb.an
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i572 = load ptr, ptr %i.hq, align 8, !tbaa !327 ; 8 uses
  %.sroa.2.0..sroa_idx.i573 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.2.0.copyload.i574 = load i64, ptr %.sroa.2.0..sroa_idx.i573, align 8, !tbaa !56
  %.sroa.2.0.copyload.i574.fr = freeze i64 %.sroa.2.0.copyload.i574 ; 10 uses
  %i.hr = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.dh unwind label %bb.dm

bb.dh:                                            ; preds = %bb.dg
  %i.hs = sext i32 %i.hr to i64
  %i.ht = icmp slt i64 %.sroa.2.0.copyload.i574.fr, %i.hs
  br i1 %i.ht, label %bb.di, label %bb.do

bb.di:                                            ; preds = %bb.dh
  %i.hu = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.dj unwind label %bb.dn     ; 9 uses

bb.dj:                                            ; preds = %bb.di
  %.not481 = icmp eq i32 %i.hu, 0
  br i1 %.not481, label %._crit_edge1499, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.hv = sext i32 %i.hu to i64
  %i.hw = shl nsw i64 %i.hv, 2
  %i.hx = alloca i8, i64 %i.hw, align 16          ; 29 uses
  %i.hy = icmp sgt i32 %i.hu, 0
  br i1 %i.hy, label %.lr.ph1498, label %._crit_edge1499

.lr.ph1498:                                       ; preds = %bb.dk
  %.not504 = icmp eq i64 %.sroa.2.0.copyload.i574.fr, 0
  %wide.trip.count1526 = zext nneg i32 %i.hu to i64 ; 2 uses
  br i1 %.not504, label %bb.dl, label %.lr.ph1498.split.preheader

.lr.ph1498.split.preheader:                       ; preds = %.lr.ph1498
  %i.hz = getelementptr [4 x i8], ptr %.sroa.0.0.copyload.i572, i64 %.sroa.2.0.copyload.i574.fr
  %i.ia = getelementptr i8, ptr %i.hz, i64 -4
  %i.ib = icmp sgt i64 %.sroa.2.0.copyload.i574.fr, 0
  %spec.select1585 = select i1 %i.ib, ptr %.sroa.0.0.copyload.i572, ptr %i.ia
  %i.ic = load float, ptr %spec.select1585, align 4, !tbaa !66
  store float %i.ic, ptr %i.hx, align 16, !tbaa !66
  %exitcond1521.peel.not = icmp eq i32 %i.hu, 1
  br i1 %exitcond1521.peel.not, label %._crit_edge1499, label %.lr.ph1498.split.preheader1599

.lr.ph1498.split.preheader1599:                   ; preds = %.lr.ph1498.split.preheader
  %i.id = add nsw i64 %wide.trip.count1526, -1    ; 2 uses
  %xtraiter1610 = and i64 %i.id, 3                ; 3 uses
  %i.ie = add nsw i32 %i.hu, -2
  %i.if = icmp ult i32 %i.ie, 3
  br i1 %i.if, label %.lr.ph1498.split.epil.preheader, label %.lr.ph1498.split.preheader1599.new

.lr.ph1498.split.preheader1599.new:               ; preds = %.lr.ph1498.split.preheader1599
  %unroll_iter1614 = and i64 %i.id, -4
  br label %.lr.ph1498.split

bb.dl:                                            ; preds = %.lr.ph1498
  store float 0.000000e+00, ptr %i.hx, align 16, !tbaa !66
  %exitcond1527.peel.not = icmp eq i32 %i.hu, 1
  br i1 %exitcond1527.peel.not, label %._crit_edge1499, label %.lr.ph1498.split.us.peel.next.preheader

.lr.ph1498.split.us.peel.next.preheader:          ; preds = %bb.dl
  %load_initial1593 = load float, ptr %i.hx, align 16 ; 9 uses
  %i.ig = add nsw i64 %wide.trip.count1526, -1    ; 2 uses
  %xtraiter1616 = and i64 %i.ig, 7                ; 3 uses
  %i.ih = add nsw i32 %i.hu, -2
  %i.ii = icmp ult i32 %i.ih, 7
  br i1 %i.ii, label %.lr.ph1498.split.us.peel.next.epil.preheader, label %.lr.ph1498.split.us.peel.next.preheader.new

.lr.ph1498.split.us.peel.next.preheader.new:      ; preds = %.lr.ph1498.split.us.peel.next.preheader
  %unroll_iter1620 = and i64 %i.ig, -8
  br label %.lr.ph1498.split.us.peel.next

.lr.ph1498.split.us.peel.next:                    ; preds = %.lr.ph1498.split.us.peel.next, %.lr.ph1498.split.us.peel.next.preheader.new
  %indvars.iv1523 = phi i64 [ 1, %.lr.ph1498.split.us.peel.next.preheader.new ], [ %indvars.iv.next1524.7, %.lr.ph1498.split.us.peel.next ] ; 9 uses
  %niter1621 = phi i64 [ 0, %.lr.ph1498.split.us.peel.next.preheader.new ], [ %niter1621.next.7, %.lr.ph1498.split.us.peel.next ]
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv1523
  store float %load_initial1593, ptr %i.ij, align 4, !tbaa !66
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv1523
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  store float %load_initial1593, ptr %i.il, align 4, !tbaa !66
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv1523
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store float %load_initial1593, ptr %i.in, align 4, !tbaa !66
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv1523
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 12
  store float %load_initial1593, ptr %i.ip, align 4, !tbaa !66
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv1523
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store float %load_initial1593, ptr %i.ir, align 4, !tbaa !66
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv1523
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 20
  store float %load_initial1593, ptr %i.it, align 4, !tbaa !66
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv1523
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  store float %load_initial1593, ptr %i.iv, align 4, !tbaa !66
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv1523
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 28
  store float %load_initial1593, ptr %i.ix, align 4, !tbaa !66
  %indvars.iv.next1524.7 = add nuw nsw i64 %indvars.iv1523, 8 ; 2 uses
  %niter1621.next.7 = add i64 %niter1621, 8       ; 2 uses
  %niter1621.ncmp.7 = icmp eq i64 %niter1621.next.7, %unroll_iter1620
  br i1 %niter1621.ncmp.7, label %._crit_edge1499.loopexit.unr-lcssa, label %.lr.ph1498.split.us.peel.next, !llvm.loop !318

._crit_edge1499.loopexit.unr-lcssa:               ; preds = %.lr.ph1498.split.us.peel.next
  %lcmp.mod1618.not = icmp eq i64 %xtraiter1616, 0
  br i1 %lcmp.mod1618.not, label %._crit_edge1499, label %.lr.ph1498.split.us.peel.next.epil.preheader

.lr.ph1498.split.us.peel.next.epil.preheader:     ; preds = %._crit_edge1499.loopexit.unr-lcssa, %.lr.ph1498.split.us.peel.next.preheader
  %indvars.iv1523.epil.init = phi i64 [ 1, %.lr.ph1498.split.us.peel.next.preheader ], [ %indvars.iv.next1524.7, %._crit_edge1499.loopexit.unr-lcssa ]
  %lcmp.mod1619 = icmp ne i64 %xtraiter1616, 0
  call void @llvm.assume(i1 %lcmp.mod1619)
  br label %.lr.ph1498.split.us.peel.next.epil

.lr.ph1498.split.us.peel.next.epil:               ; preds = %.lr.ph1498.split.us.peel.next.epil, %.lr.ph1498.split.us.peel.next.epil.preheader
  %indvars.iv1523.epil = phi i64 [ %indvars.iv.next1524.epil, %.lr.ph1498.split.us.peel.next.epil ], [ %indvars.iv1523.epil.init, %.lr.ph1498.split.us.peel.next.epil.preheader ] ; 2 uses
  %epil.iter1617 = phi i64 [ %epil.iter1617.next, %.lr.ph1498.split.us.peel.next.epil ], [ 0, %.lr.ph1498.split.us.peel.next.epil.preheader ]
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv1523.epil
  store float %load_initial1593, ptr %i.iy, align 4, !tbaa !66
  %indvars.iv.next1524.epil = add nuw nsw i64 %indvars.iv1523.epil, 1
  %epil.iter1617.next = add i64 %epil.iter1617, 1 ; 2 uses
  %epil.iter1617.cmp.not = icmp eq i64 %epil.iter1617.next, %xtraiter1616
  br i1 %epil.iter1617.cmp.not, label %._crit_edge1499, label %.lr.ph1498.split.us.peel.next.epil, !llvm.loop !319

._crit_edge1499.loopexit1600.unr-lcssa:           ; preds = %.lr.ph1498.split
  %lcmp.mod1612.not = icmp eq i64 %xtraiter1610, 0
  br i1 %lcmp.mod1612.not, label %._crit_edge1499, label %.lr.ph1498.split.epil.preheader

.lr.ph1498.split.epil.preheader:                  ; preds = %._crit_edge1499.loopexit1600.unr-lcssa, %.lr.ph1498.split.preheader1599
  %indvars.iv1517.epil.init = phi i64 [ 1, %.lr.ph1498.split.preheader1599 ], [ %indvars.iv.next1518.3, %._crit_edge1499.loopexit1600.unr-lcssa ]
  %lcmp.mod1613 = icmp ne i64 %xtraiter1610, 0
  call void @llvm.assume(i1 %lcmp.mod1613)
  br label %.lr.ph1498.split.epil

.lr.ph1498.split.epil:                            ; preds = %.lr.ph1498.split.epil, %.lr.ph1498.split.epil.preheader
  %indvars.iv1517.epil = phi i64 [ %indvars.iv.next1518.epil, %.lr.ph1498.split.epil ], [ %indvars.iv1517.epil.init, %.lr.ph1498.split.epil.preheader ] ; 5 uses
  %epil.iter1611 = phi i64 [ %epil.iter1611.next, %.lr.ph1498.split.epil ], [ 0, %.lr.ph1498.split.epil.preheader ]
  %i.iz = icmp sgt i64 %.sroa.2.0.copyload.i574.fr, %indvars.iv1517.epil
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i572, i64 %indvars.iv1517.epil
  %i.jb = getelementptr [4 x i8], ptr %i.hx, i64 %indvars.iv1517.epil
  %i.jc = getelementptr i8, ptr %i.jb, i64 -4
  %.in1504.epil = select i1 %i.iz, ptr %i.ja, ptr %i.jc
  %i.jd = load float, ptr %.in1504.epil, align 4, !tbaa !66
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv1517.epil
  store float %i.jd, ptr %i.je, align 4, !tbaa !66
  %indvars.iv.next1518.epil = add nuw nsw i64 %indvars.iv1517.epil, 1
  %epil.iter1611.next = add i64 %epil.iter1611, 1 ; 2 uses
  %epil.iter1611.cmp.not = icmp eq i64 %epil.iter1611.next, %xtraiter1610
  br i1 %epil.iter1611.cmp.not, label %._crit_edge1499, label %.lr.ph1498.split.epil, !llvm.loop !320

._crit_edge1499:                                  ; preds = %._crit_edge1499.loopexit1600.unr-lcssa, %.lr.ph1498.split.epil, %._crit_edge1499.loopexit.unr-lcssa, %.lr.ph1498.split.us.peel.next.epil, %bb.dj, %.lr.ph1498.split.preheader, %bb.dl, %bb.dk
  %i.jf = phi ptr [ %i.hx, %.lr.ph1498.split.preheader ], [ %i.hx, %bb.dl ], [ %i.hx, %bb.dk ], [ null, %bb.dj ], [ %i.hx, %._crit_edge1499.loopexit.unr-lcssa ], [ %i.hx, %.lr.ph1498.split.us.peel.next.epil ], [ %i.hx, %.lr.ph1498.split.epil ], [ %i.hx, %._crit_edge1499.loopexit1600.unr-lcssa ]
  %i.jg = sext i32 %i.hu to i64
  br label %bb.do

bb.dm:                                            ; preds = %bb.dp, %bb.dg
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.dn:                                            ; preds = %bb.di
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

.lr.ph1498.split:                                 ; preds = %.lr.ph1498.split, %.lr.ph1498.split.preheader1599.new
  %indvars.iv1517 = phi i64 [ 1, %.lr.ph1498.split.preheader1599.new ], [ %indvars.iv.next1518.3, %.lr.ph1498.split ] ; 8 uses
  %niter1615 = phi i64 [ 0, %.lr.ph1498.split.preheader1599.new ], [ %niter1615.next.3, %.lr.ph1498.split ]
  %i.jj = icmp sgt i64 %.sroa.2.0.copyload.i574.fr, %indvars.iv1517
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i572, i64 %indvars.iv1517
  %i.jl = getelementptr [4 x i8], ptr %i.hx, i64 %indvars.iv1517
  %i.jm = getelementptr i8, ptr %i.jl, i64 -4
  %.in1504 = select i1 %i.jj, ptr %i.jk, ptr %i.jm
  %i.jn = load float, ptr %.in1504, align 4, !tbaa !66
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv1517
  store float %i.jn, ptr %i.jo, align 4, !tbaa !66
  %indvars.iv.next1518 = add nuw nsw i64 %indvars.iv1517, 1 ; 4 uses
  %i.jp = icmp sgt i64 %.sroa.2.0.copyload.i574.fr, %indvars.iv.next1518
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i572, i64 %indvars.iv.next1518
  %i.jr = getelementptr [4 x i8], ptr %i.hx, i64 %indvars.iv.next1518
  %i.js = getelementptr i8, ptr %i.jr, i64 -4
  %.in1504.1 = select i1 %i.jp, ptr %i.jq, ptr %i.js
  %i.jt = load float, ptr %.in1504.1, align 4, !tbaa !66
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv.next1518
  store float %i.jt, ptr %i.ju, align 4, !tbaa !66
  %indvars.iv.next1518.1 = add nuw nsw i64 %indvars.iv1517, 2 ; 4 uses
  %i.jv = icmp sgt i64 %.sroa.2.0.copyload.i574.fr, %indvars.iv.next1518.1
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i572, i64 %indvars.iv.next1518.1
  %i.jx = getelementptr [4 x i8], ptr %i.hx, i64 %indvars.iv.next1518.1
  %i.jy = getelementptr i8, ptr %i.jx, i64 -4
  %.in1504.2 = select i1 %i.jv, ptr %i.jw, ptr %i.jy
  %i.jz = load float, ptr %.in1504.2, align 4, !tbaa !66
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv.next1518.1
  store float %i.jz, ptr %i.ka, align 4, !tbaa !66
  %indvars.iv.next1518.2 = add nuw nsw i64 %indvars.iv1517, 3 ; 4 uses
  %i.kb = icmp sgt i64 %.sroa.2.0.copyload.i574.fr, %indvars.iv.next1518.2
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i572, i64 %indvars.iv.next1518.2
  %i.kd = getelementptr [4 x i8], ptr %i.hx, i64 %indvars.iv.next1518.2
  %i.ke = getelementptr i8, ptr %i.kd, i64 -4
  %.in1504.3 = select i1 %i.kb, ptr %i.kc, ptr %i.ke
  %i.kf = load float, ptr %.in1504.3, align 4, !tbaa !66
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv.next1518.2
  store float %i.kf, ptr %i.kg, align 4, !tbaa !66
  %indvars.iv.next1518.3 = add nuw nsw i64 %indvars.iv1517, 4 ; 2 uses
  %niter1615.next.3 = add nuw nsw i64 %niter1615, 4 ; 2 uses
  %niter1615.ncmp.3 = icmp eq i64 %niter1615.next.3, %unroll_iter1614
  br i1 %niter1615.ncmp.3, label %._crit_edge1499.loopexit1600.unr-lcssa, label %.lr.ph1498.split, !llvm.loop !321

bb.do:                                            ; preds = %._crit_edge1499, %bb.dh
  %.sroa.27.0 = phi i64 [ %i.jg, %._crit_edge1499 ], [ %.sroa.2.0.copyload.i574.fr, %bb.dh ] ; 14 uses
  %.sroa.0774.0 = phi ptr [ %i.jf, %._crit_edge1499 ], [ %.sroa.0.0.copyload.i572, %bb.dh ] ; 14 uses
  %.not482 = icmp eq ptr %.0438, null
  br i1 %.not482, label %bb.et, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.kh = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf11initializedEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.dq unwind label %bb.dm

bb.dq:                                            ; preds = %bb.dp
  br i1 %i.kh, label %bb.ds, label %bb.dr, !prof !58

bb.dr:                                            ; preds = %bb.dq
  %i.ki = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.kj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ki, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 208, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_112ImageBufAlgo3madERNS0_8ImageBufENS0_14Image_or_ConstES4_S4_NS0_3ROIEi, ptr noundef nonnull @.str.5) #29 ; 0 uses
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dq, %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %18)
          to label %bb.dt unwind label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %bb.du unwind label %bb.dx

bb.du:                                            ; preds = %bb.dt
  %i.kk = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.dv unwind label %bb.dy

bb.dv:                                            ; preds = %bb.du
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 64
  %i.km = load i64, ptr %i.kl, align 8            ; 4 uses
  %.sroa.0730.0.extract.trunc = trunc i64 %i.km to i8 ; 4 uses
  %.sroa.22749.0.extract.shift = lshr i64 %i.km, 16
  %.sroa.22749.0.extract.trunc = trunc i64 %.sroa.22749.0.extract.shift to i8 ; 2 uses
  %.sroa.30762.0.extract.shift = lshr i64 %i.km, 32 ; 2 uses
  switch i8 %i.ah, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit578 [
    i8 11, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit578.thread
    i8 4, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit578.thread
    i8 2, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit578.thread
    i8 10, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit578.thread
  ]

_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit578: ; preds = %bb.dv
  %i.kn = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18ImageBuf4copyERKS1_NS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %.0436, i64 267)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit578.thread unwind label %bb.dz ; 0 uses

bb.dw:                                            ; preds = %bb.ds
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.dx:                                            ; preds = %bb.dt
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.dy:                                            ; preds = %bb.du
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.dz:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit588, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit587, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit586, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ek, %bb.ej, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit580, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit578
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit578.thread: ; preds = %bb.dv, %bb.dv, %bb.dv, %bb.dv, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit578
  %.sroa.0708.0 = phi i8 [ 11, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit578 ], [ %i.ah, %bb.dv ], [ %i.ah, %bb.dv ], [ %i.ah, %bb.dv ], [ %i.ah, %bb.dv ] ; 2 uses
  %.0452 = phi ptr [ %19, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit578 ], [ %.0436, %bb.dv ], [ %.0436, %bb.dv ], [ %.0436, %bb.dv ], [ %.0436, %bb.dv ] ; 7 uses
  switch i8 %.sroa.0730.0.extract.trunc, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit580 [
    i8 11, label %bb.ea
    i8 4, label %bb.ea
    i8 2, label %bb.ea
    i8 10, label %bb.ea
  ]

bb.ea:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit578.thread, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit578.thread, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit578.thread, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit578.thread
  %i.ks = icmp eq i8 %.sroa.0708.0, %.sroa.0730.0.extract.trunc
  %i.kt = and i64 %i.km, 65280
  %i.ku = icmp eq i64 %i.kt, 256                  ; 2 uses
  %or.cond1442 = and i1 %i.ks, %i.ku
  br i1 %or.cond1442, label %bb.eb, label %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit581.thread

bb.eb:                                            ; preds = %bb.ea
  %i.kv = icmp ne i8 %.sroa.22749.0.extract.trunc, 0
  %i.kw = icmp ne i64 %.sroa.30762.0.extract.shift, 0
  %or.cond1452 = select i1 %i.kv, i1 true, i1 %i.kw
  br i1 %or.cond1452, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit580, label %bb.ec

_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit581.thread: ; preds = %bb.ea
  %26 = icmp ne i8 %.sroa.0730.0.extract.trunc, 11
  %.not1545 = xor i1 %i.ku, true
  %or.cond1443.not1488 = or i1 %26, %.not1545
  %i.kx = icmp ne i8 %.sroa.22749.0.extract.trunc, 0
  %or.cond1444.not1485 = select i1 %or.cond1443.not1488, i1 true, i1 %i.kx
  %i.ky = icmp ne i64 %.sroa.30762.0.extract.shift, 0
  %or.cond1445 = select i1 %or.cond1444.not1485, i1 true, i1 %i.ky
  br i1 %or.cond1445, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit580, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit585

_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit580: ; preds = %bb.eb, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit581.thread, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit578.thread
  %i.kz = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18ImageBuf4copyERKS1_NS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 267)
          to label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit585 unwind label %bb.dz ; 0 uses

bb.ec:                                            ; preds = %bb.eb
  switch i8 %.sroa.0730.0.extract.trunc, label %.thread1321 [
    i8 11, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit585
    i8 2, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit586
    i8 10, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit587
    i8 4, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit588
  ]

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit585:  ; preds = %bb.ec, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit581.thread, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit580
  %.0451127112791308 = phi ptr [ %0, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit581.thread ], [ %18, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit580 ], [ %0, %bb.ec ] ; 7 uses
  switch i8 %.sroa.0708.0, label %bb.eh [
    i8 11, label %bb.ed
    i8 2, label %bb.ee
    i8 10, label %bb.ef
    i8 4, label %bb.eg
  ]

bb.ed:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit585
  invoke fastcc void @_ZN11OpenImageIO4v3_1L12mad_impl_iciIffEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES5_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %.0451127112791308, ptr noundef nonnull align 8 dereferenceable(16) %.0452, ptr %.sroa.0774.0, i64 %.sroa.27.0, ptr noundef nonnull align 8 dereferenceable(16) %.0438, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %bb.eh unwind label %bb.dz

bb.ee:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit585
  invoke fastcc void @_ZN11OpenImageIO4v3_1L12mad_impl_iciIfhEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES5_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %.0451127112791308, ptr noundef nonnull align 8 dereferenceable(16) %.0452, ptr %.sroa.0774.0, i64 %.sroa.27.0, ptr noundef nonnull align 8 dereferenceable(16) %.0438, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %bb.eh unwind label %bb.dz

bb.ef:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit585
  invoke fastcc void @_ZN11OpenImageIO4v3_1L12mad_impl_iciIfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_NS0_4spanIKfLm18446744073709551615EEES7_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %.0451127112791308, ptr noundef nonnull align 8 dereferenceable(16) %.0452, ptr %.sroa.0774.0, i64 %.sroa.27.0, ptr noundef nonnull align 8 dereferenceable(16) %.0438, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %bb.eh unwind label %bb.dz

bb.eg:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit585
  invoke fastcc void @_ZN11OpenImageIO4v3_1L12mad_impl_iciIftEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES5_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %.0451127112791308, ptr noundef nonnull align 8 dereferenceable(16) %.0452, ptr %.sroa.0774.0, i64 %.sroa.27.0, ptr noundef nonnull align 8 dereferenceable(16) %.0438, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %bb.eh unwind label %bb.dz

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit586:  ; preds = %bb.ec
  invoke fastcc void @_ZN11OpenImageIO4v3_1L12mad_impl_iciIhhEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES5_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.0452, ptr %.sroa.0774.0, i64 %.sroa.27.0, ptr noundef nonnull align 8 dereferenceable(16) %.0438, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %.thread1321 unwind label %bb.dz

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit587:  ; preds = %bb.ec
  invoke fastcc void @_ZN11OpenImageIO4v3_1L12mad_impl_iciIN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_NS0_4spanIKfLm18446744073709551615EEES7_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.0452, ptr %.sroa.0774.0, i64 %.sroa.27.0, ptr noundef nonnull align 8 dereferenceable(16) %.0438, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %.thread1321 unwind label %bb.dz

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit588:  ; preds = %bb.ec
  invoke fastcc void @_ZN11OpenImageIO4v3_1L12mad_impl_iciIttEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES5_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.0452, ptr %.sroa.0774.0, i64 %.sroa.27.0, ptr noundef nonnull align 8 dereferenceable(16) %.0438, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %.thread1321 unwind label %bb.dz

bb.eh:                                            ; preds = %bb.eg, %bb.ef, %bb.ee, %bb.ed, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit585
  %.2441 = phi i8 [ 1, %bb.eg ], [ 0, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit585 ], [ 1, %bb.ed ], [ 1, %bb.ee ], [ 1, %bb.ef ] ; 2 uses
  %.not494 = icmp eq ptr %.0451127112791308, %0
  br i1 %.not494, label %.thread1321, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.la = trunc nuw i8 %.2441 to i1
  br i1 %i.la, label %bb.ej, label %bb.el

bb.ej:                                            ; preds = %bb.ei
  %i.lb = invoke i64 @_ZNK11OpenImageIO4v3_18ImageBuf9pixeltypeEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.ek unwind label %bb.dz

bb.ek:                                            ; preds = %bb.ej
  %i.lc = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18ImageBuf4copyERKS1_NS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.0451127112791308, i64 %i.lb)
          to label %.thread1321 unwind label %bb.dz ; 0 uses

bb.el:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8geterrorB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(16) %.0451127112791308, i1 noundef zeroext true)
          to label %bb.em unwind label %bb.eo

bb.em:                                            ; preds = %bb.el
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA3_cJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(3) @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.en unwind label %bb.ep

bb.en:                                            ; preds = %bb.em
  %i.ld = load ptr, ptr %20, align 8, !tbaa !63   ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.lf = icmp eq ptr %i.ld, %i.le
  br i1 %i.lf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i589

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i589: ; preds = %bb.en
  %i.lg = load i64, ptr %i.le, align 8, !tbaa !64
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591: ; preds = %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i589
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %.thread1321

bb.eo:                                            ; preds = %bb.el
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594

bb.ep:                                            ; preds = %bb.em
  %i.lj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lk = load ptr, ptr %20, align 8, !tbaa !63   ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.lm = icmp eq ptr %i.lk, %i.ll
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i592

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i592: ; preds = %bb.ep
  %i.ln = load i64, ptr %i.ll, align 8, !tbaa !64
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.lo) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594: ; preds = %bb.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i592, %bb.eo
  %.pn495 = phi { ptr, i32 } [ %i.li, %bb.eo ], [ %i.lj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i592 ], [ %i.lj, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %bb.eq

.thread1321:                                      ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit588, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit587, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit586, %bb.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591, %bb.ek, %bb.eh
  %.24411325 = phi i8 [ %.2441, %bb.eh ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591 ], [ 1, %bb.ek ], [ 1, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit586 ], [ 0, %bb.ec ], [ 1, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit587 ], [ 1, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit588 ]
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %bb.gf

bb.eq:                                            ; preds = %bb.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594, %bb.dy
  %.pn497.pn = phi { ptr, i32 } [ %i.kq, %bb.dy ], [ %i.kr, %bb.dz ], [ %.pn495, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594 ]
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #28
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.dx
  %.pn497.pn.pn = phi { ptr, i32 } [ %.pn497.pn, %bb.eq ], [ %i.kp, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #28
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.dw
  %.pn497.pn.pn.pn = phi { ptr, i32 } [ %.pn497.pn.pn, %bb.er ], [ %i.ko, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %bb.gh

bb.et:                                            ; preds = %bb.do
  %i.lp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.0.0.copyload.i595 = load ptr, ptr %i.lp, align 8, !tbaa !327 ; 8 uses
  %.sroa.2.0..sroa_idx.i596 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.2.0.copyload.i597 = load i64, ptr %.sroa.2.0..sroa_idx.i596, align 8, !tbaa !56
  %.sroa.2.0.copyload.i597.fr = freeze i64 %.sroa.2.0.copyload.i597 ; 10 uses
  %i.lq = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.eu unwind label %bb.ez

bb.eu:                                            ; preds = %bb.et
  %i.lr = sext i32 %i.lq to i64
  %i.ls = icmp slt i64 %.sroa.2.0.copyload.i597.fr, %i.lr
  br i1 %i.ls, label %bb.ev, label %bb.fb

bb.ev:                                            ; preds = %bb.eu
  %i.lt = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.ew unwind label %bb.fa     ; 9 uses

bb.ew:                                            ; preds = %bb.ev
  %.not483 = icmp eq i32 %i.lt, 0
  br i1 %.not483, label %._crit_edge1503, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.lu = sext i32 %i.lt to i64
  %i.lv = shl nsw i64 %i.lu, 2
  %i.lw = alloca i8, i64 %i.lv, align 16          ; 29 uses
  %i.lx = icmp sgt i32 %i.lt, 0
  br i1 %i.lx, label %.lr.ph1502, label %._crit_edge1503

.lr.ph1502:                                       ; preds = %bb.ex
  %.not493 = icmp eq i64 %.sroa.2.0.copyload.i597.fr, 0
  %wide.trip.count1538 = zext nneg i32 %i.lt to i64 ; 2 uses
  br i1 %.not493, label %bb.ey, label %.lr.ph1502.split.preheader

.lr.ph1502.split.preheader:                       ; preds = %.lr.ph1502
  %i.ly = getelementptr [4 x i8], ptr %.sroa.0.0.copyload.i595, i64 %.sroa.2.0.copyload.i597.fr
  %i.lz = getelementptr i8, ptr %i.ly, i64 -4
  %i.ma = icmp sgt i64 %.sroa.2.0.copyload.i597.fr, 0
  %spec.select1586 = select i1 %i.ma, ptr %.sroa.0.0.copyload.i595, ptr %i.lz
  %i.mb = load float, ptr %spec.select1586, align 4, !tbaa !66
  store float %i.mb, ptr %i.lw, align 16, !tbaa !66
  %exitcond1533.peel.not = icmp eq i32 %i.lt, 1
  br i1 %exitcond1533.peel.not, label %._crit_edge1503, label %.lr.ph1502.split.preheader1597

.lr.ph1502.split.preheader1597:                   ; preds = %.lr.ph1502.split.preheader
  %i.mc = add nsw i64 %wide.trip.count1538, -1    ; 2 uses
  %xtraiter1622 = and i64 %i.mc, 3                ; 3 uses
  %i.md = add nsw i32 %i.lt, -2
  %i.me = icmp ult i32 %i.md, 3
  br i1 %i.me, label %.lr.ph1502.split.epil.preheader, label %.lr.ph1502.split.preheader1597.new

.lr.ph1502.split.preheader1597.new:               ; preds = %.lr.ph1502.split.preheader1597
  %unroll_iter1626 = and i64 %i.mc, -4
  br label %.lr.ph1502.split

bb.ey:                                            ; preds = %.lr.ph1502
  store float 0.000000e+00, ptr %i.lw, align 16, !tbaa !66
  %exitcond1539.peel.not = icmp eq i32 %i.lt, 1
  br i1 %exitcond1539.peel.not, label %._crit_edge1503, label %.lr.ph1502.split.us.peel.next.preheader

.lr.ph1502.split.us.peel.next.preheader:          ; preds = %bb.ey
  %load_initial = load float, ptr %i.lw, align 16 ; 9 uses
  %i.mf = add nsw i64 %wide.trip.count1538, -1    ; 2 uses
  %xtraiter1628 = and i64 %i.mf, 7                ; 3 uses
  %i.mg = add nsw i32 %i.lt, -2
  %i.mh = icmp ult i32 %i.mg, 7
  br i1 %i.mh, label %.lr.ph1502.split.us.peel.next.epil.preheader, label %.lr.ph1502.split.us.peel.next.preheader.new

.lr.ph1502.split.us.peel.next.preheader.new:      ; preds = %.lr.ph1502.split.us.peel.next.preheader
  %unroll_iter1632 = and i64 %i.mf, -8
  br label %.lr.ph1502.split.us.peel.next

.lr.ph1502.split.us.peel.next:                    ; preds = %.lr.ph1502.split.us.peel.next, %.lr.ph1502.split.us.peel.next.preheader.new
  %indvars.iv1535 = phi i64 [ 1, %.lr.ph1502.split.us.peel.next.preheader.new ], [ %indvars.iv.next1536.7, %.lr.ph1502.split.us.peel.next ] ; 9 uses
  %niter1633 = phi i64 [ 0, %.lr.ph1502.split.us.peel.next.preheader.new ], [ %niter1633.next.7, %.lr.ph1502.split.us.peel.next ]
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv1535
  store float %load_initial, ptr %i.mi, align 4, !tbaa !66
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv1535
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  store float %load_initial, ptr %i.mk, align 4, !tbaa !66
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv1535
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  store float %load_initial, ptr %i.mm, align 4, !tbaa !66
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv1535
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 12
  store float %load_initial, ptr %i.mo, align 4, !tbaa !66
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv1535
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  store float %load_initial, ptr %i.mq, align 4, !tbaa !66
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv1535
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 20
  store float %load_initial, ptr %i.ms, align 4, !tbaa !66
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv1535
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 24
  store float %load_initial, ptr %i.mu, align 4, !tbaa !66
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv1535
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 28
  store float %load_initial, ptr %i.mw, align 4, !tbaa !66
  %indvars.iv.next1536.7 = add nuw nsw i64 %indvars.iv1535, 8 ; 2 uses
  %niter1633.next.7 = add i64 %niter1633, 8       ; 2 uses
  %niter1633.ncmp.7 = icmp eq i64 %niter1633.next.7, %unroll_iter1632
  br i1 %niter1633.ncmp.7, label %._crit_edge1503.loopexit.unr-lcssa, label %.lr.ph1502.split.us.peel.next, !llvm.loop !322

._crit_edge1503.loopexit.unr-lcssa:               ; preds = %.lr.ph1502.split.us.peel.next
  %lcmp.mod1630.not = icmp eq i64 %xtraiter1628, 0
  br i1 %lcmp.mod1630.not, label %._crit_edge1503, label %.lr.ph1502.split.us.peel.next.epil.preheader

.lr.ph1502.split.us.peel.next.epil.preheader:     ; preds = %._crit_edge1503.loopexit.unr-lcssa, %.lr.ph1502.split.us.peel.next.preheader
  %indvars.iv1535.epil.init = phi i64 [ 1, %.lr.ph1502.split.us.peel.next.preheader ], [ %indvars.iv.next1536.7, %._crit_edge1503.loopexit.unr-lcssa ]
  %lcmp.mod1631 = icmp ne i64 %xtraiter1628, 0
  call void @llvm.assume(i1 %lcmp.mod1631)
  br label %.lr.ph1502.split.us.peel.next.epil

.lr.ph1502.split.us.peel.next.epil:               ; preds = %.lr.ph1502.split.us.peel.next.epil, %.lr.ph1502.split.us.peel.next.epil.preheader
  %indvars.iv1535.epil = phi i64 [ %indvars.iv.next1536.epil, %.lr.ph1502.split.us.peel.next.epil ], [ %indvars.iv1535.epil.init, %.lr.ph1502.split.us.peel.next.epil.preheader ] ; 2 uses
  %epil.iter1629 = phi i64 [ %epil.iter1629.next, %.lr.ph1502.split.us.peel.next.epil ], [ 0, %.lr.ph1502.split.us.peel.next.epil.preheader ]
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv1535.epil
  store float %load_initial, ptr %i.mx, align 4, !tbaa !66
  %indvars.iv.next1536.epil = add nuw nsw i64 %indvars.iv1535.epil, 1
  %epil.iter1629.next = add i64 %epil.iter1629, 1 ; 2 uses
  %epil.iter1629.cmp.not = icmp eq i64 %epil.iter1629.next, %xtraiter1628
  br i1 %epil.iter1629.cmp.not, label %._crit_edge1503, label %.lr.ph1502.split.us.peel.next.epil, !llvm.loop !323

._crit_edge1503.loopexit1598.unr-lcssa:           ; preds = %.lr.ph1502.split
  %lcmp.mod1624.not = icmp eq i64 %xtraiter1622, 0
  br i1 %lcmp.mod1624.not, label %._crit_edge1503, label %.lr.ph1502.split.epil.preheader

.lr.ph1502.split.epil.preheader:                  ; preds = %._crit_edge1503.loopexit1598.unr-lcssa, %.lr.ph1502.split.preheader1597
  %indvars.iv1529.epil.init = phi i64 [ 1, %.lr.ph1502.split.preheader1597 ], [ %indvars.iv.next1530.3, %._crit_edge1503.loopexit1598.unr-lcssa ]
  %lcmp.mod1625 = icmp ne i64 %xtraiter1622, 0
  call void @llvm.assume(i1 %lcmp.mod1625)
  br label %.lr.ph1502.split.epil

.lr.ph1502.split.epil:                            ; preds = %.lr.ph1502.split.epil, %.lr.ph1502.split.epil.preheader
  %indvars.iv1529.epil = phi i64 [ %indvars.iv.next1530.epil, %.lr.ph1502.split.epil ], [ %indvars.iv1529.epil.init, %.lr.ph1502.split.epil.preheader ] ; 5 uses
  %epil.iter1623 = phi i64 [ %epil.iter1623.next, %.lr.ph1502.split.epil ], [ 0, %.lr.ph1502.split.epil.preheader ]
  %i.my = icmp sgt i64 %.sroa.2.0.copyload.i597.fr, %indvars.iv1529.epil
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i595, i64 %indvars.iv1529.epil
  %i.na = getelementptr [4 x i8], ptr %i.lw, i64 %indvars.iv1529.epil
  %i.nb = getelementptr i8, ptr %i.na, i64 -4
  %.in1505.epil = select i1 %i.my, ptr %i.mz, ptr %i.nb
  %i.nc = load float, ptr %.in1505.epil, align 4, !tbaa !66
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv1529.epil
  store float %i.nc, ptr %i.nd, align 4, !tbaa !66
  %indvars.iv.next1530.epil = add nuw nsw i64 %indvars.iv1529.epil, 1
  %epil.iter1623.next = add i64 %epil.iter1623, 1 ; 2 uses
  %epil.iter1623.cmp.not = icmp eq i64 %epil.iter1623.next, %xtraiter1622
  br i1 %epil.iter1623.cmp.not, label %._crit_edge1503, label %.lr.ph1502.split.epil, !llvm.loop !324

._crit_edge1503:                                  ; preds = %._crit_edge1503.loopexit1598.unr-lcssa, %.lr.ph1502.split.epil, %._crit_edge1503.loopexit.unr-lcssa, %.lr.ph1502.split.us.peel.next.epil, %bb.ew, %.lr.ph1502.split.preheader, %bb.ey, %bb.ex
  %i.ne = phi ptr [ %i.lw, %.lr.ph1502.split.preheader ], [ %i.lw, %bb.ey ], [ %i.lw, %bb.ex ], [ null, %bb.ew ], [ %i.lw, %._crit_edge1503.loopexit.unr-lcssa ], [ %i.lw, %.lr.ph1502.split.us.peel.next.epil ], [ %i.lw, %.lr.ph1502.split.epil ], [ %i.lw, %._crit_edge1503.loopexit1598.unr-lcssa ]
  %i.nf = sext i32 %i.lt to i64
  br label %bb.fb

bb.ez:                                            ; preds = %bb.fb, %bb.et
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.fa:                                            ; preds = %bb.ev
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

.lr.ph1502.split:                                 ; preds = %.lr.ph1502.split, %.lr.ph1502.split.preheader1597.new
  %indvars.iv1529 = phi i64 [ 1, %.lr.ph1502.split.preheader1597.new ], [ %indvars.iv.next1530.3, %.lr.ph1502.split ] ; 8 uses
  %niter1627 = phi i64 [ 0, %.lr.ph1502.split.preheader1597.new ], [ %niter1627.next.3, %.lr.ph1502.split ]
  %i.ni = icmp sgt i64 %.sroa.2.0.copyload.i597.fr, %indvars.iv1529
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i595, i64 %indvars.iv1529
  %i.nk = getelementptr [4 x i8], ptr %i.lw, i64 %indvars.iv1529
  %i.nl = getelementptr i8, ptr %i.nk, i64 -4
  %.in1505 = select i1 %i.ni, ptr %i.nj, ptr %i.nl
  %i.nm = load float, ptr %.in1505, align 4, !tbaa !66
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv1529
  store float %i.nm, ptr %i.nn, align 4, !tbaa !66
  %indvars.iv.next1530 = add nuw nsw i64 %indvars.iv1529, 1 ; 4 uses
  %i.no = icmp sgt i64 %.sroa.2.0.copyload.i597.fr, %indvars.iv.next1530
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i595, i64 %indvars.iv.next1530
  %i.nq = getelementptr [4 x i8], ptr %i.lw, i64 %indvars.iv.next1530
  %i.nr = getelementptr i8, ptr %i.nq, i64 -4
  %.in1505.1 = select i1 %i.no, ptr %i.np, ptr %i.nr
  %i.ns = load float, ptr %.in1505.1, align 4, !tbaa !66
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv.next1530
  store float %i.ns, ptr %i.nt, align 4, !tbaa !66
  %indvars.iv.next1530.1 = add nuw nsw i64 %indvars.iv1529, 2 ; 4 uses
  %i.nu = icmp sgt i64 %.sroa.2.0.copyload.i597.fr, %indvars.iv.next1530.1
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i595, i64 %indvars.iv.next1530.1
  %i.nw = getelementptr [4 x i8], ptr %i.lw, i64 %indvars.iv.next1530.1
  %i.nx = getelementptr i8, ptr %i.nw, i64 -4
  %.in1505.2 = select i1 %i.nu, ptr %i.nv, ptr %i.nx
  %i.ny = load float, ptr %.in1505.2, align 4, !tbaa !66
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv.next1530.1
  store float %i.ny, ptr %i.nz, align 4, !tbaa !66
  %indvars.iv.next1530.2 = add nuw nsw i64 %indvars.iv1529, 3 ; 4 uses
  %i.oa = icmp sgt i64 %.sroa.2.0.copyload.i597.fr, %indvars.iv.next1530.2
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i595, i64 %indvars.iv.next1530.2
  %i.oc = getelementptr [4 x i8], ptr %i.lw, i64 %indvars.iv.next1530.2
  %i.od = getelementptr i8, ptr %i.oc, i64 -4
  %.in1505.3 = select i1 %i.oa, ptr %i.ob, ptr %i.od
  %i.oe = load float, ptr %.in1505.3, align 4, !tbaa !66
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv.next1530.2
  store float %i.oe, ptr %i.of, align 4, !tbaa !66
  %indvars.iv.next1530.3 = add nuw nsw i64 %indvars.iv1529, 4 ; 2 uses
  %niter1627.next.3 = add nuw nsw i64 %niter1627, 4 ; 2 uses
  %niter1627.ncmp.3 = icmp eq i64 %niter1627.next.3, %unroll_iter1626
  br i1 %niter1627.ncmp.3, label %._crit_edge1503.loopexit1598.unr-lcssa, label %.lr.ph1502.split, !llvm.loop !325

bb.fb:                                            ; preds = %._crit_edge1503, %bb.eu
  %.sroa.17.0 = phi i64 [ %i.nf, %._crit_edge1503 ], [ %.sroa.2.0.copyload.i597.fr, %bb.eu ] ; 7 uses
  %.sroa.0683.0 = phi ptr [ %i.ne, %._crit_edge1503 ], [ %.sroa.0.0.copyload.i595, %bb.eu ] ; 7 uses
  %i.og = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf11initializedEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.fc unwind label %bb.ez

bb.fc:                                            ; preds = %bb.fb
  br i1 %i.og, label %bb.fe, label %bb.fd, !prof !58

bb.fd:                                            ; preds = %bb.fc
  %i.oh = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.oi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oh, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 214, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_112ImageBufAlgo3madERNS0_8ImageBufENS0_14Image_or_ConstES4_S4_NS0_3ROIEi, ptr noundef nonnull @.str.5) #29 ; 0 uses
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fc, %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %21)
          to label %bb.ff unwind label %bb.fi

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %22)
          to label %bb.fg unwind label %bb.fj

bb.fg:                                            ; preds = %bb.ff
  %i.oj = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.fh unwind label %bb.fk

bb.fh:                                            ; preds = %bb.fg
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 64
  %i.ol = load i64, ptr %i.ok, align 8            ; 4 uses
  %.sroa.0642.0.extract.trunc = trunc i64 %i.ol to i8 ; 4 uses
  %.sroa.22.0.extract.shift = lshr i64 %i.ol, 16
  %.sroa.22.0.extract.trunc = trunc i64 %.sroa.22.0.extract.shift to i8 ; 2 uses
  %.sroa.30671.0.extract.shift = lshr i64 %i.ol, 32 ; 2 uses
  switch i8 %i.ah, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit601 [
    i8 11, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit601.thread
    i8 4, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit601.thread
    i8 2, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit601.thread
    i8 10, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit601.thread
  ]

_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit601: ; preds = %bb.fh
  %i.om = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18ImageBuf4copyERKS1_NS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(16) %.0436, i64 267)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit601.thread unwind label %bb.fl ; 0 uses

bb.fi:                                            ; preds = %bb.fe
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

bb.fj:                                            ; preds = %bb.ff
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.fk:                                            ; preds = %bb.fg
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.fl:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit611, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit610, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit609, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fw, %bb.fv, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit603, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit601
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit601.thread: ; preds = %bb.fh, %bb.fh, %bb.fh, %bb.fh, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit601
  %.sroa.0623.0 = phi i8 [ 11, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit601 ], [ %i.ah, %bb.fh ], [ %i.ah, %bb.fh ], [ %i.ah, %bb.fh ], [ %i.ah, %bb.fh ] ; 2 uses
  %.0455 = phi ptr [ %22, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit601 ], [ %.0436, %bb.fh ], [ %.0436, %bb.fh ], [ %.0436, %bb.fh ], [ %.0436, %bb.fh ] ; 7 uses
  switch i8 %.sroa.0642.0.extract.trunc, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit603 [
    i8 11, label %bb.fm
    i8 4, label %bb.fm
    i8 2, label %bb.fm
    i8 10, label %bb.fm
  ]

bb.fm:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit601.thread, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit601.thread, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit601.thread, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit601.thread
  %i.or = icmp eq i8 %.sroa.0623.0, %.sroa.0642.0.extract.trunc
  %i.os = and i64 %i.ol, 65280
  %i.ot = icmp eq i64 %i.os, 256                  ; 2 uses
  %or.cond1446 = and i1 %i.or, %i.ot
  br i1 %or.cond1446, label %bb.fn, label %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit604.thread

bb.fn:                                            ; preds = %bb.fm
  %i.ou = icmp ne i8 %.sroa.22.0.extract.trunc, 0
  %i.ov = icmp ne i64 %.sroa.30671.0.extract.shift, 0
  %or.cond1453 = select i1 %i.ou, i1 true, i1 %i.ov
  br i1 %or.cond1453, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit603, label %bb.fo

_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit604.thread: ; preds = %bb.fm
  %27 = icmp ne i8 %.sroa.0642.0.extract.trunc, 11
  %.not1547 = xor i1 %i.ot, true
  %or.cond1447.not1494 = or i1 %27, %.not1547
  %i.ow = icmp ne i8 %.sroa.22.0.extract.trunc, 0
  %or.cond1448.not1491 = select i1 %or.cond1447.not1494, i1 true, i1 %i.ow
  %i.ox = icmp ne i64 %.sroa.30671.0.extract.shift, 0
  %or.cond1449 = select i1 %or.cond1448.not1491, i1 true, i1 %i.ox
  br i1 %or.cond1449, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit603, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit608

_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit603: ; preds = %bb.fn, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit604.thread, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit601.thread
  %i.oy = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18ImageBuf4copyERKS1_NS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 267)
          to label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit608 unwind label %bb.fl ; 0 uses

bb.fo:                                            ; preds = %bb.fn
  switch i8 %.sroa.0642.0.extract.trunc, label %.thread1395 [
    i8 11, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit608
    i8 2, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit609
    i8 10, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit610
    i8 4, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit611
  ]

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit608:  ; preds = %bb.fo, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit604.thread, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit603
  %.0454134513531382 = phi ptr [ %0, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit604.thread ], [ %21, %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit603 ], [ %0, %bb.fo ] ; 7 uses
  switch i8 %.sroa.0623.0, label %bb.ft [
    i8 11, label %bb.fp
    i8 2, label %bb.fq
    i8 10, label %bb.fr
    i8 4, label %bb.fs
  ]

bb.fp:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit608
  invoke fastcc void @_ZN11OpenImageIO4v3_1L12mad_impl_iccIffEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES8_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %.0454134513531382, ptr noundef nonnull align 8 dereferenceable(16) %.0455, ptr %.sroa.0774.0, i64 %.sroa.27.0, ptr %.sroa.0683.0, i64 %.sroa.17.0, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %bb.ft unwind label %bb.fl

bb.fq:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit608
  invoke fastcc void @_ZN11OpenImageIO4v3_1L12mad_impl_iccIfhEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES8_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %.0454134513531382, ptr noundef nonnull align 8 dereferenceable(16) %.0455, ptr %.sroa.0774.0, i64 %.sroa.27.0, ptr %.sroa.0683.0, i64 %.sroa.17.0, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %bb.ft unwind label %bb.fl

bb.fr:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit608
  invoke fastcc void @_ZN11OpenImageIO4v3_1L12mad_impl_iccIfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_NS0_4spanIKfLm18446744073709551615EEESA_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %.0454134513531382, ptr noundef nonnull align 8 dereferenceable(16) %.0455, ptr %.sroa.0774.0, i64 %.sroa.27.0, ptr %.sroa.0683.0, i64 %.sroa.17.0, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %bb.ft unwind label %bb.fl

bb.fs:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit608
  invoke fastcc void @_ZN11OpenImageIO4v3_1L12mad_impl_iccIftEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES8_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %.0454134513531382, ptr noundef nonnull align 8 dereferenceable(16) %.0455, ptr %.sroa.0774.0, i64 %.sroa.27.0, ptr %.sroa.0683.0, i64 %.sroa.17.0, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %bb.ft unwind label %bb.fl

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit609:  ; preds = %bb.fo
  invoke fastcc void @_ZN11OpenImageIO4v3_1L12mad_impl_iccIhhEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES8_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.0455, ptr %.sroa.0774.0, i64 %.sroa.27.0, ptr %.sroa.0683.0, i64 %.sroa.17.0, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %.thread1395 unwind label %bb.fl

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit610:  ; preds = %bb.fo
  invoke fastcc void @_ZN11OpenImageIO4v3_1L12mad_impl_iccIN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_NS0_4spanIKfLm18446744073709551615EEESA_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.0455, ptr %.sroa.0774.0, i64 %.sroa.27.0, ptr %.sroa.0683.0, i64 %.sroa.17.0, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %.thread1395 unwind label %bb.fl

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit611:  ; preds = %bb.fo
  invoke fastcc void @_ZN11OpenImageIO4v3_1L12mad_impl_iccIttEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES8_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.0455, ptr %.sroa.0774.0, i64 %.sroa.27.0, ptr %.sroa.0683.0, i64 %.sroa.17.0, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %.thread1395 unwind label %bb.fl

bb.ft:                                            ; preds = %bb.fs, %bb.fr, %bb.fq, %bb.fp, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit608
  %.3442 = phi i8 [ 1, %bb.fs ], [ 0, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit608 ], [ 1, %bb.fp ], [ 1, %bb.fq ], [ 1, %bb.fr ] ; 2 uses
  %.not484 = icmp eq ptr %.0454134513531382, %0
  br i1 %.not484, label %.thread1395, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.oz = trunc nuw i8 %.3442 to i1
  br i1 %i.oz, label %bb.fv, label %bb.fx

bb.fv:                                            ; preds = %bb.fu
  %i.pa = invoke i64 @_ZNK11OpenImageIO4v3_18ImageBuf9pixeltypeEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.fw unwind label %bb.fl

bb.fw:                                            ; preds = %bb.fv
  %i.pb = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18ImageBuf4copyERKS1_NS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.0454134513531382, i64 %i.pa)
          to label %.thread1395 unwind label %bb.fl ; 0 uses

bb.fx:                                            ; preds = %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8geterrorB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(16) %.0454134513531382, i1 noundef zeroext true)
          to label %bb.fy unwind label %bb.ga

bb.fy:                                            ; preds = %bb.fx
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA3_cJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(3) @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.fz unwind label %bb.gb

bb.fz:                                            ; preds = %bb.fy
  %i.pc = load ptr, ptr %23, align 8, !tbaa !63   ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.pe = icmp eq ptr %i.pc, %i.pd
  br i1 %i.pe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i612

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i612: ; preds = %bb.fz
  %i.pf = load i64, ptr %i.pd, align 8, !tbaa !64
  %i.pg = add i64 %i.pf, 1
  call void @_ZdlPvm(ptr noundef %i.pc, i64 noundef %i.pg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614: ; preds = %bb.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i612
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br label %.thread1395

bb.ga:                                            ; preds = %bb.fx
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617

bb.gb:                                            ; preds = %bb.fy
  %i.pi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pj = load ptr, ptr %23, align 8, !tbaa !63   ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.pl = icmp eq ptr %i.pj, %i.pk
  br i1 %i.pl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615: ; preds = %bb.gb
  %i.pm = load i64, ptr %i.pk, align 8, !tbaa !64
  %i.pn = add i64 %i.pm, 1
  call void @_ZdlPvm(ptr noundef %i.pj, i64 noundef %i.pn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617: ; preds = %bb.gb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615, %bb.ga
  %.pn = phi { ptr, i32 } [ %i.ph, %bb.ga ], [ %i.pi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615 ], [ %i.pi, %bb.gb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br label %bb.gc

.thread1395:                                      ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit611, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit610, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit609, %bb.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614, %bb.fw, %bb.ft
  %.34421399 = phi i8 [ %.3442, %bb.ft ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614 ], [ 1, %bb.fw ], [ 1, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit609 ], [ 0, %bb.fo ], [ 1, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit610 ], [ 1, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit611 ]
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %bb.gf

bb.gc:                                            ; preds = %bb.fl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617, %bb.fk
  %.pn486.pn = phi { ptr, i32 } [ %i.op, %bb.fk ], [ %i.oq, %bb.fl ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617 ]
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #28
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.fj
  %.pn486.pn.pn = phi { ptr, i32 } [ %.pn486.pn, %bb.gc ], [ %i.oo, %bb.fj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #28
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.fi
  %.pn486.pn.pn.pn = phi { ptr, i32 } [ %.pn486.pn.pn, %bb.gd ], [ %i.on, %bb.fi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %bb.gh

bb.gf:                                            ; preds = %.thread1321, %.thread1395, %.thread1173, %.thread1247
  %.5444 = phi i8 [ %.04391177, %.thread1173 ], [ %.14401251, %.thread1247 ], [ %.24411325, %.thread1321 ], [ %.34421399, %.thread1395 ]
  %i.po = trunc nuw i8 %.5444 to i1
  br label %bb.gg

bb.gg:                                            ; preds = %bb.am, %bb.gf
  %.0 = phi i1 [ %i.po, %bb.gf ], [ false, %bb.am ]
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.gl

bb.gh:                                            ; preds = %bb.dm, %bb.dn, %bb.es, %bb.ge, %bb.fa, %bb.ez, %bb.ca, %bb.cb, %bb.df, %bb.aw, %bb.bt, %bb.ae
  %.pn521.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.ae ], [ %.pn521.pn.pn.pn, %bb.bt ], [ %i.cp, %bb.aw ], [ %i.fj, %bb.cb ], [ %.pn510.pn.pn.pn, %bb.df ], [ %i.fi, %bb.ca ], [ %.pn497.pn.pn.pn, %bb.es ], [ %i.jh, %bb.dm ], [ %i.ji, %bb.dn ], [ %.pn486.pn.pn.pn, %bb.ge ], [ %i.ng, %bb.ez ], [ %i.nh, %bb.fa ]
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #28
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.ad
  %.pn521.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn521.pn.pn.pn.pn.pn, %bb.gh ], [ %i.ba, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #28
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.ac
  %.pn521.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn521.pn.pn.pn.pn.pn.pn, %bb.gi ], [ %i.az, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #28
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.ab
  %.pn521.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn521.pn.pn.pn.pn.pn.pn.pn, %bb.gj ], [ %i.ay, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.gm

bb.gl:                                            ; preds = %bb.n, %bb.d, %bb.gg
  %.1 = phi i1 [ %.0, %bb.gg ], [ false, %bb.d ], [ false, %bb.n ]
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret i1 %.1

bb.gm:                                            ; preds = %bb.aa, %bb.gk, %bb.e
  %.pn521.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %.pn521.pn.pn.pn.pn.pn.pn.pn.pn, %bb.gk ], [ %i.ax, %bb.aa ]
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  resume { ptr, i32 } %.pn521.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef dead_on_return %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
