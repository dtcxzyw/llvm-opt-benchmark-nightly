Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/ImfCheckFile?download=true
inline.NumInlined: 710
inline.NumDeleted: 300
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113readMultiPartERNS_18MultiPartInputFileEbb:bb.a
.loopexit.i.i:                                    ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIPvED2Ev.exit.i.i, %bb.gj
  %i.xj = or disjoint i64 %.idx.i.i, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.wz, i64 noundef %i.xj) #26
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit

bb.gl:                                            ; preds = %bb.gf, %.loopexit.split-lp.i, %.loopexit.i, %bb.fv
  %.sroa.0.3.i = phi ptr [ %.sroa.0.4.i, %bb.gf ], [ %.sroa.0.0251.i, %bb.fv ], [ %.sroa.0.0251.i, %.loopexit.i ], [ %.sroa.0.0251.i, %.loopexit.split-lp.i ] ; 3 uses
  %.sroa.15.3.i = phi ptr [ %.sroa.15.4.i, %bb.gf ], [ %.sroa.15.0253.i, %bb.fv ], [ %.sroa.15.0253.i, %.loopexit.i ], [ %.sroa.15.0253.i, %.loopexit.split-lp.i ]
  %.pn124.pn.i = phi { ptr, i32 } [ %i.wo, %bb.gf ], [ %i.sa, %bb.fv ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i137, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i135.i = icmp eq ptr %.sroa.0.3.i, null
  br i1 %.not.i.i.i135.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit136.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.xk = ptrtoint ptr %.sroa.15.3.i to i64
  %i.xl = ptrtoint ptr %.sroa.0.3.i to i64
  %i.xm = sub i64 %i.xk, %i.xl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3.i, i64 noundef %i.xm) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit136.i

_ZNSt6vectorIfSaIfEED2Ev.exit136.i:               ; preds = %bb.gm, %bb.gl, %bb.ft, %bb.fr, %bb.fn, %bb.fm, %bb.fl
  %.pn125.pn.pn.pn.i = phi { ptr, i32 } [ %i.oz, %bb.fl ], [ %i.pw, %bb.ft ], [ %.pn124.pn.i, %bb.gm ], [ %i.pa, %bb.fm ], [ %i.pb, %bb.fn ], [ %i.pi, %bb.fr ], [ %.pn124.pn.i, %bb.gl ]
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %7) #25
  br label %.body.i

.body.i:                                          ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit136.i, %bb.ez
  %.pn125.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn125.pn.pn.pn.i, %_ZNSt6vectorIfSaIfEED2Ev.exit136.i ], [ %i.oj, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.gn

bb.gn:                                            ; preds = %.body.i, %bb.fe
  %.pn126.i = phi { ptr, i32 } [ %i.or, %bb.fe ], [ %.pn125.pn.pn.pn.pn.i, %.body.i ]
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayINS0_IPvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #25
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.fa
  %.pn126.pn.i = phi { ptr, i32 } [ %.pn126.i, %bb.gn ], [ %i.ol, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZdaPv(ptr noundef nonnull %i.nv) #26
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjED2Ev.exit137.i

_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjED2Ev.exit137.i: ; preds = %bb.go, %.thread178.i, %bb.ex, %bb.ew, %bb.eq, %bb.ep, %bb.eo
  %.pn126.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.nm, %bb.eo ], [ %i.nn, %bb.ep ], [ %i.no, %bb.eq ], [ %i.nw, %bb.ew ], [ %i.nx, %bb.ex ], [ %i.ok, %.thread178.i ], [ %.pn126.pn.i, %bb.go ]
  %.14.i = extractvalue { ptr, i32 } %.pn126.pn.pn.pn.pn.pn.pn.i, 0
  %i.xn = call ptr @__cxa_begin_catch(ptr %.14.i) #25 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit.thread unwind label %bb.gq

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit.thread: ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjED2Ev.exit137.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %bb.gr

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit: ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferD2Ev.exit.i, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZdaPv(ptr noundef nonnull %i.nv) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br i1 %not..not.lcssa342.i, label %bb.gr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140.thread185

bb.gp:                                            ; preds = %bb.eh
  %i.xo = landingpad { ptr, i32 }
          catch ptr null
  br label %.critedge106

bb.gq:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjED2Ev.exit137.i, %bb.ei
  %i.xp = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %.critedge106

.critedge106:                                     ; preds = %bb.gq, %bb.gp
  %.pn98 = phi { ptr, i32 } [ %i.xp, %bb.gq ], [ %i.xo, %bb.gp ]
  %.1 = extractvalue { ptr, i32 } %.pn98, 0
  %i.xq = call ptr @__cxa_begin_catch(ptr %.1) #25 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.gr

bb.gr:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit.thread, %.critedge106, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit
  %i.xr = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile6headerEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.093521)
  %i.xs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header4typeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(49) %i.xr) ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  %i.xu = load i64, ptr %i.xt, align 8, !tbaa !19 ; 3 uses
  %i.xv = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L12DEEPSCANLINEB5cxx11E, i64 8), align 8, !tbaa !19
  %i.xw = icmp eq i64 %i.xu, %i.xv
  br i1 %i.xw, label %bb.gs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140.thread185

bb.gs:                                            ; preds = %bb.gr
  %i.xx = icmp eq i64 %i.xu, 0
  br i1 %i.xx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140: ; preds = %bb.gs
  %i.xy = load ptr, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L12DEEPSCANLINEB5cxx11E, align 8, !tbaa !26
  %i.xz = load ptr, ptr %i.xs, align 8, !tbaa !26
  %bcmp.i139 = call i32 @bcmp(ptr %i.xz, ptr %i.xy, i64 %i.xu)
  %bcmp.i139.fr = freeze i32 %bcmp.i139
  %i.ya = icmp eq i32 %bcmp.i139.fr, 0
  br i1 %i.ya, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140.thread185

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140.thread: ; preds = %bb.gs, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140.thread185

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140.thread185: ; preds = %bb.gr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit.thread181, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit129.thread178
  %.7 = phi i1 [ %.5, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit129.thread178 ], [ %.5, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit ], [ %.5, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit.thread181 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140.thread ], [ %.5, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140 ], [ %.5, %bb.gr ] ; 5 uses
  br i1 %.189, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit161.thread192, label %bb.gt

bb.gt:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140.thread185
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile14flushPartCacheEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.gu unwind label %bb.kh

bb.gu:                                            ; preds = %bb.gt
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.093521)
          to label %bb.gv unwind label %bb.ki

bb.gv:                                            ; preds = %bb.gu
  %i.yb = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.gw unwind label %bb.hd     ; 4 uses

bb.gw:                                            ; preds = %bb.gv
  %i.yc = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.gx unwind label %bb.he

bb.gx:                                            ; preds = %bb.gw
  %i.yd = invoke noundef i64 @_ZN27OpenImageIO_v3_1_Imf__3_3_522calculateBytesPerPixelERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.yc)
          to label %bb.gy unwind label %bb.he     ; 2 uses

bb.gy:                                            ; preds = %bb.gx
  %i.ye = trunc i64 %i.yd to i32                  ; 4 uses
  %i.yf = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.gz unwind label %bb.hf

bb.gz:                                            ; preds = %bb.gy
  %i.yg = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header15tileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.yf)
          to label %bb.ha unwind label %bb.hf     ; 3 uses

bb.ha:                                            ; preds = %bb.gz
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !24
  %.fr = freeze i32 %i.yh                         ; 8 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yg, i64 4
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !25
  %.fr522 = freeze i32 %i.yj                      ; 4 uses
  %i.yk = invoke noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputPart10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.hb unwind label %bb.hg     ; 2 uses

bb.hb:                                            ; preds = %bb.ha
  %i.yl = invoke noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputPart10numXLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.hc unwind label %bb.hh     ; 4 uses

bb.hc:                                            ; preds = %bb.hb
  %i.ym = sext i32 %.fr to i64                    ; 7 uses
  %i.yn = sext i32 %.fr522 to i64                 ; 2 uses
  %i.yo = mul nsw i64 %i.yn, %i.ym                ; 4 uses
  %i.yp = shl i64 %i.yo, 2                        ; 2 uses
  %i.yq = icmp ugt i64 %i.yp, 1000000
  %or.cond8.i = select i1 %or.cond.i141, i1 %i.yq, i1 false
  br i1 %or.cond8.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112readDeepTileINS_18DeepTiledInputPartEEEbRT_bb.exit.thread188, label %bb.hi

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112readDeepTileINS_18DeepTiledInputPartEEEbRT_bb.exit.thread188: ; preds = %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit161.thread192

bb.hd:                                            ; preds = %bb.gv
  %i.yr = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_57Array2DIjED2Ev.exit217.i

bb.he:                                            ; preds = %bb.gx, %bb.gw
  %i.ys = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_57Array2DIjED2Ev.exit217.i

bb.hf:                                            ; preds = %bb.gz, %bb.gy
  %i.yt = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_57Array2DIjED2Ev.exit217.i

bb.hg:                                            ; preds = %bb.ha
  %i.yu = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_57Array2DIjED2Ev.exit217.i

bb.hh:                                            ; preds = %bb.hb
  %i.yv = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_57Array2DIjED2Ev.exit217.i

bb.hi:                                            ; preds = %bb.hc
  %i.yw = icmp ugt i64 %i.yo, 4611686018427387903
  %i.yx = select i1 %i.yw, i64 -1, i64 %i.yp
  %i.yy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.yx) #29
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_57Array2DIjE11resizeEraseEll.exit.i unwind label %bb.hn ; 7 uses

_ZN27OpenImageIO_v3_1_Imf__3_3_57Array2DIjE11resizeEraseEll.exit.i: ; preds = %bb.hi
  %i.yz = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.yb)
          to label %bb.hj unwind label %bb.ho

bb.hj:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_57Array2DIjE11resizeEraseEll.exit.i
  %i.za = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.yz)
          to label %.preheader338.i unwind label %bb.ho

.preheader338.i:                                  ; preds = %bb.hj, %bb.hq
  %.sroa.0239.0.i = phi ptr [ %i.zs, %bb.hq ], [ %i.za, %bb.hj ] ; 2 uses
  %.0157.i = phi i32 [ %i.zt, %bb.hq ], [ 0, %bb.hj ] ; 13 uses
  %i.zb = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.yb)
          to label %bb.hk unwind label %bb.hp

bb.hk:                                            ; preds = %.preheader338.i
  %i.zc = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.zb)
          to label %bb.hl unwind label %bb.hp

bb.hl:                                            ; preds = %bb.hk
  %.not310.i = icmp eq ptr %.sroa.0239.0.i, %i.zc
  br i1 %.not310.i, label %bb.hm, label %bb.hq

bb.hm:                                            ; preds = %bb.hl
  %i.zd = zext i32 %.0157.i to i64                ; 2 uses
  %i.ze = mul nuw nsw i64 %i.zd, 24               ; 3 uses
  %i.zf = add nuw nsw i64 %i.ze, 8
  %i.zg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.zf) #29
          to label %.noexc205.i unwind label %bb.hs ; 6 uses

.noexc205.i:                                      ; preds = %bb.hm
  store i64 %i.zd, ptr %i.zg, align 16
  %i.zh = getelementptr i8, ptr %i.zg, i64 8      ; 16 uses
  %i.zi = icmp eq i32 %.0157.i, 0                 ; 3 uses
  br i1 %i.zi, label %._crit_edge.i146, label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %.noexc205.i
  %i.zj = add nsw i64 %i.ze, -24
  %i.zk = urem i64 %i.zj, 24
  %i.zl = sub nsw i64 %i.ze, %i.zk
  call void @llvm.memset.p0.i64(ptr align 8 %i.zh, i8 0, i64 %i.zl, i1 false)
  %i.zm = icmp ugt i64 %i.yo, 2305843009213693951
  %i.zn = shl nuw i64 %i.yo, 3
  %i.zo = select i1 %i.zm, i64 -1, i64 %i.zn
  %smax.i = call i32 @llvm.smax.i32(i32 %.0157.i, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %bb.ht

bb.hn:                                            ; preds = %bb.hi
  %i.zp = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_57Array2DIjED2Ev.exit217.i

bb.ho:                                            ; preds = %bb.hj, %_ZN27OpenImageIO_v3_1_Imf__3_3_57Array2DIjE11resizeEraseEll.exit.i
  %i.zq = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayINS_7Array2DIPfEEED2Ev.exit216.i

bb.hp:                                            ; preds = %bb.hk, %.preheader338.i
  %i.zr = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayINS_7Array2DIPfEEED2Ev.exit216.i

bb.hq:                                            ; preds = %bb.hl
  %i.zs = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0239.0.i) #31
  %i.zt = add i32 %.0157.i, 1
  br label %.preheader338.i, !llvm.loop !188

._crit_edge.i146:                                 ; preds = %bb.hv, %.noexc205.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i32 0, ptr %i.t, align 8, !tbaa !71
  store ptr null, ptr %i.u, align 8, !tbaa !72
  store ptr %i.t, ptr %i.v, align 8, !tbaa !73
  store ptr %i.t, ptr %i.w, align 8, !tbaa !74
  store i64 0, ptr %i.x, align 8, !tbaa !75
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_55SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %i.y, i32 noundef 1, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferC2Ev.exit.i148 unwind label %bb.hr

bb.hr:                                            ; preds = %._crit_edge.i146
  %i.zu = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameENS0_9DeepSliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(104) %3) #25
  br label %.body.i147

bb.hs:                                            ; preds = %bb.hm
  %i.zv = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayINS_7Array2DIPfEEED2Ev.exit216.i

bb.ht:                                            ; preds = %bb.hv, %.lr.ph.i142
  %indvars.iv.i143 = phi i64 [ 0, %.lr.ph.i142 ], [ %indvars.iv.next.i144, %bb.hv ] ; 2 uses
  %i.zw = getelementptr inbounds nuw [24 x i8], ptr %i.zh, i64 %indvars.iv.i143 ; 3 uses
  %i.zx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.zo) #29
          to label %.noexc206.i unwind label %bb.hw

.noexc206.i:                                      ; preds = %bb.ht
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zw, i64 16 ; 2 uses
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !97 ; 2 uses
  %i.aaa = icmp eq ptr %i.zz, null
  br i1 %i.aaa, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %.noexc206.i
  call void @_ZdaPv(ptr noundef nonnull %i.zz) #26
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %.noexc206.i
  store i64 %i.yn, ptr %i.zw, align 8, !tbaa !98
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zw, i64 8
  store i64 %i.ym, ptr %i.aab, align 8, !tbaa !99
  store ptr %i.zx, ptr %i.zy, align 8, !tbaa !97
  %indvars.iv.next.i144 = add nuw nsw i64 %indvars.iv.i143, 1 ; 2 uses
  %exitcond.not.i145 = icmp eq i64 %indvars.iv.next.i144, %wide.trip.count.i
  br i1 %exitcond.not.i145, label %._crit_edge.i146, label %bb.ht, !llvm.loop !189

bb.hw:                                            ; preds = %bb.ht
  %i.aac = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ke

_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferC2Ev.exit.i148: ; preds = %._crit_edge.i146
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.aad = shl nsw i64 %i.ym, 2
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_55SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %4, i32 noundef 0, ptr noundef nonnull %i.yy, i64 noundef 4, i64 noundef %i.aad, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.hx unwind label %bb.ie

bb.hx:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferC2Ev.exit.i148
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBuffer22insertSampleCountSliceERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(50) %4)
          to label %bb.hy unwind label %bb.ie

bb.hy:                                            ; preds = %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.aae = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.yb)
          to label %bb.hz unwind label %bb.if

bb.hz:                                            ; preds = %bb.hy
  %i.aaf = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aae)
          to label %.preheader337.i unwind label %bb.if

.preheader337.i:                                  ; preds = %bb.hz
  %i.aag = shl nsw i32 %.fr, 3
  %i.aah = sext i32 %i.aag to i64
  br label %bb.ia

bb.ia:                                            ; preds = %bb.ij, %.preheader337.i
  %indvars.iv615.i = phi i64 [ 0, %.preheader337.i ], [ %indvars.iv.next616.i, %bb.ij ] ; 2 uses
  %.sroa.0229.0.i = phi ptr [ %i.aaf, %.preheader337.i ], [ %i.aar, %bb.ij ] ; 3 uses
  %i.aai = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.yb)
          to label %bb.ib unwind label %bb.ig

bb.ib:                                            ; preds = %bb.ia
  %i.aaj = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aai)
          to label %bb.ic unwind label %bb.ig

bb.ic:                                            ; preds = %bb.ib
  %.not311.i = icmp eq ptr %.sroa.0229.0.i, %i.aaj
  br i1 %.not311.i, label %bb.id, label %bb.ih

bb.id:                                            ; preds = %bb.ic
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputPart14setFrameBufferERKNS_15DeepFrameBufferE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(104) %3)
          to label %bb.il unwind label %bb.jx

bb.ie:                                            ; preds = %bb.hx, %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferC2Ev.exit.i148
  %i.aak = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i149

bb.if:                                            ; preds = %bb.hz, %bb.hy
  %i.aal = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i149

bb.ig:                                            ; preds = %bb.ib, %bb.ia
  %i.aam = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i149

bb.ih:                                            ; preds = %bb.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.aan = getelementptr inbounds nuw [24 x i8], ptr %i.zh, i64 %indvars.iv615.i
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 16
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !97
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_59DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef 2, ptr noundef %i.aap, i64 noundef 8, i64 noundef %i.aah, i64 noundef 4, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.ii unwind label %bb.ik

bb.ii:                                            ; preds = %bb.ih
  %i.aaq = getelementptr inbounds nuw i8, ptr %.sroa.0229.0.i, i64 32
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull %i.aaq, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.ij unwind label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.aar = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0229.0.i) #31
  %indvars.iv.next616.i = add nuw nsw i64 %indvars.iv615.i, 1
  br label %bb.ia, !llvm.loop !190

bb.ik:                                            ; preds = %bb.ii, %bb.ih
  %i.aas = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i149

bb.il:                                            ; preds = %bb.id
  %i.aat = getelementptr inbounds nuw i8, ptr %i.yg, i64 8
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !85
  %i.aav = icmp eq i32 %i.aau, 2                  ; 3 uses
  %.not312496.i = icmp sgt i32 %i.yk, 0
  br i1 %.not312496.i, label %.preheader335.lr.ph.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit209.i

.preheader335.lr.ph.i:                            ; preds = %bb.il
  %.not201485.i = icmp sgt i32 %i.yl, 0
  %sext.i = shl i64 %i.yd, 32
  %i.aaw = ashr exact i64 %sext.i, 32
  br i1 %.not201485.i, label %.preheader335.us.preheader.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit209.i

.preheader335.us.preheader.i:                     ; preds = %.preheader335.lr.ph.i
  %i.aax = icmp sgt i32 %.fr, 0
  %i.aay = icmp sgt i32 %.fr522, 0
  %i.aaz = icmp slt i32 %.fr, 1
  %i.aba = icmp slt i32 %.fr522, 1
  %smax642.i = call i32 @llvm.smax.i32(i32 %.0157.i, i32 1) ; 4 uses
  %wide.trip.count626.i = zext nneg i32 %.fr522 to i64 ; 4 uses
  %wide.trip.count621.i = zext i32 %.fr to i64    ; 6 uses
  %brmerge.i154 = or i1 %i.aba, %i.aaz
  %wide.trip.count643.i = zext nneg i32 %smax642.i to i64 ; 7 uses
  %i.abb = add nsw i64 %wide.trip.count643.i, -1  ; 3 uses
  %xtraiter980 = and i64 %wide.trip.count621.i, 3 ; 3 uses
  %i.abc = icmp ult i32 %.fr, 4
  %unroll_iter986 = and i64 %wide.trip.count621.i, 2147483644
  %lcmp.mod982.not = icmp eq i64 %xtraiter980, 0
  %lcmp.mod985 = icmp ne i64 %xtraiter980, 0
  %xtraiter989 = and i64 %wide.trip.count621.i, 1
  %i.abd = icmp eq i32 %.fr, 1
  %unroll_iter995 = and i64 %wide.trip.count621.i, 2147483646
  %lcmp.mod991.not = icmp eq i64 %xtraiter989, 0
  %lcmp.mod994 = trunc i32 %.fr to i1
  %xtraiter998 = and i64 %wide.trip.count643.i, 1
  %i.abe = icmp eq i64 %i.abb, 0
  %unroll_iter1003 = and i64 %wide.trip.count643.i, 2147483646
  %lcmp.mod1000.not = icmp eq i64 %xtraiter998, 0
  %lcmp.mod1002 = trunc i32 %smax642.i to i1
  %xtraiter1005 = and i64 %wide.trip.count643.i, 1
  %i.abf = icmp eq i64 %i.abb, 0
  %unroll_iter1009 = and i64 %wide.trip.count643.i, 2147483646
  %lcmp.mod1007.not = icmp eq i64 %xtraiter1005, 0
  %lcmp.mod1008 = trunc i32 %smax642.i to i1
  %xtraiter1012 = and i64 %wide.trip.count643.i, 1
  %i.abg = icmp eq i64 %i.abb, 0
  %unroll_iter1017 = and i64 %wide.trip.count643.i, 2147483646
  %lcmp.mod1014.not = icmp eq i64 %xtraiter1012, 0
  %lcmp.mod1016 = trunc i32 %smax642.i to i1
  br label %.preheader335.us.i

.preheader335.us.i:                               ; preds = %..thread279_crit_edge.us.i, %.preheader335.us.preheader.i
  %.0150502.us.i = phi i32 [ %i.akb, %..thread279_crit_edge.us.i ], [ 0, %.preheader335.us.preheader.i ] ; 15 uses
  %.0170500.us.i = phi i1 [ %.us-phi507, %..thread279_crit_edge.us.i ], [ false, %.preheader335.us.preheader.i ] ; 3 uses
  %.sroa.15.0499.us.i = phi ptr [ %.us-phi506, %..thread279_crit_edge.us.i ], [ null, %.preheader335.us.preheader.i ] ; 15 uses
  %.sroa.10.0498.us.i = phi ptr [ %.us-phi505, %..thread279_crit_edge.us.i ], [ null, %.preheader335.us.preheader.i ] ; 3 uses
  %.sroa.0.0497.us.i = phi ptr [ %.us-phi504, %..thread279_crit_edge.us.i ], [ null, %.preheader335.us.preheader.i ] ; 15 uses
  br i1 %i.aay, label %.preheader335.us.i.split.us, label %.preheader334.us.i

.preheader335.us.i.split.us:                      ; preds = %.preheader335.us.i
  br i1 %i.aax, label %.preheader334.us.i.us.us, label %.preheader334.us.i.us

.preheader334.us.i.us.us:                         ; preds = %.preheader335.us.i.split.us, %.thread268.us.i.split.us.split.us.us.us
  %.0149491.us.i.us.us = phi i32 [ %i.ais, %.thread268.us.i.split.us.split.us.us.us ], [ 0, %.preheader335.us.i.split.us ] ; 5 uses
  %.1171489.us.i.us.us = phi i1 [ %.2172.us.i.us.us.us.us, %.thread268.us.i.split.us.split.us.us.us ], [ %.0170500.us.i, %.preheader335.us.i.split.us ]
  %.sroa.15.1488.us.i.us.us = phi ptr [ %.sroa.15.2.us.i.us.us.us.us, %.thread268.us.i.split.us.split.us.us.us ], [ %.sroa.15.0499.us.i, %.preheader335.us.i.split.us ]
  %.sroa.10.1487.us.i.us.us = phi ptr [ %.sroa.10.2.us.i.us.us.us.us, %.thread268.us.i.split.us.split.us.us.us ], [ %.sroa.10.0498.us.i, %.preheader335.us.i.split.us ]
  %.sroa.0.1486.us.i.us.us = phi ptr [ %.sroa.0.2.us.i.us.us.us.us, %.thread268.us.i.split.us.split.us.us.us ], [ %.sroa.0.0497.us.i, %.preheader335.us.i.split.us ]
  %i.abh = icmp eq i32 %.0149491.us.i.us.us, %.0150502.us.i
  %or.cond203.not315.not318.us.i.us.us = or i1 %i.aav, %i.abh ; 2 uses
  %brmerge.not.us.i155.us.us = and i1 %2, %or.cond203.not315.not318.us.i.us.us
  br label %bb.im

bb.im:                                            ; preds = %.thread.us.i.split.us.us.split.us.us.us.us, %.preheader334.us.i.us.us
  %.sroa.0.2.us.i.us.us.us.us = phi ptr [ %.sroa.0.3.us.i.us.us.us.us.us.us, %.thread.us.i.split.us.us.split.us.us.us.us ], [ %.sroa.0.1486.us.i.us.us, %.preheader334.us.i.us.us ] ; 4 uses
  %.sroa.10.2.us.i.us.us.us.us = phi ptr [ %.sroa.10.3.us.i.us.us.us.us.us.us, %.thread.us.i.split.us.us.split.us.us.us.us ], [ %.sroa.10.1487.us.i.us.us, %.preheader334.us.i.us.us ] ; 3 uses
  %.sroa.15.2.us.i.us.us.us.us = phi ptr [ %.sroa.15.3.us.i.us.us.us.us.us.us, %.thread.us.i.split.us.us.split.us.us.us.us ], [ %.sroa.15.1488.us.i.us.us, %.preheader334.us.i.us.us ] ; 4 uses
  %.2172.us.i.us.us.us.us = phi i1 [ %.3173.us.i.us.us.us.us.us.us, %.thread.us.i.split.us.us.split.us.us.us.us ], [ %.1171489.us.i.us.us, %.preheader334.us.i.us.us ] ; 3 uses
  %.0148.us.i.us.us.us.us = phi i32 [ %i.air, %.thread.us.i.split.us.us.split.us.us.us.us ], [ 0, %.preheader334.us.i.us.us ] ; 5 uses
  %i.abi = invoke noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputPart9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef %.0150502.us.i)
          to label %bb.in unwind label %.split.us.i156.split.us.split.us.split.us.split.us

bb.in:                                            ; preds = %bb.im
  %.not202.us.i.us.us.us.us = icmp slt i32 %.0148.us.i.us.us.us.us, %i.abi
  br i1 %.not202.us.i.us.us.us.us, label %.preheader332.us.i.us.us.us.us.us.us, label %.thread268.us.i.split.us.split.us.us.us

.preheader332.us.i.us.us.us.us.us.us:             ; preds = %bb.in, %._crit_edge423.us.thread.i.us.us.us.us.us.us
  %.sroa.0.3.us.i.us.us.us.us.us.us = phi ptr [ %.sroa.0.6.us.i.us.us.us.us.us.us, %._crit_edge423.us.thread.i.us.us.us.us.us.us ], [ %.sroa.0.2.us.i.us.us.us.us, %bb.in ] ; 15 uses
  %.sroa.10.3.us.i.us.us.us.us.us.us = phi ptr [ %.sroa.10.5.us.i.us.us.us.us.us.us, %._crit_edge423.us.thread.i.us.us.us.us.us.us ], [ %.sroa.10.2.us.i.us.us.us.us, %bb.in ] ; 11 uses
  %.sroa.15.3.us.i.us.us.us.us.us.us = phi ptr [ %.sroa.15.6.us.i.us.us.us.us.us.us, %._crit_edge423.us.thread.i.us.us.us.us.us.us ], [ %.sroa.15.2.us.i.us.us.us.us, %bb.in ] ; 11 uses
  %.3173.us.i.us.us.us.us.us.us = phi i1 [ %.6176.us.i.us.us.us.us.us.us, %._crit_edge423.us.thread.i.us.us.us.us.us.us ], [ %.2172.us.i.us.us.us.us, %bb.in ] ; 5 uses
  %.0147.us.i.us.us.us.us.us.us = phi i32 [ %i.aiq, %._crit_edge423.us.thread.i.us.us.us.us.us.us ], [ 0, %bb.in ] ; 5 uses
  %i.abj = invoke noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputPart9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef %.0149491.us.i.us.us)
          to label %bb.io unwind label %.split548.us.i.split.us.split.us.split.us.split.us.split.us.split.us

bb.io:                                            ; preds = %.preheader332.us.i.us.us.us.us.us.us
  %.not198.us.i.us.us.us.us.us.us = icmp slt i32 %.0147.us.i.us.us.us.us.us.us, %i.abj
  br i1 %.not198.us.i.us.us.us.us.us.us, label %bb.ip, label %.thread.us.i.split.us.us.split.us.us.us.us

bb.ip:                                            ; preds = %bb.io
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputPart21readPixelSampleCountsEiiiiii(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef %.0147.us.i.us.us.us.us.us.us, i32 noundef %.0148.us.i.us.us.us.us, i32 noundef %.0147.us.i.us.us.us.us.us.us, i32 noundef %.0148.us.i.us.us.us.us, i32 noundef %.0149491.us.i.us.us, i32 noundef %.0150502.us.i)
          to label %.preheader331.us.i.us.us.us.us.us.us unwind label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.abk = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.jf

.preheader331.us.i.us.us.us.us.us.us:             ; preds = %bb.ip
  br i1 %1, label %.preheader330.us.us.us.i.us.us.us.us.us.us, label %.preheader330.us.us513.i.us.us.us.us.us.us

.preheader330.us.us513.i.us.us.us.us.us.us:       ; preds = %.preheader331.us.i.us.us.us.us.us.us, %._crit_edge417.split.us.us.us.i.us.us.us.us.us.us
  %indvars.iv623.i.us.us.us.us.us.us = phi i64 [ %indvars.iv.next624.i.us.us.us.us.us.us, %._crit_edge417.split.us.us.us.i.us.us.us.us.us.us ], [ 0, %.preheader331.us.i.us.us.us.us.us.us ] ; 2 uses
  %.0142421.us.us515.i.us.us.us.us.us.us = phi i64 [ %.lcssa891, %._crit_edge417.split.us.us.us.i.us.us.us.us.us.us ], [ 0, %.preheader331.us.i.us.us.us.us.us.us ] ; 2 uses
  %.0144420.us.us516.i.us.us.us.us.us.us = phi i64 [ %.2146.us.us.us.i.us.us.us.us.us.us.lcssa, %._crit_edge417.split.us.us.us.i.us.us.us.us.us.us ], [ 0, %.preheader331.us.i.us.us.us.us.us.us ] ; 2 uses
  %i.abl = mul nuw nsw i64 %indvars.iv623.i.us.us.us.us.us.us, %i.ym
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %i.abl ; 5 uses
  br i1 %i.abc, label %.epil.preheader, label %.preheader330.us.us513.i.us.us.us.us.us.us.new

.preheader330.us.us513.i.us.us.us.us.us.us.new:   ; preds = %.preheader330.us.us513.i.us.us.us.us.us.us, %.preheader330.us.us513.i.us.us.us.us.us.us.new
  %indvars.iv618.i.us.us.us.us.us.us = phi i64 [ %indvars.iv.next619.i.us.us.us.us.us.us.3, %.preheader330.us.us513.i.us.us.us.us.us.us.new ], [ 0, %.preheader330.us.us513.i.us.us.us.us.us.us ] ; 5 uses
  %.1143414.us.us.us.i.us.us.us.us.us.us = phi i64 [ %i.acj, %.preheader330.us.us513.i.us.us.us.us.us.us.new ], [ %.0142421.us.us515.i.us.us.us.us.us.us, %.preheader330.us.us513.i.us.us.us.us.us.us ]
  %.1145413.us.us.us.i.us.us.us.us.us.us = phi i64 [ %.2146.us.us.us.i.us.us.us.us.us.us.3, %.preheader330.us.us513.i.us.us.us.us.us.us.new ], [ %.0144420.us.us516.i.us.us.us.us.us.us, %.preheader330.us.us513.i.us.us.us.us.us.us ]
  %niter987 = phi i64 [ %niter987.next.3, %.preheader330.us.us513.i.us.us.us.us.us.us.new ], [ 0, %.preheader330.us.us513.i.us.us.us.us.us.us ]
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %indvars.iv618.i.us.us.us.us.us.us
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !7
  %i.abp = mul i32 %i.abo, %.0157.i
  %i.abq = zext i32 %i.abp to i64                 ; 2 uses
  %i.abr = add i64 %.1143414.us.us.us.i.us.us.us.us.us.us, %i.abq
  %.2146.us.us.us.i.us.us.us.us.us.us = add i64 %.1145413.us.us.us.i.us.us.us.us.us.us, %i.abq
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %indvars.iv618.i.us.us.us.us.us.us
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 4
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !7
  %i.abv = mul i32 %i.abu, %.0157.i
  %i.abw = zext i32 %i.abv to i64                 ; 2 uses
  %i.abx = add i64 %i.abr, %i.abw
  %.2146.us.us.us.i.us.us.us.us.us.us.1 = add i64 %.2146.us.us.us.i.us.us.us.us.us.us, %i.abw
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %indvars.iv618.i.us.us.us.us.us.us
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 8
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !7
  %i.acb = mul i32 %i.aca, %.0157.i
  %i.acc = zext i32 %i.acb to i64                 ; 2 uses
  %i.acd = add i64 %i.abx, %i.acc
  %.2146.us.us.us.i.us.us.us.us.us.us.2 = add i64 %.2146.us.us.us.i.us.us.us.us.us.us.1, %i.acc
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %indvars.iv618.i.us.us.us.us.us.us
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 12
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !7
  %i.ach = mul i32 %i.acg, %.0157.i
  %i.aci = zext i32 %i.ach to i64                 ; 2 uses
  %i.acj = add i64 %i.acd, %i.aci                 ; 3 uses
  %.2146.us.us.us.i.us.us.us.us.us.us.3 = add i64 %.2146.us.us.us.i.us.us.us.us.us.us.2, %i.aci ; 3 uses
  %indvars.iv.next619.i.us.us.us.us.us.us.3 = add nuw nsw i64 %indvars.iv618.i.us.us.us.us.us.us, 4 ; 2 uses
  %niter987.next.3 = add i64 %niter987, 4         ; 2 uses
  %niter987.ncmp.3 = icmp eq i64 %niter987.next.3, %unroll_iter986
  br i1 %niter987.ncmp.3, label %._crit_edge417.split.us.us.us.i.us.us.us.us.us.us.unr-lcssa, label %.preheader330.us.us513.i.us.us.us.us.us.us.new, !llvm.loop !191

._crit_edge417.split.us.us.us.i.us.us.us.us.us.us.unr-lcssa: ; preds = %.preheader330.us.us513.i.us.us.us.us.us.us.new
  br i1 %lcmp.mod982.not, label %._crit_edge417.split.us.us.us.i.us.us.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge417.split.us.us.us.i.us.us.us.us.us.us.unr-lcssa, %.preheader330.us.us513.i.us.us.us.us.us.us
  %indvars.iv618.i.us.us.us.us.us.us.epil.init = phi i64 [ 0, %.preheader330.us.us513.i.us.us.us.us.us.us ], [ %indvars.iv.next619.i.us.us.us.us.us.us.3, %._crit_edge417.split.us.us.us.i.us.us.us.us.us.us.unr-lcssa ]
  %.1143414.us.us.us.i.us.us.us.us.us.us.epil.init = phi i64 [ %.0142421.us.us515.i.us.us.us.us.us.us, %.preheader330.us.us513.i.us.us.us.us.us.us ], [ %i.acj, %._crit_edge417.split.us.us.us.i.us.us.us.us.us.us.unr-lcssa ]
  %.1145413.us.us.us.i.us.us.us.us.us.us.epil.init = phi i64 [ %.0144420.us.us516.i.us.us.us.us.us.us, %.preheader330.us.us513.i.us.us.us.us.us.us ], [ %.2146.us.us.us.i.us.us.us.us.us.us.3, %._crit_edge417.split.us.us.us.i.us.us.us.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod985)
  br label %bb.ir

bb.ir:                                            ; preds = %bb.ir, %.epil.preheader
  %indvars.iv618.i.us.us.us.us.us.us.epil = phi i64 [ %indvars.iv.next619.i.us.us.us.us.us.us.epil, %bb.ir ], [ %indvars.iv618.i.us.us.us.us.us.us.epil.init, %.epil.preheader ] ; 2 uses
  %.1143414.us.us.us.i.us.us.us.us.us.us.epil = phi i64 [ %i.aco, %bb.ir ], [ %.1143414.us.us.us.i.us.us.us.us.us.us.epil.init, %.epil.preheader ]
  %.1145413.us.us.us.i.us.us.us.us.us.us.epil = phi i64 [ %.2146.us.us.us.i.us.us.us.us.us.us.epil, %bb.ir ], [ %.1145413.us.us.us.i.us.us.us.us.us.us.epil.init, %.epil.preheader ]
  %epil.iter981 = phi i64 [ %epil.iter981.next, %bb.ir ], [ 0, %.epil.preheader ]
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %indvars.iv618.i.us.us.us.us.us.us.epil
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !7
  %i.acm = mul i32 %i.acl, %.0157.i
  %i.acn = zext i32 %i.acm to i64                 ; 2 uses
  %i.aco = add i64 %.1143414.us.us.us.i.us.us.us.us.us.us.epil, %i.acn ; 2 uses
  %.2146.us.us.us.i.us.us.us.us.us.us.epil = add i64 %.1145413.us.us.us.i.us.us.us.us.us.us.epil, %i.acn ; 2 uses
  %indvars.iv.next619.i.us.us.us.us.us.us.epil = add nuw nsw i64 %indvars.iv618.i.us.us.us.us.us.us.epil, 1
  %epil.iter981.next = add i64 %epil.iter981, 1   ; 2 uses
  %epil.iter981.cmp.not = icmp eq i64 %epil.iter981.next, %xtraiter980
  br i1 %epil.iter981.cmp.not, label %._crit_edge417.split.us.us.us.i.us.us.us.us.us.us, label %bb.ir, !llvm.loop !192

._crit_edge417.split.us.us.us.i.us.us.us.us.us.us: ; preds = %bb.ir, %._crit_edge417.split.us.us.us.i.us.us.us.us.us.us.unr-lcssa
  %.lcssa891 = phi i64 [ %i.acj, %._crit_edge417.split.us.us.us.i.us.us.us.us.us.us.unr-lcssa ], [ %i.aco, %bb.ir ] ; 2 uses
  %.2146.us.us.us.i.us.us.us.us.us.us.lcssa = phi i64 [ %.2146.us.us.us.i.us.us.us.us.us.us.3, %._crit_edge417.split.us.us.us.i.us.us.us.us.us.us.unr-lcssa ], [ %.2146.us.us.us.i.us.us.us.us.us.us.epil, %bb.ir ] ; 2 uses
  %indvars.iv.next624.i.us.us.us.us.us.us = add nuw nsw i64 %indvars.iv623.i.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond627.not.i.us.us.us.us.us.us = icmp eq i64 %indvars.iv.next624.i.us.us.us.us.us.us, %wide.trip.count626.i
  br i1 %exitcond627.not.i.us.us.us.us.us.us, label %._crit_edge423.us.i.us.us.us.us.us.us, label %.preheader330.us.us513.i.us.us.us.us.us.us, !llvm.loop !193

.preheader330.us.us.us.i.us.us.us.us.us.us:       ; preds = %.preheader331.us.i.us.us.us.us.us.us, %._crit_edge417.split.us431.us.us.i.us.us.us.us.us.us
  %indvars.iv633.i.us.us.us.us.us.us = phi i64 [ %indvars.iv.next634.i.us.us.us.us.us.us, %._crit_edge417.split.us431.us.us.i.us.us.us.us.us.us ], [ 0, %.preheader331.us.i.us.us.us.us.us.us ] ; 2 uses
  %.0142421.us.us.us.i.us.us.us.us.us.us = phi i64 [ %.lcssa892, %._crit_edge417.split.us431.us.us.i.us.us.us.us.us.us ], [ 0, %.preheader331.us.i.us.us.us.us.us.us ] ; 2 uses
  %.0144420.us.us.us.i.us.us.us.us.us.us = phi i64 [ %.2146.us430.us.us.i.us.us.us.us.us.us.lcssa, %._crit_edge417.split.us431.us.us.i.us.us.us.us.us.us ], [ 0, %.preheader331.us.i.us.us.us.us.us.us ] ; 2 uses
  %i.acp = mul nuw nsw i64 %indvars.iv633.i.us.us.us.us.us.us, %i.ym
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %i.acp ; 3 uses
  br i1 %i.abd, label %.epil.preheader988, label %.preheader330.us.us.us.i.us.us.us.us.us.us.new

.preheader330.us.us.us.i.us.us.us.us.us.us.new:   ; preds = %.preheader330.us.us.us.i.us.us.us.us.us.us, %.preheader330.us.us.us.i.us.us.us.us.us.us.new
  %indvars.iv628.i.us.us.us.us.us.us = phi i64 [ %indvars.iv.next629.i.us.us.us.us.us.us.1, %.preheader330.us.us.us.i.us.us.us.us.us.us.new ], [ 0, %.preheader330.us.us.us.i.us.us.us.us.us.us ] ; 3 uses
  %.1143414.us428.us.us.i.us.us.us.us.us.us = phi i64 [ %i.add, %.preheader330.us.us.us.i.us.us.us.us.us.us.new ], [ %.0142421.us.us.us.i.us.us.us.us.us.us, %.preheader330.us.us.us.i.us.us.us.us.us.us ]
  %.1145413.us429.us.us.i.us.us.us.us.us.us = phi i64 [ %.2146.us430.us.us.i.us.us.us.us.us.us.1, %.preheader330.us.us.us.i.us.us.us.us.us.us.new ], [ %.0144420.us.us.us.i.us.us.us.us.us.us, %.preheader330.us.us.us.i.us.us.us.us.us.us ]
  %niter996 = phi i64 [ %niter996.next.1, %.preheader330.us.us.us.i.us.us.us.us.us.us.new ], [ 0, %.preheader330.us.us.us.i.us.us.us.us.us.us ]
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %indvars.iv628.i.us.us.us.us.us.us
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !7 ; 2 uses
  %i.act = mul i32 %i.acs, %.0157.i
  %i.acu = zext i32 %i.act to i64                 ; 2 uses
  %i.acv = add i64 %.1143414.us428.us.us.i.us.us.us.us.us.us, %i.acu
  %i.acw = mul i32 %i.acs, %i.ye
  %i.acx = icmp ugt i32 %i.acw, 4095
  %spec.select.i.us.us.us.us.us.us = select i1 %i.acx, i64 0, i64 %i.acu
  %.2146.us430.us.us.i.us.us.us.us.us.us = add i64 %spec.select.i.us.us.us.us.us.us, %.1145413.us429.us.us.i.us.us.us.us.us.us
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %indvars.iv628.i.us.us.us.us.us.us
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 4
  %i.ada = load i32, ptr %i.acz, align 4, !tbaa !7 ; 2 uses
  %i.adb = mul i32 %i.ada, %.0157.i
  %i.adc = zext i32 %i.adb to i64                 ; 2 uses
  %i.add = add i64 %i.acv, %i.adc                 ; 3 uses
  %i.ade = mul i32 %i.ada, %i.ye
  %i.adf = icmp ugt i32 %i.ade, 4095
  %spec.select.i.us.us.us.us.us.us.1 = select i1 %i.adf, i64 0, i64 %i.adc
  %.2146.us430.us.us.i.us.us.us.us.us.us.1 = add i64 %spec.select.i.us.us.us.us.us.us.1, %.2146.us430.us.us.i.us.us.us.us.us.us ; 3 uses
  %indvars.iv.next629.i.us.us.us.us.us.us.1 = add nuw nsw i64 %indvars.iv628.i.us.us.us.us.us.us, 2 ; 2 uses
  %niter996.next.1 = add i64 %niter996, 2         ; 2 uses
  %niter996.ncmp.1 = icmp eq i64 %niter996.next.1, %unroll_iter995
  br i1 %niter996.ncmp.1, label %._crit_edge417.split.us431.us.us.i.us.us.us.us.us.us.unr-lcssa, label %.preheader330.us.us.us.i.us.us.us.us.us.us.new, !llvm.loop !191

._crit_edge417.split.us431.us.us.i.us.us.us.us.us.us.unr-lcssa: ; preds = %.preheader330.us.us.us.i.us.us.us.us.us.us.new
  br i1 %lcmp.mod991.not, label %._crit_edge417.split.us431.us.us.i.us.us.us.us.us.us, label %.epil.preheader988

.epil.preheader988:                               ; preds = %._crit_edge417.split.us431.us.us.i.us.us.us.us.us.us.unr-lcssa, %.preheader330.us.us.us.i.us.us.us.us.us.us
  %indvars.iv628.i.us.us.us.us.us.us.epil.init = phi i64 [ 0, %.preheader330.us.us.us.i.us.us.us.us.us.us ], [ %indvars.iv.next629.i.us.us.us.us.us.us.1, %._crit_edge417.split.us431.us.us.i.us.us.us.us.us.us.unr-lcssa ]
  %.1143414.us428.us.us.i.us.us.us.us.us.us.epil.init = phi i64 [ %.0142421.us.us.us.i.us.us.us.us.us.us, %.preheader330.us.us.us.i.us.us.us.us.us.us ], [ %i.add, %._crit_edge417.split.us431.us.us.i.us.us.us.us.us.us.unr-lcssa ]
  %.1145413.us429.us.us.i.us.us.us.us.us.us.epil.init = phi i64 [ %.0144420.us.us.us.i.us.us.us.us.us.us, %.preheader330.us.us.us.i.us.us.us.us.us.us ], [ %.2146.us430.us.us.i.us.us.us.us.us.us.1, %._crit_edge417.split.us431.us.us.i.us.us.us.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod994)
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %indvars.iv628.i.us.us.us.us.us.us.epil.init
  %i.adh = load i32, ptr %i.adg, align 4, !tbaa !7 ; 2 uses
  %i.adi = mul i32 %i.adh, %.0157.i
  %i.adj = zext i32 %i.adi to i64                 ; 2 uses
  %i.adk = add i64 %.1143414.us428.us.us.i.us.us.us.us.us.us.epil.init, %i.adj
  %i.adl = mul i32 %i.adh, %i.ye
  %i.adm = icmp ugt i32 %i.adl, 4095
  %spec.select.i.us.us.us.us.us.us.epil = select i1 %i.adm, i64 0, i64 %i.adj
  %.2146.us430.us.us.i.us.us.us.us.us.us.epil = add i64 %spec.select.i.us.us.us.us.us.us.epil, %.1145413.us429.us.us.i.us.us.us.us.us.us.epil.init
  br label %._crit_edge417.split.us431.us.us.i.us.us.us.us.us.us

._crit_edge417.split.us431.us.us.i.us.us.us.us.us.us: ; preds = %._crit_edge417.split.us431.us.us.i.us.us.us.us.us.us.unr-lcssa, %.epil.preheader988
  %.lcssa892 = phi i64 [ %i.add, %._crit_edge417.split.us431.us.us.i.us.us.us.us.us.us.unr-lcssa ], [ %i.adk, %.epil.preheader988 ] ; 2 uses
  %.2146.us430.us.us.i.us.us.us.us.us.us.lcssa = phi i64 [ %.2146.us430.us.us.i.us.us.us.us.us.us.1, %._crit_edge417.split.us431.us.us.i.us.us.us.us.us.us.unr-lcssa ], [ %.2146.us430.us.us.i.us.us.us.us.us.us.epil, %.epil.preheader988 ] ; 2 uses
  %indvars.iv.next634.i.us.us.us.us.us.us = add nuw nsw i64 %indvars.iv633.i.us.us.us.us.us.us, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputFileEEEbRT_bb:bb.a
  %.8122 = phi i1 [ %not..not.lcssa291, %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjED2Ev.exit ], [ true, %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjED2Ev.exit132 ]
  ret i1 %.8122
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFileD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !32
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !230
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !230
  br label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !35

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29   ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !32
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #25, !inline_history !0
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #25, !inline_history !0
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextD2Ev.exit, !prof !35

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #25
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextD2Ev.exit

_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  ret void
}

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFileC1EPKci(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112readDeepTileINS_18DeepTiledInputFileEEEbRT_bb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::DeepFrameBuffer", align 8 ; 15 uses
  %4 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::Slice", align 8 ; 5 uses
  %5 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::DeepSlice", align 8 ; 5 uses
  %i.a = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.i       ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef i64 @_ZN27OpenImageIO_v3_1_Imf__3_3_522calculateBytesPerPixelERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.b)
          to label %bb.d unwind label %bb.j       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.d = trunc i64 %i.c to i32                    ; 4 uses
  %i.e = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.f = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header15tileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.e)
          to label %bb.f unwind label %bb.k       ; 3 uses

bb.f:                                             ; preds = %bb.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !24   ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !25   ; 7 uses
  %i.j = invoke noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.g unwind label %bb.l       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.k = invoke noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile10numXLevelsEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.h unwind label %bb.m       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.l = sext i32 %i.g to i64                     ; 7 uses
  %i.m = sext i32 %i.i to i64                     ; 2 uses
  %i.n = mul nsw i64 %i.m, %i.l                   ; 4 uses
  %i.o = shl i64 %i.n, 2                          ; 2 uses
  %or.cond = or i1 %1, %2
  %i.p = icmp ugt i64 %i.o, 1000000
  %or.cond8 = select i1 %or.cond, i1 %i.p, i1 false
  br i1 %or.cond8, label %_ZN27OpenImageIO_v3_1_Imf__3_3_57Array2DIjED2Ev.exit.thread, label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_57Array2DIjED2Ev.exit217

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_57Array2DIjED2Ev.exit217

bb.k:                                             ; preds = %bb.e, %bb.d
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_57Array2DIjED2Ev.exit217

bb.l:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_57Array2DIjED2Ev.exit217

bb.m:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_57Array2DIjED2Ev.exit217

bb.n:                                             ; preds = %bb.h
  %i.v = icmp ugt i64 %i.n, 4611686018427387903
  %i.w = select i1 %i.v, i64 -1, i64 %i.o
  %i.x = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.w) #29
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_57Array2DIjE11resizeEraseEll.exit unwind label %bb.s ; 7 uses

_ZN27OpenImageIO_v3_1_Imf__3_3_57Array2DIjE11resizeEraseEll.exit: ; preds = %bb.n
  %i.y = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_57Array2DIjE11resizeEraseEll.exit
  %i.z = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %.preheader338 unwind label %bb.t

.preheader338:                                    ; preds = %bb.o, %bb.v
  %.sroa.0239.0 = phi ptr [ %i.ar, %bb.v ], [ %i.z, %bb.o ] ; 2 uses
  %.0157 = phi i32 [ %i.as, %bb.v ], [ 0, %bb.o ] ; 13 uses
  %i.aa = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %.preheader338
  %i.ab = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aa)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %.not310 = icmp eq ptr %.sroa.0239.0, %i.ab
  br i1 %.not310, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.ac = zext i32 %.0157 to i64                  ; 2 uses
  %i.ad = mul nuw nsw i64 %i.ac, 24               ; 3 uses
  %i.ae = add nuw nsw i64 %i.ad, 8
  %i.af = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ae) #29
          to label %.noexc205 unwind label %bb.x  ; 6 uses

.noexc205:                                        ; preds = %bb.r
  store i64 %i.ac, ptr %i.af, align 16
  %i.ag = getelementptr i8, ptr %i.af, i64 8      ; 16 uses
  %i.ah = icmp eq i32 %.0157, 0                   ; 3 uses
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc205
  %i.ai = add nsw i64 %i.ad, -24
  %i.aj = urem i64 %i.ai, 24
  %i.ak = sub nsw i64 %i.ad, %i.aj
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %i.ak, i1 false)
  %i.al = icmp ugt i64 %i.n, 2305843009213693951
  %i.am = shl nuw i64 %i.n, 3
  %i.an = select i1 %i.al, i64 -1, i64 %i.am
  %smax = tail call i32 @llvm.smax.i32(i32 %.0157, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.y

bb.s:                                             ; preds = %bb.n
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_57Array2DIjED2Ev.exit217

bb.t:                                             ; preds = %bb.o, %_ZN27OpenImageIO_v3_1_Imf__3_3_57Array2DIjE11resizeEraseEll.exit
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayINS_7Array2DIPfEEED2Ev.exit216

bb.u:                                             ; preds = %bb.p, %.preheader338
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayINS_7Array2DIPfEEED2Ev.exit216

bb.v:                                             ; preds = %bb.q
  %i.ar = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0239.0) #31
  %i.as = add i32 %.0157, 1
  br label %.preheader338, !llvm.loop !231

._crit_edge:                                      ; preds = %bb.aa, %.noexc205
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.at, align 8, !tbaa !71
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr null, ptr %i.au, align 8, !tbaa !72
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.at, ptr %i.av, align 8, !tbaa !73
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !74
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.ax, align 8, !tbaa !75
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
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !97 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.noexc206
  tail call void @_ZdaPv(ptr noundef nonnull %i.be) #26
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.noexc206
  store i64 %i.m, ptr %i.bb, align 8, !tbaa !98
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %i.l, ptr %i.bg, align 8, !tbaa !99
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !97
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.y, !llvm.loop !232

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
          to label %.preheader337 unwind label %bb.ak

.preheader337:                                    ; preds = %bb.ae
  %i.bl = shl nsw i32 %i.g, 3
  %i.bm = sext i32 %i.bl to i64
  br label %bb.af

bb.af:                                            ; preds = %.preheader337, %bb.ao
  %indvars.iv615 = phi i64 [ 0, %.preheader337 ], [ %indvars.iv.next616, %bb.ao ] ; 2 uses
  %.sroa.0229.0 = phi ptr [ %i.bk, %.preheader337 ], [ %i.bw, %bb.ao ] ; 3 uses
  %i.bn = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %bb.ag unwind label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.bo = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bn)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %.not311 = icmp eq ptr %.sroa.0229.0, %i.bo
  br i1 %.not311, label %bb.ai, label %bb.am

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
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %indvars.iv615
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !97
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_59DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef 2, ptr noundef %i.bu, i64 noundef 8, i64 noundef %i.bm, i64 noundef 4, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0229.0, i64 32
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull %i.bv, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.bw = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0229.0) #31
  %indvars.iv.next616 = add nuw nsw i64 %indvars.iv615, 1
  br label %bb.af, !llvm.loop !233

bb.ap:                                            ; preds = %bb.an, %bb.am
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.aq:                                            ; preds = %bb.ai
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !85
  %i.ca = icmp eq i32 %i.bz, 2
  %.not312496 = icmp sgt i32 %i.j, 0
  br i1 %.not312496, label %.preheader335.lr.ph, label %_ZNSt6vectorIfSaIfEED2Ev.exit209

.preheader335.lr.ph:                              ; preds = %bb.aq
  %.not201485 = icmp sgt i32 %i.k, 0
  %i.cb = icmp sgt i32 %i.i, 0
  %i.cc = icmp sgt i32 %i.g, 0
  %sext = shl i64 %i.c, 32
  %i.cd = ashr exact i64 %sext, 32
  br i1 %.not201485, label %.preheader335.us.preheader, label %_ZNSt6vectorIfSaIfEED2Ev.exit209

.preheader335.us.preheader:                       ; preds = %.preheader335.lr.ph
  %i.ce = icmp slt i32 %i.g, 1
  %i.cf = icmp slt i32 %i.i, 1
  %smax642 = call i32 @llvm.smax.i32(i32 %.0157, i32 1) ; 4 uses
  %wide.trip.count626 = zext nneg i32 %i.i to i64
  %wide.trip.count636 = zext nneg i32 %i.i to i64
  %wide.trip.count631 = zext i32 %i.g to i64      ; 4 uses
  %brmerge = select i1 %i.cf, i1 true, i1 %i.ce
  %wide.trip.count652 = zext nneg i32 %i.i to i64
  %wide.trip.count647 = zext nneg i32 %i.g to i64
  %wide.trip.count643 = zext nneg i32 %smax642 to i64 ; 7 uses
  %wide.trip.count685 = zext nneg i32 %i.i to i64
  %wide.trip.count669 = zext nneg i32 %i.g to i64
  %i.cg = add nsw i64 %wide.trip.count643, -1     ; 3 uses
  %xtraiter = and i64 %wide.trip.count631, 3      ; 3 uses
  %i.ch = icmp ult i32 %i.g, 4
  %unroll_iter = and i64 %wide.trip.count631, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod840 = icmp ne i64 %xtraiter, 0
  %xtraiter842 = and i64 %wide.trip.count631, 1
  %i.ci = icmp eq i32 %i.g, 1
  %unroll_iter848 = and i64 %wide.trip.count631, 2147483646
  %lcmp.mod844.not = icmp eq i64 %xtraiter842, 0
  %lcmp.mod847 = trunc i32 %i.g to i1
  %xtraiter851 = and i64 %wide.trip.count643, 1
  %i.cj = icmp eq i64 %i.cg, 0
  %unroll_iter856 = and i64 %wide.trip.count643, 2147483646
  %lcmp.mod853.not = icmp eq i64 %xtraiter851, 0
  %lcmp.mod855 = trunc i32 %smax642 to i1
  %xtraiter858 = and i64 %wide.trip.count643, 1
  %i.ck = icmp eq i64 %i.cg, 0
  %unroll_iter862 = and i64 %wide.trip.count643, 2147483646
  %lcmp.mod860.not = icmp eq i64 %xtraiter858, 0
  %lcmp.mod861 = trunc i32 %smax642 to i1
  %xtraiter865 = and i64 %wide.trip.count643, 1
  %i.cl = icmp eq i64 %i.cg, 0
  %unroll_iter870 = and i64 %wide.trip.count643, 2147483646
  %lcmp.mod867.not = icmp eq i64 %xtraiter865, 0
  %lcmp.mod869 = trunc i32 %smax642 to i1
  br label %.preheader335.us

.preheader335.us:                                 ; preds = %.preheader335.us.preheader, %..thread279_crit_edge.us
  %.0150502.us = phi i32 [ %i.jy, %..thread279_crit_edge.us ], [ 0, %.preheader335.us.preheader ] ; 5 uses
  %.0170500.us = phi i1 [ %.2172.us, %..thread279_crit_edge.us ], [ false, %.preheader335.us.preheader ]
  %.sroa.15.0499.us = phi ptr [ %.sroa.15.2.us, %..thread279_crit_edge.us ], [ null, %.preheader335.us.preheader ]
  %.sroa.10.0498.us = phi ptr [ %.sroa.10.2.us, %..thread279_crit_edge.us ], [ null, %.preheader335.us.preheader ]
  %.sroa.0.0497.us = phi ptr [ %.sroa.0.2.us, %..thread279_crit_edge.us ], [ null, %.preheader335.us.preheader ]
  br label %.preheader334.us

.preheader334.us:                                 ; preds = %.preheader335.us, %.thread268.us
  %.0149491.us = phi i32 [ 0, %.preheader335.us ], [ %i.jx, %.thread268.us ] ; 5 uses
  %.1171489.us = phi i1 [ %.0170500.us, %.preheader335.us ], [ %.2172.us, %.thread268.us ]
  %.sroa.15.1488.us = phi ptr [ %.sroa.15.0499.us, %.preheader335.us ], [ %.sroa.15.2.us, %.thread268.us ]
  %.sroa.10.1487.us = phi ptr [ %.sroa.10.0498.us, %.preheader335.us ], [ %.sroa.10.2.us, %.thread268.us ]
  %.sroa.0.1486.us = phi ptr [ %.sroa.0.0497.us, %.preheader335.us ], [ %.sroa.0.2.us, %.thread268.us ]
  %i.cm = icmp eq i32 %.0149491.us, %.0150502.us
  %or.cond203.not315.not318.us = or i1 %i.ca, %i.cm ; 2 uses
  %brmerge.not.us = and i1 %2, %or.cond203.not315.not318.us
  br label %bb.ar

bb.ar:                                            ; preds = %.thread.us, %.preheader334.us
  %.sroa.0.2.us = phi ptr [ %.sroa.0.3.us, %.thread.us ], [ %.sroa.0.1486.us, %.preheader334.us ] ; 5 uses
  %.sroa.10.2.us = phi ptr [ %.sroa.10.3.us, %.thread.us ], [ %.sroa.10.1487.us, %.preheader334.us ] ; 3 uses
  %.sroa.15.2.us = phi ptr [ %.sroa.15.3.us, %.thread.us ], [ %.sroa.15.1488.us, %.preheader334.us ] ; 5 uses
  %.2172.us = phi i1 [ %.3173.us, %.thread.us ], [ %.1171489.us, %.preheader334.us ] ; 4 uses
  %.0148.us = phi i32 [ %i.jw, %.thread.us ], [ 0, %.preheader334.us ] ; 5 uses
  %i.cn = invoke noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0150502.us)
          to label %bb.as unwind label %.split.us

bb.as:                                            ; preds = %bb.ar
  %.not202.us = icmp slt i32 %.0148.us, %i.cn
  br i1 %.not202.us, label %.preheader332.us, label %.thread268.us

.preheader332.us:                                 ; preds = %bb.as, %._crit_edge423.us.thread
  %.sroa.0.3.us = phi ptr [ %.sroa.0.6.us, %._crit_edge423.us.thread ], [ %.sroa.0.2.us, %bb.as ] ; 17 uses
  %.sroa.10.3.us = phi ptr [ %.sroa.10.5.us, %._crit_edge423.us.thread ], [ %.sroa.10.2.us, %bb.as ] ; 13 uses
  %.sroa.15.3.us = phi ptr [ %.sroa.15.6.us, %._crit_edge423.us.thread ], [ %.sroa.15.2.us, %bb.as ] ; 13 uses
  %.3173.us = phi i1 [ %.6176.us, %._crit_edge423.us.thread ], [ %.2172.us, %bb.as ] ; 7 uses
  %.0147.us = phi i32 [ %i.jv, %._crit_edge423.us.thread ], [ 0, %bb.as ] ; 5 uses
  %i.co = invoke noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0149491.us)
          to label %bb.at unwind label %.split548.us

bb.at:                                            ; preds = %.preheader332.us
  %.not198.us = icmp slt i32 %.0147.us, %i.co
  br i1 %.not198.us, label %bb.au, label %.thread.us

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile21readPixelSampleCountsEiiiiii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0147.us, i32 noundef %.0148.us, i32 noundef %.0147.us, i32 noundef %.0148.us, i32 noundef %.0149491.us, i32 noundef %.0150502.us)
          to label %.preheader331.us unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bk

.preheader331.us:                                 ; preds = %bb.au
  br i1 %i.cb, label %.preheader330.lr.ph.us, label %._crit_edge423.us.thread

.preheader330.lr.ph.us:                           ; preds = %.preheader331.us
  br i1 %i.cc, label %.preheader330.lr.ph.split.us.us, label %._crit_edge423.us.thread

.preheader330.lr.ph.split.us.us:                  ; preds = %.preheader330.lr.ph.us
  br i1 %1, label %.preheader330.us.us.us, label %.preheader330.us.us513

.preheader330.us.us513:                           ; preds = %.preheader330.lr.ph.split.us.us, %._crit_edge417.split.us.us.us
  %indvars.iv623 = phi i64 [ %indvars.iv.next624, %._crit_edge417.split.us.us.us ], [ 0, %.preheader330.lr.ph.split.us.us ] ; 2 uses
  %.0142421.us.us515 = phi i64 [ %.lcssa, %._crit_edge417.split.us.us.us ], [ 0, %.preheader330.lr.ph.split.us.us ] ; 2 uses
  %.0144420.us.us516 = phi i64 [ %.2146.us.us.us.lcssa, %._crit_edge417.split.us.us.us ], [ 0, %.preheader330.lr.ph.split.us.us ] ; 2 uses
  %i.cq = mul nuw nsw i64 %indvars.iv623, %i.l
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.cq ; 5 uses
  br i1 %i.ch, label %.epil.preheader, label %.preheader330.us.us513.new

.preheader330.us.us513.new:                       ; preds = %.preheader330.us.us513, %.preheader330.us.us513.new
  %indvars.iv618 = phi i64 [ %indvars.iv.next619.3, %.preheader330.us.us513.new ], [ 0, %.preheader330.us.us513 ] ; 5 uses
  %.1143414.us.us.us = phi i64 [ %i.do, %.preheader330.us.us513.new ], [ %.0142421.us.us515, %.preheader330.us.us513 ]
  %.1145413.us.us.us = phi i64 [ %.2146.us.us.us.3, %.preheader330.us.us513.new ], [ %.0144420.us.us516, %.preheader330.us.us513 ]
  %niter = phi i64 [ %niter.next.3, %.preheader330.us.us513.new ], [ 0, %.preheader330.us.us513 ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv618
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !7
  %i.cu = mul i32 %i.ct, %.0157
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %i.cw = add i64 %.1143414.us.us.us, %i.cv
  %.2146.us.us.us = add i64 %.1145413.us.us.us, %i.cv
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv618
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !7
  %i.da = mul i32 %i.cz, %.0157
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = add i64 %i.cw, %i.db
  %.2146.us.us.us.1 = add i64 %.2146.us.us.us, %i.db
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv618
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load i32, ptr %i.de, align 4, !tbaa !7
  %i.dg = mul i32 %i.df, %.0157
  %i.dh = zext i32 %i.dg to i64                   ; 2 uses
  %i.di = add i64 %i.dc, %i.dh
  %.2146.us.us.us.2 = add i64 %.2146.us.us.us.1, %i.dh
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv618
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !7
  %i.dm = mul i32 %i.dl, %.0157
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = add i64 %i.di, %i.dn                    ; 3 uses
  %.2146.us.us.us.3 = add i64 %.2146.us.us.us.2, %i.dn ; 3 uses
  %indvars.iv.next619.3 = add nuw nsw i64 %indvars.iv618, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge417.split.us.us.us.unr-lcssa, label %.preheader330.us.us513.new, !llvm.loop !234

._crit_edge417.split.us.us.us.unr-lcssa:          ; preds = %.preheader330.us.us513.new
  br i1 %lcmp.mod.not, label %._crit_edge417.split.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge417.split.us.us.us.unr-lcssa, %.preheader330.us.us513
  %indvars.iv618.epil.init = phi i64 [ 0, %.preheader330.us.us513 ], [ %indvars.iv.next619.3, %._crit_edge417.split.us.us.us.unr-lcssa ]
  %.1143414.us.us.us.epil.init = phi i64 [ %.0142421.us.us515, %.preheader330.us.us513 ], [ %i.do, %._crit_edge417.split.us.us.us.unr-lcssa ]
  %.1145413.us.us.us.epil.init = phi i64 [ %.0144420.us.us516, %.preheader330.us.us513 ], [ %.2146.us.us.us.3, %._crit_edge417.split.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod840)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.epil.preheader
  %indvars.iv618.epil = phi i64 [ %indvars.iv.next619.epil, %bb.aw ], [ %indvars.iv618.epil.init, %.epil.preheader ] ; 2 uses
  %.1143414.us.us.us.epil = phi i64 [ %i.dt, %bb.aw ], [ %.1143414.us.us.us.epil.init, %.epil.preheader ]
  %.1145413.us.us.us.epil = phi i64 [ %.2146.us.us.us.epil, %bb.aw ], [ %.1145413.us.us.us.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.aw ], [ 0, %.epil.preheader ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv618.epil
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !7
  %i.dr = mul i32 %i.dq, %.0157
  %i.ds = zext i32 %i.dr to i64                   ; 2 uses
  %i.dt = add i64 %.1143414.us.us.us.epil, %i.ds  ; 2 uses
  %.2146.us.us.us.epil = add i64 %.1145413.us.us.us.epil, %i.ds ; 2 uses
  %indvars.iv.next619.epil = add nuw nsw i64 %indvars.iv618.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge417.split.us.us.us, label %bb.aw, !llvm.loop !235

._crit_edge417.split.us.us.us:                    ; preds = %bb.aw, %._crit_edge417.split.us.us.us.unr-lcssa
  %.lcssa = phi i64 [ %i.do, %._crit_edge417.split.us.us.us.unr-lcssa ], [ %i.dt, %bb.aw ] ; 2 uses
  %.2146.us.us.us.lcssa = phi i64 [ %.2146.us.us.us.3, %._crit_edge417.split.us.us.us.unr-lcssa ], [ %.2146.us.us.us.epil, %bb.aw ] ; 2 uses
  %indvars.iv.next624 = add nuw nsw i64 %indvars.iv623, 1 ; 2 uses
  %exitcond627.not = icmp eq i64 %indvars.iv.next624, %wide.trip.count626
  br i1 %exitcond627.not, label %._crit_edge423.us, label %.preheader330.us.us513, !llvm.loop !236

.preheader330.us.us.us:                           ; preds = %.preheader330.lr.ph.split.us.us, %._crit_edge417.split.us431.us.us
  %indvars.iv633 = phi i64 [ %indvars.iv.next634, %._crit_edge417.split.us431.us.us ], [ 0, %.preheader330.lr.ph.split.us.us ] ; 2 uses
  %.0142421.us.us.us = phi i64 [ %.lcssa806, %._crit_edge417.split.us431.us.us ], [ 0, %.preheader330.lr.ph.split.us.us ] ; 2 uses
  %.0144420.us.us.us = phi i64 [ %.2146.us430.us.us.lcssa, %._crit_edge417.split.us431.us.us ], [ 0, %.preheader330.lr.ph.split.us.us ] ; 2 uses
  %i.du = mul nuw nsw i64 %indvars.iv633, %i.l
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.du ; 3 uses
  br i1 %i.ci, label %.epil.preheader841, label %.preheader330.us.us.us.new

.preheader330.us.us.us.new:                       ; preds = %.preheader330.us.us.us, %.preheader330.us.us.us.new
  %indvars.iv628 = phi i64 [ %indvars.iv.next629.1, %.preheader330.us.us.us.new ], [ 0, %.preheader330.us.us.us ] ; 3 uses
  %.1143414.us428.us.us = phi i64 [ %i.ei, %.preheader330.us.us.us.new ], [ %.0142421.us.us.us, %.preheader330.us.us.us ]
  %.1145413.us429.us.us = phi i64 [ %.2146.us430.us.us.1, %.preheader330.us.us.us.new ], [ %.0144420.us.us.us, %.preheader330.us.us.us ]
  %niter849 = phi i64 [ %niter849.next.1, %.preheader330.us.us.us.new ], [ 0, %.preheader330.us.us.us ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv628
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !7  ; 2 uses
  %i.dy = mul i32 %i.dx, %.0157
  %i.dz = zext i32 %i.dy to i64                   ; 2 uses
  %i.ea = add i64 %.1143414.us428.us.us, %i.dz
  %i.eb = mul i32 %i.dx, %i.d
  %i.ec = icmp ugt i32 %i.eb, 4095
  %spec.select = select i1 %i.ec, i64 0, i64 %i.dz
  %.2146.us430.us.us = add i64 %spec.select, %.1145413.us429.us.us
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv628
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !7  ; 2 uses
  %i.eg = mul i32 %i.ef, %.0157
  %i.eh = zext i32 %i.eg to i64                   ; 2 uses
  %i.ei = add i64 %i.ea, %i.eh                    ; 3 uses
  %i.ej = mul i32 %i.ef, %i.d
  %i.ek = icmp ugt i32 %i.ej, 4095
  %spec.select.1 = select i1 %i.ek, i64 0, i64 %i.eh
  %.2146.us430.us.us.1 = add i64 %spec.select.1, %.2146.us430.us.us ; 3 uses
  %indvars.iv.next629.1 = add nuw nsw i64 %indvars.iv628, 2 ; 2 uses
  %niter849.next.1 = add i64 %niter849, 2         ; 2 uses
  %niter849.ncmp.1 = icmp eq i64 %niter849.next.1, %unroll_iter848
  br i1 %niter849.ncmp.1, label %._crit_edge417.split.us431.us.us.unr-lcssa, label %.preheader330.us.us.us.new, !llvm.loop !234

._crit_edge417.split.us431.us.us.unr-lcssa:       ; preds = %.preheader330.us.us.us.new
  br i1 %lcmp.mod844.not, label %._crit_edge417.split.us431.us.us, label %.epil.preheader841

.epil.preheader841:                               ; preds = %._crit_edge417.split.us431.us.us.unr-lcssa, %.preheader330.us.us.us
  %indvars.iv628.epil.init = phi i64 [ 0, %.preheader330.us.us.us ], [ %indvars.iv.next629.1, %._crit_edge417.split.us431.us.us.unr-lcssa ]
  %.1143414.us428.us.us.epil.init = phi i64 [ %.0142421.us.us.us, %.preheader330.us.us.us ], [ %i.ei, %._crit_edge417.split.us431.us.us.unr-lcssa ]
  %.1145413.us429.us.us.epil.init = phi i64 [ %.0144420.us.us.us, %.preheader330.us.us.us ], [ %.2146.us430.us.us.1, %._crit_edge417.split.us431.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod847)
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv628.epil.init
  %i.em = load i32, ptr %i.el, align 4, !tbaa !7  ; 2 uses
  %i.en = mul i32 %i.em, %.0157
  %i.eo = zext i32 %i.en to i64                   ; 2 uses
  %i.ep = add i64 %.1143414.us428.us.us.epil.init, %i.eo
  %i.eq = mul i32 %i.em, %i.d
  %i.er = icmp ugt i32 %i.eq, 4095
  %spec.select.epil = select i1 %i.er, i64 0, i64 %i.eo
  %.2146.us430.us.us.epil = add i64 %spec.select.epil, %.1145413.us429.us.us.epil.init
  br label %._crit_edge417.split.us431.us.us

._crit_edge417.split.us431.us.us:                 ; preds = %._crit_edge417.split.us431.us.us.unr-lcssa, %.epil.preheader841
end_hunk_1
