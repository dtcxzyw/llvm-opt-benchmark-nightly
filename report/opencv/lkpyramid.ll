Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/lkpyramid?download=true
inline.NumInlined: 629
inline.NumDeleted: 228
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2cv12_GLOBAL__N_126SparsePyrLKOpticalFlowImpl4calcERKNS_11_InputArrayES4_S4_RKNS_17_InputOutputArrayERKNS_12_OutputArrayESA_:bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !53
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.v, i32 noundef 1, i32 noundef 0, i32 noundef -1, i1 noundef zeroext true, i32 noundef 0)
          to label %bb.as unwind label %bb.av

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  %i.by = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.noexc217 unwind label %bb.aw

.noexc217:                                        ; preds = %bb.as
  %i.bz = icmp eq i32 %i.by, 65536
  br i1 %i.bz, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.noexc217
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !61, !noalias !233
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(208) %i.cb)
          to label %_ZNK2cv11_InputArray6getMatEi.exit220 unwind label %bb.aw

bb.au:                                            ; preds = %.noexc217
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %24, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit220 unwind label %bb.aw

_ZNK2cv11_InputArray6getMatEi.exit220:            ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %25) #24
  %i.cc = load i32, ptr %24, align 8, !tbaa !47
  %i.cd = and i32 %i.cc, 16384
  %.not331 = icmp eq i32 %i.cd, 0
  br i1 %.not331, label %bb.ax, label %._crit_edge

bb.av:                                            ; preds = %bb.ar
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

bb.aw:                                            ; preds = %bb.au, %bb.at, %bb.as
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

bb.ax:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit220
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @__func__._ZN2cv12_GLOBAL__N_126SparsePyrLKOpticalFlowImpl4calcERKNS_11_InputArrayES4_S4_RKNS_17_InputOutputArrayERKNS_12_OutputArrayESA_, ptr noundef nonnull @.str.1, i32 noundef 1072) #28
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay
  unreachable

bb.ba:                                            ; preds = %bb.ax
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

bb.bb:                                            ; preds = %bb.ay
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %26, align 8, !tbaa !64   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221: ; preds = %bb.bb
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !51
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221, %bb.ba
  %.pn139 = phi { ptr, i32 } [ %i.cg, %bb.ba ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221 ], [ %i.ch, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  br label %bb.gx

._crit_edge:                                      ; preds = %_ZNK2cv11_InputArray6getMatEi.exit220
  %i.cn = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !53 ; 2 uses
  %i.cp = zext nneg i32 %i.v to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.co, i8 1, i64 %i.cp, i1 false), !tbaa !51
  %i.cq = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.bc unwind label %bb.bi

bb.bc:                                            ; preds = %._crit_edge
  br i1 %i.cq, label %bb.bd, label %bb.bs

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %i.v, i32 noundef 1, i32 noundef 5, i32 noundef -1, i1 noundef zeroext true, i32 noundef 0)
          to label %bb.be unwind label %bb.bi

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  %i.cr = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %.noexc224 unwind label %bb.bj

.noexc224:                                        ; preds = %bb.be
  %i.cs = icmp eq i32 %i.cr, 65536
  br i1 %i.cs, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.noexc224
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !61, !noalias !234
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %28, ptr noundef nonnull align 8 dereferenceable(208) %i.cu)
          to label %_ZNK2cv11_InputArray6getMatEi.exit227 unwind label %bb.bj

bb.bg:                                            ; preds = %.noexc224
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %28, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit227 unwind label %bb.bj

_ZNK2cv11_InputArray6getMatEi.exit227:            ; preds = %bb.bf, %bb.bg
  %i.cv = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %25, ptr noundef nonnull align 8 dereferenceable(208) %28)
          to label %bb.bh unwind label %bb.bk     ; 0 uses

bb.bh:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit227
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  %i.cw = load i32, ptr %25, align 8, !tbaa !47
  %i.cx = and i32 %i.cw, 16384
  %.not332 = icmp eq i32 %i.cx, 0
  br i1 %.not332, label %bb.bm, label %bb.br

bb.bi:                                            ; preds = %bb.bd, %._crit_edge
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.bj:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bk:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit227
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #24
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.pn141 = phi { ptr, i32 } [ %i.da, %bb.bk ], [ %i.cz, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  br label %bb.gx

bb.bm:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @__func__._ZN2cv12_GLOBAL__N_126SparsePyrLKOpticalFlowImpl4calcERKNS_11_InputArrayES4_S4_RKNS_17_InputOutputArrayERKNS_12_OutputArrayESA_, ptr noundef nonnull @.str.1, i32 noundef 1083) #28
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  unreachable

bb.bp:                                            ; preds = %bb.bm
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

bb.bq:                                            ; preds = %bb.bn
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %29, align 8, !tbaa !64   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %bb.bq
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !51
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228, %bb.bp
  %.pn143 = phi { ptr, i32 } [ %i.db, %bb.bp ], [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228 ], [ %i.dc, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  br label %bb.gx

bb.br:                                            ; preds = %bb.bh
  %i.di = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !53
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bc
  %.0126 = phi ptr [ %i.dj, %bb.br ], [ null, %bb.bc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, i8 0, i64 24, i1 false)
  %i.dk = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.dl = icmp eq i32 %i.dk, 327680
  br i1 %i.dl, label %bb.bu, label %bb.ct

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %31)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.dm = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !95
  %i.do = load ptr, ptr %31, align 8, !tbaa !96   ; 4 uses
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = sdiv exact i64 %i.dr, 208
  %i.dt = trunc i64 %i.ds to i32                  ; 2 uses
  %i.du = add nsw i32 %i.dt, -1                   ; 5 uses
  %i.dv = icmp sgt i32 %i.dt, 0
  br i1 %i.dv, label %bb.cc, label %bb.bx

bb.bw:                                            ; preds = %bb.cv, %bb.ct, %bb.bu, %bb.bs
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.gw

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %34)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @__func__._ZN2cv12_GLOBAL__N_126SparsePyrLKOpticalFlowImpl4calcERKNS_11_InputArrayES4_S4_RKNS_17_InputOutputArrayERKNS_12_OutputArrayESA_, ptr noundef nonnull @.str.1, i32 noundef 1098) #28
          to label %bb.bz unwind label %bb.cb

bb.bz:                                            ; preds = %bb.by
  unreachable

bb.ca:                                            ; preds = %bb.bx
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

bb.cb:                                            ; preds = %bb.by
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = load ptr, ptr %33, align 8, !tbaa !64   ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %bb.cb
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !51
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231, %bb.ca
  %.pn145 = phi { ptr, i32 } [ %i.dx, %bb.ca ], [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231 ], [ %i.dy, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  br label %bb.gw

bb.cc:                                            ; preds = %bb.bv
  %i.ee = and i32 %i.du, 1
  %.not147 = icmp eq i32 %i.ee, 0
  br i1 %.not147, label %select.unfold, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ef = load i32, ptr %i.do, align 8, !tbaa !47
  %i.eg = lshr i32 %i.ef, 4
  %i.eh = and i32 %i.eg, 254
  %i.ei = getelementptr inbounds nuw i8, ptr %i.do, i64 208
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !47 ; 2 uses
  %i.ek = lshr i32 %i.ej, 5
  %i.el = and i32 %i.ek, 127
  %i.em = or disjoint i32 %i.eh, 1
  %i.en = icmp eq i32 %i.em, %i.el
  br i1 %i.en, label %bb.ce, label %.thread

bb.ce:                                            ; preds = %bb.cd
  %i.eo = and i32 %i.ej, 31
  %i.ep = icmp eq i32 %i.eo, 3
  %i.eq = lshr i32 %i.du, 1
  br i1 %i.ep, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %bb.ce, %bb.cc
  %.0124 = phi i32 [ %i.du, %bb.cc ], [ %i.eq, %bb.ce ] ; 2 uses
  %.0122 = phi i32 [ 1, %bb.cc ], [ 2, %bb.ce ]   ; 2 uses
  %.not333 = icmp eq i32 %.0124, 0
  br i1 %.not333, label %bb.cr, label %.thread

.thread:                                          ; preds = %bb.cd, %bb.ce, %select.unfold
  %.0122321 = phi i32 [ %.0122, %select.unfold ], [ 1, %bb.cd ], [ 1, %bb.ce ] ; 2 uses
  %.0124319 = phi i32 [ %.0124, %select.unfold ], [ %i.du, %bb.cd ], [ %i.du, %bb.ce ]
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #24
  store i32 0, ptr %35, align 4, !tbaa !65
  %i.er = getelementptr inbounds nuw i8, ptr %35, i64 4 ; 2 uses
  store i32 0, ptr %i.er, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #24
  store i32 0, ptr %36, align 4, !tbaa !68
  %i.es = getelementptr inbounds nuw i8, ptr %36, i64 4 ; 2 uses
  store i32 0, ptr %i.es, align 4, !tbaa !69
  %i.et = zext nneg i32 %.0122321 to i64          ; 2 uses
  %i.eu = getelementptr inbounds nuw [208 x i8], ptr %i.do, i64 %i.et
  invoke void @_ZNK2cv3Mat9locateROIERNS_5Size_IiEERNS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %i.eu, ptr noundef nonnull align 4 dereferenceable(8) %35, ptr noundef nonnull align 4 dereferenceable(8) %36)
          to label %bb.cf unwind label %bb.cj

bb.cf:                                            ; preds = %.thread
  %i.ev = load i32, ptr %36, align 4, !tbaa !68   ; 2 uses
  %i.ew = load i32, ptr %i.h, align 8, !tbaa !230 ; 2 uses
  %.not148 = icmp slt i32 %i.ev, %i.ew
  br i1 %.not148, label %bb.ck, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ex = load i32, ptr %i.es, align 4, !tbaa !69 ; 2 uses
  %i.ey = load i32, ptr %i.k, align 4, !tbaa !231 ; 2 uses
  %.not149 = icmp slt i32 %i.ex, %i.ey
  br i1 %.not149, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ez = load ptr, ptr %31, align 8, !tbaa !96
  %i.fa = getelementptr inbounds nuw [208 x i8], ptr %i.ez, i64 %i.et ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !49
  %i.fd = add i32 %i.ew, %i.ev
  %i.fe = add i32 %i.fd, %i.fc
  %i.ff = load i32, ptr %35, align 4, !tbaa !65
  %.not150 = icmp sgt i32 %i.fe, %i.ff
  br i1 %.not150, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !50
  %i.fi = add i32 %i.ey, %i.ex
  %i.fj = add i32 %i.fi, %i.fh
  %i.fk = load i32, ptr %i.er, align 4, !tbaa !66
  %.not151 = icmp sgt i32 %i.fj, %i.fk
  br i1 %.not151, label %bb.ck, label %bb.cp

bb.cj:                                            ; preds = %.thread
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.ck:                                            ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %38)
          to label %bb.cl unwind label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull @__func__._ZN2cv12_GLOBAL__N_126SparsePyrLKOpticalFlowImpl4calcERKNS_11_InputArrayES4_S4_RKNS_17_InputOutputArrayERKNS_12_OutputArrayESA_, ptr noundef nonnull @.str.1, i32 noundef 1114) #28
          to label %bb.cm unwind label %bb.co

bb.cm:                                            ; preds = %bb.cl
  unreachable

bb.cn:                                            ; preds = %bb.ck
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

bb.co:                                            ; preds = %bb.cl
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fo = load ptr, ptr %37, align 8, !tbaa !64   ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %bb.co
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !51
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234, %bb.cn
  %.pn152 = phi { ptr, i32 } [ %i.fm, %bb.cn ], [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234 ], [ %i.fn, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  br label %bb.cq

bb.cp:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  br label %bb.cr

bb.cq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %bb.cj
  %.pn152.pn = phi { ptr, i32 } [ %.pn152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236 ], [ %i.fl, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  br label %bb.gw

bb.cr:                                            ; preds = %bb.cp, %select.unfold
  %.0122320 = phi i32 [ %.0122321, %bb.cp ], [ %.0122, %select.unfold ] ; 2 uses
  %.0124318 = phi i32 [ %.0124319, %bb.cp ], [ 0, %select.unfold ] ; 4 uses
  %i.ft = load i32, ptr %i.e, align 8, !tbaa !84
  %i.fu = icmp slt i32 %.0124318, %i.ft
  br i1 %i.fu, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store i32 %.0124318, ptr %i.e, align 8, !tbaa !84
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs, %bb.bt
  %.1125 = phi i32 [ %.0124318, %bb.cs ], [ %.0124318, %bb.cr ], [ -1, %bb.bt ]
  %.1123 = phi i32 [ %.0122320, %bb.cs ], [ %.0122320, %bb.cr ], [ 1, %bb.bt ] ; 2 uses
  %i.fv = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.cu unwind label %bb.bw

bb.cu:                                            ; preds = %bb.ct
  %i.fw = icmp eq i32 %i.fv, 327680
  br i1 %i.fw, label %bb.cv, label %bb.dt

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %32)
          to label %bb.cw unwind label %bb.bw

bb.cw:                                            ; preds = %bb.cv
  %i.fx = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !95
  %i.fz = load ptr, ptr %32, align 8, !tbaa !96   ; 4 uses
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = sdiv exact i64 %i.gc, 208
  %i.ge = trunc i64 %i.gd to i32                  ; 2 uses
  %i.gf = add nsw i32 %i.ge, -1                   ; 5 uses
  %i.gg = icmp sgt i32 %i.ge, 0
  br i1 %i.gg, label %bb.dc, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %40)
          to label %bb.cy unwind label %bb.da

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull @__func__._ZN2cv12_GLOBAL__N_126SparsePyrLKOpticalFlowImpl4calcERKNS_11_InputArrayES4_S4_RKNS_17_InputOutputArrayERKNS_12_OutputArrayESA_, ptr noundef nonnull @.str.1, i32 noundef 1126) #28
          to label %bb.cz unwind label %bb.db

bb.cz:                                            ; preds = %bb.cy
  unreachable

bb.da:                                            ; preds = %bb.cx
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

bb.db:                                            ; preds = %bb.cy
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gj = load ptr, ptr %39, align 8, !tbaa !64   ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %bb.db
  %i.gm = load i64, ptr %i.gk, align 8, !tbaa !51
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237, %bb.da
  %.pn155 = phi { ptr, i32 } [ %i.gh, %bb.da ], [ %i.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237 ], [ %i.gi, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  br label %bb.gw

bb.dc:                                            ; preds = %bb.cw
  %i.go = and i32 %i.gf, 1
  %.not157 = icmp eq i32 %i.go, 0
  br i1 %.not157, label %select.unfold322, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.gp = load i32, ptr %i.fz, align 8, !tbaa !47
  %i.gq = lshr i32 %i.gp, 4
  %i.gr = and i32 %i.gq, 254
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fz, i64 208
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !47 ; 2 uses
  %i.gu = lshr i32 %i.gt, 5
  %i.gv = and i32 %i.gu, 127
  %i.gw = or disjoint i32 %i.gr, 1
  %i.gx = icmp eq i32 %i.gw, %i.gv
  br i1 %i.gx, label %bb.de, label %.thread324

bb.de:                                            ; preds = %bb.dd
  %i.gy = and i32 %i.gt, 31
  %i.gz = icmp eq i32 %i.gy, 3
  %i.ha = lshr i32 %i.gf, 1
  br i1 %i.gz, label %select.unfold322, label %.thread324

select.unfold322:                                 ; preds = %bb.de, %bb.dc
  %.0120 = phi i32 [ %i.gf, %bb.dc ], [ %i.ha, %bb.de ] ; 2 uses
  %.0118 = phi i32 [ 1, %bb.dc ], [ 2, %bb.de ]   ; 2 uses
  %.not334 = icmp eq i32 %.0120, 0
  br i1 %.not334, label %bb.dr, label %.thread324

.thread324:                                       ; preds = %bb.dd, %bb.de, %select.unfold322
  %.0118330 = phi i32 [ %.0118, %select.unfold322 ], [ 1, %bb.dd ], [ 1, %bb.de ] ; 2 uses
  %.0120328 = phi i32 [ %.0120, %select.unfold322 ], [ %i.gf, %bb.dd ], [ %i.gf, %bb.de ]
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #24
  store i32 0, ptr %41, align 4, !tbaa !65
  %i.hb = getelementptr inbounds nuw i8, ptr %41, i64 4 ; 2 uses
  store i32 0, ptr %i.hb, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #24
  store i32 0, ptr %42, align 4, !tbaa !68
  %i.hc = getelementptr inbounds nuw i8, ptr %42, i64 4 ; 2 uses
  store i32 0, ptr %i.hc, align 4, !tbaa !69
  %i.hd = zext nneg i32 %.0118330 to i64          ; 2 uses
  %i.he = getelementptr inbounds nuw [208 x i8], ptr %i.fz, i64 %i.hd
  invoke void @_ZNK2cv3Mat9locateROIERNS_5Size_IiEERNS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %i.he, ptr noundef nonnull align 4 dereferenceable(8) %41, ptr noundef nonnull align 4 dereferenceable(8) %42)
          to label %bb.df unwind label %bb.dj

bb.df:                                            ; preds = %.thread324
  %i.hf = load i32, ptr %42, align 4, !tbaa !68   ; 2 uses
  %i.hg = load i32, ptr %i.h, align 8, !tbaa !230 ; 2 uses
  %.not158 = icmp slt i32 %i.hf, %i.hg
  br i1 %.not158, label %bb.dk, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.hh = load i32, ptr %i.hc, align 4, !tbaa !69 ; 2 uses
  %i.hi = load i32, ptr %i.k, align 4, !tbaa !231 ; 2 uses
  %.not159 = icmp slt i32 %i.hh, %i.hi
  br i1 %.not159, label %bb.dk, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.hj = load ptr, ptr %32, align 8, !tbaa !96
  %i.hk = getelementptr inbounds nuw [208 x i8], ptr %i.hj, i64 %i.hd ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !49
  %i.hn = add i32 %i.hg, %i.hf
  %i.ho = add i32 %i.hn, %i.hm
  %i.hp = load i32, ptr %41, align 4, !tbaa !65
  %.not160 = icmp sgt i32 %i.ho, %i.hp
  br i1 %.not160, label %bb.dk, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !50
  %i.hs = add i32 %i.hi, %i.hh
  %i.ht = add i32 %i.hs, %i.hr
  %i.hu = load i32, ptr %i.hb, align 4, !tbaa !66
  %.not161 = icmp sgt i32 %i.ht, %i.hu
  br i1 %.not161, label %bb.dk, label %bb.dp

bb.dj:                                            ; preds = %.thread324
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dk:                                            ; preds = %bb.di, %bb.dh, %bb.dg, %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %44)
          to label %bb.dl unwind label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull @__func__._ZN2cv12_GLOBAL__N_126SparsePyrLKOpticalFlowImpl4calcERKNS_11_InputArrayES4_S4_RKNS_17_InputOutputArrayERKNS_12_OutputArrayESA_, ptr noundef nonnull @.str.1, i32 noundef 1142) #28
          to label %bb.dm unwind label %bb.do

bb.dm:                                            ; preds = %bb.dl
  unreachable

bb.dn:                                            ; preds = %bb.dk
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

bb.do:                                            ; preds = %bb.dl
  %i.hx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hy = load ptr, ptr %43, align 8, !tbaa !64   ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.ia = icmp eq ptr %i.hy, %i.hz
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240: ; preds = %bb.do
  %i.ib = load i64, ptr %i.hz, align 8, !tbaa !51
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ic) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242: ; preds = %bb.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240, %bb.dn
  %.pn162 = phi { ptr, i32 } [ %i.hw, %bb.dn ], [ %i.hx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240 ], [ %i.hx, %bb.do ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #24
  br label %bb.dq

bb.dp:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  br label %bb.dr

bb.dq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, %bb.dj
  %.pn162.pn = phi { ptr, i32 } [ %.pn162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ], [ %i.hv, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  br label %bb.gw

bb.dr:                                            ; preds = %bb.dp, %select.unfold322
  %.0118329 = phi i32 [ %.0118330, %bb.dp ], [ %.0118, %select.unfold322 ] ; 2 uses
  %.0120327 = phi i32 [ %.0120328, %bb.dp ], [ 0, %select.unfold322 ] ; 4 uses
  %i.id = load i32, ptr %i.e, align 8, !tbaa !84
  %i.ie = icmp slt i32 %.0120327, %i.id
  br i1 %i.ie, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  store i32 %.0120327, ptr %i.e, align 8, !tbaa !84
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dr, %bb.ds, %bb.cu
  %.1121 = phi i32 [ %.0120327, %bb.ds ], [ %.0120327, %bb.dr ], [ -1, %bb.cu ]
  %.1119 = phi i32 [ %.0118329, %bb.ds ], [ %.0118329, %bb.dr ], [ 1, %bb.cu ]
  %61 = icmp slt i32 %.1125, 0
  br i1 %61, label %bb.du, label %bb.dx

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #24
  %i.if = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.ig = getelementptr inbounds nuw i8, ptr %45, i64 16
  store i64 0, ptr %i.ig, align 8
  store i32 33882112, ptr %45, align 8, !tbaa !70
  store ptr %31, ptr %i.if, align 8, !tbaa !61
  %.sroa.05.0.copyload = load i64, ptr %i.h, align 8
  %i.ih = load i32, ptr %i.e, align 8, !tbaa !84
  %i.ii = invoke noundef i32 @_ZN2cv23buildOpticalFlowPyramidERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEibiib(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %45, i64 %.sroa.05.0.copyload, i32 noundef %i.ih, i1 noundef zeroext false, i32 noundef 4, i32 noundef 0, i1 noundef zeroext true)
          to label %bb.dv unwind label %bb.dw

bb.dv:                                            ; preds = %bb.du
  store i32 %i.ii, ptr %i.e, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #24
  br label %bb.dx

bb.dw:                                            ; preds = %bb.du
  %i.ij = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #24
  br label %bb.gw

bb.dx:                                            ; preds = %bb.dv, %bb.dt
  %62 = icmp slt i32 %.1121, 0
  br i1 %62, label %bb.dy, label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #24
  %i.ik = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.il = getelementptr inbounds nuw i8, ptr %46, i64 16
  store i64 0, ptr %i.il, align 8
  store i32 33882112, ptr %46, align 8, !tbaa !70
  store ptr %32, ptr %i.ik, align 8, !tbaa !61
  %.sroa.04.0.copyload = load i64, ptr %i.h, align 8
  %i.im = load i32, ptr %i.e, align 8, !tbaa !84
  %i.in = invoke noundef i32 @_ZN2cv23buildOpticalFlowPyramidERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEibiib(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %46, i64 %.sroa.04.0.copyload, i32 noundef %i.im, i1 noundef zeroext false, i32 noundef 4, i32 noundef 0, i1 noundef zeroext true)
          to label %bb.dz unwind label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  store i32 %i.in, ptr %i.e, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #24
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dy
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #24
  br label %bb.gw

bb.eb:                                            ; preds = %bb.dz, %bb.dx
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !235 ; 2 uses
  %i.ir = and i32 %i.iq, 1
  %i.is = icmp eq i32 %i.ir, 0
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  br i1 %i.is, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !29
  %.sroa.speculated311 = call i32 @llvm.smax.i32(i32 %i.iu, i32 0)
  %.sroa.speculated308 = call i32 @llvm.umin.i32(i32 %.sroa.speculated311, i32 100)
  br label %bb.ed

bb.ed:                                            ; preds = %bb.eb, %bb.ec
  %.sroa.speculated308.sink = phi i32 [ %.sroa.speculated308, %bb.ec ], [ 30, %bb.eb ]
  store i32 %.sroa.speculated308.sink, ptr %i.it, align 4, !tbaa !236
  %i.iv = and i32 %i.iq, 2
  %i.iw = icmp eq i32 %i.iv, 0
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br i1 %i.iw, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  store double 1.000000e-02, ptr %i.ix, align 8, !tbaa !237
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ed
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !30 ; 2 uses
  %i.iz = fcmp olt double %i.iy, 0.000000e+00
  %.sroa.speculated304 = select i1 %i.iz, double 0.000000e+00, double %i.iy ; 2 uses
  %i.ja = fcmp ogt double %.sroa.speculated304, 1.000000e+01
  %.sroa.speculated = select i1 %i.ja, double 1.000000e+01, double %.sroa.speculated304 ; 3 uses
  store double %.sroa.speculated, ptr %i.ix, align 8, !tbaa !237
  %i.jb = fmul double %.sroa.speculated, %.sroa.speculated
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %i.jc = phi double [ %i.jb, %bb.ef ], [ 1.000000e-04, %bb.ee ]
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.jc, ptr %i.jd, align 8, !tbaa !237
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %47) #24
  %i.je = icmp eq i32 %.1123, 1                   ; 2 uses
  br i1 %i.je, label %bb.eh, label %bb.ej

bb.eh:                                            ; preds = %bb.eg
  %i.jf = load ptr, ptr %31, align 8, !tbaa !96   ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !50
  %i.ji = load i32, ptr %i.k, align 4, !tbaa !231
  %i.jj = shl nsw i32 %i.ji, 1
  %i.jk = add nsw i32 %i.jj, %i.jh
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jf, i64 12
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !49
  %i.jn = load i32, ptr %i.h, align 8, !tbaa !230
  %i.jo = shl nsw i32 %i.jn, 1
  %i.jp = add nsw i32 %i.jo, %i.jm
  %i.jq = load i32, ptr %i.jf, align 8, !tbaa !47
  %i.jr = shl i32 %i.jq, 1
  %i.js = and i32 %i.jr, 8128
  %i.jt = or disjoint i32 %i.js, 35
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %47, i32 noundef %i.jk, i32 noundef %i.jp, i32 noundef %i.jt)
          to label %bb.ej unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.ej:                                            ; preds = %bb.eh, %bb.eg
  %i.jv = load i32, ptr %i.e, align 8, !tbaa !84  ; 2 uses
  %i.jw = icmp sgt i32 %i.jv, -1
  br i1 %i.jw, label %.lr.ph338, label %._crit_edge339

.lr.ph338:                                        ; preds = %bb.ej
  %i.jx = getelementptr inbounds nuw i8, ptr %47, i64 24
  %i.jy = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.jz = getelementptr inbounds nuw i8, ptr %51, i64 12
  %i.ka = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.kb = getelementptr inbounds nuw i8, ptr %52, i64 20
  %i.kc = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.ke = getelementptr inbounds nuw i8, ptr %53, i64 16
  %i.kf = getelementptr inbounds nuw i8, ptr %59, i64 4
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kh = getelementptr inbounds nuw i8, ptr %60, i64 64
  %i.ki = getelementptr inbounds nuw i8, ptr %60, i64 72
  %i.kj = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.kk = getelementptr inbounds nuw i8, ptr %60, i64 24
  %i.kl = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.km = getelementptr inbounds nuw i8, ptr %60, i64 32
  %i.kn = getelementptr inbounds nuw i8, ptr %60, i64 48
  %i.ko = getelementptr inbounds nuw i8, ptr %60, i64 56
  %i.kp = getelementptr inbounds nuw i8, ptr %60, i64 88
  %i.kq = getelementptr inbounds nuw i8, ptr %60, i64 92
  %i.kr = getelementptr inbounds nuw i8, ptr %60, i64 96
  %i.ks = getelementptr inbounds nuw i8, ptr %60, i64 100
  %i.kt = zext nneg i32 %i.jv to i64
  %i.ku = zext nneg i32 %.1123 to i64
  %i.kv = zext nneg i32 %.1119 to i64
  %i.kw = insertelement <2 x ptr> poison, ptr %i.bv, i64 0
  %i.kx = insertelement <2 x ptr> %i.kw, ptr %i.bx, i64 1
  br label %bb.ek

bb.ek:                                            ; preds = %.lr.ph338, %bb.go
  %indvars.iv = phi i64 [ %i.kt, %.lr.ph338 ], [ %indvars.iv.next, %bb.go ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %48) #24
  %i.ky = load ptr, ptr %31, align 8, !tbaa !96   ; 2 uses
  br i1 %i.je, label %bb.el, label %bb.fh

bb.el:                                            ; preds = %bb.ek
  %i.kz = getelementptr inbounds nuw [208 x i8], ptr %i.ky, i64 %indvars.iv ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 72
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !71 ; 6 uses
  %i.lc = icmp slt i32 %i.lb, 3
  br i1 %i.lc, label %bb.ep, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %.noexc255 unwind label %bb.ey

.noexc255:                                        ; preds = %bb.em
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZNK2cv6detail16LKTrackerInvokerclERKNS_5RangeE, ptr noundef nonnull @.str.11, i32 noundef 109) #28
          to label %bb.en unwind label %bb.eo

bb.en:                                            ; preds = %.noexc255
  unreachable

bb.eo:                                            ; preds = %.noexc255
  %i.ld = landingpad { ptr, i32 }
          cleanup
  %i.le = load ptr, ptr %11, align 8, !tbaa !64   ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.lg = icmp eq ptr %i.le, %i.lf
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i246: ; preds = %bb.eo
  %i.lh = load i64, ptr %i.lf, align 8, !tbaa !51
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.li) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i247: ; preds = %bb.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %.body256

bb.ep:                                            ; preds = %bb.el
  %i.lj = icmp sgt i32 %i.lb, 0
  br i1 %i.lj, label %bb.eq, label %.thread.i249

.thread.i249:                                     ; preds = %bb.ep
  %i.lk = icmp eq i32 %i.lb, 0
  %i.ll = zext i1 %i.lk to i32
  br label %bb.es

bb.eq:                                            ; preds = %bb.ep
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kz, i64 84 ; 2 uses
  %i.ln = icmp eq i32 %i.lb, 2
  %i.lo = zext i1 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.lo
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !29 ; 2 uses
  %.not.i254 = icmp eq i32 %i.lb, 1
  br i1 %.not.i254, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.lr = load i32, ptr %i.lm, align 4, !tbaa !29
  br label %bb.et

bb.es:                                            ; preds = %bb.eq, %.thread.i249
  %i.ls = phi i32 [ %i.ll, %.thread.i249 ], [ %i.lq, %bb.eq ]
  %i.lt = icmp sgt i32 %i.lb, -1
  %i.lu = zext i1 %i.lt to i32
end_hunk_0
