inline.NumInlined: 480
inline.NumDeleted: 251
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context6headerEi:bb.a
bb.di:                                            ; preds = %bb.df
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_11CompressionEED1Ev(ptr noundef nonnull align 8 dereferenceable(12) %27) #27
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.pn111 = phi { ptr, i32 } [ %i.fs, %bb.di ], [ %i.fr, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br label %bb.jf

bb.dk:                                            ; preds = %bb.ae
  %i.ft = load ptr, ptr %i.bv, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.fv = load i8, ptr %i.fu, align 8, !tbaa !25
  %i.fw = zext i8 %i.fv to i32
  store i32 %i.fw, ptr %i.f, align 4, !tbaa !75
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_6EnvmapEEC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %28, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.dl unwind label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %i.ft, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.dm unwind label %bb.do

bb.dm:                                            ; preds = %bb.dl
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_6EnvmapEED1Ev(ptr noundef nonnull align 8 dereferenceable(12) %28) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  br label %.loopexit

bb.dn:                                            ; preds = %bb.dk
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.do:                                            ; preds = %bb.dl
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_6EnvmapEED1Ev(ptr noundef nonnull align 8 dereferenceable(12) %28) #27
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.pn109 = phi { ptr, i32 } [ %i.fy, %bb.do ], [ %i.fx, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  br label %bb.jf

bb.dq:                                            ; preds = %bb.ae
  %i.fz = load ptr, ptr %i.bv, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.gb = load i8, ptr %i.ga, align 8, !tbaa !25
  %i.gc = zext i8 %i.gb to i32
  store i32 %i.gc, ptr %i.g, align 4, !tbaa !77
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_9LineOrderEEC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %29, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %bb.dr unwind label %bb.dt

bb.dr:                                            ; preds = %bb.dq
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %i.fz, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.ds unwind label %bb.du

bb.ds:                                            ; preds = %bb.dr
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_9LineOrderEED1Ev(ptr noundef nonnull align 8 dereferenceable(12) %29) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  br label %.loopexit

bb.dt:                                            ; preds = %bb.dq
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.du:                                            ; preds = %bb.dr
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_9LineOrderEED1Ev(ptr noundef nonnull align 8 dereferenceable(12) %29) #27
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.pn107 = phi { ptr, i32 } [ %i.ge, %bb.du ], [ %i.gd, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  br label %bb.jf

bb.dw:                                            ; preds = %bb.ae
  %i.gf = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
          to label %.preheader unwind label %bb.dx

.preheader:                                       ; preds = %bb.dw
  %i.gg = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !25 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !32
  %i.gk = icmp sgt i32 %i.gj, 0
  br i1 %i.gk, label %.lr.ph318, label %.loopexit

bb.dx:                                            ; preds = %bb.dw
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.jf

.lr.ph318:                                        ; preds = %.preheader, %bb.dz
  %indvars.iv401 = phi i64 [ %indvars.iv.next402, %bb.dz ], [ 0, %.preheader ] ; 2 uses
  %i.gm = phi ptr [ %i.hd, %bb.dz ], [ %i.gi, %.preheader ]
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !34
  %i.gp = getelementptr inbounds nuw [32 x i8], ptr %i.go, i64 %indvars.iv401 ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #27
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !79
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !80
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 28
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !81
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gp, i64 20
  %i.gz = load i8, ptr %i.gy, align 4, !tbaa !82
  %i.ha = icmp ne i8 %i.gz, 0
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_57ChannelC1ENS_9PixelTypeEiib(ptr noundef nonnull align 4 dereferenceable(13) %30, i32 noundef %i.gt, i32 noundef %i.gv, i32 noundef %i.gx, i1 noundef zeroext %i.ha)
          to label %bb.dy unwind label %bb.ea

bb.dy:                                            ; preds = %.lr.ph318
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_511ChannelList6insertEPKcRKNS_7ChannelE(ptr noundef nonnull align 8 dereferenceable(48) %i.gf, ptr noundef %i.gr, ptr noundef nonnull align 4 dereferenceable(13) %30)
          to label %bb.dz unwind label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 1 ; 2 uses
  %i.hb = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !25 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !32
  %i.hf = sext i32 %i.he to i64
  %i.hg = icmp slt i64 %indvars.iv.next402, %i.hf
  br i1 %i.hg, label %.lr.ph318, label %.loopexit, !llvm.loop !83

bb.ea:                                            ; preds = %bb.dy, %.lr.ph318
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  br label %bb.jf

bb.eb:                                            ; preds = %bb.ae
  %i.hi = load ptr, ptr %i.bv, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #27
  %i.hj = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !25 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !84
  %i.hn = zext i8 %i.hm to i32                    ; 2 uses
  %i.ho = and i32 %i.hn, 15
  %i.hp = lshr i32 %i.hn, 4
  %i.hq = load <2 x i32>, ptr %i.hk, align 1, !tbaa !3
  store <2 x i32> %i.hq, ptr %32, align 8, !tbaa !3
  store i32 %i.ho, ptr %i.am, align 8, !tbaa !86
  store i32 %i.hp, ptr %i.an, align 4, !tbaa !90
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_15TileDescriptionEEC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 4 dereferenceable(16) %32)
          to label %bb.ec unwind label %bb.ee

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %i.hi, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.ed unwind label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_15TileDescriptionEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %31) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  br label %.loopexit

bb.ee:                                            ; preds = %bb.eb
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ec
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_15TileDescriptionEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %31) #27
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.pn103 = phi { ptr, i32 } [ %i.hs, %bb.ef ], [ %i.hr, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  br label %bb.jf

bb.eh:                                            ; preds = %bb.ae
  %i.ht = load ptr, ptr %i.bv, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #27
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !25 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !91 ; 2 uses
  %i.hy = load i32, ptr %i.hv, align 8, !tbaa !94 ; 3 uses
  %i.hz = sext i32 %i.hy to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false)
  %.idx = shl nsw i64 %i.hz, 2                    ; 6 uses
  %i.ia = icmp ugt i64 %.idx, 9223372036854775804
  br i1 %i.ia, label %bb.ei, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.ei:                                            ; preds = %bb.eh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #29
          to label %.noexc.i159 unwind label %bb.el

.noexc.i159:                                      ; preds = %bb.ei
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.eh
  %.not.i.i.i = icmp eq i32 %i.hy, 0
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr null, i64 %.idx ; 2 uses
  store ptr %i.ib, ptr %i.ak, align 8, !tbaa !95
  br label %bb.en

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ic = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #26
          to label %.noexc4.i unwind label %.thread434 ; 4 uses

.noexc4.i:                                        ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i
  store ptr %i.ic, ptr %34, align 8, !tbaa !97
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.idx ; 4 uses
  store ptr %i.id, ptr %i.ak, align 8, !tbaa !95
  %i.ie = icmp samesign ugt i64 %.idx, 4
  br i1 %i.ie, label %bb.ej, label %64, !prof !98

bb.ej:                                            ; preds = %.noexc4.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ic, ptr align 4 %i.hx, i64 %.idx, i1 false)
  br label %bb.en

64:                                               ; preds = %.noexc4.i
  %65 = icmp eq i32 %i.hy, 1
  br i1 %65, label %bb.ek, label %bb.en

bb.ek:                                            ; preds = %64
  %i.if = load float, ptr %i.hx, align 4, !tbaa !44
  store float %i.if, ptr %i.ic, align 4, !tbaa !44
  br label %bb.en

.thread434:                                       ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i
  %lpad.loopexit223 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.el:                                            ; preds = %bb.ei
  %lpad.loopexit.split-lp224 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre406 = load ptr, ptr %34, align 8, !tbaa !97 ; 3 uses
  %.not.i.i5.i = icmp eq ptr %.pre406, null
  br i1 %.not.i.i5.i, label %.body, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ig = load ptr, ptr %i.ak, align 8, !tbaa !95
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = ptrtoint ptr %.pre406 to i64
  %i.ij = sub i64 %i.ih, %i.ii
  call void @_ZdlPvm(ptr noundef nonnull %.pre406, i64 noundef %i.ij) #28
  br label %.body

bb.en:                                            ; preds = %bb.ek, %64, %bb.ej, %.thread.i.i
  %66 = phi ptr [ %i.id, %bb.ej ], [ %i.id, %64 ], [ %i.id, %bb.ek ], [ %i.ib, %.thread.i.i ]
  store ptr %66, ptr %i.al, align 8, !tbaa !99
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeISt6vectorIfSaIfEEEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %bb.eo unwind label %bb.er

bb.eo:                                            ; preds = %bb.en
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %i.ht, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.ep unwind label %bb.es

bb.ep:                                            ; preds = %bb.eo
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeISt6vectorIfSaIfEEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #27
  %i.ik = load ptr, ptr %34, align 8, !tbaa !97   ; 3 uses
  %.not.i.i.i160 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i160, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.il = load ptr, ptr %i.ak, align 8, !tbaa !95
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = ptrtoint ptr %i.ik to i64
  %i.io = sub i64 %i.im, %i.in
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef %i.io) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.ep, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  br label %.loopexit

bb.er:                                            ; preds = %bb.en
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.es:                                            ; preds = %bb.eo
  %i.iq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeISt6vectorIfSaIfEEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #27
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.pn100 = phi { ptr, i32 } [ %i.iq, %bb.es ], [ %i.ip, %bb.er ] ; 2 uses
  %i.ir = load ptr, ptr %34, align 8, !tbaa !97   ; 3 uses
  %.not.i.i.i162 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i162, label %.body, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.is = load ptr, ptr %i.ak, align 8, !tbaa !95
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = ptrtoint ptr %i.ir to i64
  %i.iv = sub i64 %i.it, %i.iu
  call void @_ZdlPvm(ptr noundef nonnull %i.ir, i64 noundef %i.iv) #28
  br label %.body

.body:                                            ; preds = %.thread434, %bb.eu, %bb.et, %bb.em, %bb.el
  %.pn100.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp224, %bb.el ], [ %.pn100, %bb.eu ], [ %lpad.loopexit.split-lp224, %bb.em ], [ %.pn100, %bb.et ], [ %lpad.loopexit223, %.thread434 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  br label %bb.jf

bb.ev:                                            ; preds = %bb.ae
  %i.iw = load ptr, ptr %i.bv, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #27
  %i.ix = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !25 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !44
  %i.jc = load <4 x float>, ptr %i.iy, align 4, !tbaa !44
  store <4 x float> %i.jc, ptr %36, align 16, !tbaa !44
  %i.jd = load <4 x float>, ptr %i.iz, align 4, !tbaa !44
  store <4 x float> %i.jd, ptr %i.ai, align 16, !tbaa !44
  store float %i.jb, ptr %i.aj, align 16, !tbaa !44
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_18Matrix33IfEEEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(44) %35, ptr noundef nonnull align 4 dereferenceable(36) %36)
          to label %bb.ew unwind label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %i.iw, ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.ex unwind label %bb.ez

bb.ex:                                            ; preds = %bb.ew
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_18Matrix33IfEEED1Ev(ptr noundef nonnull align 8 dereferenceable(44) %35) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  br label %.loopexit

bb.ey:                                            ; preds = %bb.ev
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ew
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_18Matrix33IfEEED1Ev(ptr noundef nonnull align 8 dereferenceable(44) %35) #27
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.pn98 = phi { ptr, i32 } [ %i.jf, %bb.ez ], [ %i.je, %bb.ey ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  br label %bb.jf

bb.fb:                                            ; preds = %bb.ae
  %i.jg = load ptr, ptr %i.bv, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #27
  %i.jh = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !25 ; 5 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 48
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 64
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !50
  %i.jo = load <2 x double>, ptr %i.ji, align 8, !tbaa !50
  store <2 x double> %i.jo, ptr %38, align 16, !tbaa !50
  %i.jp = load <2 x double>, ptr %i.jj, align 8, !tbaa !50
  store <2 x double> %i.jp, ptr %i.ae, align 16, !tbaa !50
  %i.jq = load <2 x double>, ptr %i.jk, align 8, !tbaa !50
  store <2 x double> %i.jq, ptr %i.af, align 16, !tbaa !50
  %i.jr = load <2 x double>, ptr %i.jl, align 8, !tbaa !50
  store <2 x double> %i.jr, ptr %i.ag, align 16, !tbaa !50
  store double %i.jn, ptr %i.ah, align 16, !tbaa !50
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_18Matrix33IdEEEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(80) %37, ptr noundef nonnull align 8 dereferenceable(72) %38)
          to label %bb.fc unwind label %bb.fe

bb.fc:                                            ; preds = %bb.fb
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %i.jg, ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.fd unwind label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_18Matrix33IdEEED1Ev(ptr noundef nonnull align 8 dereferenceable(80) %37) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  br label %.loopexit

bb.fe:                                            ; preds = %bb.fb
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fc
  %i.jt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_18Matrix33IdEEED1Ev(ptr noundef nonnull align 8 dereferenceable(80) %37) #27
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.pn96 = phi { ptr, i32 } [ %i.jt, %bb.ff ], [ %i.js, %bb.fe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  br label %bb.jf

bb.fh:                                            ; preds = %bb.ae
  %i.ju = load ptr, ptr %i.bv, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #27
  %i.jv = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !25 ; 4 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 32
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 48
  %i.ka = load <4 x float>, ptr %i.jw, align 4, !tbaa !44
  store <4 x float> %i.ka, ptr %40, align 16, !tbaa !44
  %i.kb = load <4 x float>, ptr %i.jx, align 4, !tbaa !44
  store <4 x float> %i.kb, ptr %i.ab, align 16, !tbaa !44
  %i.kc = load <4 x float>, ptr %i.jy, align 4, !tbaa !44
  store <4 x float> %i.kc, ptr %i.ac, align 16, !tbaa !44
  %i.kd = load <4 x float>, ptr %i.jz, align 4, !tbaa !44
  store <4 x float> %i.kd, ptr %i.ad, align 16, !tbaa !44
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_18Matrix44IfEEEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(72) %39, ptr noundef nonnull align 4 dereferenceable(64) %40)
          to label %bb.fi unwind label %bb.fk

bb.fi:                                            ; preds = %bb.fh
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %i.ju, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.fj unwind label %bb.fl

bb.fj:                                            ; preds = %bb.fi
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_18Matrix44IfEEED1Ev(ptr noundef nonnull align 8 dereferenceable(72) %39) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  br label %.loopexit

bb.fk:                                            ; preds = %bb.fh
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %bb.fm

bb.fl:                                            ; preds = %bb.fi
  %i.kf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_18Matrix44IfEEED1Ev(ptr noundef nonnull align 8 dereferenceable(72) %39) #27
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.pn94 = phi { ptr, i32 } [ %i.kf, %bb.fl ], [ %i.ke, %bb.fk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  br label %bb.jf

bb.fn:                                            ; preds = %bb.ae
  %i.kg = load ptr, ptr %i.bv, align 8, !tbaa !49
end_hunk_0
