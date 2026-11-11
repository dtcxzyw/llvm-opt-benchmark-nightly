Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/resize_layer?download=true
inline.NumInlined: 1075
inline.NumDeleted: 396
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2cv3dnn15ResizeLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a

bb.gp:                                            ; preds = %.noexc504
  unreachable

bb.gq:                                            ; preds = %.noexc504
  %i.wp = landingpad { ptr, i32 }
          cleanup
  %i.wq = load ptr, ptr %6, align 8, !tbaa !37    ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ws = icmp eq ptr %i.wq, %i.wr
  br i1 %i.ws, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i502, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i501

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i501: ; preds = %bb.gq
  %i.wt = load i64, ptr %i.wr, align 8, !tbaa !31
  %i.wu = add i64 %i.wt, 1
  call void @_ZdlPvm(ptr noundef %i.wq, i64 noundef %i.wu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i502

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i502: ; preds = %bb.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i501
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.body459

bb.gr:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread
  %i.wv = getelementptr inbounds nuw i8, ptr %53, i64 92
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !95 ; 4 uses
  %.not615 = icmp eq i32 %i.wn, 3
  br i1 %.not615, label %bb.gs, label %bb.gv

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc513 unwind label %.body528

.noexc513:                                        ; preds = %bb.gs
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.30, i32 noundef 97) #23
          to label %bb.gt unwind label %bb.gu

bb.gt:                                            ; preds = %.noexc513
  unreachable

bb.gu:                                            ; preds = %.noexc513
  %i.wx = landingpad { ptr, i32 }
          cleanup
  %i.wy = load ptr, ptr %4, align 8, !tbaa !37    ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.xa = icmp eq ptr %i.wy, %i.wz
  br i1 %i.xa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i511, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i510

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i510: ; preds = %bb.gu
  %i.xb = load i64, ptr %i.wz, align 8, !tbaa !31
  %i.xc = add i64 %i.xb, 1
  call void @_ZdlPvm(ptr noundef %i.wy, i64 noundef %i.xc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i511

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i511: ; preds = %bb.gu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i510
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body459

bb.gv:                                            ; preds = %bb.gr
  %i.xd = getelementptr inbounds nuw i8, ptr %53, i64 84
  %i.xe = getelementptr inbounds nuw i8, ptr %53, i64 96
  %i.xf = load i32, ptr %i.xe, align 8, !tbaa !95 ; 3 uses
  %i.xg = mul nsw i32 %i.xf, %i.ww                ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.xi = load i32, ptr %i.xh, align 8, !tbaa !62
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 4 uses
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !60
  %i.xl = mul nsw i32 %i.xk, %i.xi                ; 2 uses
  %i.xm = load i32, ptr %i.xd, align 4, !tbaa !95
  %i.xn = getelementptr inbounds nuw i8, ptr %53, i64 88
  %i.xo = load i32, ptr %i.xn, align 8, !tbaa !95
  %i.xp = mul i32 %i.xo, %i.xm                    ; 7 uses
  %i.xq = load i32, ptr %53, align 8, !tbaa !112
  %i.xr = and i32 %i.xq, 16384
  %.not616 = icmp eq i32 %i.xr, 0
  br i1 %.not616, label %bb.gw, label %bb.hb

.body528:                                         ; preds = %bb.dj, %bb.dl, %bb.dm, %bb.ia, %bb.ii, %bb.ex, %bb.fb, %bb.go, %bb.gs
  %i.xs = landingpad { ptr, i32 }
          cleanup
  br label %.body459

bb.gw:                                            ; preds = %bb.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %64, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %65)
          to label %bb.gx unwind label %bb.gz

bb.gx:                                            ; preds = %bb.gw
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %64, ptr noundef nonnull @__func__._ZN2cv3dnn15ResizeLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.9, i32 noundef 349) #23
          to label %bb.gy unwind label %bb.ha

bb.gy:                                            ; preds = %bb.gx
  unreachable

bb.gz:                                            ; preds = %bb.gw
  %i.xt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533

bb.ha:                                            ; preds = %bb.gx
  %i.xu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xv = load ptr, ptr %64, align 8, !tbaa !37   ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 2 uses
  %i.xx = icmp eq ptr %i.xv, %i.xw
  br i1 %i.xx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i531

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i531: ; preds = %bb.ha
  %i.xy = load i64, ptr %i.xw, align 8, !tbaa !31
  %i.xz = add i64 %i.xy, 1
  call void @_ZdlPvm(ptr noundef %i.xv, i64 noundef %i.xz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533: ; preds = %bb.ha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i531, %bb.gz
  %.pn300 = phi { ptr, i32 } [ %i.xt, %bb.gz ], [ %i.xu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i531 ], [ %i.xu, %bb.ha ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #22
  br label %.body459

bb.hb:                                            ; preds = %bb.gv
  %i.ya = load i32, ptr %54, align 8, !tbaa !112
  %i.yb = and i32 %i.ya, 16384
  %.not617 = icmp eq i32 %i.yb, 0
  br i1 %.not617, label %bb.hc, label %bb.hh

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %66, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %67)
          to label %bb.hd unwind label %bb.hf

bb.hd:                                            ; preds = %bb.hc
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %66, ptr noundef nonnull @__func__._ZN2cv3dnn15ResizeLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.9, i32 noundef 349) #23
          to label %bb.he unwind label %bb.hg

bb.he:                                            ; preds = %bb.hd
  unreachable

bb.hf:                                            ; preds = %bb.hc
  %i.yc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536

bb.hg:                                            ; preds = %bb.hd
  %i.yd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ye = load ptr, ptr %66, align 8, !tbaa !37   ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 2 uses
  %i.yg = icmp eq ptr %i.ye, %i.yf
  br i1 %i.yg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i534

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i534: ; preds = %bb.hg
  %i.yh = load i64, ptr %i.yf, align 8, !tbaa !31
  %i.yi = add i64 %i.yh, 1
  call void @_ZdlPvm(ptr noundef %i.ye, i64 noundef %i.yi) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536: ; preds = %bb.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i534, %bb.hf
  %.pn302 = phi { ptr, i32 } [ %i.yc, %bb.hf ], [ %i.yd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i534 ], [ %i.yd, %bb.hg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #22
  br label %.body459

bb.hh:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #22
  %i.yj = mul nsw i32 %i.xp, %i.ww
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %68, ptr noundef nonnull align 8 dereferenceable(208) %53, i32 noundef 1, i32 noundef %i.yj)
          to label %bb.hi unwind label %bb.hl

bb.hi:                                            ; preds = %bb.hh
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #22
  %i.yk = load i32, ptr %i.xh, align 8, !tbaa !62
  %i.yl = mul nsw i32 %i.yk, %i.xp
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %69, ptr noundef nonnull align 8 dereferenceable(208) %54, i32 noundef 1, i32 noundef %i.yl)
          to label %bb.hj unwind label %bb.hm

bb.hj:                                            ; preds = %bb.hi
  %i.ym = icmp eq i32 %.0236, 1
  %i.yn = load i32, ptr %i.xh, align 8, !tbaa !62 ; 3 uses
  %i.yo = icmp sgt i32 %i.yn, 0                   ; 2 uses
  br i1 %i.ym, label %.preheader625, label %.preheader627

.preheader627:                                    ; preds = %bb.hj
  br i1 %i.yo, label %.lr.ph, label %.loopexit626

.lr.ph:                                           ; preds = %.preheader627
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %68, i64 24
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !130 ; 4 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %68, i64 128
  %i.yt = load i64, ptr %i.ys, align 8, !tbaa !64 ; 4 uses
  %i.yu = add nsw i32 %i.ww, -1                   ; 2 uses
  %i.yv = load i32, ptr %i.xj, align 4, !tbaa !60 ; 2 uses
  %i.yw = icmp sgt i32 %i.yv, 0
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.yy = add nsw i32 %i.xf, -1                   ; 2 uses
  %74 = getelementptr inbounds nuw i8, ptr %69, i64 4
  %75 = load i32, ptr %74, align 4
  %.fr838 = freeze i32 %75
  %76 = icmp slt i32 %.fr838, 2
  %i.yz = getelementptr inbounds nuw i8, ptr %69, i64 24
  %i.za = load ptr, ptr %i.yz, align 8            ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %69, i64 128 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %69, i64 136
  %i.zd = sext i32 %i.xg to i64                   ; 4 uses
  %i.ze = sext i32 %i.xl to i64                   ; 2 uses
  br i1 %i.yw, label %.lr.ph635.preheader, label %.loopexit626

.lr.ph635.preheader:                              ; preds = %.lr.ph
  %i.zf = icmp sgt i32 %i.xp, 0
  %wide.trip.count703 = zext nneg i32 %i.yn to i64 ; 2 uses
  br i1 %i.zf, label %.lr.ph635.preheader.split.us, label %.loopexit626

.lr.ph635.preheader.split.us:                     ; preds = %.lr.ph635.preheader
  %wide.trip.count.us = zext nneg i32 %i.yv to i64 ; 2 uses
  br i1 %76, label %.lr.ph635.us.us, label %.lr.ph635.us

.lr.ph635.us.us:                                  ; preds = %.lr.ph635.preheader.split.us, %._crit_edge636.loopexit.us.split.us.us
  %indvars.iv700.us.us = phi i64 [ %indvars.iv.next701.us.us, %._crit_edge636.loopexit.us.split.us.us ], [ 0, %.lr.ph635.preheader.split.us ] ; 2 uses
  %77 = trunc nuw nsw i64 %indvars.iv700.us.us to i32
  %78 = uitofp nneg i32 %77 to float
  %79 = load float, ptr %i.yp, align 4, !tbaa !129
  %80 = fmul float %79, %78                       ; 2 uses
  %81 = fptosi float %80 to i32                   ; 3 uses
  %82 = sext i32 %81 to i64
  %83 = mul i64 %i.yt, %82
  %84 = getelementptr inbounds nuw i8, ptr %i.yr, i64 %83
  %85 = add nsw i32 %81, 1
  %.sroa.speculated555.us.us = call i32 @llvm.smin.i32(i32 %i.yu, i32 %85)
  %86 = sext i32 %.sroa.speculated555.us.us to i64
  %87 = mul i64 %i.yt, %86
  %88 = getelementptr inbounds nuw i8, ptr %i.yr, i64 %87
  %89 = load i64, ptr %i.zb, align 8
  %90 = sitofp i32 %81 to float
  %91 = fsub float %80, %90                       ; 2 uses
  br label %.lr.ph635.split.us.us.us.us

.lr.ph635.split.us.us.us.us:                      ; preds = %._crit_edge.us.us.us.us, %.lr.ph635.us.us
  %indvars.iv.us.us.us = phi i64 [ 0, %.lr.ph635.us.us ], [ %indvars.iv.next.us.us.us, %._crit_edge.us.us.us.us ] ; 3 uses
  %92 = trunc nuw nsw i64 %indvars.iv.us.us.us to i32
  %93 = uitofp nneg i32 %92 to float
  %94 = load float, ptr %i.yx, align 8, !tbaa !131
  %95 = fmul float %94, %93                       ; 2 uses
  %96 = fptosi float %95 to i32                   ; 3 uses
  %97 = add nsw i32 %96, 1
  %.sroa.speculated.us.us.us.us = call i32 @llvm.smin.i32(i32 %i.yy, i32 %97)
  %98 = mul i64 %indvars.iv.us.us.us, %89
  %99 = getelementptr inbounds nuw i8, ptr %i.za, i64 %98
  %100 = sext i32 %96 to i64                      ; 2 uses
  %101 = sitofp i32 %96 to float
  %102 = fsub float %95, %101
  %103 = sext i32 %.sroa.speculated.us.us.us.us to i64 ; 2 uses
  br label %.lr.ph635.preheader.split

.lr.ph635.preheader.split:                        ; preds = %.lr.ph635.preheader.split, %.lr.ph635.split.us.us.us.us
  %.0632.us.us.us.us = phi i32 [ 0, %.lr.ph635.split.us.us.us.us ], [ %123, %.lr.ph635.preheader.split ]
  %.0213631.us.us.us.us = phi ptr [ %88, %.lr.ph635.split.us.us.us.us ], [ %121, %.lr.ph635.preheader.split ] ; 3 uses
  %.0214630.us.us.us.us = phi ptr [ %84, %.lr.ph635.split.us.us.us.us ], [ %120, %.lr.ph635.preheader.split ] ; 3 uses
  %.0215629.us.us.us.us = phi ptr [ %99, %.lr.ph635.split.us.us.us.us ], [ %122, %.lr.ph635.preheader.split ] ; 2 uses
  %104 = getelementptr inbounds [4 x i8], ptr %.0214630.us.us.us.us, i64 %100
  %105 = load float, ptr %104, align 4, !tbaa !58 ; 4 uses
  %106 = getelementptr inbounds [4 x i8], ptr %.0213631.us.us.us.us, i64 %100
  %107 = load float, ptr %106, align 4, !tbaa !58 ; 2 uses
  %108 = fsub float %107, %105
  %109 = call float @llvm.fmuladd.f32(float %91, float %108, float %105)
  %110 = getelementptr inbounds [4 x i8], ptr %.0214630.us.us.us.us, i64 %103
  %111 = load float, ptr %110, align 4, !tbaa !58 ; 2 uses
  %112 = fsub float %111, %105
  %113 = getelementptr inbounds [4 x i8], ptr %.0213631.us.us.us.us, i64 %103
  %114 = load float, ptr %113, align 4, !tbaa !58
  %115 = fsub float %114, %111
  %116 = fsub float %115, %107
  %117 = fadd float %105, %116
  %118 = call float @llvm.fmuladd.f32(float %91, float %117, float %112)
  %119 = call float @llvm.fmuladd.f32(float %102, float %118, float %109)
  store float %119, ptr %.0215629.us.us.us.us, align 4, !tbaa !58
  %120 = getelementptr inbounds [4 x i8], ptr %.0214630.us.us.us.us, i64 %i.zd
  %121 = getelementptr inbounds [4 x i8], ptr %.0213631.us.us.us.us, i64 %i.zd
  %122 = getelementptr inbounds [4 x i8], ptr %.0215629.us.us.us.us, i64 %i.ze
  %123 = add nuw nsw i32 %.0632.us.us.us.us, 1    ; 2 uses
  %exitcond.us.not.us.us = icmp eq i32 %123, %i.xp
  br i1 %exitcond.us.not.us.us, label %._crit_edge.us.us.us.us, label %.lr.ph635.preheader.split, !llvm.loop !182

._crit_edge.us.us.us.us:                          ; preds = %.lr.ph635.preheader.split
  %indvars.iv.next.us.us.us = add nuw nsw i64 %indvars.iv.us.us.us, 1 ; 2 uses
  %exitcond699.us.not.us.us = icmp eq i64 %indvars.iv.next.us.us.us, %wide.trip.count.us
  br i1 %exitcond699.us.not.us.us, label %._crit_edge636.loopexit.us.split.us.us, label %.lr.ph635.split.us.us.us.us, !llvm.loop !183

._crit_edge636.loopexit.us.split.us.us:           ; preds = %._crit_edge.us.us.us.us
  %indvars.iv.next701.us.us = add nuw nsw i64 %indvars.iv700.us.us, 1 ; 2 uses
  %exitcond704.us.not.us = icmp eq i64 %indvars.iv.next701.us.us, %wide.trip.count703
  br i1 %exitcond704.us.not.us, label %.loopexit626, label %.lr.ph635.us.us, !llvm.loop !184

.lr.ph635.us:                                     ; preds = %.lr.ph635.preheader.split.us, %._crit_edge636.loopexit.split.us.us
  %indvars.iv700.us = phi i64 [ %indvars.iv.next701.us, %._crit_edge636.loopexit.split.us.us ], [ 0, %.lr.ph635.preheader.split.us ] ; 3 uses
  %i.zg = trunc nuw nsw i64 %indvars.iv700.us to i32
  %i.zh = uitofp nneg i32 %i.zg to float
  %i.zi = load float, ptr %i.yp, align 4, !tbaa !129
  %i.zj = fmul float %i.zi, %i.zh                 ; 2 uses
  %i.zk = fptosi float %i.zj to i32               ; 3 uses
  %i.zl = sext i32 %i.zk to i64
  %i.zm = mul i64 %i.yt, %i.zl
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yr, i64 %i.zm
  %i.zo = add nsw i32 %i.zk, 1
  %.sroa.speculated555.us = call i32 @llvm.smin.i32(i32 %i.yu, i32 %i.zo)
  %i.zp = sext i32 %.sroa.speculated555.us to i64
  %i.zq = mul i64 %i.yt, %i.zp
  %i.zr = getelementptr inbounds nuw i8, ptr %i.yr, i64 %i.zq
  %i.zs = load i64, ptr %i.zb, align 8
  %124 = mul i64 %i.zs, %indvars.iv700.us
  %125 = getelementptr inbounds nuw i8, ptr %i.za, i64 %124
  %126 = load i64, ptr %i.zc, align 8
  %i.zt = sitofp i32 %i.zk to float
  %i.zu = fsub float %i.zj, %i.zt                 ; 2 uses
  br label %.lr.ph635.split.us.us.us

.lr.ph635.split.us.us.us:                         ; preds = %.lr.ph635.us, %._crit_edge.us.us.us
  %indvars.iv.us.us = phi i64 [ 0, %.lr.ph635.us ], [ %indvars.iv.next.us.us, %._crit_edge.us.us.us ] ; 3 uses
  %i.zv = trunc nuw nsw i64 %indvars.iv.us.us to i32
  %i.zw = uitofp nneg i32 %i.zv to float
  %i.zx = load float, ptr %i.yx, align 8, !tbaa !131
  %i.zy = fmul float %i.zx, %i.zw                 ; 2 uses
  %i.zz = fptosi float %i.zy to i32               ; 3 uses
  %i.aaa = add nsw i32 %i.zz, 1
  %.sroa.speculated.us.us.us = call i32 @llvm.smin.i32(i32 %i.yy, i32 %i.aaa)
  %i.aab = mul i64 %indvars.iv.us.us, %126
  %i.aac = getelementptr inbounds nuw i8, ptr %125, i64 %i.aab
  %i.aad = sext i32 %i.zz to i64                  ; 2 uses
  %i.aae = sitofp i32 %i.zz to float
  %i.aaf = fsub float %i.zy, %i.aae
  %i.aag = sext i32 %.sroa.speculated.us.us.us to i64 ; 2 uses
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hk, %.lr.ph635.split.us.us.us
  %.0632.us.us.us = phi i32 [ 0, %.lr.ph635.split.us.us.us ], [ %i.aba, %bb.hk ]
  %.0213631.us.us.us = phi ptr [ %i.zr, %.lr.ph635.split.us.us.us ], [ %i.aay, %bb.hk ] ; 3 uses
  %.0214630.us.us.us = phi ptr [ %i.zn, %.lr.ph635.split.us.us.us ], [ %i.aax, %bb.hk ] ; 3 uses
  %.0215629.us.us.us = phi ptr [ %i.aac, %.lr.ph635.split.us.us.us ], [ %i.aaz, %bb.hk ] ; 2 uses
  %i.aah = getelementptr inbounds [4 x i8], ptr %.0214630.us.us.us, i64 %i.aad
  %i.aai = load float, ptr %i.aah, align 4, !tbaa !58 ; 4 uses
  %i.aaj = getelementptr inbounds [4 x i8], ptr %.0213631.us.us.us, i64 %i.aad
  %i.aak = load float, ptr %i.aaj, align 4, !tbaa !58 ; 2 uses
  %i.aal = fsub float %i.aak, %i.aai
  %i.aam = call float @llvm.fmuladd.f32(float %i.zu, float %i.aal, float %i.aai)
  %i.aan = getelementptr inbounds [4 x i8], ptr %.0214630.us.us.us, i64 %i.aag
  %i.aao = load float, ptr %i.aan, align 4, !tbaa !58 ; 2 uses
  %i.aap = fsub float %i.aao, %i.aai
  %i.aaq = getelementptr inbounds [4 x i8], ptr %.0213631.us.us.us, i64 %i.aag
  %i.aar = load float, ptr %i.aaq, align 4, !tbaa !58
  %i.aas = fsub float %i.aar, %i.aao
  %i.aat = fsub float %i.aas, %i.aak
  %i.aau = fadd float %i.aai, %i.aat
  %i.aav = call float @llvm.fmuladd.f32(float %i.zu, float %i.aau, float %i.aap)
  %i.aaw = call float @llvm.fmuladd.f32(float %i.aaf, float %i.aav, float %i.aam)
  store float %i.aaw, ptr %.0215629.us.us.us, align 4, !tbaa !58
  %i.aax = getelementptr inbounds [4 x i8], ptr %.0214630.us.us.us, i64 %i.zd
  %i.aay = getelementptr inbounds [4 x i8], ptr %.0213631.us.us.us, i64 %i.zd
  %i.aaz = getelementptr inbounds [4 x i8], ptr %.0215629.us.us.us, i64 %i.ze
  %i.aba = add nuw nsw i32 %.0632.us.us.us, 1     ; 2 uses
  %exitcond.not.us.us = icmp eq i32 %i.aba, %i.xp
  br i1 %exitcond.not.us.us, label %._crit_edge.us.us.us, label %bb.hk, !llvm.loop !182

._crit_edge.us.us.us:                             ; preds = %bb.hk
  %indvars.iv.next.us.us = add nuw nsw i64 %indvars.iv.us.us, 1 ; 2 uses
  %exitcond699.not.us.us = icmp eq i64 %indvars.iv.next.us.us, %wide.trip.count.us
  br i1 %exitcond699.not.us.us, label %._crit_edge636.loopexit.split.us.us, label %.lr.ph635.split.us.us.us, !llvm.loop !183

._crit_edge636.loopexit.split.us.us:              ; preds = %._crit_edge.us.us.us
  %indvars.iv.next701.us = add nuw nsw i64 %indvars.iv700.us, 1 ; 2 uses
  %exitcond704.not.us = icmp eq i64 %indvars.iv.next701.us, %wide.trip.count703
  br i1 %exitcond704.not.us, label %.loopexit626, label %.lr.ph635.us, !llvm.loop !184

.preheader625:                                    ; preds = %bb.hj
  br i1 %i.yo, label %.lr.ph655, label %.loopexit626

.lr.ph655:                                        ; preds = %.preheader625
  %i.abb = getelementptr inbounds nuw i8, ptr %0, i64 225 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %68, i64 24
  %i.abe = getelementptr inbounds nuw i8, ptr %68, i64 128
  %i.abf = add nsw i32 %i.ww, -1
  %i.abg = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.abh = add nsw i32 %i.xf, -1
  %i.abi = getelementptr inbounds nuw i8, ptr %69, i64 4
  %i.abj = getelementptr inbounds nuw i8, ptr %69, i64 24
  %i.abk = getelementptr inbounds nuw i8, ptr %69, i64 128
  %i.abl = getelementptr inbounds nuw i8, ptr %69, i64 136
  %i.abm = icmp sgt i32 %i.xp, 0
  %i.abn = sext i32 %i.xg to i64                  ; 2 uses
  %i.abo = sext i32 %i.xl to i64
  br label %bb.hn

bb.hl:                                            ; preds = %bb.hh
  %i.abp = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

bb.hm:                                            ; preds = %bb.hi
  %i.abq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %68) #22
  br label %bb.hu

bb.hn:                                            ; preds = %.lr.ph655, %._crit_edge648
  %i.abr = phi i32 [ %i.yn, %.lr.ph655 ], [ %i.aew, %._crit_edge648 ] ; 2 uses
  %indvars.iv709 = phi i64 [ 0, %.lr.ph655 ], [ %indvars.iv.next710, %._crit_edge648 ] ; 3 uses
  %i.abs = load i8, ptr %i.abb, align 1, !tbaa !65, !range !83, !noundef !84
  %i.abt = trunc nuw i8 %i.abs to i1
  %i.abu = trunc nuw nsw i64 %indvars.iv709 to i32
  %i.abv = uitofp nneg i32 %i.abu to float        ; 2 uses
  br i1 %i.abt, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  %i.abw = fadd float %i.abv, 5.000000e-01
  %i.abx = load float, ptr %i.abc, align 4, !tbaa !129
  %i.aby = call float @llvm.fmuladd.f32(float %i.abw, float %i.abx, float -5.000000e-01) ; 2 uses
  %i.abz = fcmp olt float %i.aby, 0.000000e+00
  %.sroa.speculated573 = select i1 %i.abz, float 0.000000e+00, float %i.aby
  br label %bb.hq

bb.hp:                                            ; preds = %bb.hn
  %i.aca = load float, ptr %i.abc, align 4, !tbaa !129
  %i.acb = fmul float %i.aca, %i.abv
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %i.acc = phi float [ %.sroa.speculated573, %bb.ho ], [ %i.acb, %bb.hp ] ; 2 uses
  %i.acd = fptosi float %i.acc to i32             ; 3 uses
  %i.ace = load ptr, ptr %i.abd, align 8, !tbaa !130 ; 2 uses
  %i.acf = load i64, ptr %i.abe, align 8, !tbaa !64 ; 2 uses
  %i.acg = sext i32 %i.acd to i64
  %i.ach = mul i64 %i.acf, %i.acg
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ace, i64 %i.ach
  %i.acj = add nsw i32 %i.acd, 1
  %.sroa.speculated567 = call i32 @llvm.smin.i32(i32 %i.abf, i32 %i.acj)
  %i.ack = sext i32 %.sroa.speculated567 to i64
  %i.acl = mul i64 %i.acf, %i.ack
  %i.acm = getelementptr inbounds nuw i8, ptr %i.ace, i64 %i.acl
  %i.acn = load i32, ptr %i.xj, align 4, !tbaa !60
  %i.aco = icmp sgt i32 %i.acn, 0
  br i1 %i.aco, label %.lr.ph647, label %._crit_edge648

.lr.ph647:                                        ; preds = %bb.hq
  %i.acp = sitofp i32 %i.acd to float
  %i.acq = fsub float %i.acc, %i.acp              ; 2 uses
  br i1 %i.abm, label %.lr.ph647.split.us, label %._crit_edge648

.lr.ph647.split.us:                               ; preds = %.lr.ph647, %._crit_edge.us649
  %indvars.iv706 = phi i64 [ %indvars.iv.next707.a, %._crit_edge.us649 ], [ 0, %.lr.ph647 ] ; 3 uses
  %i.acr = load i8, ptr %i.abb, align 1, !tbaa !65, !range !83, !noundef !84
  %i.acs = trunc nuw i8 %i.acr to i1
  %i.act = trunc nuw nsw i64 %indvars.iv706 to i32
  %i.acu = uitofp nneg i32 %i.act to float        ; 2 uses
  br i1 %i.acs, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %.lr.ph647.split.us
  %i.acv = load float, ptr %i.abg, align 8, !tbaa !131
  %i.acw = fmul float %i.acv, %i.acu
  br label %_ZN2cv3Mat3ptrIaEEPT_ii.exit542.us

bb.hs:                                            ; preds = %.lr.ph647.split.us
  %i.acx = fadd float %i.acu, 5.000000e-01
  %i.acy = load float, ptr %i.abg, align 8, !tbaa !131
  %i.acz = call float @llvm.fmuladd.f32(float %i.acx, float %i.acy, float -5.000000e-01) ; 2 uses
  %i.ada = fcmp olt float %i.acz, 0.000000e+00
  %.sroa.speculated565.us = select i1 %i.ada, float 0.000000e+00, float %i.acz
  br label %_ZN2cv3Mat3ptrIaEEPT_ii.exit542.us

_ZN2cv3Mat3ptrIaEEPT_ii.exit542.us:               ; preds = %bb.hs, %bb.hr
  %i.adb = phi float [ %.sroa.speculated565.us, %bb.hs ], [ %i.acw, %bb.hr ] ; 2 uses
  %i.adc = fptosi float %i.adb to i32             ; 3 uses
  %i.add = add nsw i32 %i.adc, 1
  %.sroa.speculated560.us = call i32 @llvm.smin.i32(i32 %i.abh, i32 %i.add)
  %i.ade = load i32, ptr %i.abi, align 4, !tbaa !100
  %i.adf = icmp slt i32 %i.ade, 2                 ; 2 uses
  %i.adg = load ptr, ptr %i.abj, align 8, !tbaa !130
  %i.adh = load i64, ptr %i.abk, align 8, !tbaa !64 ; 2 uses
  %i.adi = mul i64 %i.adh, %indvars.iv709
  %i.adj = load i64, ptr %i.abl, align 8
  %.sink831 = select i1 %i.adf, i64 %i.adh, i64 %i.adj
  %.sink829.idx = select i1 %i.adf, i64 0, i64 %i.adi
  %.sink829 = getelementptr inbounds nuw i8, ptr %i.adg, i64 %.sink829.idx
  %i.adk = mul i64 %.sink831, %indvars.iv706
  %i.adl = getelementptr inbounds nuw i8, ptr %.sink829, i64 %i.adk
  %i.adm = sext i32 %i.adc to i64                 ; 2 uses
  %i.adn = sitofp i32 %i.adc to float
  %i.ado = fsub float %i.adb, %i.adn
  %i.adp = sext i32 %.sroa.speculated560.us to i64 ; 2 uses
  br label %bb.ht

bb.ht:                                            ; preds = %_ZN2cv3Mat3ptrIaEEPT_ii.exit542.us, %bb.ht
  %.0218643.us = phi i32 [ 0, %_ZN2cv3Mat3ptrIaEEPT_ii.exit542.us ], [ %i.aes, %bb.ht ]
  %.0219642.us = phi ptr [ %i.acm, %_ZN2cv3Mat3ptrIaEEPT_ii.exit542.us ], [ %i.aeq, %bb.ht ] ; 3 uses
  %.0220641.us = phi ptr [ %i.aci, %_ZN2cv3Mat3ptrIaEEPT_ii.exit542.us ], [ %i.aep, %bb.ht ] ; 3 uses
  %.0221640.us = phi ptr [ %i.adl, %_ZN2cv3Mat3ptrIaEEPT_ii.exit542.us ], [ %i.aer, %bb.ht ] ; 2 uses
  %i.adq = getelementptr inbounds i8, ptr %.0220641.us, i64 %i.adm
  %i.adr = load i8, ptr %i.adq, align 1, !tbaa !31 ; 2 uses
  %i.ads = sext i8 %i.adr to i32                  ; 3 uses
  %i.adt = sitofp i8 %i.adr to float
  %i.adu = getelementptr inbounds i8, ptr %.0219642.us, i64 %i.adm
  %i.adv = load i8, ptr %i.adu, align 1, !tbaa !31
  %i.adw = sext i8 %i.adv to i32                  ; 2 uses
  %i.adx = sub nsw i32 %i.adw, %i.ads
  %i.ady = sitofp i32 %i.adx to float
  %i.adz = call float @llvm.fmuladd.f32(float %i.acq, float %i.ady, float %i.adt)
  %i.aea = getelementptr inbounds i8, ptr %.0220641.us, i64 %i.adp
  %i.aeb = load i8, ptr %i.aea, align 1, !tbaa !31
  %i.aec = sext i8 %i.aeb to i32                  ; 2 uses
  %i.aed = sub nsw i32 %i.aec, %i.ads
  %i.aee = sitofp i32 %i.aed to float
  %i.aef = getelementptr inbounds i8, ptr %.0219642.us, i64 %i.adp
  %i.aeg = load i8, ptr %i.aef, align 1, !tbaa !31
  %i.aeh = sext i8 %i.aeg to i32
  %i.aei = add nsw i32 %i.adw, %i.aec
  %i.aej = sub nsw i32 %i.ads, %i.aei
  %i.aek = add nsw i32 %i.aej, %i.aeh
  %i.ael = sitofp i32 %i.aek to float
  %i.aem = call float @llvm.fmuladd.f32(float %i.acq, float %i.ael, float %i.aee)
  %i.aen = call float @llvm.fmuladd.f32(float %i.ado, float %i.aem, float %i.adz)
  %i.aeo = fptosi float %i.aen to i8
  store i8 %i.aeo, ptr %.0221640.us, align 1, !tbaa !31
  %i.aep = getelementptr inbounds i8, ptr %.0220641.us, i64 %i.abn
  %i.aeq = getelementptr inbounds i8, ptr %.0219642.us, i64 %i.abn
  %i.aer = getelementptr inbounds i8, ptr %.0221640.us, i64 %i.abo
  %i.aes = add nuw nsw i32 %.0218643.us, 1        ; 2 uses
  %exitcond705.not = icmp eq i32 %i.aes, %i.xp
  br i1 %exitcond705.not, label %._crit_edge.us649, label %bb.ht, !llvm.loop !185

._crit_edge.us649:                                ; preds = %bb.ht
  %indvars.iv.next707.a = add nuw nsw i64 %indvars.iv706, 1 ; 2 uses
  %i.aet = load i32, ptr %i.xj, align 4, !tbaa !60
  %i.aeu = sext i32 %i.aet to i64
  %i.aev = icmp slt i64 %indvars.iv.next707.a, %i.aeu
  br i1 %i.aev, label %.lr.ph647.split.us, label %._crit_edge648.loopexit, !llvm.loop !186

._crit_edge648.loopexit:                          ; preds = %._crit_edge.us649
  %.pre727 = load i32, ptr %i.xh, align 8, !tbaa !62
  br label %._crit_edge648

._crit_edge648:                                   ; preds = %.lr.ph647, %._crit_edge648.loopexit, %bb.hq
  %i.aew = phi i32 [ %.pre727, %._crit_edge648.loopexit ], [ %i.abr, %.lr.ph647 ], [ %i.abr, %bb.hq ] ; 2 uses
  %indvars.iv.next710 = add nuw nsw i64 %indvars.iv709, 1 ; 2 uses
  %i.aex = sext i32 %i.aew to i64
  %i.aey = icmp slt i64 %indvars.iv.next710, %i.aex
  br i1 %i.aey, label %bb.hn, label %.loopexit626, !llvm.loop !187

.loopexit626:                                     ; preds = %._crit_edge636.loopexit.split.us.us, %._crit_edge636.loopexit.us.split.us.us, %._crit_edge648, %.lr.ph635.preheader, %.preheader627, %.lr.ph, %.preheader625
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %69) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %68) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #22
  br label %bb.hz

bb.hu:                                            ; preds = %bb.hm, %bb.hl
  %.pn304 = phi { ptr, i32 } [ %i.abq, %bb.hm ], [ %i.abp, %bb.hl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #22
  br label %.body459

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit498.thread610: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit425, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.dp, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit498
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #22
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %70, ptr noundef nonnull @.str.37, ptr noundef nonnull align 8 dereferenceable(32) %i.hh)
          to label %bb.hv unwind label %bb.hx

bb.hv:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit498.thread610
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %70, ptr noundef nonnull @__func__._ZN2cv3dnn15ResizeLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.9, i32 noundef 417) #23
          to label %bb.hw unwind label %bb.hy

bb.hw:                                            ; preds = %bb.hv
  unreachable

bb.hx:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit498.thread610
  %i.aez = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549

bb.hy:                                            ; preds = %bb.hv
  %i.afa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afb = load ptr, ptr %70, align 8, !tbaa !37  ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  %i.afd = icmp eq ptr %i.afb, %i.afc
  br i1 %i.afd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i547

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i547: ; preds = %bb.hy
  %i.afe = load i64, ptr %i.afc, align 8, !tbaa !31
  %i.aff = add i64 %i.afe, 1
  call void @_ZdlPvm(ptr noundef %i.afb, i64 noundef %i.aff) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549: ; preds = %bb.hy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i547, %bb.hx
  %.pn298 = phi { ptr, i32 } [ %i.aez, %bb.hx ], [ %i.afa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i547 ], [ %i.afa, %bb.hy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #22
  br label %.body459

bb.hz:                                            ; preds = %.loopexit, %.loopexit626, %_ZNSt14_Function_baseD2Ev.exit
  %.not322 = icmp eq i32 %i.ha, %.0236
  br i1 %.not322, label %bb.ii, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.afg = invoke noundef zeroext i1 @_ZNK2cv4UMat5emptyEv(ptr noundef nonnull align 8 dereferenceable(184) %48)
          to label %bb.ib unwind label %.body528

bb.ib:                                            ; preds = %bb.ia
  br i1 %i.afg, label %bb.if, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #22
  %i.afh = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.afi = getelementptr inbounds nuw i8, ptr %71, i64 16
  store i64 0, ptr %i.afi, align 8
  store i32 34209792, ptr %71, align 8, !tbaa !113
  store ptr %48, ptr %i.afh, align 8, !tbaa !111
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %54, ptr noundef nonnull align 8 dereferenceable(24) %71, i32 noundef %i.ha, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.id unwind label %bb.ie

bb.id:                                            ; preds = %bb.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #22
  br label %bb.in

bb.ie:                                            ; preds = %bb.ic
  %i.afj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #22
  br label %.body459

bb.if:                                            ; preds = %bb.ib
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #22
  %i.afk = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.afl = getelementptr inbounds nuw i8, ptr %72, i64 16
  store i64 0, ptr %i.afl, align 8
  store i32 33619968, ptr %72, align 8, !tbaa !113
  store ptr %47, ptr %i.afk, align 8, !tbaa !111
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %54, ptr noundef nonnull align 8 dereferenceable(24) %72, i32 noundef %i.ha, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ig unwind label %bb.ih

bb.ig:                                            ; preds = %bb.if
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #22
  br label %bb.in

bb.ih:                                            ; preds = %bb.if
  %i.afm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #22
  br label %.body459

bb.ii:                                            ; preds = %bb.hz
  %i.afn = invoke noundef zeroext i1 @_ZNK2cv4UMat5emptyEv(ptr noundef nonnull align 8 dereferenceable(184) %48)
          to label %bb.ij unwind label %.body528

bb.ij:                                            ; preds = %bb.ii
  br i1 %i.afn, label %bb.in, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #22
  %i.afo = getelementptr inbounds nuw i8, ptr %73, i64 8
  %i.afp = getelementptr inbounds nuw i8, ptr %73, i64 16
  store i64 0, ptr %i.afp, align 8
  store i32 34209792, ptr %73, align 8, !tbaa !113
  store ptr %48, ptr %i.afo, align 8, !tbaa !111
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %54, ptr noundef nonnull align 8 dereferenceable(24) %73)
          to label %bb.il unwind label %bb.im

bb.il:                                            ; preds = %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #22
  br label %bb.in

bb.im:                                            ; preds = %bb.ik
  %i.afq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #22
  br label %.body459

bb.in:                                            ; preds = %bb.ij, %bb.il, %bb.id, %bb.ig
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %54) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %53) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #22
  br label %bb.io

bb.io:                                            ; preds = %.thread603, %bb.co, %bb.in
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %48) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %47) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  %i.afr = load ptr, ptr %37, align 8, !tbaa !67  ; 3 uses
  %i.afs = load ptr, ptr %i.g, align 8, !tbaa !68 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.afr, %i.afs
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.io, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.aft, %.lr.ph.i.i.i ], [ %i.afr, %bb.io ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #22
  %i.aft = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i550 = icmp eq ptr %i.aft, %i.afs
  br i1 %.not.i.i.i550, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %37, align 8, !tbaa !67
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.io
  %i.afu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.afr, %bb.io ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.afu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.ip

bb.ip:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.afv = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !69
  %i.afx = ptrtoint ptr %i.afw to i64
  %i.afy = ptrtoint ptr %i.afu to i64
  %i.afz = sub i64 %i.afx, %i.afy
  call void @_ZdlPvm(ptr noundef nonnull %i.afu, i64 noundef %i.afz) #25
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.ip
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  %i.aga = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.agb = load i32, ptr %i.aga, align 8, !tbaa !133
  %.not.i551 = icmp eq i32 %i.agb, 0
  br i1 %.not.i551, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.iq

bb.iq:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %36)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.agc = landingpad { ptr, i32 }
          catch ptr null
  %i.agd = extractvalue { ptr, i32 } %i.agc, 0
  call void @__clang_call_terminate(ptr %i.agd) #24
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  ret void

.body459:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i456, %.body528, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i511, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i502, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i465, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536, %bb.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490, %bb.gn, %bb.im, %bb.ih, %bb.ie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549, %.body439, %bb.dk
  %.pn327.pn = phi { ptr, i32 } [ %i.afm, %bb.ih ], [ %i.afj, %bb.ie ], [ %.pn309, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487 ], [ %i.afq, %bb.im ], [ %.pn318.pn, %.body439 ], [ %i.he, %bb.dk ], [ %.pn304, %bb.hu ], [ %.pn298, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549 ], [ %.pn300, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533 ], [ %.pn302, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536 ], [ %.pn313, %bb.gn ], [ %.pn311, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490 ], [ %i.lu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i456 ], [ %i.mc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i465 ], [ %i.wp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i502 ], [ %i.xs, %.body528 ], [ %i.wx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i511 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %54) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %53) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #22
  br label %.body410

.body410:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i406, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i416, %bb.df, %bb.dg, %bb.cq, %.body459, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414
end_hunk_0
