Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebufalgo_compare?download=true
inline.NumInlined: 8095
inline.NumDeleted: 2632
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZN11OpenImageIO4v3_112ImageBufAlgo14nonzero_regionERKNS0_8ImageBufENS0_3ROIEi:bb.a
  store i32 %storemerge523, ptr %2, align 8
  %i.gb = sub nsw i32 %.sroa.6204.0.copyload, %.sroa.5203.0.copyload
  %i.gc = icmp sgt i32 %i.gb, 1
  br i1 %i.gc, label %.preheader, label %.loopexit248

.preheader:                                       ; preds = %_ZStneIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit105.thread216
  %i.gd = icmp slt i32 %.sroa.5203.0.copyload, %.sroa.6204.0.copyload
  br i1 %i.gd, label %.lr.ph301, label %.loopexit251.a

.lr.ph301:                                        ; preds = %.preheader
  %i.ge = ptrtoint ptr %.0.i.i.i.i.i.i.i83 to i64
  %i.gf = ptrtoint ptr %.sroa.0136.0 to i64
  %i.gg = sub i64 %i.ge, %i.gf                    ; 2 uses
  %i.gh = ashr exact i64 %i.gg, 2                 ; 2 uses
  %.sroa.55.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %.sroa.68.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %i.gi = ptrtoint ptr %.sroa.0164.0 to i64
  %i.gj = sub i64 %.0.i.i.i.i.i.i.i, %i.gi
  %i.gk = icmp eq i64 %i.gg, %i.gj
  %.not9.i.i.i.i.i.i106 = icmp eq ptr %.sroa.0136.0, %.0.i.i.i.i.i.i.i83
  %.fr307 = freeze i1 %i.gk
  br i1 %.fr307, label %.lr.ph301.split, label %.lr.ph301.split.us

.lr.ph301.split.us:                               ; preds = %.lr.ph301
  %i.gl = add nsw i32 %.sroa.6204.0.copyload, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  store i32 %i.gl, ptr %.sroa.55.0..sroa_idx6, align 8, !tbaa !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.68.0..sroa_idx9, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.gep446, i64 12, i1 false)
  %i.gm = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0136.0, i64 %i.gh, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %11, i32 noundef %3)
          to label %.loopexit251.a unwind label %.split304.us ; 0 uses

.split304.us:                                     ; preds = %.lr.ph301.split.us
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.lr.ph301.split:                                  ; preds = %.lr.ph301, %.loopexit250.a
  %i.go = phi i32 [ %i.gp, %.loopexit250.a ], [ %.sroa.6204.0.copyload, %.lr.ph301 ] ; 3 uses
  %i.gp = add nsw i32 %i.go, -1                   ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  store i32 %i.gp, ptr %.sroa.55.0..sroa_idx6, align 8, !tbaa !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.68.0..sroa_idx9, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.gep446, i64 12, i1 false)
  %i.gq = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0136.0, i64 %i.gh, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %11, i32 noundef %3)
          to label %bb.ak unwind label %.split304

bb.ak:                                            ; preds = %.lr.ph301.split
  br i1 %i.gq, label %bb.al, label %.loopexit251.a

bb.al:                                            ; preds = %bb.ak
  br i1 %.not9.i.i.i.i.i.i106, label %.loopexit250.a, label %.lr.ph.i.i.i.i.i.i107

.lr.ph.i.i.i.i.i.i107:                            ; preds = %bb.al, %bb.am
  %.011.i.i.i.i.i.i108 = phi ptr [ %i.gv, %bb.am ], [ %.sroa.0164.0, %bb.al ] ; 2 uses
  %.0810.i.i.i.i.i.i109 = phi ptr [ %i.gu, %bb.am ], [ %.sroa.0136.0, %bb.al ] ; 2 uses
  %i.gr = load float, ptr %.0810.i.i.i.i.i.i109, align 4, !tbaa !7
  %i.gs = load float, ptr %.011.i.i.i.i.i.i108, align 4, !tbaa !7
  %i.gt = fcmp une float %i.gr, %i.gs
  br i1 %i.gt, label %.loopexit251.a, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i.i107
  %i.gu = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i109, i64 4 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i108, i64 4
  %.not.i.i.i.i.i.i110 = icmp eq ptr %i.gu, %.0.i.i.i.i.i.i.i83
  br i1 %.not.i.i.i.i.i.i110, label %.loopexit250.a, label %.lr.ph.i.i.i.i.i.i107, !llvm.loop !453

.split304:                                        ; preds = %.lr.ph301.split
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit250.a:                                   ; preds = %bb.am, %bb.al
  store i32 %i.gp, ptr %.sroa.gep446, align 4, !tbaa !169
  %i.gx = icmp slt i32 %.sroa.5203.0.copyload, %i.gp
  br i1 %i.gx, label %.lr.ph301.split, label %.loopexit251.a, !llvm.loop !458

.loopexit251.a:                                   ; preds = %.loopexit250.a, %bb.ak, %.lr.ph.i.i.i.i.i.i107, %.lr.ph301.split.us, %.preheader
  %i.gy = phi i32 [ %.sroa.6204.0.copyload, %.lr.ph301.split.us ], [ %.sroa.6204.0.copyload, %.preheader ], [ %i.go, %.lr.ph.i.i.i.i.i.i107 ], [ %.sroa.5203.0.copyload, %.loopexit250.a ], [ %i.go, %bb.ak ] ; 2 uses
  %i.gz = icmp slt i32 %.sroa.5203.0.copyload, %i.gy
  br i1 %i.gz, label %.lr.ph308, label %.loopexit248

.lr.ph308:                                        ; preds = %.loopexit251.a
  %i.ha = load i64, ptr %.sroa.gep449, align 8
  %i.hb = ptrtoint ptr %.0.i.i.i.i.i.i.i83 to i64
  %i.hc = ptrtoint ptr %.sroa.0136.0 to i64
  %i.hd = sub i64 %i.hb, %i.hc                    ; 2 uses
  %i.he = ashr exact i64 %i.hd, 2                 ; 2 uses
  %.sroa.5.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i64 %i.ha, ptr %.sroa.6.0..sroa_idx3, align 8
  %i.hf = ptrtoint ptr %.sroa.0164.0 to i64
  %i.hg = sub i64 %.0.i.i.i.i.i.i.i, %i.hf
  %i.hh = icmp eq i64 %i.hd, %i.hg
  %.not9.i.i.i.i.i.i112 = icmp eq ptr %.sroa.0136.0, %.0.i.i.i.i.i.i.i83
  %.fr312 = freeze i1 %i.hh
  br i1 %.fr312, label %.lr.ph308.split, label %.lr.ph308.split.us

.lr.ph308.split.us:                               ; preds = %.lr.ph308
  %i.hi = add nsw i32 %.sroa.5203.0.copyload, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %12, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false)
  store i32 %i.hi, ptr %.sroa.5.0..sroa_idx1, align 4, !tbaa !3
  %i.hj = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0136.0, i64 %i.he, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %12, i32 noundef %3)
          to label %.loopexit248 unwind label %.split310.us ; 0 uses

.split310.us:                                     ; preds = %.lr.ph308.split.us
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.lr.ph308.split:                                  ; preds = %.lr.ph308, %.loopexit247
  %i.hl = phi i32 [ %i.hm, %.loopexit247 ], [ %.sroa.5203.0.copyload, %.lr.ph308 ]
  %i.hm = add i32 %i.hl, 1                        ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %12, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false)
  store i32 %i.hm, ptr %.sroa.5.0..sroa_idx1, align 4, !tbaa !3
  %i.hn = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0136.0, i64 %i.he, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %12, i32 noundef %3)
          to label %bb.an unwind label %.split310

bb.an:                                            ; preds = %.lr.ph308.split
  br i1 %i.hn, label %bb.ao, label %.loopexit248

bb.ao:                                            ; preds = %bb.an
  br i1 %.not9.i.i.i.i.i.i112, label %.loopexit247, label %.lr.ph.i.i.i.i.i.i113

.lr.ph.i.i.i.i.i.i113:                            ; preds = %bb.ao, %bb.ap
  %.011.i.i.i.i.i.i114 = phi ptr [ %i.hs, %bb.ap ], [ %.sroa.0164.0, %bb.ao ] ; 2 uses
  %.0810.i.i.i.i.i.i115 = phi ptr [ %i.hr, %bb.ap ], [ %.sroa.0136.0, %bb.ao ] ; 2 uses
  %i.ho = load float, ptr %.0810.i.i.i.i.i.i115, align 4, !tbaa !7
  %i.hp = load float, ptr %.011.i.i.i.i.i.i114, align 4, !tbaa !7
  %i.hq = fcmp une float %i.ho, %i.hp
  br i1 %i.hq, label %.loopexit248, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i.i.i113
  %i.hr = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i115, i64 4 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i114, i64 4
  %.not.i.i.i.i.i.i116 = icmp eq ptr %i.hr, %.0.i.i.i.i.i.i.i83
  br i1 %.not.i.i.i.i.i.i116, label %.loopexit247, label %.lr.ph.i.i.i.i.i.i113, !llvm.loop !453

.split310:                                        ; preds = %.lr.ph308.split
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit247:                                     ; preds = %bb.ap, %bb.ao
  store i32 %i.hm, ptr %.sroa.gep443, align 8, !tbaa !170
  %exitcond434.not = icmp eq i32 %i.hm, %i.gy
  br i1 %exitcond434.not, label %.loopexit248, label %.lr.ph308.split, !llvm.loop !459

.loopexit248:                                     ; preds = %.loopexit247, %bb.an, %.lr.ph.i.i.i.i.i.i113, %.lr.ph308.split.us, %.loopexit251.a, %_ZStneIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit105.thread216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !79
  %.not.i.i.i = icmp eq ptr %.sroa.0136.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %.loopexit248
  %i.hu = ptrtoint ptr %.sroa.0136.0 to i64
  %i.hv = sub i64 %.sroa.33.0, %i.hu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0136.0, i64 noundef %i.hv) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %.loopexit248, %bb.aq
  %.not.i.i.i118 = icmp eq ptr %.sroa.0164.0, null
  br i1 %.not.i.i.i118, label %_ZNSt6vectorIfSaIfEED2Ev.exit119, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.hw = ptrtoint ptr %.sroa.0164.0 to i64
  %i.hx = sub i64 %.sroa.21.0, %i.hw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0164.0, i64 noundef %i.hx) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit119

bb.as:                                            ; preds = %.split310, %.split310.us, %.split304, %.split304.us, %.split296, %.split296.us, %.split285, %.split285.us, %.split280, %.split280.us, %.split, %.split.us
  %.pn = phi { ptr, i32 } [ %i.gn, %.split304.us ], [ %i.fr, %.split296.us ], [ %i.ev, %.split285.us ], [ %i.eb, %.split280.us ], [ %i.db, %.split.us ], [ %i.do, %.split ], [ %i.ek, %.split280 ], [ %i.fe, %.split285 ], [ %i.ga, %.split296 ], [ %i.gw, %.split304 ], [ %i.ht, %.split310 ], [ %i.hk, %.split310.us ] ; 2 uses
  %.not.i.i.i120 = icmp eq ptr %.sroa.0136.0, null
  br i1 %.not.i.i.i120, label %_ZNSt6vectorIfSaIfEED2Ev.exit121, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hy = ptrtoint ptr %.sroa.0136.0 to i64
  %i.hz = sub i64 %.sroa.33.0, %i.hy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0136.0, i64 noundef %i.hz) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit121

_ZNSt6vectorIfSaIfEED2Ev.exit121:                 ; preds = %bb.at, %bb.as, %bb.aa, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.z ], [ %i.dn, %bb.aa ], [ %.pn, %bb.as ], [ %.pn, %bb.at ] ; 2 uses
  %.not.i.i.i122 = icmp eq ptr %.sroa.0164.0, null
  br i1 %.not.i.i.i122, label %_ZNSt6vectorIfSaIfEED2Ev.exit123, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit121
  %i.ia = ptrtoint ptr %.sroa.0164.0 to i64
  %i.ib = sub i64 %.sroa.21.0, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0164.0, i64 noundef %i.ib) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit123

_ZNSt6vectorIfSaIfEED2Ev.exit119.loopexit:        ; preds = %._crit_edge57.i
  store i32 %storemerge353.i314, ptr %0, align 4
  store i32 %i.bo, ptr %i.ab, align 4
  store i32 %storemerge254.i320, ptr %i.af, align 4
  store i32 %i.bn, ptr %i.ag, align 4
  store i32 %storemerge58.i326, ptr %i.ah, align 4
  store i32 %i.bm, ptr %i.ai, align 4
  store i32 0, ptr %.sroa.9.0..sroa_idx.i, align 4
  store i32 %i.bl, ptr %.sroa.10.0..sroa_idx.i, align 4
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit119

_ZNSt6vectorIfSaIfEED2Ev.exit119:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit119.loopexit, %.lr.ph61.i, %bb.g, %bb.ar, %_ZNSt6vectorIfSaIfEED2Ev.exit
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void

_ZNSt6vectorIfSaIfEED2Ev.exit123:                 ; preds = %.loopexit, %.loopexit.split-lp, %bb.x, %bb.y, %_ZNSt6vectorIfSaIfEED2Ev.exit121, %bb.au, %bb.m
  %.pn67 = phi { ptr, i32 } [ %.pn.pn, %bb.au ], [ %i.bv, %bb.m ], [ %i.dk, %bb.x ], [ %i.dl, %bb.y ], [ %.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit121 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %.pn67
}

declare void @_ZNK11OpenImageIO4v3_18ImageBuf3roiEv(ptr dead_on_unwind writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_112ImageBufAlgo20computePixelHashSHA1B5cxx11ERKNS0_8ImageBufENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_3ROIEii(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly captures(none) dead_on_return %2, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.OpenImageIO::v3_1::pvt::LoggedTimer", align 8 ; 6 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"struct.OpenImageIO::v3_1::ROI", align 4 ; 5 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %10 = alloca %"class.std::vector.20", align 8   ; 13 uses
  %11 = alloca %"class.std::function", align 8    ; 14 uses
  %12 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 7 uses
  %13 = alloca %"class.OpenImageIO::v3_1::SHA1", align 8 ; 9 uses
  store i32 %4, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  store ptr @.str.21, ptr %7, align 8, !tbaa !73
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 25, ptr %i.b, align 8, !tbaa !76
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(68) %6, ptr noundef nonnull dead_on_return %7)
  %i.c = load i32, ptr %3, align 8, !tbaa !77
  %.not37 = icmp eq i32 %i.c, -2147483648
  br i1 %.not37, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.d = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11OpenImageIO4v3_17get_roiERKNS0_9ImageSpecE(ptr dead_on_unwind nonnull writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4 %8, ptr noundef nonnull align 8 dereferenceable(160) %i.d)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !79
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.ag

bb.f:                                             ; preds = %bb.d, %bb.a
  %i.f = phi i32 [ %.pre, %bb.d ], [ %4, %bb.a ]  ; 5 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !105
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !104
  %i.l = sub nsw i32 %i.i, %i.k                   ; 2 uses
  %.not = icmp slt i32 %i.f, %i.l
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = load ptr, ptr %2, align 8, !tbaa !73
  store ptr %i.m, ptr %9, align 8, !tbaa !73
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !76
  store i64 %i.p, ptr %i.n, align 8, !tbaa !76
  invoke fastcc void @_ZN11OpenImageIO4v3_112_GLOBAL__N_119simplePixelHashSHA1B5cxx11ERKNS0_8ImageBufENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_3ROIE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef dead_on_return %9, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %3)
          to label %bb.af unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.j:                                             ; preds = %bb.g
  %i.r = add nsw i32 %i.f, -1
  %i.s = add nuw i32 %i.r, %i.l                   ; 2 uses
  %i.t = udiv i32 %i.s, %i.f                      ; 5 uses
  %i.u = icmp samesign ugt i32 %i.t, 1
  br i1 %i.u, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i, label %bb.k, !prof !164

bb.k:                                             ; preds = %bb.j
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !157
  %i.w = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 872, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_112ImageBufAlgo20computePixelHashSHA1B5cxx11ERKNS0_8ImageBufENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_3ROIEii, ptr noundef nonnull @.str.22) #33 ; 0 uses
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.x = zext i32 %i.t to i64                     ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp ugt i32 %i.f, %i.s
  br i1 %.not.i.i.i.i, label %.loopexit, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.y = shl nuw nsw i64 %i.x, 5
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #31
          to label %.noexc27 unwind label %bb.s   ; 4 uses

.noexc27:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  store ptr %i.z, ptr %10, align 8, !tbaa !460
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !461
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc27, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.prol ], [ %i.z, %.noexc27 ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i.prol ], [ %i.x, %.noexc27 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc27 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.ac, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !132
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !134
  store i8 0, ptr %i.ac, align 8, !tbaa !136
  %i.ae = add i64 %.057.i.i.i.i.i.prol, -1        ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !462

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc27
  %.lcssa.unr = phi ptr [ poison, %.noexc27 ], [ %i.af, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.z, %.noexc27 ], [ %i.af, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.x, %.noexc27 ], [ %i.ae, %.lr.ph.i.i.i.i.i.prol ]
  %i.ag = add i32 %i.t, -1
  %i.ah = icmp ult i32 %i.ag, 3
  br i1 %i.ah, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.ai, ptr %.08.i.i.i.i.i, align 8, !tbaa !132
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.aj, align 8, !tbaa !134
  store i8 0, ptr %i.ai, align 8, !tbaa !136
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !132
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.am, align 8, !tbaa !134
  store i8 0, ptr %i.al, align 8, !tbaa !136
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !132
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ap, align 8, !tbaa !134
  store i8 0, ptr %i.ao, align 8, !tbaa !136
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !132
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.as, align 8, !tbaa !134
  store i8 0, ptr %i.ar, align 8, !tbaa !136
  %i.at = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !463

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.au, %.lr.ph.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.av, align 8, !tbaa !464
  %i.aw = load i32, ptr %i.j, align 8, !tbaa !104
  %i.ax = load i32, ptr %i.h, align 4, !tbaa !105
  %i.ay = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ba = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
          to label %bb.o unwind label %bb.l       ; 5 uses

bb.l:                                             ; preds = %.loopexit
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !120 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = invoke noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
end_hunk_0
