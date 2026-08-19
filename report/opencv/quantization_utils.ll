inline.NumInlined: 1084
inline.NumDeleted: 387
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cv3dnnL12block_repeatERKNS_11_InputArrayERKNS_8MatShapeEiiRKNS_12_OutputArrayE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i101: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.body

bb.af:                                            ; preds = %bb.ac
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ag:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.cq = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.noexc107 unwind label %bb.ak

.noexc107:                                        ; preds = %bb.ag
  %i.cr = icmp eq i32 %i.cq, 65536
  br i1 %i.cr, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.noexc107
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !141, !noalias !187
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %i.cs)
          to label %_ZNK2cv11_InputArray6getMatEi.exit110 unwind label %bb.ak

bb.ai:                                            ; preds = %.noexc107
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit110 unwind label %bb.ak

_ZNK2cv11_InputArray6getMatEi.exit110:            ; preds = %bb.ah, %bb.ai
  %i.ct = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %16)
          to label %bb.aj unwind label %bb.al     ; 0 uses

bb.aj:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit110
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.cu = load i32, ptr %12, align 8, !tbaa !182
  %i.cv = and i32 %i.cu, 16384
  %.not117 = icmp eq i32 %i.cv, 0
  br i1 %.not117, label %bb.an, label %bb.as

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit110
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #20
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn73 = phi { ptr, i32 } [ %i.cx, %bb.al ], [ %i.cw, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %.body

bb.an:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.51, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN2cv3dnnL12block_repeatERKNS_11_InputArrayERKNS_8MatShapeEiiRKNS_12_OutputArrayE, ptr noundef nonnull @.str.7, i32 noundef 71) #21
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  unreachable

bb.aq:                                            ; preds = %bb.an
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

bb.ar:                                            ; preds = %bb.ao
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %17, align 8, !tbaa !60   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.ar
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !54
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, %bb.aq
  %.pn75 = phi { ptr, i32 } [ %i.cy, %bb.aq ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ], [ %i.cz, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %.body

bb.as:                                            ; preds = %bb.aj
  %i.df = load i32, ptr %11, align 8, !tbaa !182
  %i.dg = and i32 %i.df, 16384
  %.not118 = icmp eq i32 %i.dg, 0
  br i1 %.not118, label %bb.at, label %.lr.ph137

.lr.ph137:                                        ; preds = %bb.as
  %i.dh = icmp sgt i32 %.lcssa, 0
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.dk = sext i32 %.052.lcssa to i64             ; 6 uses
  %i.dl = mul nsw i32 %.052.lcssa, %3
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  br i1 %i.dh, label %.lr.ph134.preheader, label %._crit_edge138.split

.lr.ph134.preheader:                              ; preds = %.lr.ph137
  %wide.trip.count = zext nneg i32 %3 to i64
  %xtraiter = and i32 %.lcssa, 1
  %i.dn = icmp eq i32 %.lcssa, 1
  %unroll_iter = and i32 %.lcssa, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod191 = trunc i32 %.lcssa to i1
  br label %.lr.ph134

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.52, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv3dnnL12block_repeatERKNS_11_InputArrayERKNS_8MatShapeEiiRKNS_12_OutputArrayE, ptr noundef nonnull @.str.7, i32 noundef 72) #21
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  unreachable

bb.aw:                                            ; preds = %bb.at
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

bb.ax:                                            ; preds = %bb.au
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dq = load ptr, ptr %19, align 8, !tbaa !60   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.ax
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !54
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114, %bb.aw
  %.pn77 = phi { ptr, i32 } [ %i.do, %bb.aw ], [ %i.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %i.dp, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %.body

._crit_edge138.split:                             ; preds = %._crit_edge135, %.lr.ph137
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  ret void

.lr.ph134:                                        ; preds = %.lr.ph134.preheader, %._crit_edge135
  %indvars.iv146 = phi i64 [ 0, %.lr.ph134.preheader ], [ %indvars.iv.next147, %._crit_edge135 ] ; 2 uses
  %i.dv = mul nsw i64 %indvars.iv146, %i.dk       ; 2 uses
  br i1 %i.dn, label %.epil.preheader, label %.lr.ph134.new

._crit_edge135.unr-lcssa:                         ; preds = %.lr.ph134.new
  br i1 %lcmp.mod.not, label %._crit_edge135, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge135.unr-lcssa, %.lr.ph134
  %.046131.epil.init = phi i64 [ %i.dv, %.lr.ph134 ], [ %i.el, %._crit_edge135.unr-lcssa ]
  %.047130.epil.init = phi i64 [ 0, %.lr.ph134 ], [ %i.ek, %._crit_edge135.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod191)
  %i.dw = load ptr, ptr %i.di, align 8, !tbaa !169
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.046131.epil.init
  %i.dy = load ptr, ptr %i.dj, align 8, !tbaa !169
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.047130.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dx, ptr align 1 %i.dz, i64 %i.dk, i1 false)
  br label %._crit_edge135

._crit_edge135:                                   ; preds = %._crit_edge135.unr-lcssa, %.epil.preheader
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count
  br i1 %exitcond150.not, label %._crit_edge138.split, label %.lr.ph134, !llvm.loop !190

.lr.ph134.new:                                    ; preds = %.lr.ph134, %.lr.ph134.new
  %.046131 = phi i64 [ %i.el, %.lr.ph134.new ], [ %i.dv, %.lr.ph134 ] ; 2 uses
  %.047130 = phi i64 [ %i.ek, %.lr.ph134.new ], [ 0, %.lr.ph134 ] ; 2 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph134.new ], [ 0, %.lr.ph134 ]
  %i.ea = load ptr, ptr %i.di, align 8, !tbaa !169
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.046131
  %i.ec = load ptr, ptr %i.dj, align 8, !tbaa !169
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.047130
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eb, ptr align 1 %i.ed, i64 %i.dk, i1 false)
  %i.ee = add nsw i64 %.047130, %i.dk             ; 2 uses
  %i.ef = add i64 %.046131, %i.dm                 ; 2 uses
  %i.eg = load ptr, ptr %i.di, align 8, !tbaa !169
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ef
  %i.ei = load ptr, ptr %i.dj, align 8, !tbaa !169
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ee
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eh, ptr align 1 %i.ej, i64 %i.dk, i1 false)
  %i.ek = add nsw i64 %i.ee, %i.dk                ; 2 uses
  %i.el = add i64 %i.ef, %i.dm                    ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge135.unr-lcssa, label %.lr.ph134.new, !llvm.loop !191

.body:                                            ; preds = %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i101, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %bb.aa
  %.pn79.pn = phi { ptr, i32 } [ %i.by, %bb.aa ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i101 ], [ %.pn77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ], [ %.pn75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ], [ %.pn73, %bb.am ], [ %i.bz, %bb.ab ], [ %i.cp, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.ay

bb.ay:                                            ; preds = %.body, %bb.z
  %.pn79.pn.pn = phi { ptr, i32 } [ %.pn79.pn, %.body ], [ %i.bx, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.r
  %.pn79.pn.pn.pn = phi { ptr, i32 } [ %.pn79.pn.pn, %bb.ay ], [ %i.z, %bb.r ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn79.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn79.pn.pn.pn, %bb.az ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn79.pn.pn.pn.pn
}

declare noundef i32 @_ZNK2cv11_InputArray4dimsEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #7

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #7

declare void @_ZNK2cv12_OutputArray6createEiPKiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #7

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #7

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #6

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #7

declare void @_ZN2cv5utils5trace7details8traceArgERKNS2_8TraceArgEPKc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn17QuantizeLayerImpl18processInputOutputERSt6vectorINS_3MatESaIS3_EES6_(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %7 = alloca %"struct.cv::MatShape", align 4     ; 4 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !128    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 208                 ; 3 uses
  %.not = icmp ne ptr %i.b, %i.c
  %i.h = icmp ult i64 %i.g, 4
  %or.cond = and i1 %.not, %i.h
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv6detail17check_failed_autoEmRKNS0_12CheckContextE(i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn17QuantizeLayerImpl18processInputOutputERSt6vectorINS_3MatESaIS3_EES6_E15__cv_check__240) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp samesign ugt i64 %i.g, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !16, !range !68, !noundef !69
  %i.l = icmp ne i8 %i.k, 0
  %i.m = and i1 %i.i, %i.l                        ; 2 uses
  %i.n = zext i1 %i.m to i8
  store i8 %i.n, ptr %i.j, align 8, !tbaa !16
  br i1 %i.m, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.j, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.p, ptr noundef nonnull align 8 dereferenceable(208) %i.o) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(208) %i.p, i32 noundef 1, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.t, align 8
  store i32 -2113732603, ptr %4, align 8, !tbaa !139
  store ptr %i.r, ptr %i.s, align 8, !tbaa !141
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.u = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.p)
  %i.v = icmp ugt i64 %i.u, 1
  br i1 %i.v, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i8 1, ptr %i.w, align 4, !tbaa !64
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.s

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !130
  %i.z = load ptr, ptr %1, align 8, !tbaa !128    ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 208
  %i.ae = icmp ugt i64 %i.ad, 2
  br i1 %i.ae, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 416
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 4 uses
  %i.ah = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ag, ptr noundef nonnull align 8 dereferenceable(208) %i.af) ; 0 uses
  %i.ai = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.ag)
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.p)
  %i.al = trunc i64 %i.ak to i32
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.ag)
  %i.ao = trunc i64 %i.an to i32
  %i.ap = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.p)
  %i.aq = trunc i64 %i.ap to i32
  call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.ao, i32 noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn17QuantizeLayerImpl18processInputOutputERSt6vectorINS_3MatESaIS3_EES6_E15__cv_check__257) #21
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(208) %i.ag, i32 noundef 1, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.at, align 8
  store i32 -2113732604, ptr %6, align 8, !tbaa !139
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !141
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.s

bb.n:                                             ; preds = %bb.l, %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !64, !range !68, !noundef !69
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.ay = load ptr, ptr %1, align 8, !tbaa !128
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %7, ptr noundef nonnull align 4 dereferenceable(52) %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !65
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !66
  call fastcc void @_ZN2cv3dnnL26broadcastScaleAndZeropointERNS_3MatES2_RKSt6vectorIfSaIfEERKS3_IiSaIiEERKNS_8MatShapeEii(ptr noundef nonnull align 8 dereferenceable(208) %i.p, ptr noundef nonnull align 8 dereferenceable(208) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 4 dereferenceable(52) %7, i32 noundef %i.bd, i32 noundef %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.c
  %i.bg = load ptr, ptr %2, align 8, !tbaa !128   ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !182
end_hunk_0
