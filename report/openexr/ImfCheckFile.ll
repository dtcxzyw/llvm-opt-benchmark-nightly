Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfCheckFile?download=true
inline.NumInlined: 710
inline.NumDeleted: 299
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7Imf_3_412_GLOBAL__N_113readMultiPartERNS_18MultiPartInputFileEbb:bb.a
  br i1 %i.xl, label %.loopexit.i.i, label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %_ZN7Imf_3_45ArrayIPvED2Ev.exit.i.i, %bb.gj
  %i.xm = or disjoint i64 %.idx.i.i, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.xc, i64 noundef %i.xm) #26
  br label %_ZN7Imf_3_412_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit

bb.gl:                                            ; preds = %bb.gf, %.loopexit.split-lp.i, %.loopexit.i, %bb.fv
  %.sroa.0.3.i = phi ptr [ %.sroa.0.4.i, %bb.gf ], [ %.sroa.0.0251.i, %bb.fv ], [ %.sroa.0.0251.i, %.loopexit.i ], [ %.sroa.0.0251.i, %.loopexit.split-lp.i ] ; 3 uses
  %.sroa.15.3.i = phi ptr [ %.sroa.15.4.i, %bb.gf ], [ %.sroa.15.0253.i, %bb.fv ], [ %.sroa.15.0253.i, %.loopexit.i ], [ %.sroa.15.0253.i, %.loopexit.split-lp.i ]
  %.pn124.pn.i = phi { ptr, i32 } [ %i.wr, %bb.gf ], [ %i.sd, %bb.fv ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i137, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i135.i = icmp eq ptr %.sroa.0.3.i, null
  br i1 %.not.i.i.i135.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit136.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.xn = ptrtoint ptr %.sroa.15.3.i to i64
  %i.xo = ptrtoint ptr %.sroa.0.3.i to i64
  %i.xp = sub i64 %i.xn, %i.xo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3.i, i64 noundef %i.xp) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit136.i

_ZNSt6vectorIfSaIfEED2Ev.exit136.i:               ; preds = %bb.gm, %bb.gl, %bb.ft, %bb.fr, %bb.fn, %bb.fm, %bb.fl
  %.pn125.pn.pn.pn.i = phi { ptr, i32 } [ %i.pc, %bb.fl ], [ %i.pz, %bb.ft ], [ %.pn124.pn.i, %bb.gm ], [ %i.pd, %bb.fm ], [ %i.pe, %bb.fn ], [ %i.pl, %bb.fr ], [ %.pn124.pn.i, %bb.gl ]
  call void @_ZN7Imf_3_415DeepFrameBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #25
  br label %.body.i

.body.i:                                          ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit136.i, %bb.ez
  %.pn125.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn125.pn.pn.pn.i, %_ZNSt6vectorIfSaIfEED2Ev.exit136.i ], [ %i.om, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.gn

bb.gn:                                            ; preds = %.body.i, %bb.fe
  %.pn126.i = phi { ptr, i32 } [ %i.ou, %bb.fe ], [ %.pn125.pn.pn.pn.pn.i, %.body.i ]
  call void @_ZN7Imf_3_45ArrayINS0_IPvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #25
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.fa
  %.pn126.pn.i = phi { ptr, i32 } [ %.pn126.i, %bb.gn ], [ %i.oo, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZdaPv(ptr noundef nonnull %i.ny) #26
  br label %_ZN7Imf_3_45ArrayIjED2Ev.exit137.i

_ZN7Imf_3_45ArrayIjED2Ev.exit137.i:               ; preds = %bb.go, %.thread178.i, %bb.ex, %bb.ew, %bb.eq, %bb.ep, %bb.eo
  %.pn126.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.np, %bb.eo ], [ %i.nq, %bb.ep ], [ %i.nr, %bb.eq ], [ %i.nz, %bb.ew ], [ %i.oa, %bb.ex ], [ %i.on, %.thread178.i ], [ %.pn126.pn.i, %bb.go ]
  %.14.i = extractvalue { ptr, i32 } %.pn126.pn.pn.pn.pn.pn.pn.i, 0
  %i.xq = call ptr @__cxa_begin_catch(ptr %.14.i) #25 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN7Imf_3_412_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit.thread unwind label %bb.gq

_ZN7Imf_3_412_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit.thread: ; preds = %_ZN7Imf_3_45ArrayIjED2Ev.exit137.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %bb.gr

_ZN7Imf_3_412_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit: ; preds = %_ZN7Imf_3_415DeepFrameBufferD2Ev.exit.i, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZdaPv(ptr noundef nonnull %i.ny) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br i1 %not..not.lcssa342.i, label %bb.gr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140.thread183

bb.gp:                                            ; preds = %bb.eh
  %i.xr = landingpad { ptr, i32 }
          catch ptr null
  br label %.critedge106

bb.gq:                                            ; preds = %_ZN7Imf_3_45ArrayIjED2Ev.exit137.i, %bb.ei
  %i.xs = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %.critedge106

.critedge106:                                     ; preds = %bb.gq, %bb.gp
  %.pn98 = phi { ptr, i32 } [ %i.xs, %bb.gq ], [ %i.xr, %bb.gp ]
  %.1 = extractvalue { ptr, i32 } %.pn98, 0
  %i.xt = call ptr @__cxa_begin_catch(ptr %.1) #25 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.gr

bb.gr:                                            ; preds = %_ZN7Imf_3_412_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit.thread, %.critedge106, %_ZN7Imf_3_412_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit
  %i.xu = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_418MultiPartInputFile6headerEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.093265)
  %i.xv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7Imf_3_46Header4typeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(49) %i.xu) ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  %i.xx = load i64, ptr %i.xw, align 8, !tbaa !21 ; 3 uses
  %i.xy = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L12DEEPSCANLINEB5cxx11E, i64 8), align 8, !tbaa !21
  %i.xz = icmp eq i64 %i.xx, %i.xy
  br i1 %i.xz, label %bb.gs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140.thread183

bb.gs:                                            ; preds = %bb.gr
  %i.ya = icmp eq i64 %i.xx, 0
  br i1 %i.ya, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140: ; preds = %bb.gs
  %i.yb = load ptr, ptr @_ZN7Imf_3_4L12DEEPSCANLINEB5cxx11E, align 8, !tbaa !28
  %i.yc = load ptr, ptr %i.xv, align 8, !tbaa !28
  %bcmp.i139 = call i32 @bcmp(ptr %i.yc, ptr %i.yb, i64 %i.xx)
  %bcmp.i139.fr = freeze i32 %bcmp.i139
  %i.yd = icmp eq i32 %bcmp.i139.fr, 0
  br i1 %i.yd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140.thread183

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140.thread: ; preds = %bb.gs, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140.thread183

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140.thread183: ; preds = %bb.gr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140, %_ZN7Imf_3_412_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit.thread179, %_ZN7Imf_3_412_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit129.thread176
  %.7 = phi i1 [ %.5, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit129.thread176 ], [ %.5, %_ZN7Imf_3_412_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit ], [ %.5, %_ZN7Imf_3_412_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit.thread179 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140.thread ], [ %.5, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140 ], [ %.5, %bb.gr ] ; 5 uses
  br i1 %.189, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit159.thread190, label %bb.gt

bb.gt:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140.thread183
  invoke void @_ZN7Imf_3_418MultiPartInputFile14flushPartCacheEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.gu unwind label %bb.jx

bb.gu:                                            ; preds = %bb.gt
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  invoke void @_ZN7Imf_3_418DeepTiledInputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.093265)
          to label %bb.gv unwind label %bb.jy

bb.gv:                                            ; preds = %bb.gu
  %i.ye = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_418DeepTiledInputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.gw unwind label %bb.hd     ; 4 uses

bb.gw:                                            ; preds = %bb.gv
  %i.yf = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_418DeepTiledInputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.gx unwind label %bb.he

bb.gx:                                            ; preds = %bb.gw
  %i.yg = invoke noundef i64 @_ZN7Imf_3_422calculateBytesPerPixelERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.yf)
          to label %bb.gy unwind label %bb.he     ; 2 uses

bb.gy:                                            ; preds = %bb.gx
  %i.yh = trunc i64 %i.yg to i32                  ; 4 uses
  %i.yi = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_418DeepTiledInputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.gz unwind label %bb.hf

bb.gz:                                            ; preds = %bb.gy
  %i.yj = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header15tileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.yi)
          to label %bb.ha unwind label %bb.hf     ; 3 uses

bb.ha:                                            ; preds = %bb.gz
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !26 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yj, i64 4
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !27
  %i.yn = invoke noundef i32 @_ZNK7Imf_3_418DeepTiledInputPart10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.hb unwind label %bb.hg     ; 2 uses

bb.hb:                                            ; preds = %bb.ha
  %i.yo = invoke noundef i32 @_ZNK7Imf_3_418DeepTiledInputPart10numXLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.hc unwind label %bb.hh     ; 2 uses

bb.hc:                                            ; preds = %bb.hb
  %i.yp = sext i32 %i.yk to i64                   ; 7 uses
  %i.yq = sext i32 %i.ym to i64                   ; 2 uses
  %i.yr = mul nsw i64 %i.yq, %i.yp                ; 4 uses
  %i.ys = shl i64 %i.yr, 2                        ; 2 uses
  %i.yt = icmp ugt i64 %i.ys, 1000000
  %or.cond8.i = select i1 %or.cond.i141, i1 %i.yt, i1 false
  br i1 %or.cond8.i, label %_ZN7Imf_3_412_GLOBAL__N_112readDeepTileINS_18DeepTiledInputPartEEEbRT_bb.exit.thread186, label %bb.hi

_ZN7Imf_3_412_GLOBAL__N_112readDeepTileINS_18DeepTiledInputPartEEEbRT_bb.exit.thread186: ; preds = %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit159.thread190

bb.hd:                                            ; preds = %bb.gv
  %i.yu = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN7Imf_3_47Array2DIjED2Ev.exit226.i

bb.he:                                            ; preds = %bb.gx, %bb.gw
  %i.yv = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN7Imf_3_47Array2DIjED2Ev.exit226.i

bb.hf:                                            ; preds = %bb.gz, %bb.gy
  %i.yw = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN7Imf_3_47Array2DIjED2Ev.exit226.i

bb.hg:                                            ; preds = %bb.ha
  %i.yx = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN7Imf_3_47Array2DIjED2Ev.exit226.i

bb.hh:                                            ; preds = %bb.hb
  %i.yy = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN7Imf_3_47Array2DIjED2Ev.exit226.i

bb.hi:                                            ; preds = %bb.hc
  %i.yz = icmp ugt i64 %i.yr, 4611686018427387903
  %i.za = select i1 %i.yz, i64 -1, i64 %i.ys
  %i.zb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.za) #29
          to label %_ZN7Imf_3_47Array2DIjE11resizeEraseEll.exit.i unwind label %bb.hn ; 7 uses

_ZN7Imf_3_47Array2DIjE11resizeEraseEll.exit.i:    ; preds = %bb.hi
  %i.zc = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.ye)
          to label %bb.hj unwind label %bb.ho

bb.hj:                                            ; preds = %_ZN7Imf_3_47Array2DIjE11resizeEraseEll.exit.i
  %i.zd = invoke ptr @_ZNK7Imf_3_411ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.zc)
          to label %.preheader346.i unwind label %bb.ho

.preheader346.i:                                  ; preds = %bb.hj, %bb.hq
  %.sroa.0248.0.i = phi ptr [ %i.zv, %bb.hq ], [ %i.zd, %bb.hj ] ; 2 uses
  %.0162.i = phi i32 [ %i.zw, %bb.hq ], [ 0, %bb.hj ] ; 14 uses
  %i.ze = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.ye)
          to label %bb.hk unwind label %bb.hp

bb.hk:                                            ; preds = %.preheader346.i
  %i.zf = invoke ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ze)
          to label %bb.hl unwind label %bb.hp

bb.hl:                                            ; preds = %bb.hk
  %.not319.i = icmp eq ptr %.sroa.0248.0.i, %i.zf
  br i1 %.not319.i, label %bb.hm, label %bb.hq

bb.hm:                                            ; preds = %bb.hl
  %i.zg = zext i32 %.0162.i to i64                ; 10 uses
  %i.zh = mul nuw nsw i64 %i.zg, 24               ; 3 uses
  %i.zi = add nuw nsw i64 %i.zh, 8
  %i.zj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.zi) #29
          to label %.noexc214.i unwind label %bb.hs ; 6 uses

.noexc214.i:                                      ; preds = %bb.hm
  store i64 %i.zg, ptr %i.zj, align 16
  %i.zk = getelementptr i8, ptr %i.zj, i64 8      ; 16 uses
  %i.zl = icmp eq i32 %.0162.i, 0                 ; 3 uses
  br i1 %i.zl, label %._crit_edge.i146, label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %.noexc214.i
  %i.zm = add nsw i64 %i.zh, -24
  %i.zn = urem i64 %i.zm, 24
  %i.zo = sub nsw i64 %i.zh, %i.zn
  call void @llvm.memset.p0.i64(ptr align 8 %i.zk, i8 0, i64 %i.zo, i1 false)
  %i.zp = icmp ugt i64 %i.yr, 2305843009213693951
  %i.zq = shl nuw i64 %i.yr, 3
  %i.zr = select i1 %i.zp, i64 -1, i64 %i.zq
  br label %bb.ht

bb.hn:                                            ; preds = %bb.hi
  %i.zs = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN7Imf_3_47Array2DIjED2Ev.exit226.i

bb.ho:                                            ; preds = %bb.hj, %_ZN7Imf_3_47Array2DIjE11resizeEraseEll.exit.i
  %i.zt = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN7Imf_3_45ArrayINS_7Array2DIPfEEED2Ev.exit225.i

bb.hp:                                            ; preds = %bb.hk, %.preheader346.i
  %i.zu = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN7Imf_3_45ArrayINS_7Array2DIPfEEED2Ev.exit225.i

bb.hq:                                            ; preds = %bb.hl
  %i.zv = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0248.0.i) #31
  %i.zw = add i32 %.0162.i, 1
  br label %.preheader346.i, !llvm.loop !190

._crit_edge.i146:                                 ; preds = %bb.hv, %.noexc214.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i32 0, ptr %i.t, align 8, !tbaa !73
  store ptr null, ptr %i.u, align 8, !tbaa !74
  store ptr %i.t, ptr %i.v, align 8, !tbaa !75
  store ptr %i.t, ptr %i.w, align 8, !tbaa !76
  store i64 0, ptr %i.x, align 8, !tbaa !77
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %i.y, i32 noundef 1, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit.i148 unwind label %bb.hr

bb.hr:                                            ; preds = %._crit_edge.i146
  %i.zx = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt3mapIN7Imf_3_44NameENS0_9DeepSliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(104) %3) #25
  br label %.body.i147

bb.hs:                                            ; preds = %bb.hm
  %i.zy = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN7Imf_3_45ArrayINS_7Array2DIPfEEED2Ev.exit225.i

bb.ht:                                            ; preds = %bb.hv, %.lr.ph.i142
  %indvars.iv.i143 = phi i64 [ 0, %.lr.ph.i142 ], [ %indvars.iv.next.i144, %bb.hv ] ; 2 uses
  %i.zz = getelementptr inbounds nuw [24 x i8], ptr %i.zk, i64 %indvars.iv.i143 ; 3 uses
  %i.aaa = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.zr) #29
          to label %.noexc215.i unwind label %bb.hw

.noexc215.i:                                      ; preds = %bb.ht
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zz, i64 16 ; 2 uses
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !99 ; 2 uses
  %i.aad = icmp eq ptr %i.aac, null
  br i1 %i.aad, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %.noexc215.i
  call void @_ZdaPv(ptr noundef nonnull %i.aac) #26
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %.noexc215.i
  store i64 %i.yq, ptr %i.zz, align 8, !tbaa !100
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zz, i64 8
  store i64 %i.yp, ptr %i.aae, align 8, !tbaa !101
  store ptr %i.aaa, ptr %i.aab, align 8, !tbaa !99
  %indvars.iv.next.i144 = add nuw nsw i64 %indvars.iv.i143, 1 ; 2 uses
  %exitcond.not.i145 = icmp eq i64 %indvars.iv.next.i144, %i.zg
  br i1 %exitcond.not.i145, label %._crit_edge.i146, label %bb.ht, !llvm.loop !191

bb.hw:                                            ; preds = %bb.ht
  %i.aaf = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ju

_ZN7Imf_3_415DeepFrameBufferC2Ev.exit.i148:       ; preds = %._crit_edge.i146
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.aag = shl nsw i64 %i.yp, 2
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %4, i32 noundef 0, ptr noundef nonnull %i.zb, i64 noundef 4, i64 noundef %i.aag, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.hx unwind label %bb.ie

bb.hx:                                            ; preds = %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit.i148
  invoke void @_ZN7Imf_3_415DeepFrameBuffer22insertSampleCountSliceERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(50) %4)
          to label %bb.hy unwind label %bb.ie

bb.hy:                                            ; preds = %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.aah = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.ye)
          to label %bb.hz unwind label %bb.if

bb.hz:                                            ; preds = %bb.hy
  %i.aai = invoke ptr @_ZNK7Imf_3_411ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aah)
          to label %.preheader345.i unwind label %bb.if

.preheader345.i:                                  ; preds = %bb.hz
  %i.aaj = shl nsw i32 %i.yk, 3
  %i.aak = sext i32 %i.aaj to i64
  br label %bb.ia

bb.ia:                                            ; preds = %bb.ij, %.preheader345.i
  %indvars.iv635.i = phi i64 [ 0, %.preheader345.i ], [ %indvars.iv.next636.i, %bb.ij ] ; 2 uses
  %.sroa.0238.0.i = phi ptr [ %i.aai, %.preheader345.i ], [ %i.aau, %bb.ij ] ; 3 uses
  %i.aal = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.ye)
          to label %bb.ib unwind label %bb.ig

bb.ib:                                            ; preds = %bb.ia
  %i.aam = invoke ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aal)
          to label %bb.ic unwind label %bb.ig

bb.ic:                                            ; preds = %bb.ib
  %.not320.i = icmp eq ptr %.sroa.0238.0.i, %i.aam
  br i1 %.not320.i, label %bb.id, label %bb.ih

bb.id:                                            ; preds = %bb.ic
  invoke void @_ZN7Imf_3_418DeepTiledInputPart14setFrameBufferERKNS_15DeepFrameBufferE(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(104) %3)
          to label %bb.il unwind label %bb.jm

bb.ie:                                            ; preds = %bb.hx, %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit.i148
  %i.aan = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i149

bb.if:                                            ; preds = %bb.hz, %bb.hy
  %i.aao = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i149

bb.ig:                                            ; preds = %bb.ib, %bb.ia
  %i.aap = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i149

bb.ih:                                            ; preds = %bb.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.aaq = getelementptr inbounds nuw [24 x i8], ptr %i.zk, i64 %indvars.iv635.i
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 16
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !99
  invoke void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef 2, ptr noundef %i.aas, i64 noundef 8, i64 noundef %i.aak, i64 noundef 4, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.ii unwind label %bb.ik

bb.ii:                                            ; preds = %bb.ih
  %i.aat = getelementptr inbounds nuw i8, ptr %.sroa.0238.0.i, i64 32
  invoke void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull %i.aat, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.ij unwind label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.aau = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0238.0.i) #31
  %indvars.iv.next636.i = add nuw nsw i64 %indvars.iv635.i, 1
  br label %bb.ia, !llvm.loop !192

bb.ik:                                            ; preds = %bb.ii, %bb.ih
  %i.aav = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i149

bb.il:                                            ; preds = %bb.id
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !87
  %i.aay = icmp eq i32 %i.aax, 2
  %.not321518.i = icmp sgt i32 %i.yn, 0
  br i1 %.not321518.i, label %.preheader343.lr.ph.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit218.i

.preheader343.lr.ph.i:                            ; preds = %bb.il
  %.not210507.i = icmp sgt i32 %i.yo, 0
  %sext.i = shl i64 %i.yg, 32
  %i.aaz = ashr exact i64 %sext.i, 32
  br i1 %.not210507.i, label %.preheader343.us.i.preheader, label %_ZNSt6vectorIfSaIfEED2Ev.exit218.i

.preheader343.us.i.preheader:                     ; preds = %.preheader343.lr.ph.i
  %i.aba = add nsw i64 %i.zg, -1                  ; 3 uses
  %xtraiter591 = and i64 %i.zg, 1
  %i.abb = icmp eq i64 %i.aba, 0
  %unroll_iter596 = and i64 %i.zg, 4294967294
  %lcmp.mod593.not = icmp eq i64 %xtraiter591, 0
  %lcmp.mod595 = trunc i32 %.0162.i to i1
  %xtraiter598 = and i64 %i.zg, 1
  %i.abc = icmp eq i64 %i.aba, 0
  %unroll_iter602 = and i64 %i.zg, 4294967294
  %lcmp.mod600.not = icmp eq i64 %xtraiter598, 0
  %lcmp.mod601 = trunc i32 %.0162.i to i1
  %xtraiter605 = and i64 %i.zg, 1
  %i.abd = icmp eq i64 %i.aba, 0
  %unroll_iter610 = and i64 %i.zg, 4294967294
  %lcmp.mod607.not = icmp eq i64 %xtraiter605, 0
  %lcmp.mod609 = trunc i32 %.0162.i to i1
  br label %.preheader343.us.i

.preheader343.us.i:                               ; preds = %.preheader343.us.i.preheader, %..thread288_crit_edge.us.i
  %.0155524.us.i = phi i32 [ %i.ajc, %..thread288_crit_edge.us.i ], [ 0, %.preheader343.us.i.preheader ] ; 6 uses
  %.0175522.us.i = phi i1 [ %.2177.us.i, %..thread288_crit_edge.us.i ], [ false, %.preheader343.us.i.preheader ]
  %.sroa.15.0521.us.i = phi ptr [ %.sroa.15.2.us.i, %..thread288_crit_edge.us.i ], [ null, %.preheader343.us.i.preheader ]
  %.sroa.10.0520.us.i = phi ptr [ %.sroa.10.2.us.i, %..thread288_crit_edge.us.i ], [ null, %.preheader343.us.i.preheader ]
  %.sroa.0.0519.us.i = phi ptr [ %.sroa.0.2.us.i, %..thread288_crit_edge.us.i ], [ null, %.preheader343.us.i.preheader ]
  br label %.preheader342.us.i

.preheader342.us.i:                               ; preds = %.thread277.us.i, %.preheader343.us.i
  %.0154513.us.i = phi i32 [ 0, %.preheader343.us.i ], [ %i.ajb, %.thread277.us.i ] ; 6 uses
  %.1176511.us.i = phi i1 [ %.0175522.us.i, %.preheader343.us.i ], [ %.2177.us.i, %.thread277.us.i ]
  %.sroa.15.1510.us.i = phi ptr [ %.sroa.15.0521.us.i, %.preheader343.us.i ], [ %.sroa.15.2.us.i, %.thread277.us.i ]
  %.sroa.10.1509.us.i = phi ptr [ %.sroa.10.0520.us.i, %.preheader343.us.i ], [ %.sroa.10.2.us.i, %.thread277.us.i ]
  %.sroa.0.1508.us.i = phi ptr [ %.sroa.0.0519.us.i, %.preheader343.us.i ], [ %.sroa.0.2.us.i, %.thread277.us.i ]
  %i.abe = icmp eq i32 %.0154513.us.i, %.0155524.us.i
  %or.cond212.not325.not328.us.i = or i1 %i.aay, %i.abe ; 2 uses
  %brmerge.not.us.i154 = and i1 %2, %or.cond212.not325.not328.us.i
  br label %bb.im

bb.im:                                            ; preds = %.thread.us.i, %.preheader342.us.i
  %.sroa.0.2.us.i = phi ptr [ %.sroa.0.3.us.i, %.thread.us.i ], [ %.sroa.0.1508.us.i, %.preheader342.us.i ] ; 5 uses
  %.sroa.10.2.us.i = phi ptr [ %.sroa.10.3.us.i, %.thread.us.i ], [ %.sroa.10.1509.us.i, %.preheader342.us.i ] ; 3 uses
  %.sroa.15.2.us.i = phi ptr [ %.sroa.15.3.us.i, %.thread.us.i ], [ %.sroa.15.1510.us.i, %.preheader342.us.i ] ; 5 uses
  %.2177.us.i = phi i1 [ %.3178.us.i, %.thread.us.i ], [ %.1176511.us.i, %.preheader342.us.i ] ; 4 uses
  %.0153.us.i = phi i32 [ %i.aja, %.thread.us.i ], [ 0, %.preheader342.us.i ] ; 6 uses
  %i.abf = invoke noundef i32 @_ZNK7Imf_3_418DeepTiledInputPart9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef %.0155524.us.i)
          to label %bb.in unwind label %.split.us.i155

bb.in:                                            ; preds = %bb.im
  %.not211.us.i = icmp slt i32 %.0153.us.i, %i.abf
  br i1 %.not211.us.i, label %.preheader340.us.i, label %.thread277.us.i

.preheader340.us.i:                               ; preds = %bb.in, %bb.jl
  %.sroa.0.3.us.i = phi ptr [ %.sroa.0.8.us.i, %bb.jl ], [ %.sroa.0.2.us.i, %bb.in ] ; 17 uses
  %.sroa.10.3.us.i = phi ptr [ %.sroa.10.7.us.i, %bb.jl ], [ %.sroa.10.2.us.i, %bb.in ] ; 13 uses
  %.sroa.15.3.us.i = phi ptr [ %.sroa.15.8.us.i, %bb.jl ], [ %.sroa.15.2.us.i, %bb.in ] ; 13 uses
  %.3178.us.i = phi i1 [ %.6181.us.i, %bb.jl ], [ %.2177.us.i, %bb.in ] ; 3 uses
  %.0152.us.i = phi i32 [ %i.aiz, %bb.jl ], [ 0, %bb.in ] ; 6 uses
  %i.abg = invoke noundef i32 @_ZNK7Imf_3_418DeepTiledInputPart9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef %.0154513.us.i)
          to label %bb.io unwind label %.split569.us.i

bb.io:                                            ; preds = %.preheader340.us.i
  %.not205.us.i = icmp slt i32 %.0152.us.i, %i.abg
  br i1 %.not205.us.i, label %bb.ip, label %.thread.us.i

bb.ip:                                            ; preds = %bb.io
  invoke void @_ZN7Imf_3_418DeepTiledInputPart21readPixelSampleCountsEiiiiii(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef %.0152.us.i, i32 noundef %.0153.us.i, i32 noundef %.0152.us.i, i32 noundef %.0153.us.i, i32 noundef %.0154513.us.i, i32 noundef %.0155524.us.i)
          to label %bb.ir unwind label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.abh = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.jj

bb.ir:                                            ; preds = %bb.ip
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNK7Imf_3_418DeepTiledInputPart17dataWindowForTileEiiii(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Box") align 4 %6, ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef %.0152.us.i, i32 noundef %.0153.us.i, i32 noundef %.0154513.us.i, i32 noundef %.0155524.us.i)
          to label %bb.it unwind label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.abi = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ji

bb.it:                                            ; preds = %bb.ir
  %i.abj = load i32, ptr %i.z, align 4, !tbaa !67 ; 2 uses
  %i.abk = load i32, ptr %6, align 4, !tbaa !68   ; 2 uses
  %i.abl = load i32, ptr %i.aa, align 4, !tbaa !86 ; 2 uses
  %i.abm = load i32, ptr %i.ab, align 4, !tbaa !85 ; 2 uses
  %.not429.us.i = icmp slt i32 %i.abl, %i.abm
  %.not207421.us.i = icmp slt i32 %i.abj, %i.abk
  %or.cond782.i = select i1 %.not429.us.i, i1 true, i1 %.not207421.us.i
  br i1 %or.cond782.i, label %._crit_edge433.us.thread.i, label %.preheader339.lr.ph.split.us530.i

.preheader339.lr.ph.split.us530.i:                ; preds = %bb.it
  %i.abn = add i32 %i.abj, 1
  %i.abo = sub i32 %i.abn, %i.abk                 ; 4 uses
  %i.abp = add i32 %i.abl, 1
  %i.abq = sub i32 %i.abp, %i.abm
  %wide.trip.count656.i = zext i32 %i.abq to i64  ; 4 uses
  %wide.trip.count651.i = zext i32 %i.abo to i64  ; 6 uses
  br i1 %1, label %.preheader339.us438.us.i.preheader, label %.preheader339.us532.i.preheader

.preheader339.us532.i.preheader:                  ; preds = %.preheader339.lr.ph.split.us530.i
  %xtraiter573 = and i64 %wide.trip.count651.i, 3 ; 3 uses
  %i.abr = add i32 %i.abo, -1
  %i.abs = icmp ult i32 %i.abr, 3
  %unroll_iter579 = and i64 %wide.trip.count651.i, 4294967292
  %lcmp.mod575.not = icmp eq i64 %xtraiter573, 0
  %lcmp.mod578 = icmp ne i64 %xtraiter573, 0
  br label %.preheader339.us532.i

.preheader339.us438.us.i.preheader:               ; preds = %.preheader339.lr.ph.split.us530.i
  %xtraiter582 = and i64 %wide.trip.count651.i, 1
  %i.abt = icmp eq i32 %i.abo, 1
  %unroll_iter588 = and i64 %wide.trip.count651.i, 4294967294
  %lcmp.mod584.not = icmp eq i64 %xtraiter582, 0
  %lcmp.mod587 = trunc i32 %i.abo to i1
  br label %.preheader339.us438.us.i

.preheader339.us532.i:                            ; preds = %.preheader339.us532.i.preheader, %._crit_edge426.split.us.us.i
  %indvars.iv643.i = phi i64 [ %indvars.iv.next644.i, %._crit_edge426.split.us.us.i ], [ 0, %.preheader339.us532.i.preheader ] ; 2 uses
  %.0147431.us.i = phi i64 [ %.lcssa512, %._crit_edge426.split.us.us.i ], [ 0, %.preheader339.us532.i.preheader ] ; 2 uses
  %.0149430.us.i = phi i64 [ %.2151.us.us.i.lcssa, %._crit_edge426.split.us.us.i ], [ 0, %.preheader339.us532.i.preheader ] ; 2 uses
  %i.abu = mul nsw i64 %indvars.iv643.i, %i.yp
  %i.abv = getelementptr inbounds [4 x i8], ptr %i.zb, i64 %i.abu ; 5 uses
  br i1 %i.abs, label %.epil.preheader, label %.preheader339.us532.i.new

.preheader339.us532.i.new:                        ; preds = %.preheader339.us532.i, %.preheader339.us532.i.new
  %indvars.iv638.i = phi i64 [ %indvars.iv.next639.i.3, %.preheader339.us532.i.new ], [ 0, %.preheader339.us532.i ] ; 5 uses
  %.1148423.us.us.i = phi i64 [ %i.acs, %.preheader339.us532.i.new ], [ %.0147431.us.i, %.preheader339.us532.i ]
  %.1150422.us.us.i = phi i64 [ %.2151.us.us.i.3, %.preheader339.us532.i.new ], [ %.0149430.us.i, %.preheader339.us532.i ]
  %niter580 = phi i64 [ %niter580.next.3, %.preheader339.us532.i.new ], [ 0, %.preheader339.us532.i ]
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.abv, i64 %indvars.iv638.i
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !14
  %i.aby = mul i32 %i.abx, %.0162.i
  %i.abz = zext i32 %i.aby to i64                 ; 2 uses
  %i.aca = add i64 %.1148423.us.us.i, %i.abz
  %.2151.us.us.i = add i64 %.1150422.us.us.i, %i.abz
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.abv, i64 %indvars.iv638.i
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 4
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !14
  %i.ace = mul i32 %i.acd, %.0162.i
  %i.acf = zext i32 %i.ace to i64                 ; 2 uses
  %i.acg = add i64 %i.aca, %i.acf
  %.2151.us.us.i.1 = add i64 %.2151.us.us.i, %i.acf
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.abv, i64 %indvars.iv638.i
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 8
  %i.acj = load i32, ptr %i.aci, align 4, !tbaa !14
  %i.ack = mul i32 %i.acj, %.0162.i
  %i.acl = zext i32 %i.ack to i64                 ; 2 uses
  %i.acm = add i64 %i.acg, %i.acl
  %.2151.us.us.i.2 = add i64 %.2151.us.us.i.1, %i.acl
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.abv, i64 %indvars.iv638.i
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 12
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !14
  %i.acq = mul i32 %i.acp, %.0162.i
  %i.acr = zext i32 %i.acq to i64                 ; 2 uses
  %i.acs = add i64 %i.acm, %i.acr                 ; 3 uses
  %.2151.us.us.i.3 = add i64 %.2151.us.us.i.2, %i.acr ; 3 uses
  %indvars.iv.next639.i.3 = add nuw nsw i64 %indvars.iv638.i, 4 ; 2 uses
  %niter580.next.3 = add i64 %niter580, 4         ; 2 uses
  %niter580.ncmp.3 = icmp eq i64 %niter580.next.3, %unroll_iter579
  br i1 %niter580.ncmp.3, label %._crit_edge426.split.us.us.i.unr-lcssa, label %.preheader339.us532.i.new, !llvm.loop !193

._crit_edge426.split.us.us.i.unr-lcssa:           ; preds = %.preheader339.us532.i.new
  br i1 %lcmp.mod575.not, label %._crit_edge426.split.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge426.split.us.us.i.unr-lcssa, %.preheader339.us532.i
  %indvars.iv638.i.epil.init = phi i64 [ 0, %.preheader339.us532.i ], [ %indvars.iv.next639.i.3, %._crit_edge426.split.us.us.i.unr-lcssa ]
  %.1148423.us.us.i.epil.init = phi i64 [ %.0147431.us.i, %.preheader339.us532.i ], [ %i.acs, %._crit_edge426.split.us.us.i.unr-lcssa ]
  %.1150422.us.us.i.epil.init = phi i64 [ %.0149430.us.i, %.preheader339.us532.i ], [ %.2151.us.us.i.3, %._crit_edge426.split.us.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod578)
  br label %bb.iu

bb.iu:                                            ; preds = %bb.iu, %.epil.preheader
  %indvars.iv638.i.epil = phi i64 [ %indvars.iv.next639.i.epil, %bb.iu ], [ %indvars.iv638.i.epil.init, %.epil.preheader ] ; 2 uses
  %.1148423.us.us.i.epil = phi i64 [ %i.acx, %bb.iu ], [ %.1148423.us.us.i.epil.init, %.epil.preheader ]
  %.1150422.us.us.i.epil = phi i64 [ %.2151.us.us.i.epil, %bb.iu ], [ %.1150422.us.us.i.epil.init, %.epil.preheader ]
  %epil.iter574 = phi i64 [ %epil.iter574.next, %bb.iu ], [ 0, %.epil.preheader ]
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.abv, i64 %indvars.iv638.i.epil
  %i.acu = load i32, ptr %i.act, align 4, !tbaa !14
  %i.acv = mul i32 %i.acu, %.0162.i
  %i.acw = zext i32 %i.acv to i64                 ; 2 uses
  %i.acx = add i64 %.1148423.us.us.i.epil, %i.acw ; 2 uses
  %.2151.us.us.i.epil = add i64 %.1150422.us.us.i.epil, %i.acw ; 2 uses
  %indvars.iv.next639.i.epil = add nuw nsw i64 %indvars.iv638.i.epil, 1
  %epil.iter574.next = add i64 %epil.iter574, 1   ; 2 uses
  %epil.iter574.cmp.not = icmp eq i64 %epil.iter574.next, %xtraiter573
  br i1 %epil.iter574.cmp.not, label %._crit_edge426.split.us.us.i, label %bb.iu, !llvm.loop !194

._crit_edge426.split.us.us.i:                     ; preds = %bb.iu, %._crit_edge426.split.us.us.i.unr-lcssa
  %.lcssa512 = phi i64 [ %i.acs, %._crit_edge426.split.us.us.i.unr-lcssa ], [ %i.acx, %bb.iu ] ; 2 uses
  %.2151.us.us.i.lcssa = phi i64 [ %.2151.us.us.i.3, %._crit_edge426.split.us.us.i.unr-lcssa ], [ %.2151.us.us.i.epil, %bb.iu ] ; 2 uses
  %indvars.iv.next644.i = add nuw nsw i64 %indvars.iv643.i, 1 ; 2 uses
  %exitcond647.not.i = icmp eq i64 %indvars.iv.next644.i, %wide.trip.count656.i
  br i1 %exitcond647.not.i, label %._crit_edge433.us.i, label %.preheader339.us532.i, !llvm.loop !195

.preheader339.us438.us.i:                         ; preds = %.preheader339.us438.us.i.preheader, %._crit_edge426.split.us448.us.i
  %indvars.iv653.i = phi i64 [ %indvars.iv.next654.i, %._crit_edge426.split.us448.us.i ], [ 0, %.preheader339.us438.us.i.preheader ] ; 2 uses
  %.0147431.us440.us.i = phi i64 [ %.lcssa513, %._crit_edge426.split.us448.us.i ], [ 0, %.preheader339.us438.us.i.preheader ] ; 2 uses
  %.0149430.us441.us.i = phi i64 [ %.2151.us446.us.i.lcssa, %._crit_edge426.split.us448.us.i ], [ 0, %.preheader339.us438.us.i.preheader ] ; 2 uses
  %i.acy = mul nsw i64 %indvars.iv653.i, %i.yp
  %i.acz = getelementptr inbounds [4 x i8], ptr %i.zb, i64 %i.acy ; 3 uses
  br i1 %i.abt, label %.epil.preheader581, label %.preheader339.us438.us.i.new

.preheader339.us438.us.i.new:                     ; preds = %.preheader339.us438.us.i, %.preheader339.us438.us.i.new
  %indvars.iv648.i = phi i64 [ %indvars.iv.next649.i.1, %.preheader339.us438.us.i.new ], [ 0, %.preheader339.us438.us.i ] ; 3 uses
  %.1148423.us444.us.i = phi i64 [ %i.adm, %.preheader339.us438.us.i.new ], [ %.0147431.us440.us.i, %.preheader339.us438.us.i ]
  %.1150422.us445.us.i = phi i64 [ %.2151.us446.us.i.1, %.preheader339.us438.us.i.new ], [ %.0149430.us441.us.i, %.preheader339.us438.us.i ]
  %niter589 = phi i64 [ %niter589.next.1, %.preheader339.us438.us.i.new ], [ 0, %.preheader339.us438.us.i ]
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.acz, i64 %indvars.iv648.i
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !14 ; 2 uses
  %i.adc = mul i32 %i.adb, %.0162.i
  %i.add = zext i32 %i.adc to i64                 ; 2 uses
  %i.ade = add i64 %.1148423.us444.us.i, %i.add
  %i.adf = mul i32 %i.adb, %i.yh
  %i.adg = icmp ugt i32 %i.adf, 4095
  %spec.select.i = select i1 %i.adg, i64 0, i64 %i.add
  %.2151.us446.us.i = add i64 %spec.select.i, %.1150422.us445.us.i
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %i.acz, i64 %indvars.iv648.i
end_hunk_0
begin_hunk_1_@_ZN7Imf_3_412_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputFileEEEbRT_bb:bb.a
  ret i1 %.8122
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7Imf_3_421DeepScanLineInputFileD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7Imf_3_421DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !34
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !232
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !232
  br label %_ZNSt12__shared_ptrIN7Imf_3_421DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN7Imf_3_421DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt12__shared_ptrIN7Imf_3_421DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7Imf_3_421DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31   ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZN7Imf_3_47ContextD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN7Imf_3_421DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !34
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #25, !inline_history !0
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #25, !inline_history !0
  br label %_ZN7Imf_3_47ContextD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN7Imf_3_47ContextD2Ev.exit, !prof !37

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #25
  br label %_ZN7Imf_3_47ContextD2Ev.exit

_ZN7Imf_3_47ContextD2Ev.exit:                     ; preds = %_ZNSt12__shared_ptrIN7Imf_3_421DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  ret void
}

declare void @_ZN7Imf_3_418DeepTiledInputFileC1EPKci(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7Imf_3_412_GLOBAL__N_112readDeepTileINS_18DeepTiledInputFileEEEbRT_bb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Imf_3_4::DeepFrameBuffer", align 8 ; 15 uses
  %4 = alloca %"struct.Imf_3_4::Slice", align 8   ; 5 uses
  %5 = alloca %"struct.Imf_3_4::DeepSlice", align 8 ; 5 uses
  %6 = alloca %"class.Imath_3_2::Box", align 4    ; 8 uses
  %i.a = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_418DeepTiledInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.i       ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_418DeepTiledInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef i64 @_ZN7Imf_3_422calculateBytesPerPixelERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.b)
          to label %bb.d unwind label %bb.j       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.d = trunc i64 %i.c to i32                    ; 4 uses
  %i.e = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_418DeepTiledInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.f = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header15tileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.e)
          to label %bb.f unwind label %bb.k       ; 3 uses

bb.f:                                             ; preds = %bb.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !26   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !27
  %i.j = invoke noundef i32 @_ZNK7Imf_3_418DeepTiledInputFile10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.g unwind label %bb.l       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.k = invoke noundef i32 @_ZNK7Imf_3_418DeepTiledInputFile10numXLevelsEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.h unwind label %bb.m       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.l = sext i32 %i.g to i64                     ; 7 uses
  %i.m = sext i32 %i.i to i64                     ; 2 uses
  %i.n = mul nsw i64 %i.m, %i.l                   ; 4 uses
  %i.o = shl i64 %i.n, 2                          ; 2 uses
  %or.cond = or i1 %1, %2
  %i.p = icmp ugt i64 %i.o, 1000000
  %or.cond8 = select i1 %or.cond, i1 %i.p, i1 false
  br i1 %or.cond8, label %_ZN7Imf_3_47Array2DIjED2Ev.exit.thread, label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN7Imf_3_47Array2DIjED2Ev.exit226

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN7Imf_3_47Array2DIjED2Ev.exit226

bb.k:                                             ; preds = %bb.e, %bb.d
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN7Imf_3_47Array2DIjED2Ev.exit226

bb.l:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN7Imf_3_47Array2DIjED2Ev.exit226

bb.m:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN7Imf_3_47Array2DIjED2Ev.exit226

bb.n:                                             ; preds = %bb.h
  %i.v = icmp ugt i64 %i.n, 4611686018427387903
  %i.w = select i1 %i.v, i64 -1, i64 %i.o
  %i.x = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.w) #29
          to label %_ZN7Imf_3_47Array2DIjE11resizeEraseEll.exit unwind label %bb.s ; 7 uses

_ZN7Imf_3_47Array2DIjE11resizeEraseEll.exit:      ; preds = %bb.n
  %i.y = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %_ZN7Imf_3_47Array2DIjE11resizeEraseEll.exit
  %i.z = invoke ptr @_ZNK7Imf_3_411ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %.preheader346 unwind label %bb.t

.preheader346:                                    ; preds = %bb.o, %bb.v
  %.sroa.0248.0 = phi ptr [ %i.ar, %bb.v ], [ %i.z, %bb.o ] ; 2 uses
  %.0162 = phi i32 [ %i.as, %bb.v ], [ 0, %bb.o ] ; 14 uses
  %i.aa = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %.preheader346
  %i.ab = invoke ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aa)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %.not319 = icmp eq ptr %.sroa.0248.0, %i.ab
  br i1 %.not319, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.ac = zext i32 %.0162 to i64                  ; 10 uses
  %i.ad = mul nuw nsw i64 %i.ac, 24               ; 3 uses
  %i.ae = add nuw nsw i64 %i.ad, 8
  %i.af = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ae) #29
          to label %.noexc214 unwind label %bb.x  ; 6 uses

.noexc214:                                        ; preds = %bb.r
  store i64 %i.ac, ptr %i.af, align 16
  %i.ag = getelementptr i8, ptr %i.af, i64 8      ; 16 uses
  %i.ah = icmp eq i32 %.0162, 0                   ; 3 uses
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc214
  %i.ai = add nsw i64 %i.ad, -24
  %i.aj = urem i64 %i.ai, 24
  %i.ak = sub nsw i64 %i.ad, %i.aj
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %i.ak, i1 false)
  %i.al = icmp ugt i64 %i.n, 2305843009213693951
  %i.am = shl nuw i64 %i.n, 3
  %i.an = select i1 %i.al, i64 -1, i64 %i.am
  br label %bb.y

bb.s:                                             ; preds = %bb.n
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN7Imf_3_47Array2DIjED2Ev.exit226

bb.t:                                             ; preds = %bb.o, %_ZN7Imf_3_47Array2DIjE11resizeEraseEll.exit
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN7Imf_3_45ArrayINS_7Array2DIPfEEED2Ev.exit225

bb.u:                                             ; preds = %bb.p, %.preheader346
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN7Imf_3_45ArrayINS_7Array2DIPfEEED2Ev.exit225

bb.v:                                             ; preds = %bb.q
  %i.ar = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0248.0) #31
  %i.as = add i32 %.0162, 1
  br label %.preheader346, !llvm.loop !233

._crit_edge:                                      ; preds = %bb.aa, %.noexc214
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.at, align 8, !tbaa !73
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr null, ptr %i.au, align 8, !tbaa !74
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.at, ptr %i.av, align 8, !tbaa !75
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !76
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.ax, align 8, !tbaa !77
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 48
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %i.ay, i32 noundef 1, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit unwind label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt3mapIN7Imf_3_44NameENS0_9DeepSliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(104) %3) #25
  br label %.body

bb.x:                                             ; preds = %bb.r
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN7Imf_3_45ArrayINS_7Array2DIPfEEED2Ev.exit225

bb.y:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %indvars.iv ; 3 uses
  %i.bc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.an) #29
          to label %.noexc215 unwind label %bb.ab

.noexc215:                                        ; preds = %bb.y
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !99 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.noexc215
  tail call void @_ZdaPv(ptr noundef nonnull %i.be) #26
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.noexc215
  store i64 %i.m, ptr %i.bb, align 8, !tbaa !100
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %i.l, ptr %i.bg, align 8, !tbaa !101
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !99
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ac
  br i1 %exitcond.not, label %._crit_edge, label %bb.y, !llvm.loop !234

bb.ab:                                            ; preds = %bb.y
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bz

_ZN7Imf_3_415DeepFrameBufferC2Ev.exit:            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bi = shl nsw i64 %i.l, 2
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %4, i32 noundef 0, ptr noundef nonnull %i.x, i64 noundef 4, i64 noundef %i.bi, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.ac unwind label %bb.aj

bb.ac:                                            ; preds = %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit
  invoke void @_ZN7Imf_3_415DeepFrameBuffer22insertSampleCountSliceERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(50) %4)
          to label %bb.ad unwind label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bj = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %bb.ae unwind label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.bk = invoke ptr @_ZNK7Imf_3_411ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bj)
          to label %.preheader345 unwind label %bb.ak

.preheader345:                                    ; preds = %bb.ae
  %i.bl = shl nsw i32 %i.g, 3
  %i.bm = sext i32 %i.bl to i64
  br label %bb.af

bb.af:                                            ; preds = %.preheader345, %bb.ao
  %indvars.iv635 = phi i64 [ 0, %.preheader345 ], [ %indvars.iv.next636, %bb.ao ] ; 2 uses
  %.sroa.0238.0 = phi ptr [ %i.bk, %.preheader345 ], [ %i.bw, %bb.ao ] ; 3 uses
  %i.bn = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %bb.ag unwind label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.bo = invoke ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bn)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %.not320 = icmp eq ptr %.sroa.0238.0, %i.bo
  br i1 %.not320, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN7Imf_3_418DeepTiledInputFile14setFrameBufferERKNS_15DeepFrameBufferE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(104) %3)
          to label %bb.aq unwind label %bb.br

bb.aj:                                            ; preds = %bb.ac, %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit
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
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %indvars.iv635
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !99
  invoke void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef 2, ptr noundef %i.bu, i64 noundef 8, i64 noundef %i.bm, i64 noundef 4, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0238.0, i64 32
  invoke void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull %i.bv, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.bw = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0238.0) #31
  %indvars.iv.next636 = add nuw nsw i64 %indvars.iv635, 1
  br label %bb.af, !llvm.loop !235

bb.ap:                                            ; preds = %bb.an, %bb.am
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.aq:                                            ; preds = %bb.ai
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !87
  %i.ca = icmp eq i32 %i.bz, 2
  %.not321518 = icmp sgt i32 %i.j, 0
  br i1 %.not321518, label %.preheader343.lr.ph, label %_ZNSt6vectorIfSaIfEED2Ev.exit218

.preheader343.lr.ph:                              ; preds = %bb.aq
  %.not210507 = icmp sgt i32 %i.k, 0
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 4
  %sext = shl i64 %i.c, 32
  %i.ce = ashr exact i64 %sext, 32
  br i1 %.not210507, label %.preheader343.us.preheader, label %_ZNSt6vectorIfSaIfEED2Ev.exit218

.preheader343.us.preheader:                       ; preds = %.preheader343.lr.ph
  %i.cf = add nsw i64 %i.ac, -1                   ; 3 uses
  %xtraiter868 = and i64 %i.ac, 1
  %i.cg = icmp eq i64 %i.cf, 0
  %unroll_iter873 = and i64 %i.ac, 4294967294
  %lcmp.mod870.not = icmp eq i64 %xtraiter868, 0
  %lcmp.mod872 = trunc i32 %.0162 to i1
  %xtraiter875 = and i64 %i.ac, 1
  %i.ch = icmp eq i64 %i.cf, 0
  %unroll_iter879 = and i64 %i.ac, 4294967294
  %lcmp.mod877.not = icmp eq i64 %xtraiter875, 0
  %lcmp.mod878 = trunc i32 %.0162 to i1
  %xtraiter882 = and i64 %i.ac, 1
  %i.ci = icmp eq i64 %i.cf, 0
  %unroll_iter887 = and i64 %i.ac, 4294967294
  %lcmp.mod884.not = icmp eq i64 %xtraiter882, 0
  %lcmp.mod886 = trunc i32 %.0162 to i1
  br label %.preheader343.us

.preheader343.us:                                 ; preds = %.preheader343.us.preheader, %..thread288_crit_edge.us
  %.0155524.us = phi i32 [ %i.kp, %..thread288_crit_edge.us ], [ 0, %.preheader343.us.preheader ] ; 6 uses
  %.0175522.us = phi i1 [ %.2177.us, %..thread288_crit_edge.us ], [ false, %.preheader343.us.preheader ]
  %.sroa.15.0521.us = phi ptr [ %.sroa.15.2.us, %..thread288_crit_edge.us ], [ null, %.preheader343.us.preheader ]
  %.sroa.10.0520.us = phi ptr [ %.sroa.10.2.us, %..thread288_crit_edge.us ], [ null, %.preheader343.us.preheader ]
  %.sroa.0.0519.us = phi ptr [ %.sroa.0.2.us, %..thread288_crit_edge.us ], [ null, %.preheader343.us.preheader ]
  br label %.preheader342.us

.preheader342.us:                                 ; preds = %.preheader343.us, %.thread277.us
  %.0154513.us = phi i32 [ 0, %.preheader343.us ], [ %i.ko, %.thread277.us ] ; 6 uses
  %.1176511.us = phi i1 [ %.0175522.us, %.preheader343.us ], [ %.2177.us, %.thread277.us ]
  %.sroa.15.1510.us = phi ptr [ %.sroa.15.0521.us, %.preheader343.us ], [ %.sroa.15.2.us, %.thread277.us ]
  %.sroa.10.1509.us = phi ptr [ %.sroa.10.0520.us, %.preheader343.us ], [ %.sroa.10.2.us, %.thread277.us ]
  %.sroa.0.1508.us = phi ptr [ %.sroa.0.0519.us, %.preheader343.us ], [ %.sroa.0.2.us, %.thread277.us ]
  %i.cj = icmp eq i32 %.0154513.us, %.0155524.us
  %or.cond212.not325.not328.us = or i1 %i.ca, %i.cj ; 2 uses
  %brmerge.not.us = and i1 %2, %or.cond212.not325.not328.us
  br label %bb.ar

bb.ar:                                            ; preds = %.thread.us, %.preheader342.us
  %.sroa.0.2.us = phi ptr [ %.sroa.0.3.us, %.thread.us ], [ %.sroa.0.1508.us, %.preheader342.us ] ; 5 uses
  %.sroa.10.2.us = phi ptr [ %.sroa.10.3.us, %.thread.us ], [ %.sroa.10.1509.us, %.preheader342.us ] ; 3 uses
  %.sroa.15.2.us = phi ptr [ %.sroa.15.3.us, %.thread.us ], [ %.sroa.15.1510.us, %.preheader342.us ] ; 5 uses
  %.2177.us = phi i1 [ %.3178.us, %.thread.us ], [ %.1176511.us, %.preheader342.us ] ; 4 uses
  %.0153.us = phi i32 [ %i.kn, %.thread.us ], [ 0, %.preheader342.us ] ; 6 uses
  %i.ck = invoke noundef i32 @_ZNK7Imf_3_418DeepTiledInputFile9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0155524.us)
          to label %bb.as unwind label %.split.us

bb.as:                                            ; preds = %bb.ar
  %.not211.us = icmp slt i32 %.0153.us, %i.ck
  br i1 %.not211.us, label %.preheader340.us, label %.thread277.us

.preheader340.us:                                 ; preds = %bb.as, %bb.bq
  %.sroa.0.3.us = phi ptr [ %.sroa.0.8.us, %bb.bq ], [ %.sroa.0.2.us, %bb.as ] ; 17 uses
  %.sroa.10.3.us = phi ptr [ %.sroa.10.7.us, %bb.bq ], [ %.sroa.10.2.us, %bb.as ] ; 13 uses
  %.sroa.15.3.us = phi ptr [ %.sroa.15.8.us, %bb.bq ], [ %.sroa.15.2.us, %bb.as ] ; 13 uses
  %.3178.us = phi i1 [ %.6181.us, %bb.bq ], [ %.2177.us, %bb.as ] ; 3 uses
  %.0152.us = phi i32 [ %i.km, %bb.bq ], [ 0, %bb.as ] ; 6 uses
  %i.cl = invoke noundef i32 @_ZNK7Imf_3_418DeepTiledInputFile9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0154513.us)
          to label %bb.at unwind label %.split569.us

bb.at:                                            ; preds = %.preheader340.us
  %.not205.us = icmp slt i32 %.0152.us, %i.cl
  br i1 %.not205.us, label %bb.au, label %.thread.us

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN7Imf_3_418DeepTiledInputFile21readPixelSampleCountsEiiiiii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0152.us, i32 noundef %.0153.us, i32 noundef %.0152.us, i32 noundef %.0153.us, i32 noundef %.0154513.us, i32 noundef %.0155524.us)
          to label %bb.aw unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bo

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNK7Imf_3_418DeepTiledInputFile17dataWindowForTileEiiii(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Box") align 4 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0152.us, i32 noundef %.0153.us, i32 noundef %.0154513.us, i32 noundef %.0155524.us)
          to label %bb.ay unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bn

bb.ay:                                            ; preds = %bb.aw
  %i.co = load i32, ptr %i.cb, align 4, !tbaa !67 ; 4 uses
  %i.cp = load i32, ptr %6, align 4, !tbaa !68    ; 4 uses
  %i.cq = load i32, ptr %i.cc, align 4, !tbaa !86 ; 4 uses
  %i.cr = load i32, ptr %i.cd, align 4, !tbaa !85 ; 4 uses
  %.not429.us = icmp slt i32 %i.cq, %i.cr         ; 2 uses
  %.not207421.us = icmp slt i32 %i.co, %i.cp
  %or.cond782 = select i1 %.not429.us, i1 true, i1 %.not207421.us
  br i1 %or.cond782, label %._crit_edge433.us.thread, label %.preheader339.lr.ph.split.us530

.preheader339.lr.ph.split.us530:                  ; preds = %bb.ay
  %i.cs = add i32 %i.co, 1
  %i.ct = sub i32 %i.cs, %i.cp                    ; 4 uses
  %i.cu = add i32 %i.cq, 1
  %i.cv = sub i32 %i.cu, %i.cr
  %wide.trip.count656 = zext i32 %i.cv to i64     ; 2 uses
  %wide.trip.count651 = zext i32 %i.ct to i64     ; 4 uses
  br i1 %1, label %.preheader339.us438.us.preheader, label %.preheader339.us532.preheader

.preheader339.us532.preheader:                    ; preds = %.preheader339.lr.ph.split.us530
  %xtraiter = and i64 %wide.trip.count651, 3      ; 3 uses
  %i.cw = add i32 %i.ct, -1
  %i.cx = icmp ult i32 %i.cw, 3
  %unroll_iter = and i64 %wide.trip.count651, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod857 = icmp ne i64 %xtraiter, 0
  br label %.preheader339.us532

.preheader339.us438.us.preheader:                 ; preds = %.preheader339.lr.ph.split.us530
  %xtraiter859 = and i64 %wide.trip.count651, 1
  %i.cy = icmp eq i32 %i.ct, 1
  %unroll_iter865 = and i64 %wide.trip.count651, 4294967294
  %lcmp.mod861.not = icmp eq i64 %xtraiter859, 0
  %lcmp.mod864 = trunc i32 %i.ct to i1
  br label %.preheader339.us438.us

.preheader339.us532:                              ; preds = %.preheader339.us532.preheader, %._crit_edge426.split.us.us
  %indvars.iv643 = phi i64 [ %indvars.iv.next644, %._crit_edge426.split.us.us ], [ 0, %.preheader339.us532.preheader ] ; 2 uses
  %.0147431.us = phi i64 [ %.lcssa, %._crit_edge426.split.us.us ], [ 0, %.preheader339.us532.preheader ] ; 2 uses
  %.0149430.us = phi i64 [ %.2151.us.us.lcssa, %._crit_edge426.split.us.us ], [ 0, %.preheader339.us532.preheader ] ; 2 uses
  %i.cz = mul nsw i64 %indvars.iv643, %i.l
  %i.da = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.cz ; 5 uses
  br i1 %i.cx, label %.epil.preheader, label %.preheader339.us532.new

.preheader339.us532.new:                          ; preds = %.preheader339.us532, %.preheader339.us532.new
  %indvars.iv638 = phi i64 [ %indvars.iv.next639.3, %.preheader339.us532.new ], [ 0, %.preheader339.us532 ] ; 5 uses
  %.1148423.us.us = phi i64 [ %i.dx, %.preheader339.us532.new ], [ %.0147431.us, %.preheader339.us532 ]
  %.1150422.us.us = phi i64 [ %.2151.us.us.3, %.preheader339.us532.new ], [ %.0149430.us, %.preheader339.us532 ]
  %niter = phi i64 [ %niter.next.3, %.preheader339.us532.new ], [ 0, %.preheader339.us532 ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv638
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !14
  %i.dd = mul i32 %i.dc, %.0162
  %i.de = zext i32 %i.dd to i64                   ; 2 uses
  %i.df = add i64 %.1148423.us.us, %i.de
  %.2151.us.us = add i64 %.1150422.us.us, %i.de
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv638
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !14
  %i.dj = mul i32 %i.di, %.0162
  %i.dk = zext i32 %i.dj to i64                   ; 2 uses
  %i.dl = add i64 %i.df, %i.dk
  %.2151.us.us.1 = add i64 %.2151.us.us, %i.dk
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv638
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !14
  %i.dp = mul i32 %i.do, %.0162
  %i.dq = zext i32 %i.dp to i64                   ; 2 uses
  %i.dr = add i64 %i.dl, %i.dq
  %.2151.us.us.2 = add i64 %.2151.us.us.1, %i.dq
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv638
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !14
  %i.dv = mul i32 %i.du, %.0162
  %i.dw = zext i32 %i.dv to i64                   ; 2 uses
  %i.dx = add i64 %i.dr, %i.dw                    ; 3 uses
  %.2151.us.us.3 = add i64 %.2151.us.us.2, %i.dw  ; 3 uses
  %indvars.iv.next639.3 = add nuw nsw i64 %indvars.iv638, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge426.split.us.us.unr-lcssa, label %.preheader339.us532.new, !llvm.loop !236

._crit_edge426.split.us.us.unr-lcssa:             ; preds = %.preheader339.us532.new
  br i1 %lcmp.mod.not, label %._crit_edge426.split.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge426.split.us.us.unr-lcssa, %.preheader339.us532
  %indvars.iv638.epil.init = phi i64 [ 0, %.preheader339.us532 ], [ %indvars.iv.next639.3, %._crit_edge426.split.us.us.unr-lcssa ]
  %.1148423.us.us.epil.init = phi i64 [ %.0147431.us, %.preheader339.us532 ], [ %i.dx, %._crit_edge426.split.us.us.unr-lcssa ]
  %.1150422.us.us.epil.init = phi i64 [ %.0149430.us, %.preheader339.us532 ], [ %.2151.us.us.3, %._crit_edge426.split.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod857)
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.epil.preheader
  %indvars.iv638.epil = phi i64 [ %indvars.iv.next639.epil, %bb.az ], [ %indvars.iv638.epil.init, %.epil.preheader ] ; 2 uses
  %.1148423.us.us.epil = phi i64 [ %i.ec, %bb.az ], [ %.1148423.us.us.epil.init, %.epil.preheader ]
  %.1150422.us.us.epil = phi i64 [ %.2151.us.us.epil, %bb.az ], [ %.1150422.us.us.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.az ], [ 0, %.epil.preheader ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv638.epil
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !14
  %i.ea = mul i32 %i.dz, %.0162
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %i.ec = add i64 %.1148423.us.us.epil, %i.eb     ; 2 uses
  %.2151.us.us.epil = add i64 %.1150422.us.us.epil, %i.eb ; 2 uses
  %indvars.iv.next639.epil = add nuw nsw i64 %indvars.iv638.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge426.split.us.us, label %bb.az, !llvm.loop !237

._crit_edge426.split.us.us:                       ; preds = %bb.az, %._crit_edge426.split.us.us.unr-lcssa
  %.lcssa = phi i64 [ %i.dx, %._crit_edge426.split.us.us.unr-lcssa ], [ %i.ec, %bb.az ] ; 2 uses
  %.2151.us.us.lcssa = phi i64 [ %.2151.us.us.3, %._crit_edge426.split.us.us.unr-lcssa ], [ %.2151.us.us.epil, %bb.az ] ; 2 uses
  %indvars.iv.next644 = add nuw nsw i64 %indvars.iv643, 1 ; 2 uses
  %exitcond647.not = icmp eq i64 %indvars.iv.next644, %wide.trip.count656
  br i1 %exitcond647.not, label %._crit_edge433.us, label %.preheader339.us532, !llvm.loop !238

.preheader339.us438.us:                           ; preds = %.preheader339.us438.us.preheader, %._crit_edge426.split.us448.us
  %indvars.iv653 = phi i64 [ %indvars.iv.next654, %._crit_edge426.split.us448.us ], [ 0, %.preheader339.us438.us.preheader ] ; 2 uses
  %.0147431.us440.us = phi i64 [ %.lcssa823, %._crit_edge426.split.us448.us ], [ 0, %.preheader339.us438.us.preheader ] ; 2 uses
  %.0149430.us441.us = phi i64 [ %.2151.us446.us.lcssa, %._crit_edge426.split.us448.us ], [ 0, %.preheader339.us438.us.preheader ] ; 2 uses
  %i.ed = mul nsw i64 %indvars.iv653, %i.l
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ed ; 3 uses
  br i1 %i.cy, label %.epil.preheader858, label %.preheader339.us438.us.new

.preheader339.us438.us.new:                       ; preds = %.preheader339.us438.us, %.preheader339.us438.us.new
  %indvars.iv648 = phi i64 [ %indvars.iv.next649.1, %.preheader339.us438.us.new ], [ 0, %.preheader339.us438.us ] ; 3 uses
  %.1148423.us444.us = phi i64 [ %i.er, %.preheader339.us438.us.new ], [ %.0147431.us440.us, %.preheader339.us438.us ]
  %.1150422.us445.us = phi i64 [ %.2151.us446.us.1, %.preheader339.us438.us.new ], [ %.0149430.us441.us, %.preheader339.us438.us ]
  %niter866 = phi i64 [ %niter866.next.1, %.preheader339.us438.us.new ], [ 0, %.preheader339.us438.us ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv648
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !14 ; 2 uses
  %i.eh = mul i32 %i.eg, %.0162
  %i.ei = zext i32 %i.eh to i64                   ; 2 uses
  %i.ej = add i64 %.1148423.us444.us, %i.ei
  %i.ek = mul i32 %i.eg, %i.d
  %i.el = icmp ugt i32 %i.ek, 4095
end_hunk_1
