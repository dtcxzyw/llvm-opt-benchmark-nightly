Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matrix_transform?download=true
inline.NumInlined: 867
inline.NumDeleted: 382
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN2cv6flipNDERKNS_11_InputArrayERKNS_12_OutputArrayEi:bb.a
  %i.bv = load i8, ptr %.010.i.i, align 1, !tbaa !40
  store i8 %i.bv, ptr %.079.i.i, align 1, !tbaa !40
  store i8 %i.bu, ptr %.010.i.i, align 1, !tbaa !40
  %i.bw = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 1 ; 2 uses
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !40
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !40
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !40
  store i8 %i.by, ptr %i.bx, align 1, !tbaa !40
  %i.ca = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 2 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 2 ; 2 uses
  %i.cc = load i8, ptr %i.ca, align 1, !tbaa !40
  %i.cd = load i8, ptr %i.cb, align 1, !tbaa !40
  store i8 %i.cd, ptr %i.ca, align 1, !tbaa !40
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !40
  %i.ce = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 3 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 3 ; 2 uses
  %i.cg = load i8, ptr %i.ce, align 1, !tbaa !40
  %i.ch = load i8, ptr %i.cf, align 1, !tbaa !40
  store i8 %i.ch, ptr %i.ce, align 1, !tbaa !40
  store i8 %i.cg, ptr %i.cf, align 1, !tbaa !40
  %i.ci = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i.3 = icmp eq ptr %i.ci, %i.bn
  br i1 %.not.i.i.3, label %_ZSt11swap_rangesIPhS0_ET0_T_S2_S1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !145

_ZSt11swap_rangesIPhS0_ET0_T_S2_S1_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next55.i, %wide.trip.count59.i
  br i1 %exitcond60.not.i, label %._crit_edge46.i, label %iter.check, !llvm.loop !146

_ZN2cvL10flipNDImplEPhPKiPKmi.exit:               ; preds = %._crit_edge46.i, %.preheader.lr.ph.i, %.loopexit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %_ZN2cvL10flipNDImplEPhPKiPKmi.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !58
  %.not.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #19
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

bb.p:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.q

bb.q:                                             ; preds = %bb.i, %bb.p, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.co, %bb.p ], [ %i.t, %bb.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.d
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.q ], [ %i.h, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv9broadcastERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 20 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %6 = alloca %"class.std::vector", align 8       ; 17 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 20 uses
  %8 = alloca %"class.cv::AutoBuffer", align 8    ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::vector.3", align 8    ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv9broadcastERKNS_11_InputArrayES2_RKNS_12_OutputArrayEE26__cv_trace_location_fn1178)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.b = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.c = icmp eq i32 %i.b, 65536
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43, !noalias !215
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %i.e)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.d

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.f = load i32, ptr %4, align 8, !tbaa !52     ; 2 uses
  %i.g = and i32 %i.f, 16384
  %.not472 = icmp eq i32 %i.g, 0
  br i1 %.not472, label %bb.f, label %bb.h

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.e:                                             ; preds = %bb.i, %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.f:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  invoke void @_ZN2cv6detail17check_failed_trueEbRKNS0_12CheckContextE(i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv9broadcastERKNS_11_InputArrayES2_RKNS_12_OutputArrayEE16__cv_check__1181) #20
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.j = lshr i32 %i.f, 5
  %i.k = and i32 %i.j, 127                        ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = add nuw nsw i32 %i.k, 1
  invoke void @_ZN2cv6detail24check_failed_MatChannelsEiiRKNS0_12CheckContextE(i32 noundef %i.m, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv9broadcastERKNS_11_InputArrayES2_RKNS_12_OutputArrayEE16__cv_check__1182) #20
          to label %bb.j unwind label %bb.e

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.n = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc335 unwind label %bb.n

.noexc335:                                        ; preds = %bb.k
  %i.o = icmp eq i32 %i.n, 65536
  br i1 %i.o, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc335
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !43, !noalias !216
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %i.q)
          to label %_ZNK2cv11_InputArray6getMatEi.exit338 unwind label %bb.n

bb.m:                                             ; preds = %.noexc335
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit338 unwind label %bb.n

_ZNK2cv11_InputArray6getMatEi.exit338:            ; preds = %bb.l, %bb.m
  %i.r = load i32, ptr %5, align 8, !tbaa !52
  %i.s = and i32 %i.r, 4095                       ; 2 uses
  %i.t = icmp eq i32 %i.s, 4
  br i1 %i.t, label %bb.r, label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.o:                                             ; preds = %bb.p
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.p:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit338
  invoke void @_ZN2cv6detail20check_failed_MatTypeEiiRKNS0_12CheckContextE(i32 noundef %i.s, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv9broadcastERKNS_11_InputArrayES2_RKNS_12_OutputArrayEE16__cv_check__1185) #20
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit338
  %i.w = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %5)
          to label %bb.s unwind label %bb.t       ; 11 uses

bb.s:                                             ; preds = %bb.r
  %i.x = trunc i64 %i.w to i32                    ; 12 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55   ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !62 ; 5 uses
  %.not = icmp sgt i32 %i.ab, %i.x
  br i1 %.not, label %bb.u, label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.u:                                             ; preds = %bb.s
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.ab, i32 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv9broadcastERKNS_11_InputArrayES2_RKNS_12_OutputArrayEE16__cv_check__1192) #20
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.x:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 84 ; 4 uses
  %i.af = sext i32 %i.ab to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.idx = shl nsw i64 %i.af, 2                    ; 6 uses
  %i.ag = icmp ugt i64 %.idx, 9223372036854775804
  br i1 %i.ag, label %bb.y, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #20
          to label %.noexc.i unwind label %bb.ab

.noexc.i:                                         ; preds = %bb.y
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.x
  %.not.i.i.i = icmp eq i32 %i.ab, 0              ; 2 uses
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr null, i64 %.idx ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !67
  br label %bb.ac

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #18
          to label %.noexc4.i unwind label %bb.ab ; 6 uses

.noexc4.i:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  store ptr %i.aj, ptr %6, align 8, !tbaa !61
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !67
  %i.am = icmp samesign ugt i64 %.idx, 4
  br i1 %i.am, label %bb.z, label %bb.aa, !prof !217

bb.z:                                             ; preds = %.noexc4.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aj, ptr nonnull align 4 %i.ae, i64 %.idx, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %.noexc4.i
  %i.an = load i32, ptr %i.ae, align 4, !tbaa !16
  store i32 %i.an, ptr %i.aj, align 4, !tbaa !16
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i, %bb.y
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %6, align 8, !tbaa !61    ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i5.i, label %.body, label %.body.sink.split

bb.ac:                                            ; preds = %bb.aa, %bb.z, %.thread.i.i
  %i.aq = phi ptr [ %i.aj, %bb.z ], [ null, %.thread.i.i ], [ %i.aj, %bb.aa ] ; 3 uses
  %i.ar = phi ptr [ %i.ak, %bb.z ], [ %i.ah, %.thread.i.i ], [ %i.ak, %bb.aa ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !60
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %i.aw = ashr exact i64 %i.av, 2                 ; 2 uses
  %sext = shl i64 %i.w, 32                        ; 5 uses
  %i.ax = ashr exact i64 %sext, 32                ; 9 uses
  %i.ay = icmp ult i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.az = sub nuw nsw i64 %i.ax, %i.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 1, ptr %i.a, align 4, !tbaa !16
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.aq, i64 noundef %i.az, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.pre = load ptr, ptr %i.as, align 8, !tbaa !60
  %.pre710 = load ptr, ptr %6, align 8, !tbaa !61 ; 2 uses
  %.pre712 = ptrtoint ptr %.pre to i64
  %.pre713 = ptrtoint ptr %.pre710 to i64
  %.pre715 = sub i64 %.pre712, %.pre713
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ea

bb.ag:                                            ; preds = %bb.ae, %bb.ac
  %.pre-phi716 = phi i64 [ %.pre715, %bb.ae ], [ %i.av, %bb.ac ]
  %i.bb = phi ptr [ %.pre710, %bb.ae ], [ %i.aq, %bb.ac ]
  %i.bc = lshr exact i64 %.pre-phi716, 2          ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.ag
  %wide.trip.count = and i64 %i.bc, 2147483647
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.al, %bb.ag
  %i.bf = load ptr, ptr %i.y, align 8, !tbaa !55
  %i.bg = load i32, ptr %4, align 8, !tbaa !52
  %i.bh = and i32 %i.bg, 4095
  invoke void @_ZNK2cv12_OutputArray6createEiPKiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.x, ptr noundef %i.bf, i32 noundef %i.bh, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.am unwind label %bb.aq

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.al
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.al ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !16 ; 3 uses
  %.not321 = icmp eq i32 %i.bj, 1
  br i1 %.not321, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !16 ; 2 uses
  %i.bm = icmp eq i32 %i.bj, %i.bl
  br i1 %i.bm, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.bj, i32 noundef %i.bl, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv9broadcastERKNS_11_InputArrayES2_RKNS_12_OutputArrayEE16__cv_check__1200) #20
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.al:                                            ; preds = %bb.ah, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !153

bb.am:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.bo = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc340 unwind label %bb.ar

.noexc340:                                        ; preds = %bb.am
  %i.bp = icmp eq i32 %i.bo, 65536
  br i1 %i.bp, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.noexc340
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !43, !noalias !218
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %i.br)
          to label %_ZNK2cv11_InputArray6getMatEi.exit343 unwind label %bb.ar

bb.ao:                                            ; preds = %.noexc340
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit343 unwind label %bb.ar

_ZNK2cv11_InputArray6getMatEi.exit343:            ; preds = %bb.an, %bb.ao
  %i.bs = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit343
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_ZNSt6vectorIiSaIiEED2Ev.exit386, label %bb.at

bb.aq:                                            ; preds = %._crit_edge
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.ar:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.as:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit343
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit396

bb.at:                                            ; preds = %bb.ap
  %i.bx = icmp ugt i64 %i.ax, 2305843009213693951
  br i1 %i.bx, label %bb.au, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.au:                                            ; preds = %bb.at
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #20
          to label %.noexc344 unwind label %bb.ax

.noexc344:                                        ; preds = %bb.au
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.at
  %.not.i.i.i.i = icmp eq i64 %sext, 0            ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.by = ashr exact i64 %sext, 30                ; 3 uses
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #18
          to label %.noexc345 unwind label %bb.ax ; 4 uses

.noexc345:                                        ; preds = %bb.av
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bz, i8 0, i64 %i.by, i1 false), !tbaa !16
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ax
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  %i.cc = ptrtoint ptr %i.ca to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc345, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cc, %.noexc345 ] ; 2 uses
  %.sroa.0439.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bz, %.noexc345 ] ; 24 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cb, %.noexc345 ] ; 3 uses
  %i.cd = load ptr, ptr %i.as, align 8, !tbaa !60
  %i.ce = load ptr, ptr %6, align 8, !tbaa !61    ; 5 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64               ; 2 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 2 uses
  %i.ci = lshr exact i64 %i.ch, 2                 ; 3 uses
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph506.preheader, label %._crit_edge507

.lr.ph506.preheader:                              ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %wide.trip.count600 = and i64 %i.ci, 2147483647 ; 4 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count600, 16
  br i1 %min.iters.check, label %.lr.ph506.preheader1055, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph506.preheader
  %14 = ptrtoaddr ptr %.sroa.0439.0 to i64        ; 2 uses
  %i.cl = sub i64 %i.cg, %14
  %diff.check = icmp ugt i64 %i.cl, -32
  %15 = ptrtoaddr ptr %i.z to i64
  %i.cm = sub i64 %15, %14
  %diff.check807 = icmp ugt i64 %i.cm, -32
  %conflict.rdx = or i1 %diff.check, %diff.check807
  br i1 %conflict.rdx, label %.lr.ph506.preheader1055, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ci, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue824, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue824 ] ; 11 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load = load <4 x i32>, ptr %i.cn, align 4, !tbaa !16
  %wide.load808 = load <4 x i32>, ptr %i.co, align 4, !tbaa !16
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %wide.load809 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !16
  %wide.load810 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !16
  %i.cr = icmp eq <4 x i32> %wide.load, %wide.load809 ; 4 uses
  %i.cs = icmp eq <4 x i32> %wide.load808, %wide.load810 ; 4 uses
  %i.ct = extractelement <4 x i1> %i.cr, i64 0
  br i1 %i.ct, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0439.0, i64 %index
  store i32 1, ptr %i.cu, align 4, !tbaa !16
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cv = extractelement <4 x i1> %i.cr, i64 1
  br i1 %i.cv, label %pred.store.if811, label %pred.store.continue812

pred.store.if811:                                 ; preds = %pred.store.continue
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0439.0, i64 %index
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  store i32 1, ptr %i.cx, align 4, !tbaa !16
  br label %pred.store.continue812

pred.store.continue812:                           ; preds = %pred.store.if811, %pred.store.continue
  %i.cy = extractelement <4 x i1> %i.cr, i64 2
  br i1 %i.cy, label %pred.store.if813, label %pred.store.continue814

pred.store.if813:                                 ; preds = %pred.store.continue812
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0439.0, i64 %index
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i32 1, ptr %i.da, align 4, !tbaa !16
  br label %pred.store.continue814

pred.store.continue814:                           ; preds = %pred.store.if813, %pred.store.continue812
  %i.db = extractelement <4 x i1> %i.cr, i64 3
  br i1 %i.db, label %pred.store.if815, label %pred.store.continue816

pred.store.if815:                                 ; preds = %pred.store.continue814
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0439.0, i64 %index
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 1, ptr %i.dd, align 4, !tbaa !16
  br label %pred.store.continue816

pred.store.continue816:                           ; preds = %pred.store.if815, %pred.store.continue814
  %i.de = extractelement <4 x i1> %i.cs, i64 0
  br i1 %i.de, label %pred.store.if817, label %pred.store.continue818

pred.store.if817:                                 ; preds = %pred.store.continue816
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0439.0, i64 %index
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store i32 1, ptr %i.dg, align 4, !tbaa !16
  br label %pred.store.continue818

pred.store.continue818:                           ; preds = %pred.store.if817, %pred.store.continue816
  %i.dh = extractelement <4 x i1> %i.cs, i64 1
  br i1 %i.dh, label %pred.store.if819, label %pred.store.continue820

pred.store.if819:                                 ; preds = %pred.store.continue818
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0439.0, i64 %index
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  store i32 1, ptr %i.dj, align 4, !tbaa !16
  br label %pred.store.continue820

pred.store.continue820:                           ; preds = %pred.store.if819, %pred.store.continue818
  %i.dk = extractelement <4 x i1> %i.cs, i64 2
  br i1 %i.dk, label %pred.store.if821, label %pred.store.continue822

pred.store.if821:                                 ; preds = %pred.store.continue820
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0439.0, i64 %index
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store i32 1, ptr %i.dm, align 4, !tbaa !16
  br label %pred.store.continue822

pred.store.continue822:                           ; preds = %pred.store.if821, %pred.store.continue820
  %i.dn = extractelement <4 x i1> %i.cs, i64 3
  br i1 %i.dn, label %pred.store.if823, label %pred.store.continue824

pred.store.if823:                                 ; preds = %pred.store.continue822
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0439.0, i64 %index
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 28
  store i32 1, ptr %i.dp, align 4, !tbaa !16
  br label %pred.store.continue824

pred.store.continue824:                           ; preds = %pred.store.if823, %pred.store.continue822
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %pred.store.continue824
  %cmp.n = icmp eq i64 %wide.trip.count600, %n.vec
  br i1 %cmp.n, label %._crit_edge507, label %.lr.ph506.preheader1055

.lr.ph506.preheader1055:                          ; preds = %vector.memcheck, %.lr.ph506.preheader, %middle.block
  %indvars.iv597.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph506.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %indvars.iv597.ph, 1
  %i.dr = and i64 %i.ch, 4
  %lcmp.mod.not = icmp eq i64 %i.dr, 0
  br i1 %lcmp.mod.not, label %.lr.ph506.prol.loopexit, label %.lr.ph506.prol

.lr.ph506.prol:                                   ; preds = %.lr.ph506.preheader1055
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv597.ph
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !16
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv597.ph
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !16
  %i.dw = icmp eq i32 %i.dt, %i.dv
  br i1 %i.dw, label %bb.aw, label %.lr.ph506.prol.loopexit.unr-lcssa

bb.aw:                                            ; preds = %.lr.ph506.prol
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0439.0, i64 %indvars.iv597.ph
  store i32 1, ptr %i.dx, align 4, !tbaa !16
  br label %.lr.ph506.prol.loopexit.unr-lcssa

.lr.ph506.prol.loopexit.unr-lcssa:                ; preds = %bb.aw, %.lr.ph506.prol
  %indvars.iv.next598.prol = or disjoint i64 %indvars.iv597.ph, 1
  br label %.lr.ph506.prol.loopexit

.lr.ph506.prol.loopexit:                          ; preds = %.lr.ph506.prol.loopexit.unr-lcssa, %.lr.ph506.preheader1055
  %indvars.iv597.unr = phi i64 [ %indvars.iv597.ph, %.lr.ph506.preheader1055 ], [ %indvars.iv.next598.prol, %.lr.ph506.prol.loopexit.unr-lcssa ]
  %i.dy = icmp eq i64 %wide.trip.count600, %.neg
  br i1 %i.dy, label %._crit_edge507, label %.lr.ph506

._crit_edge507:                                   ; preds = %.lr.ph506.prol.loopexit, %bb.ba, %middle.block, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %.not5.i = icmp eq ptr %.sroa.0439.0, %.0.i.i.i.i.i.i.i
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SA_S9_T1_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge507
  %i.dz = ptrtoaddr ptr %.0.i.i.i.i.i.i.i to i64
  %16 = ptrtoaddr ptr %.sroa.0439.0 to i64
  %i.ea = add i64 %i.dz, -4
  %i.eb = sub i64 %i.ea, %16                      ; 2 uses
  %i.ec = lshr i64 %i.eb, 2
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %min.iters.check826 = icmp ult i64 %i.eb, 28
  br i1 %min.iters.check826, label %.lr.ph.i.preheader1051, label %vector.ph827

vector.ph827:                                     ; preds = %.lr.ph.i.preheader
  %n.vec828 = and i64 %i.ed, 9223372036854775800  ; 3 uses
  %i.ee = shl i64 %n.vec828, 2
  %i.ef = getelementptr i8, ptr %.sroa.0439.0, i64 %i.ee
  br label %vector.body829

vector.body829:                                   ; preds = %vector.body829, %vector.ph827
  %index830 = phi i64 [ 0, %vector.ph827 ], [ %index.next834, %vector.body829 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph827 ], [ %i.ei, %vector.body829 ]
  %vec.phi831 = phi <4 x i32> [ splat (i32 1), %vector.ph827 ], [ %i.ej, %vector.body829 ]
  %i.eg = shl i64 %index830, 2
  %next.gep = getelementptr i8, ptr %.sroa.0439.0, i64 %i.eg ; 2 uses
  %i.eh = getelementptr i8, ptr %next.gep, i64 16
  %wide.load832 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !16
  %wide.load833 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !16
  %i.ei = mul <4 x i32> %wide.load832, %vec.phi   ; 2 uses
  %i.ej = mul <4 x i32> %wide.load833, %vec.phi831 ; 2 uses
  %index.next834 = add nuw i64 %index830, 8       ; 2 uses
  %i.ek = icmp eq i64 %index.next834, %n.vec828
  br i1 %i.ek, label %middle.block835, label %vector.body829, !llvm.loop !157

middle.block835:                                  ; preds = %vector.body829
  %bin.rdx = mul <4 x i32> %i.ej, %i.ei
  %i.el = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n836 = icmp eq i64 %i.ed, %n.vec828
  br i1 %cmp.n836, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SA_S9_T1_.exit, label %.lr.ph.i.preheader1051

.lr.ph.i.preheader1051:                           ; preds = %.lr.ph.i.preheader, %middle.block835
  %.07.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.el, %middle.block835 ]
  %.sroa.02.06.i.ph = phi ptr [ %.sroa.0439.0, %.lr.ph.i.preheader ], [ %i.ef, %middle.block835 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader1051, %.lr.ph.i
  %.07.i = phi i32 [ %i.en, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader1051 ]
  %.sroa.02.06.i = phi ptr [ %i.eo, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader1051 ] ; 2 uses
  %i.em = load i32, ptr %.sroa.02.06.i, align 4, !tbaa !16
  %i.en = mul nsw i32 %i.em, %.07.i               ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.eo, %.0.i.i.i.i.i.i.i
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SA_S9_T1_.exit, label %.lr.ph.i, !llvm.loop !158

bb.ax:                                            ; preds = %bb.av, %bb.au
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit396

.lr.ph506:                                        ; preds = %.lr.ph506.prol.loopexit, %bb.ba
  %indvars.iv597 = phi i64 [ %indvars.iv.next598.1, %bb.ba ], [ %indvars.iv597.unr, %.lr.ph506.prol.loopexit ] ; 5 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv597
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !16
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv597
  %i.et = load i32, ptr %i.es, align 4, !tbaa !16
  %i.eu = icmp eq i32 %i.er, %i.et
  br i1 %i.eu, label %bb.ay, label %.lr.ph506.1

bb.ay:                                            ; preds = %.lr.ph506
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0439.0, i64 %indvars.iv597
  store i32 1, ptr %i.ev, align 4, !tbaa !16
  br label %.lr.ph506.1

.lr.ph506.1:                                      ; preds = %.lr.ph506, %bb.ay
  %indvars.iv.next598 = add nuw nsw i64 %indvars.iv597, 1 ; 3 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.next598
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !16
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next598
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !16
  %i.fa = icmp eq i32 %i.ex, %i.ez
  br i1 %i.fa, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.lr.ph506.1
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0439.0, i64 %indvars.iv.next598
  store i32 1, ptr %i.fb, align 4, !tbaa !16
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.lr.ph506.1
  %indvars.iv.next598.1 = add nuw nsw i64 %indvars.iv597, 2 ; 2 uses
  %exitcond601.not.1 = icmp eq i64 %indvars.iv.next598.1, %wide.trip.count600
  br i1 %exitcond601.not.1, label %._crit_edge507, label %.lr.ph506, !llvm.loop !159

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SA_S9_T1_.exit: ; preds = %.lr.ph.i, %middle.block835
  %.lcssa802 = phi i32 [ %i.el, %middle.block835 ], [ %i.en, %.lr.ph.i ]
  %.not300 = icmp eq i32 %.lcssa802, 0
  br i1 %.not300, label %bb.bd, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SA_S9_T1_.exit.thread

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SA_S9_T1_.exit.thread: ; preds = %._crit_edge507, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SA_S9_T1_.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !55
  %i.fe = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !55
  %i.fg = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SA_S9_T1_.exit.thread
  %i.fh = load i32, ptr %7, align 8, !tbaa !52    ; 2 uses
  %i.fi = lshr i32 %i.fh, 5
  %i.fj = and i32 %i.fi, 127
  %i.fk = add nuw nsw i32 %i.fj, 1
  %i.fl = shl i32 %i.fh, 2
  %i.fm = and i32 %i.fl, 124
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = lshr i64 1275511473185297, %i.fn
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = and i32 %i.fp, 15
  %i.fr = mul nuw nsw i32 %i.fq, %i.fk
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = mul i64 %i.fg, %i.fs
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ff, ptr align 1 %i.fd, i64 %i.ft, i1 false)
  br label %.loopexit

bb.bc:                                            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SA_S9_T1_.exit.thread
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.bd:                                            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiSt10multipliesIiEET0_T_SA_S9_T1_.exit
  %i.fv = icmp slt i32 %i.x, 2
  br i1 %i.fv, label %bb.be, label %bb.bm

bb.be:                                            ; preds = %bb.bd
  %i.fw = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.bf unwind label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.fx = icmp eq i64 %i.fw, 1
  br i1 %i.fx, label %bb.bg, label %bb.bm

bb.bg:                                            ; preds = %bb.bf
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !55
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !55
  %i.gc = load i32, ptr %4, align 8, !tbaa !52    ; 2 uses
  %i.gd = lshr i32 %i.gc, 5
  %i.ge = and i32 %i.gd, 127
  %i.gf = add nuw nsw i32 %i.ge, 1
  %i.gg = shl i32 %i.gc, 2
  %i.gh = and i32 %i.gg, 124
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = lshr i64 1275511473185297, %i.gi
  %i.gk = trunc i64 %i.gj to i32
  %i.gl = and i32 %i.gk, 15
  %i.gm = mul nuw nsw i32 %i.gl, %i.gf
  %i.gn = zext nneg i32 %i.gm to i64              ; 2 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bl, %bb.bg
  %.0295 = phi i64 [ 0, %bb.bg ], [ %i.gu, %bb.bl ] ; 3 uses
  %i.go = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.gp = icmp ult i64 %.0295, %i.go
  br i1 %i.gp, label %bb.bl, label %.loopexit

bb.bj:                                            ; preds = %bb.be
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.bk:                                            ; preds = %bb.bh
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.bl:                                            ; preds = %bb.bi
  %i.gs = mul i64 %.0295, %i.gn
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gs
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gt, ptr align 1 %i.fz, i64 %i.gn, i1 false)
  %i.gu = add nuw i64 %.0295, 1
  br label %bb.bh, !llvm.loop !160

bb.bm:                                            ; preds = %bb.bf, %bb.bd
  %i.gv = load i32, ptr %i.aa, align 4, !tbaa !62 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !62 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 84 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.gz = shl i64 %i.w, 2
  %i.ha = and i64 %i.gz, 4294967292               ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.hb, ptr %8, align 8, !tbaa !220
  %i.hc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.not.i.i = icmp ugt i32 %i.x, 34
  store i64 %i.ha, ptr %i.hc, align 8, !tbaa !221
  br i1 %.not.i.i, label %bb.bn, label %_ZN2cv10AutoBufferImLm136EEC2Em.exit

bb.bn:                                            ; preds = %bb.bm
  %i.hd = shl nuw nsw i64 %i.ha, 3
  %i.he = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hd) #18
          to label %.noexc346 unwind label %bb.cb ; 2 uses

.noexc346:                                        ; preds = %bb.bn
  store ptr %i.he, ptr %8, align 8, !tbaa !220
  br label %_ZN2cv10AutoBufferImLm136EEC2Em.exit

end_hunk_0
