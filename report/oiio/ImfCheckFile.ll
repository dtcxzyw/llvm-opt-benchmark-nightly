inline.NumInlined: 708
inline.NumDeleted: 300
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113readMultiPartERNS_18MultiPartInputFileEbb:bb.a

bb.ho:                                            ; preds = %bb.hj, %_ZN27OpenImageIO_v3_1_Imf__3_3_57Array2DIjE11resizeEraseEll.exit.i
  %i.zq = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayINS_7Array2DIPfEEED2Ev.exit216.i

bb.hp:                                            ; preds = %bb.hk, %.preheader337.i
  %i.zr = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayINS_7Array2DIPfEEED2Ev.exit216.i

bb.hq:                                            ; preds = %bb.hl
  %i.zs = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0238.0.i) #31
  %i.zt = add i32 %.0188.i, 1
  br label %.preheader337.i, !llvm.loop !183

._crit_edge.i147:                                 ; preds = %bb.hv, %.noexc205.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i32 0, ptr %i.t, align 8, !tbaa !137
  store ptr null, ptr %i.u, align 8, !tbaa !142
  store ptr %i.t, ptr %i.v, align 8, !tbaa !143
  store ptr %i.t, ptr %i.w, align 8, !tbaa !144
  store i64 0, ptr %i.x, align 8, !tbaa !145
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_55SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %i.y, i32 noundef 1, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferC2Ev.exit.i149 unwind label %bb.hr

bb.hr:                                            ; preds = %._crit_edge.i147
  %i.zu = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameENS0_9DeepSliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(104) %3) #25
  br label %.body.i148

bb.hs:                                            ; preds = %bb.hm
  %i.zv = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayINS_7Array2DIPfEEED2Ev.exit216.i

bb.ht:                                            ; preds = %bb.hv, %.lr.ph.i143
  %indvars.iv.i144 = phi i64 [ 0, %.lr.ph.i143 ], [ %indvars.iv.next.i145, %bb.hv ] ; 2 uses
  %i.zw = getelementptr inbounds nuw [24 x i8], ptr %i.zh, i64 %indvars.iv.i144 ; 3 uses
  %i.zx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.zo) #29
          to label %.noexc206.i unwind label %bb.hw

.noexc206.i:                                      ; preds = %bb.ht
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zw, i64 16 ; 2 uses
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !184 ; 2 uses
  %i.aaa = icmp eq ptr %i.zz, null
  br i1 %i.aaa, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %.noexc206.i
  call void @_ZdaPv(ptr noundef nonnull %i.zz) #26
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %.noexc206.i
  store i64 %i.yn, ptr %i.zw, align 8, !tbaa !187
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zw, i64 8
  store i64 %i.ym, ptr %i.aab, align 8, !tbaa !188
  store ptr %i.zx, ptr %i.zy, align 8, !tbaa !184
  %indvars.iv.next.i145 = add nuw nsw i64 %indvars.iv.i144, 1 ; 2 uses
  %exitcond.not.i146 = icmp eq i64 %indvars.iv.next.i145, %i.zd
  br i1 %exitcond.not.i146, label %._crit_edge.i147, label %bb.ht, !llvm.loop !189

bb.hw:                                            ; preds = %bb.ht
  %i.aac = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ke

_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferC2Ev.exit.i149: ; preds = %._crit_edge.i147
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.aad = shl nsw i64 %i.ym, 2
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_55SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %4, i32 noundef 0, ptr noundef nonnull %i.yy, i64 noundef 4, i64 noundef %i.aad, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.hx unwind label %bb.ie

bb.hx:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferC2Ev.exit.i149
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBuffer22insertSampleCountSliceERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(50) %4)
          to label %bb.hy unwind label %bb.ie

bb.hy:                                            ; preds = %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.aae = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.yb)
          to label %bb.hz unwind label %bb.if

bb.hz:                                            ; preds = %bb.hy
  %i.aaf = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aae)
          to label %.preheader336.i unwind label %bb.if

.preheader336.i:                                  ; preds = %bb.hz
  %i.aag = shl nsw i32 %.fr, 3
  %i.aah = sext i32 %i.aag to i64
  br label %bb.ia

bb.ia:                                            ; preds = %bb.ij, %.preheader336.i
  %indvars.iv614.i = phi i64 [ 0, %.preheader336.i ], [ %indvars.iv.next615.i, %bb.ij ] ; 2 uses
  %.sroa.0228.0.i = phi ptr [ %i.aaf, %.preheader336.i ], [ %i.aar, %bb.ij ] ; 3 uses
  %i.aai = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.yb)
          to label %bb.ib unwind label %bb.ig

bb.ib:                                            ; preds = %bb.ia
  %i.aaj = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aai)
          to label %bb.ic unwind label %bb.ig

bb.ic:                                            ; preds = %bb.ib
  %.not310.i = icmp eq ptr %.sroa.0228.0.i, %i.aaj
  br i1 %.not310.i, label %bb.id, label %bb.ih

bb.id:                                            ; preds = %bb.ic
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputPart14setFrameBufferERKNS_15DeepFrameBufferE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(104) %3)
          to label %bb.il unwind label %bb.jx

bb.ie:                                            ; preds = %bb.hx, %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferC2Ev.exit.i149
  %i.aak = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i150

bb.if:                                            ; preds = %bb.hz, %bb.hy
  %i.aal = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i150

bb.ig:                                            ; preds = %bb.ib, %bb.ia
  %i.aam = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i150

bb.ih:                                            ; preds = %bb.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.aan = getelementptr inbounds nuw [24 x i8], ptr %i.zh, i64 %indvars.iv614.i
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 16
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !184
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_59DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef 2, ptr noundef %i.aap, i64 noundef 8, i64 noundef %i.aah, i64 noundef 4, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.ii unwind label %bb.ik

bb.ii:                                            ; preds = %bb.ih
  %i.aaq = getelementptr inbounds nuw i8, ptr %.sroa.0228.0.i, i64 32
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull %i.aaq, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.ij unwind label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.aar = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0228.0.i) #31
  %indvars.iv.next615.i = add nuw nsw i64 %indvars.iv614.i, 1
  br label %bb.ia, !llvm.loop !190

bb.ik:                                            ; preds = %bb.ii, %bb.ih
  %i.aas = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i150

bb.il:                                            ; preds = %bb.id
  %i.aat = getelementptr inbounds nuw i8, ptr %i.yg, i64 8
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !158
  %i.aav = icmp eq i32 %i.aau, 2                  ; 3 uses
  %.not311495.i = icmp sgt i32 %i.yk, 0
  br i1 %.not311495.i, label %.preheader334.lr.ph.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit209.i

.preheader334.lr.ph.i:                            ; preds = %bb.il
  %.not201484.i = icmp sgt i32 %i.yl, 0
  %sext.i = shl i64 %i.yd, 32
  %i.aaw = ashr exact i64 %sext.i, 32
  br i1 %.not201484.i, label %.preheader334.us.preheader.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit209.i

.preheader334.us.preheader.i:                     ; preds = %.preheader334.lr.ph.i
  %i.aax = icmp sgt i32 %.fr, 0
  %i.aay = icmp sgt i32 %.fr523, 0
  %i.aaz = icmp slt i32 %.fr, 1
  %i.aba = icmp slt i32 %.fr523, 1
  %wide.trip.count625.i = zext nneg i32 %.fr523 to i64 ; 4 uses
  %wide.trip.count620.i = zext i32 %.fr to i64    ; 6 uses
  %brmerge.i155 = or i1 %i.aba, %i.aaz
  %i.abb = add nsw i64 %i.zd, -1                  ; 3 uses
  %xtraiter981 = and i64 %wide.trip.count620.i, 3 ; 3 uses
  %i.abc = icmp ult i32 %.fr, 4
  %unroll_iter987 = and i64 %wide.trip.count620.i, 2147483644
  %lcmp.mod983.not = icmp eq i64 %xtraiter981, 0
  %lcmp.mod986 = icmp ne i64 %xtraiter981, 0
  %xtraiter990 = and i64 %wide.trip.count620.i, 1
  %i.abd = icmp eq i32 %.fr, 1
  %unroll_iter996 = and i64 %wide.trip.count620.i, 2147483646
  %lcmp.mod992.not = icmp eq i64 %xtraiter990, 0
  %lcmp.mod995 = trunc i32 %.fr to i1
  %xtraiter999 = and i64 %i.zd, 1
  %i.abe = icmp eq i64 %i.abb, 0
  %unroll_iter1004 = and i64 %i.zd, 4294967294
  %lcmp.mod1001.not = icmp eq i64 %xtraiter999, 0
  %lcmp.mod1003 = trunc i32 %.0188.i to i1
  %xtraiter1006 = and i64 %i.zd, 1
  %i.abf = icmp eq i64 %i.abb, 0
  %unroll_iter1010 = and i64 %i.zd, 4294967294
  %lcmp.mod1008.not = icmp eq i64 %xtraiter1006, 0
  %lcmp.mod1009 = trunc i32 %.0188.i to i1
  %xtraiter1013 = and i64 %i.zd, 1
  %i.abg = icmp eq i64 %i.abb, 0
  %unroll_iter1018 = and i64 %i.zd, 4294967294
  %lcmp.mod1015.not = icmp eq i64 %xtraiter1013, 0
  %lcmp.mod1017 = trunc i32 %.0188.i to i1
  br label %.preheader334.us.i

.preheader334.us.i:                               ; preds = %..thread278_crit_edge.us.i, %.preheader334.us.preheader.i
  %.0150501.us.i = phi i32 [ 0, %.preheader334.us.preheader.i ], [ %i.akb, %..thread278_crit_edge.us.i ] ; 15 uses
  %.0161499.us.i = phi i1 [ false, %.preheader334.us.preheader.i ], [ %.us-phi481, %..thread278_crit_edge.us.i ] ; 3 uses
  %.sroa.15.0498.us.i = phi ptr [ null, %.preheader334.us.preheader.i ], [ %.us-phi480, %..thread278_crit_edge.us.i ] ; 15 uses
  %.sroa.10.0497.us.i = phi ptr [ null, %.preheader334.us.preheader.i ], [ %.us-phi479, %..thread278_crit_edge.us.i ] ; 3 uses
  %.sroa.0.0496.us.i = phi ptr [ null, %.preheader334.us.preheader.i ], [ %.us-phi478, %..thread278_crit_edge.us.i ] ; 15 uses
  br i1 %i.aay, label %.preheader334.us.i.split.us, label %.preheader333.us.i

.preheader334.us.i.split.us:                      ; preds = %.preheader334.us.i
  br i1 %i.aax, label %.preheader333.us.i.us.us, label %.preheader333.us.i.us

.preheader333.us.i.us.us:                         ; preds = %.preheader334.us.i.split.us, %.thread267.us.i.split.us.split.us.us.us
  %.0149490.us.i.us.us = phi i32 [ %i.ais, %.thread267.us.i.split.us.split.us.us.us ], [ 0, %.preheader334.us.i.split.us ] ; 5 uses
  %.1162488.us.i.us.us = phi i1 [ %.2163.us.i.us.us.us.us, %.thread267.us.i.split.us.split.us.us.us ], [ %.0161499.us.i, %.preheader334.us.i.split.us ]
  %.sroa.15.1487.us.i.us.us = phi ptr [ %.sroa.15.2.us.i.us.us.us.us, %.thread267.us.i.split.us.split.us.us.us ], [ %.sroa.15.0498.us.i, %.preheader334.us.i.split.us ]
  %.sroa.10.1486.us.i.us.us = phi ptr [ %.sroa.10.2.us.i.us.us.us.us, %.thread267.us.i.split.us.split.us.us.us ], [ %.sroa.10.0497.us.i, %.preheader334.us.i.split.us ]
  %.sroa.0.1485.us.i.us.us = phi ptr [ %.sroa.0.2.us.i.us.us.us.us, %.thread267.us.i.split.us.split.us.us.us ], [ %.sroa.0.0496.us.i, %.preheader334.us.i.split.us ]
  %i.abh = icmp eq i32 %.0149490.us.i.us.us, %.0150501.us.i
  %or.cond203.not314.not317.us.i.us.us = or i1 %i.aav, %i.abh ; 2 uses
  %brmerge.not.us.i156.us.us = and i1 %2, %or.cond203.not314.not317.us.i.us.us
  br label %bb.im

bb.im:                                            ; preds = %.thread.us.i.split.us.us.split.us.us.us.us, %.preheader333.us.i.us.us
  %.sroa.0.2.us.i.us.us.us.us = phi ptr [ %.sroa.0.3.us.i.us.us.us.us.us.us, %.thread.us.i.split.us.us.split.us.us.us.us ], [ %.sroa.0.1485.us.i.us.us, %.preheader333.us.i.us.us ] ; 4 uses
  %.sroa.10.2.us.i.us.us.us.us = phi ptr [ %.sroa.10.3.us.i.us.us.us.us.us.us, %.thread.us.i.split.us.us.split.us.us.us.us ], [ %.sroa.10.1486.us.i.us.us, %.preheader333.us.i.us.us ] ; 3 uses
  %.sroa.15.2.us.i.us.us.us.us = phi ptr [ %.sroa.15.3.us.i.us.us.us.us.us.us, %.thread.us.i.split.us.us.split.us.us.us.us ], [ %.sroa.15.1487.us.i.us.us, %.preheader333.us.i.us.us ] ; 4 uses
  %.2163.us.i.us.us.us.us = phi i1 [ %.3164.us.i.us.us.us.us.us.us, %.thread.us.i.split.us.us.split.us.us.us.us ], [ %.1162488.us.i.us.us, %.preheader333.us.i.us.us ] ; 3 uses
  %.0148.us.i.us.us.us.us = phi i32 [ %i.air, %.thread.us.i.split.us.us.split.us.us.us.us ], [ 0, %.preheader333.us.i.us.us ] ; 5 uses
  %i.abi = invoke noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputPart9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef %.0150501.us.i)
          to label %bb.in unwind label %.split.us.i157.split.us.split.us.split.us.split.us

bb.in:                                            ; preds = %bb.im
  %.not202.us.i.us.us.us.us = icmp slt i32 %.0148.us.i.us.us.us.us, %i.abi
  br i1 %.not202.us.i.us.us.us.us, label %.preheader331.us.i.us.us.us.us.us.us, label %.thread267.us.i.split.us.split.us.us.us

.preheader331.us.i.us.us.us.us.us.us:             ; preds = %bb.in, %._crit_edge422.us.thread.i.us.us.us.us.us.us
  %.sroa.0.3.us.i.us.us.us.us.us.us = phi ptr [ %.sroa.0.6.us.i.us.us.us.us.us.us, %._crit_edge422.us.thread.i.us.us.us.us.us.us ], [ %.sroa.0.2.us.i.us.us.us.us, %bb.in ] ; 15 uses
  %.sroa.10.3.us.i.us.us.us.us.us.us = phi ptr [ %.sroa.10.5.us.i.us.us.us.us.us.us, %._crit_edge422.us.thread.i.us.us.us.us.us.us ], [ %.sroa.10.2.us.i.us.us.us.us, %bb.in ] ; 11 uses
  %.sroa.15.3.us.i.us.us.us.us.us.us = phi ptr [ %.sroa.15.6.us.i.us.us.us.us.us.us, %._crit_edge422.us.thread.i.us.us.us.us.us.us ], [ %.sroa.15.2.us.i.us.us.us.us, %bb.in ] ; 11 uses
  %.3164.us.i.us.us.us.us.us.us = phi i1 [ %.6167.us.i.us.us.us.us.us.us, %._crit_edge422.us.thread.i.us.us.us.us.us.us ], [ %.2163.us.i.us.us.us.us, %bb.in ] ; 5 uses
  %.0147.us.i.us.us.us.us.us.us = phi i32 [ %i.aiq, %._crit_edge422.us.thread.i.us.us.us.us.us.us ], [ 0, %bb.in ] ; 5 uses
  %i.abj = invoke noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputPart9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef %.0149490.us.i.us.us)
          to label %bb.io unwind label %.split547.us.i.split.us.split.us.split.us.split.us.split.us.split.us

bb.io:                                            ; preds = %.preheader331.us.i.us.us.us.us.us.us
  %.not198.us.i.us.us.us.us.us.us = icmp slt i32 %.0147.us.i.us.us.us.us.us.us, %i.abj
  br i1 %.not198.us.i.us.us.us.us.us.us, label %bb.ip, label %.thread.us.i.split.us.us.split.us.us.us.us

bb.ip:                                            ; preds = %bb.io
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputPart21readPixelSampleCountsEiiiiii(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef %.0147.us.i.us.us.us.us.us.us, i32 noundef %.0148.us.i.us.us.us.us, i32 noundef %.0147.us.i.us.us.us.us.us.us, i32 noundef %.0148.us.i.us.us.us.us, i32 noundef %.0149490.us.i.us.us, i32 noundef %.0150501.us.i)
          to label %.preheader330.us.i.us.us.us.us.us.us unwind label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.abk = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.jf

.preheader330.us.i.us.us.us.us.us.us:             ; preds = %bb.ip
  br i1 %1, label %.preheader329.us.us.us.i.us.us.us.us.us.us, label %.preheader329.us.us513.i.us.us.us.us.us.us

.preheader329.us.us513.i.us.us.us.us.us.us:       ; preds = %.preheader330.us.i.us.us.us.us.us.us, %._crit_edge416.split.us.us.us.i.us.us.us.us.us.us
  %indvars.iv622.i.us.us.us.us.us.us = phi i64 [ %indvars.iv.next623.i.us.us.us.us.us.us, %._crit_edge416.split.us.us.us.i.us.us.us.us.us.us ], [ 0, %.preheader330.us.i.us.us.us.us.us.us ] ; 2 uses
  %.0142420.us.us515.i.us.us.us.us.us.us = phi i64 [ %.lcssa892, %._crit_edge416.split.us.us.us.i.us.us.us.us.us.us ], [ 0, %.preheader330.us.i.us.us.us.us.us.us ] ; 2 uses
  %.0144419.us.us516.i.us.us.us.us.us.us = phi i64 [ %.2146.us.us.us.i.us.us.us.us.us.us.lcssa, %._crit_edge416.split.us.us.us.i.us.us.us.us.us.us ], [ 0, %.preheader330.us.i.us.us.us.us.us.us ] ; 2 uses
  %i.abl = mul nuw nsw i64 %indvars.iv622.i.us.us.us.us.us.us, %i.ym
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %i.abl ; 5 uses
  br i1 %i.abc, label %.epil.preheader, label %.preheader329.us.us513.i.us.us.us.us.us.us.new

.preheader329.us.us513.i.us.us.us.us.us.us.new:   ; preds = %.preheader329.us.us513.i.us.us.us.us.us.us, %.preheader329.us.us513.i.us.us.us.us.us.us.new
  %indvars.iv617.i.us.us.us.us.us.us = phi i64 [ %indvars.iv.next618.i.us.us.us.us.us.us.3, %.preheader329.us.us513.i.us.us.us.us.us.us.new ], [ 0, %.preheader329.us.us513.i.us.us.us.us.us.us ] ; 5 uses
  %.1143413.us.us.us.i.us.us.us.us.us.us = phi i64 [ %i.acj, %.preheader329.us.us513.i.us.us.us.us.us.us.new ], [ %.0142420.us.us515.i.us.us.us.us.us.us, %.preheader329.us.us513.i.us.us.us.us.us.us ]
  %.1145412.us.us.us.i.us.us.us.us.us.us = phi i64 [ %.2146.us.us.us.i.us.us.us.us.us.us.3, %.preheader329.us.us513.i.us.us.us.us.us.us.new ], [ %.0144419.us.us516.i.us.us.us.us.us.us, %.preheader329.us.us513.i.us.us.us.us.us.us ]
  %niter988 = phi i64 [ %niter988.next.3, %.preheader329.us.us513.i.us.us.us.us.us.us.new ], [ 0, %.preheader329.us.us513.i.us.us.us.us.us.us ]
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %indvars.iv617.i.us.us.us.us.us.us
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !3
  %i.abp = mul i32 %i.abo, %.0188.i
  %i.abq = zext i32 %i.abp to i64                 ; 2 uses
  %i.abr = add i64 %.1143413.us.us.us.i.us.us.us.us.us.us, %i.abq
  %.2146.us.us.us.i.us.us.us.us.us.us = add i64 %.1145412.us.us.us.i.us.us.us.us.us.us, %i.abq
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %indvars.iv617.i.us.us.us.us.us.us
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 4
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !3
  %i.abv = mul i32 %i.abu, %.0188.i
  %i.abw = zext i32 %i.abv to i64                 ; 2 uses
  %i.abx = add i64 %i.abr, %i.abw
  %.2146.us.us.us.i.us.us.us.us.us.us.1 = add i64 %.2146.us.us.us.i.us.us.us.us.us.us, %i.abw
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %indvars.iv617.i.us.us.us.us.us.us
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 8
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !3
  %i.acb = mul i32 %i.aca, %.0188.i
  %i.acc = zext i32 %i.acb to i64                 ; 2 uses
  %i.acd = add i64 %i.abx, %i.acc
  %.2146.us.us.us.i.us.us.us.us.us.us.2 = add i64 %.2146.us.us.us.i.us.us.us.us.us.us.1, %i.acc
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %indvars.iv617.i.us.us.us.us.us.us
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 12
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !3
  %i.ach = mul i32 %i.acg, %.0188.i
  %i.aci = zext i32 %i.ach to i64                 ; 2 uses
  %i.acj = add i64 %i.acd, %i.aci                 ; 3 uses
  %.2146.us.us.us.i.us.us.us.us.us.us.3 = add i64 %.2146.us.us.us.i.us.us.us.us.us.us.2, %i.aci ; 3 uses
  %indvars.iv.next618.i.us.us.us.us.us.us.3 = add nuw nsw i64 %indvars.iv617.i.us.us.us.us.us.us, 4 ; 2 uses
  %niter988.next.3 = add i64 %niter988, 4         ; 2 uses
  %niter988.ncmp.3 = icmp eq i64 %niter988.next.3, %unroll_iter987
  br i1 %niter988.ncmp.3, label %._crit_edge416.split.us.us.us.i.us.us.us.us.us.us.unr-lcssa, label %.preheader329.us.us513.i.us.us.us.us.us.us.new, !llvm.loop !191

._crit_edge416.split.us.us.us.i.us.us.us.us.us.us.unr-lcssa: ; preds = %.preheader329.us.us513.i.us.us.us.us.us.us.new
  br i1 %lcmp.mod983.not, label %._crit_edge416.split.us.us.us.i.us.us.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge416.split.us.us.us.i.us.us.us.us.us.us.unr-lcssa, %.preheader329.us.us513.i.us.us.us.us.us.us
  %indvars.iv617.i.us.us.us.us.us.us.epil.init = phi i64 [ 0, %.preheader329.us.us513.i.us.us.us.us.us.us ], [ %indvars.iv.next618.i.us.us.us.us.us.us.3, %._crit_edge416.split.us.us.us.i.us.us.us.us.us.us.unr-lcssa ]
  %.1143413.us.us.us.i.us.us.us.us.us.us.epil.init = phi i64 [ %.0142420.us.us515.i.us.us.us.us.us.us, %.preheader329.us.us513.i.us.us.us.us.us.us ], [ %i.acj, %._crit_edge416.split.us.us.us.i.us.us.us.us.us.us.unr-lcssa ]
  %.1145412.us.us.us.i.us.us.us.us.us.us.epil.init = phi i64 [ %.0144419.us.us516.i.us.us.us.us.us.us, %.preheader329.us.us513.i.us.us.us.us.us.us ], [ %.2146.us.us.us.i.us.us.us.us.us.us.3, %._crit_edge416.split.us.us.us.i.us.us.us.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod986)
  br label %bb.ir

bb.ir:                                            ; preds = %bb.ir, %.epil.preheader
  %indvars.iv617.i.us.us.us.us.us.us.epil = phi i64 [ %indvars.iv.next618.i.us.us.us.us.us.us.epil, %bb.ir ], [ %indvars.iv617.i.us.us.us.us.us.us.epil.init, %.epil.preheader ] ; 2 uses
  %.1143413.us.us.us.i.us.us.us.us.us.us.epil = phi i64 [ %i.aco, %bb.ir ], [ %.1143413.us.us.us.i.us.us.us.us.us.us.epil.init, %.epil.preheader ]
  %.1145412.us.us.us.i.us.us.us.us.us.us.epil = phi i64 [ %.2146.us.us.us.i.us.us.us.us.us.us.epil, %bb.ir ], [ %.1145412.us.us.us.i.us.us.us.us.us.us.epil.init, %.epil.preheader ]
  %epil.iter982 = phi i64 [ %epil.iter982.next, %bb.ir ], [ 0, %.epil.preheader ]
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %indvars.iv617.i.us.us.us.us.us.us.epil
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !3
  %i.acm = mul i32 %i.acl, %.0188.i
  %i.acn = zext i32 %i.acm to i64                 ; 2 uses
  %i.aco = add i64 %.1143413.us.us.us.i.us.us.us.us.us.us.epil, %i.acn ; 2 uses
  %.2146.us.us.us.i.us.us.us.us.us.us.epil = add i64 %.1145412.us.us.us.i.us.us.us.us.us.us.epil, %i.acn ; 2 uses
  %indvars.iv.next618.i.us.us.us.us.us.us.epil = add nuw nsw i64 %indvars.iv617.i.us.us.us.us.us.us.epil, 1
  %epil.iter982.next = add i64 %epil.iter982, 1   ; 2 uses
  %epil.iter982.cmp.not = icmp eq i64 %epil.iter982.next, %xtraiter981
  br i1 %epil.iter982.cmp.not, label %._crit_edge416.split.us.us.us.i.us.us.us.us.us.us, label %bb.ir, !llvm.loop !192

._crit_edge416.split.us.us.us.i.us.us.us.us.us.us: ; preds = %bb.ir, %._crit_edge416.split.us.us.us.i.us.us.us.us.us.us.unr-lcssa
  %.lcssa892 = phi i64 [ %i.acj, %._crit_edge416.split.us.us.us.i.us.us.us.us.us.us.unr-lcssa ], [ %i.aco, %bb.ir ] ; 2 uses
  %.2146.us.us.us.i.us.us.us.us.us.us.lcssa = phi i64 [ %.2146.us.us.us.i.us.us.us.us.us.us.3, %._crit_edge416.split.us.us.us.i.us.us.us.us.us.us.unr-lcssa ], [ %.2146.us.us.us.i.us.us.us.us.us.us.epil, %bb.ir ] ; 2 uses
  %indvars.iv.next623.i.us.us.us.us.us.us = add nuw nsw i64 %indvars.iv622.i.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond626.not.i.us.us.us.us.us.us = icmp eq i64 %indvars.iv.next623.i.us.us.us.us.us.us, %wide.trip.count625.i
  br i1 %exitcond626.not.i.us.us.us.us.us.us, label %._crit_edge422.us.i.us.us.us.us.us.us, label %.preheader329.us.us513.i.us.us.us.us.us.us, !llvm.loop !193

.preheader329.us.us.us.i.us.us.us.us.us.us:       ; preds = %.preheader330.us.i.us.us.us.us.us.us, %._crit_edge416.split.us428.us.us.i.us.us.us.us.us.us
  %indvars.iv632.i.us.us.us.us.us.us = phi i64 [ %indvars.iv.next633.i.us.us.us.us.us.us, %._crit_edge416.split.us428.us.us.i.us.us.us.us.us.us ], [ 0, %.preheader330.us.i.us.us.us.us.us.us ] ; 2 uses
  %.0142420.us.us.us.i.us.us.us.us.us.us = phi i64 [ %.lcssa893, %._crit_edge416.split.us428.us.us.i.us.us.us.us.us.us ], [ 0, %.preheader330.us.i.us.us.us.us.us.us ] ; 2 uses
  %.0144419.us.us.us.i.us.us.us.us.us.us = phi i64 [ %.2146.us431.us.us.i.us.us.us.us.us.us.lcssa, %._crit_edge416.split.us428.us.us.i.us.us.us.us.us.us ], [ 0, %.preheader330.us.i.us.us.us.us.us.us ] ; 2 uses
  %i.acp = mul nuw nsw i64 %indvars.iv632.i.us.us.us.us.us.us, %i.ym
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %i.acp ; 3 uses
  br i1 %i.abd, label %.epil.preheader989, label %.preheader329.us.us.us.i.us.us.us.us.us.us.new

.preheader329.us.us.us.i.us.us.us.us.us.us.new:   ; preds = %.preheader329.us.us.us.i.us.us.us.us.us.us, %.preheader329.us.us.us.i.us.us.us.us.us.us.new
  %indvars.iv627.i.us.us.us.us.us.us = phi i64 [ %indvars.iv.next628.i.us.us.us.us.us.us.1, %.preheader329.us.us.us.i.us.us.us.us.us.us.new ], [ 0, %.preheader329.us.us.us.i.us.us.us.us.us.us ] ; 3 uses
  %.1143413.us426.us.us.i.us.us.us.us.us.us = phi i64 [ %i.add, %.preheader329.us.us.us.i.us.us.us.us.us.us.new ], [ %.0142420.us.us.us.i.us.us.us.us.us.us, %.preheader329.us.us.us.i.us.us.us.us.us.us ]
  %.1145412.us427.us.us.i.us.us.us.us.us.us = phi i64 [ %.2146.us431.us.us.i.us.us.us.us.us.us.1, %.preheader329.us.us.us.i.us.us.us.us.us.us.new ], [ %.0144419.us.us.us.i.us.us.us.us.us.us, %.preheader329.us.us.us.i.us.us.us.us.us.us ]
  %niter997 = phi i64 [ %niter997.next.1, %.preheader329.us.us.us.i.us.us.us.us.us.us.new ], [ 0, %.preheader329.us.us.us.i.us.us.us.us.us.us ]
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %indvars.iv627.i.us.us.us.us.us.us
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !3 ; 2 uses
  %i.act = mul i32 %i.acs, %.0188.i
  %i.acu = zext i32 %i.act to i64                 ; 2 uses
  %i.acv = add i64 %.1143413.us426.us.us.i.us.us.us.us.us.us, %i.acu
  %i.acw = mul i32 %i.acs, %i.ye
  %i.acx = icmp ugt i32 %i.acw, 4095
  %spec.select.i.us.us.us.us.us.us = select i1 %i.acx, i64 0, i64 %i.acu
  %.2146.us431.us.us.i.us.us.us.us.us.us = add i64 %spec.select.i.us.us.us.us.us.us, %.1145412.us427.us.us.i.us.us.us.us.us.us
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %indvars.iv627.i.us.us.us.us.us.us
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 4
  %i.ada = load i32, ptr %i.acz, align 4, !tbaa !3 ; 2 uses
  %i.adb = mul i32 %i.ada, %.0188.i
  %i.adc = zext i32 %i.adb to i64                 ; 2 uses
  %i.add = add i64 %i.acv, %i.adc                 ; 3 uses
  %i.ade = mul i32 %i.ada, %i.ye
  %i.adf = icmp ugt i32 %i.ade, 4095
  %spec.select.i.us.us.us.us.us.us.1 = select i1 %i.adf, i64 0, i64 %i.adc
  %.2146.us431.us.us.i.us.us.us.us.us.us.1 = add i64 %spec.select.i.us.us.us.us.us.us.1, %.2146.us431.us.us.i.us.us.us.us.us.us ; 3 uses
  %indvars.iv.next628.i.us.us.us.us.us.us.1 = add nuw nsw i64 %indvars.iv627.i.us.us.us.us.us.us, 2 ; 2 uses
  %niter997.next.1 = add i64 %niter997, 2         ; 2 uses
  %niter997.ncmp.1 = icmp eq i64 %niter997.next.1, %unroll_iter996
  br i1 %niter997.ncmp.1, label %._crit_edge416.split.us428.us.us.i.us.us.us.us.us.us.unr-lcssa, label %.preheader329.us.us.us.i.us.us.us.us.us.us.new, !llvm.loop !191

._crit_edge416.split.us428.us.us.i.us.us.us.us.us.us.unr-lcssa: ; preds = %.preheader329.us.us.us.i.us.us.us.us.us.us.new
  br i1 %lcmp.mod992.not, label %._crit_edge416.split.us428.us.us.i.us.us.us.us.us.us, label %.epil.preheader989

.epil.preheader989:                               ; preds = %._crit_edge416.split.us428.us.us.i.us.us.us.us.us.us.unr-lcssa, %.preheader329.us.us.us.i.us.us.us.us.us.us
  %indvars.iv627.i.us.us.us.us.us.us.epil.init = phi i64 [ 0, %.preheader329.us.us.us.i.us.us.us.us.us.us ], [ %indvars.iv.next628.i.us.us.us.us.us.us.1, %._crit_edge416.split.us428.us.us.i.us.us.us.us.us.us.unr-lcssa ]
  %.1143413.us426.us.us.i.us.us.us.us.us.us.epil.init = phi i64 [ %.0142420.us.us.us.i.us.us.us.us.us.us, %.preheader329.us.us.us.i.us.us.us.us.us.us ], [ %i.add, %._crit_edge416.split.us428.us.us.i.us.us.us.us.us.us.unr-lcssa ]
  %.1145412.us427.us.us.i.us.us.us.us.us.us.epil.init = phi i64 [ %.0144419.us.us.us.i.us.us.us.us.us.us, %.preheader329.us.us.us.i.us.us.us.us.us.us ], [ %.2146.us431.us.us.i.us.us.us.us.us.us.1, %._crit_edge416.split.us428.us.us.i.us.us.us.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod995)
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %indvars.iv627.i.us.us.us.us.us.us.epil.init
  %i.adh = load i32, ptr %i.adg, align 4, !tbaa !3 ; 2 uses
  %i.adi = mul i32 %i.adh, %.0188.i
  %i.adj = zext i32 %i.adi to i64                 ; 2 uses
  %i.adk = add i64 %.1143413.us426.us.us.i.us.us.us.us.us.us.epil.init, %i.adj
  %i.adl = mul i32 %i.adh, %i.ye
  %i.adm = icmp ugt i32 %i.adl, 4095
  %spec.select.i.us.us.us.us.us.us.epil = select i1 %i.adm, i64 0, i64 %i.adj
  %.2146.us431.us.us.i.us.us.us.us.us.us.epil = add i64 %spec.select.i.us.us.us.us.us.us.epil, %.1145412.us427.us.us.i.us.us.us.us.us.us.epil.init
  br label %._crit_edge416.split.us428.us.us.i.us.us.us.us.us.us

._crit_edge416.split.us428.us.us.i.us.us.us.us.us.us: ; preds = %._crit_edge416.split.us428.us.us.i.us.us.us.us.us.us.unr-lcssa, %.epil.preheader989
  %.lcssa893 = phi i64 [ %i.add, %._crit_edge416.split.us428.us.us.i.us.us.us.us.us.us.unr-lcssa ], [ %i.adk, %.epil.preheader989 ] ; 2 uses
  %.2146.us431.us.us.i.us.us.us.us.us.us.lcssa = phi i64 [ %.2146.us431.us.us.i.us.us.us.us.us.us.1, %._crit_edge416.split.us428.us.us.i.us.us.us.us.us.us.unr-lcssa ], [ %.2146.us431.us.us.i.us.us.us.us.us.us.epil, %.epil.preheader989 ] ; 2 uses
  %indvars.iv.next633.i.us.us.us.us.us.us = add nuw nsw i64 %indvars.iv632.i.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond636.not.i.us.us.us.us.us.us = icmp eq i64 %indvars.iv.next633.i.us.us.us.us.us.us, %wide.trip.count625.i
  br i1 %exitcond636.not.i.us.us.us.us.us.us, label %._crit_edge422.us.i.us.us.us.us.us.us, label %.preheader329.us.us.us.i.us.us.us.us.us.us, !llvm.loop !193

._crit_edge422.us.i.us.us.us.us.us.us:            ; preds = %._crit_edge416.split.us.us.us.i.us.us.us.us.us.us, %._crit_edge416.split.us428.us.us.i.us.us.us.us.us.us
  %.0144.lcssa.us.i.us.us.us.us.us.us = phi i64 [ %.2146.us431.us.us.i.us.us.us.us.us.us.lcssa, %._crit_edge416.split.us428.us.us.i.us.us.us.us.us.us ], [ %.2146.us.us.us.i.us.us.us.us.us.us.lcssa, %._crit_edge416.split.us.us.us.i.us.us.us.us.us.us ] ; 6 uses
  %.0142.lcssa.us.i.us.us.us.us.us.us = phi i64 [ %.lcssa893, %._crit_edge416.split.us428.us.us.i.us.us.us.us.us.us ], [ %.lcssa892, %._crit_edge416.split.us.us.us.i.us.us.us.us.us.us ]
  %.not.us.i159.us.us.us.us.us.us = icmp eq i64 %.0144.lcssa.us.i.us.us.us.us.us.us, 0
  br i1 %.not.us.i159.us.us.us.us.us.us, label %._crit_edge422.us.thread.i.us.us.us.us.us.us, label %bb.is
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112readDeepTileINS_18DeepTiledInputFileEEEbRT_bb:bb.a

bb.v:                                             ; preds = %bb.q
  %i.ar = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0238.0) #31
  %i.as = add i32 %.0188, 1
  br label %.preheader337, !llvm.loop !229

._crit_edge:                                      ; preds = %bb.aa, %.noexc205
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.at, align 8, !tbaa !137
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr null, ptr %i.au, align 8, !tbaa !142
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.at, ptr %i.av, align 8, !tbaa !143
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !144
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.ax, align 8, !tbaa !145
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 48
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_55SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %i.ay, i32 noundef 1, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferC2Ev.exit unwind label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameENS0_9DeepSliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(104) %3) #25
  br label %.body

bb.x:                                             ; preds = %bb.r
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayINS_7Array2DIPfEEED2Ev.exit216

bb.y:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %indvars.iv ; 3 uses
  %i.bc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.an) #29
          to label %.noexc206 unwind label %bb.ab

.noexc206:                                        ; preds = %bb.y
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !184 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.noexc206
  tail call void @_ZdaPv(ptr noundef nonnull %i.be) #26
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.noexc206
  store i64 %i.m, ptr %i.bb, align 8, !tbaa !187
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %i.l, ptr %i.bg, align 8, !tbaa !188
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !184
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ac
  br i1 %exitcond.not, label %._crit_edge, label %bb.y, !llvm.loop !230

bb.ab:                                            ; preds = %bb.y
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bu

_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferC2Ev.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bi = shl nsw i64 %i.l, 2
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_55SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %4, i32 noundef 0, ptr noundef nonnull %i.x, i64 noundef 4, i64 noundef %i.bi, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.ac unwind label %bb.aj

bb.ac:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferC2Ev.exit
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBuffer22insertSampleCountSliceERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(50) %4)
          to label %bb.ad unwind label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bj = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %bb.ae unwind label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.bk = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bj)
          to label %.preheader336 unwind label %bb.ak

.preheader336:                                    ; preds = %bb.ae
  %i.bl = shl nsw i32 %i.g, 3
  %i.bm = sext i32 %i.bl to i64
  br label %bb.af

bb.af:                                            ; preds = %.preheader336, %bb.ao
  %indvars.iv614 = phi i64 [ 0, %.preheader336 ], [ %indvars.iv.next615, %bb.ao ] ; 2 uses
  %.sroa.0228.0 = phi ptr [ %i.bk, %.preheader336 ], [ %i.bw, %bb.ao ] ; 3 uses
  %i.bn = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %bb.ag unwind label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.bo = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bn)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %.not310 = icmp eq ptr %.sroa.0228.0, %i.bo
  br i1 %.not310, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile14setFrameBufferERKNS_15DeepFrameBufferE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(104) %3)
          to label %bb.aq unwind label %bb.bm

bb.aj:                                            ; preds = %bb.ac, %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferC2Ev.exit
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ak:                                            ; preds = %bb.ae, %bb.ad
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.al:                                            ; preds = %bb.ag, %bb.af
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.am:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %indvars.iv614
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !184
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_59DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef 2, ptr noundef %i.bu, i64 noundef 8, i64 noundef %i.bm, i64 noundef 4, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0228.0, i64 32
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull %i.bv, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.bw = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0228.0) #31
  %indvars.iv.next615 = add nuw nsw i64 %indvars.iv614, 1
  br label %bb.af, !llvm.loop !231

bb.ap:                                            ; preds = %bb.an, %bb.am
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.aq:                                            ; preds = %bb.ai
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !158
  %i.ca = icmp eq i32 %i.bz, 2
  %.not311495 = icmp sgt i32 %i.j, 0
  br i1 %.not311495, label %.preheader334.lr.ph, label %_ZNSt6vectorIfSaIfEED2Ev.exit209

.preheader334.lr.ph:                              ; preds = %bb.aq
  %.not201484 = icmp sgt i32 %i.k, 0
  %i.cb = icmp sgt i32 %i.i, 0
  %i.cc = icmp sgt i32 %i.g, 0
  %sext = shl i64 %i.c, 32
  %i.cd = ashr exact i64 %sext, 32
  br i1 %.not201484, label %.preheader334.us.preheader, label %_ZNSt6vectorIfSaIfEED2Ev.exit209

.preheader334.us.preheader:                       ; preds = %.preheader334.lr.ph
  %i.ce = icmp slt i32 %i.g, 1
  %i.cf = icmp slt i32 %i.i, 1
  %wide.trip.count625 = zext nneg i32 %i.i to i64
  %wide.trip.count635 = zext nneg i32 %i.i to i64
  %wide.trip.count630 = zext i32 %i.g to i64      ; 4 uses
  %brmerge = select i1 %i.cf, i1 true, i1 %i.ce
  %wide.trip.count651 = zext nneg i32 %i.i to i64
  %wide.trip.count646 = zext nneg i32 %i.g to i64
  %wide.trip.count684 = zext nneg i32 %i.i to i64
  %wide.trip.count668 = zext nneg i32 %i.g to i64
  %i.cg = add nsw i64 %i.ac, -1                   ; 3 uses
  %xtraiter = and i64 %wide.trip.count630, 3      ; 3 uses
  %i.ch = icmp ult i32 %i.g, 4
  %unroll_iter = and i64 %wide.trip.count630, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod839 = icmp ne i64 %xtraiter, 0
  %xtraiter841 = and i64 %wide.trip.count630, 1
  %i.ci = icmp eq i32 %i.g, 1
  %unroll_iter847 = and i64 %wide.trip.count630, 2147483646
  %lcmp.mod843.not = icmp eq i64 %xtraiter841, 0
  %lcmp.mod846 = trunc i32 %i.g to i1
  %xtraiter850 = and i64 %i.ac, 1
  %i.cj = icmp eq i64 %i.cg, 0
  %unroll_iter855 = and i64 %i.ac, 4294967294
  %lcmp.mod852.not = icmp eq i64 %xtraiter850, 0
  %lcmp.mod854 = trunc i32 %.0188 to i1
  %xtraiter857 = and i64 %i.ac, 1
  %i.ck = icmp eq i64 %i.cg, 0
  %unroll_iter861 = and i64 %i.ac, 4294967294
  %lcmp.mod859.not = icmp eq i64 %xtraiter857, 0
  %lcmp.mod860 = trunc i32 %.0188 to i1
  %xtraiter864 = and i64 %i.ac, 1
  %i.cl = icmp eq i64 %i.cg, 0
  %unroll_iter869 = and i64 %i.ac, 4294967294
  %lcmp.mod866.not = icmp eq i64 %xtraiter864, 0
  %lcmp.mod868 = trunc i32 %.0188 to i1
  br label %.preheader334.us

.preheader334.us:                                 ; preds = %..thread278_crit_edge.us, %.preheader334.us.preheader
  %.0150501.us = phi i32 [ 0, %.preheader334.us.preheader ], [ %i.jy, %..thread278_crit_edge.us ] ; 5 uses
  %.0161499.us = phi i1 [ false, %.preheader334.us.preheader ], [ %.2163.us, %..thread278_crit_edge.us ]
  %.sroa.15.0498.us = phi ptr [ null, %.preheader334.us.preheader ], [ %.sroa.15.2.us, %..thread278_crit_edge.us ]
  %.sroa.10.0497.us = phi ptr [ null, %.preheader334.us.preheader ], [ %.sroa.10.2.us, %..thread278_crit_edge.us ]
  %.sroa.0.0496.us = phi ptr [ null, %.preheader334.us.preheader ], [ %.sroa.0.2.us, %..thread278_crit_edge.us ]
  br label %.preheader333.us

bb.ar:                                            ; preds = %.preheader333.us, %.thread.us
  %.sroa.0.2.us = phi ptr [ %.sroa.0.3.us, %.thread.us ], [ %.sroa.0.1485.us, %.preheader333.us ] ; 5 uses
  %.sroa.10.2.us = phi ptr [ %.sroa.10.3.us, %.thread.us ], [ %.sroa.10.1486.us, %.preheader333.us ] ; 3 uses
  %.sroa.15.2.us = phi ptr [ %.sroa.15.3.us, %.thread.us ], [ %.sroa.15.1487.us, %.preheader333.us ] ; 5 uses
  %.2163.us = phi i1 [ %.3164.us, %.thread.us ], [ %.1162488.us, %.preheader333.us ] ; 4 uses
  %.0148.us = phi i32 [ %i.eb, %.thread.us ], [ 0, %.preheader333.us ] ; 5 uses
  %i.cm = invoke noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0150501.us)
          to label %bb.as unwind label %.split.us

bb.as:                                            ; preds = %bb.ar
  %.not202.us = icmp slt i32 %.0148.us, %i.cm
  br i1 %.not202.us, label %.preheader331.us, label %.thread267.us

.preheader331.us:                                 ; preds = %bb.as, %._crit_edge422.us.thread
  %.sroa.0.3.us = phi ptr [ %.sroa.0.6.us, %._crit_edge422.us.thread ], [ %.sroa.0.2.us, %bb.as ] ; 17 uses
  %.sroa.10.3.us = phi ptr [ %.sroa.10.5.us, %._crit_edge422.us.thread ], [ %.sroa.10.2.us, %bb.as ] ; 13 uses
  %.sroa.15.3.us = phi ptr [ %.sroa.15.6.us, %._crit_edge422.us.thread ], [ %.sroa.15.2.us, %bb.as ] ; 13 uses
  %.3164.us = phi i1 [ %.6167.us, %._crit_edge422.us.thread ], [ %.2163.us, %bb.as ] ; 7 uses
  %.0147.us = phi i32 [ %i.ea, %._crit_edge422.us.thread ], [ 0, %bb.as ] ; 5 uses
  %i.cn = invoke noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0149490.us)
          to label %bb.at unwind label %.split547.us

bb.at:                                            ; preds = %.preheader331.us
  %.not198.us = icmp slt i32 %.0147.us, %i.cn
  br i1 %.not198.us, label %bb.au, label %.thread.us

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile21readPixelSampleCountsEiiiiii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0147.us, i32 noundef %.0148.us, i32 noundef %.0147.us, i32 noundef %.0148.us, i32 noundef %.0149490.us, i32 noundef %.0150501.us)
          to label %.preheader330.us unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bj

._crit_edge422.us:                                ; preds = %._crit_edge416.split.us.us.us, %._crit_edge416.split.us428.us.us
  %.0144.lcssa.us = phi i64 [ %.2146.us431.us.us.lcssa, %._crit_edge416.split.us428.us.us ], [ %.2146.us.us.us.lcssa, %._crit_edge416.split.us.us.us ] ; 6 uses
  %.0142.lcssa.us = phi i64 [ %.lcssa805, %._crit_edge416.split.us428.us.us ], [ %.lcssa, %._crit_edge416.split.us.us.us ]
  %.not.us = icmp eq i64 %.0144.lcssa.us, 0
  br i1 %.not.us, label %._crit_edge422.us.thread, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge422.us
  br i1 %1, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.cp = add i64 %.0142.lcssa.us, %.0144.lcssa.us
  %i.cq = mul i64 %i.cp, %i.cd
  %i.cr = icmp ult i64 %i.cq, 1000
  br i1 %i.cr, label %bb.ay, label %._crit_edge422.us.thread

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.cs = ptrtoint ptr %.sroa.10.3.us to i64      ; 2 uses
  %i.ct = ptrtoint ptr %.sroa.0.3.us to i64       ; 2 uses
  %i.cu = sub i64 %i.cs, %i.ct                    ; 4 uses
  %i.cv = ashr exact i64 %i.cu, 2                 ; 7 uses
  %i.cw = icmp ugt i64 %.0144.lcssa.us, %i.cv
  br i1 %i.cw, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cx = icmp ult i64 %.0144.lcssa.us, %i.cv
  br i1 %i.cx, label %bb.ba, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.us

bb.ba:                                            ; preds = %bb.az
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3.us, i64 %.0144.lcssa.us ; 2 uses
  %.not.i.i.us = icmp eq ptr %.sroa.10.3.us, %i.cy
  %spec.select.us = select i1 %.not.i.i.us, ptr %.sroa.10.3.us, ptr %i.cy
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.us

bb.bb:                                            ; preds = %bb.ay
  %i.cz = sub nuw i64 %.0144.lcssa.us, %i.cv      ; 6 uses
  %i.da = ptrtoint ptr %.sroa.15.3.us to i64      ; 2 uses
  %i.db = sub i64 %i.da, %i.cs
  %i.dc = ashr exact i64 %i.db, 2                 ; 2 uses
  %i.dd = icmp ult i64 %i.cv, 2305843009213693952
  call void @llvm.assume(i1 %i.dd)
  %i.de = xor i64 %i.cv, 2305843009213693951      ; 2 uses
  %i.df = icmp ule i64 %i.dc, %i.de
  call void @llvm.assume(i1 %i.df)
  %.not28.i.us = icmp ult i64 %i.dc, %i.cz
  br i1 %.not28.i.us, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store float 0.000000e+00, ptr %.sroa.10.3.us, align 4, !tbaa !147
  %i.dg = getelementptr i8, ptr %.sroa.10.3.us, i64 4 ; 3 uses
  %i.dh = add nsw i64 %i.cz, -1                   ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.us, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.us

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.us: ; preds = %bb.bc
  %.idx.i.i.i.i.i.i.us = shl nuw nsw i64 %i.dh, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.dg, i8 0, i64 %.idx.i.i.i.i.i.i.us, i1 false), !tbaa !147
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.idx.i.i.i.i.i.i.us
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.us

bb.bd:                                            ; preds = %bb.bb
  %i.dk = icmp ult i64 %i.de, %i.cz
  br i1 %i.dk, label %bb.bh, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.us

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.us: ; preds = %bb.bd
  %.sroa.speculated.i.i.us = call i64 @llvm.umax.i64(i64 %i.cv, i64 %i.cz)
  %i.dl = add nuw nsw i64 %.sroa.speculated.i.i.us, %i.cv
  %i.dm = call i64 @llvm.umin.i64(i64 %i.dl, i64 2305843009213693951) ; 2 uses
  %i.dn = shl nuw nsw i64 %i.dm, 2
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #29
          to label %.noexc219.us unwind label %bb.bi ; 4 uses

.noexc219.us:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.us
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.cu ; 3 uses
  store float 0.000000e+00, ptr %i.dp, align 4, !tbaa !147
  %i.dq = add nsw i64 %i.cz, -1                   ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i.us, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.us

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.us: ; preds = %.noexc219.us
  %i.ds = getelementptr i8, ptr %i.dp, i64 4
  %.idx.i.i.i.i.i31.i.us = shl nuw nsw i64 %i.dq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ds, i8 0, i64 %.idx.i.i.i.i.i31.i.us, i1 false), !tbaa !147
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i.us

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i.us: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.us, %.noexc219.us
  %i.dt = icmp sgt i64 %i.cu, 0
  br i1 %i.dt, label %bb.be, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i.us

bb.be:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.do, ptr align 4 %.sroa.0.3.us, i64 %i.cu, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i.us

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i.us: ; preds = %bb.be, %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i.us
  %.not.i35.i.us = icmp eq ptr %.sroa.0.3.us, null
  br i1 %.not.i35.i.us, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i.us, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i.us
  %i.du = sub i64 %i.da, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3.us, i64 noundef %i.du) #26
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i.us

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i.us: ; preds = %bb.bf, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i.us
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.cz
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dm
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.us

_ZNSt6vectorIfSaIfEE6resizeEm.exit.us:            ; preds = %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i.us, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.us, %bb.bc, %bb.ba, %bb.az
  %.sroa.0.12.us = phi ptr [ %.sroa.0.3.us, %bb.az ], [ %.sroa.0.3.us, %bb.ba ], [ %.sroa.0.3.us, %bb.bc ], [ %.sroa.0.3.us, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.us ], [ %i.do, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i.us ] ; 8 uses
  %.sroa.10.9.us = phi ptr [ %.sroa.10.3.us, %bb.az ], [ %spec.select.us, %bb.ba ], [ %i.dg, %bb.bc ], [ %i.dj, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.us ], [ %i.dv, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i.us ] ; 2 uses
  %.sroa.15.12.us = phi ptr [ %.sroa.15.3.us, %bb.az ], [ %.sroa.15.3.us, %bb.ba ], [ %.sroa.15.3.us, %bb.bc ], [ %.sroa.15.3.us, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.us ], [ %i.dw, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i.us ] ; 2 uses
  br i1 %brmerge, label %._crit_edge462.split.us, label %.preheader328.lr.ph.split.us

._crit_edge462.split.us:                          ; preds = %._crit_edge446.split.split.us.us.us, %._crit_edge446.split.us.us.split.us.us.us, %.preheader328.lr.ph.split.split.us.us, %.preheader328.lr.ph.split.split.us522, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.us
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile8readTileEiiii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0147.us, i32 noundef %.0148.us, i32 noundef %.0149490.us, i32 noundef %.0150501.us)
          to label %._crit_edge422.us.thread unwind label %bb.bg

bb.bg:                                            ; preds = %._crit_edge462.split.us
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #28
          to label %.noexc218.split.us.unreachable unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.us
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bg, %bb.av
  %.sroa.0.5.us = phi ptr [ %.sroa.0.12.us, %bb.bg ], [ %.sroa.0.3.us, %bb.bi ], [ %.sroa.0.3.us, %bb.av ] ; 3 uses
  %.sroa.10.4.us = phi ptr [ %.sroa.10.9.us, %bb.bg ], [ %.sroa.10.3.us, %bb.bi ], [ %.sroa.10.3.us, %bb.av ]
  %.sroa.15.5.us = phi ptr [ %.sroa.15.12.us, %bb.bg ], [ %.sroa.15.3.us, %bb.bi ], [ %.sroa.15.3.us, %bb.av ] ; 3 uses
  %.pn196.pn.us = phi { ptr, i32 } [ %i.dx, %bb.bg ], [ %i.dy, %bb.bi ], [ %i.co, %bb.av ]
  %.4177.us = extractvalue { ptr, i32 } %.pn196.pn.us, 0
  %i.dz = call ptr @__cxa_begin_catch(ptr %.4177.us) #25 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.bk unwind label %.split547.us

bb.bk:                                            ; preds = %bb.bj
  %.3164.mux.us = select i1 %or.cond203.not314.not317.us, i1 true, i1 %.3164.us
  br i1 %brmerge.not.us, label %.loopexit332, label %._crit_edge422.us.thread

._crit_edge422.us.thread:                         ; preds = %.preheader329.lr.ph.us, %.preheader330.us, %bb.bk, %._crit_edge462.split.us, %bb.ax, %._crit_edge422.us
  %.sroa.0.6.us = phi ptr [ %.sroa.0.3.us, %._crit_edge422.us ], [ %.sroa.0.12.us, %._crit_edge462.split.us ], [ %.sroa.0.5.us, %bb.bk ], [ %.sroa.0.3.us, %bb.ax ], [ %.sroa.0.3.us, %.preheader330.us ], [ %.sroa.0.3.us, %.preheader329.lr.ph.us ]
  %.sroa.10.5.us = phi ptr [ %.sroa.10.3.us, %._crit_edge422.us ], [ %.sroa.10.9.us, %._crit_edge462.split.us ], [ %.sroa.10.4.us, %bb.bk ], [ %.sroa.10.3.us, %bb.ax ], [ %.sroa.10.3.us, %.preheader330.us ], [ %.sroa.10.3.us, %.preheader329.lr.ph.us ]
  %.sroa.15.6.us = phi ptr [ %.sroa.15.3.us, %._crit_edge422.us ], [ %.sroa.15.12.us, %._crit_edge462.split.us ], [ %.sroa.15.5.us, %bb.bk ], [ %.sroa.15.3.us, %bb.ax ], [ %.sroa.15.3.us, %.preheader330.us ], [ %.sroa.15.3.us, %.preheader329.lr.ph.us ]
  %.6167.us = phi i1 [ %.3164.us, %._crit_edge422.us ], [ %.3164.us, %._crit_edge462.split.us ], [ %.3164.mux.us, %bb.bk ], [ %.3164.us, %bb.ax ], [ %.3164.us, %.preheader330.us ], [ %.3164.us, %.preheader329.lr.ph.us ]
  %i.ea = add nuw nsw i32 %.0147.us, 1
  br label %.preheader331.us, !llvm.loop !232

.thread.us:                                       ; preds = %bb.at
  %i.eb = add nuw nsw i32 %.0148.us, 1
  br label %bb.ar, !llvm.loop !233

.thread267.us:                                    ; preds = %bb.as
  %i.ec = add nuw nsw i32 %.0149490.us, 1         ; 2 uses
  %exitcond702.not = icmp eq i32 %i.ec, %i.k
  br i1 %exitcond702.not, label %..thread278_crit_edge.us, label %.preheader333.us, !llvm.loop !234

.preheader330.us:                                 ; preds = %bb.au
  br i1 %i.cb, label %.preheader329.lr.ph.us, label %._crit_edge422.us.thread
end_hunk_1
