Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/distransform?download=true
inline.NumInlined: 181
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2cv17distanceTransformERKNS_11_InputArrayERKNS_12_OutputArrayEiii:bb.a
          to label %_ZNK2cv11_InputArray6getMatEi.exit19.i unwind label %bb.bl

bb.u:                                             ; preds = %.noexc16.i
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %19, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit19.i unwind label %bb.bl

_ZNK2cv11_InputArray6getMatEi.exit19.i:           ; preds = %bb.u, %bb.t
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !28 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !27 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.av = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !54 ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %16, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !54 ; 11 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %19, i64 128
  %i.bb = load i64, ptr %i.ax, align 8, !tbaa !55 ; 2 uses
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !55 ; 7 uses
  %i.bd = trunc i64 %i.bc to i32                  ; 2 uses
  %i.be = load i32, ptr %16, align 8, !tbaa !19
  %i.bf = and i32 %i.be, 4095
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit19.i
  %i.bh = load i32, ptr %19, align 8, !tbaa !19
  %i.bi = and i32 %i.bh, 4095
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK2cv11_InputArray6getMatEi.exit19.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cvL17distanceATS_L1_8uERKNS_3MatERS0_, ptr noundef nonnull @.str.1, i32 noundef 931) #19
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20.i

bb.aa:                                            ; preds = %bb.x
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %9, align 8, !tbaa !23    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i: ; preds = %bb.aa
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !24
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i, %bb.z
  %.pn.i.i = phi { ptr, i32 } [ %i.bk, %bb.z ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i ], [ %i.bl, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.bh

bb.ab:                                            ; preds = %bb.v
  %i.br = load i32, ptr %i.s, align 8, !tbaa !25  ; 6 uses
  %i.bs = icmp slt i32 %i.br, 3
  br i1 %i.bs, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc23.i unwind label %bb.bm

.noexc23.i:                                       ; preds = %bb.ac
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.8, i32 noundef 109) #19
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.noexc23.i
  unreachable

bb.ae:                                            ; preds = %.noexc23.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ae
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !24
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.body24.i

bb.af:                                            ; preds = %bb.ab
  %i.bz = icmp sgt i32 %i.br, 0
  br i1 %i.bz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ca = icmp eq i32 %i.br, 2
  %.sroa.gep44.i = getelementptr inbounds nuw i8, ptr %16, i64 88
  %.sroa.gep44.val.i = load i32, ptr %.sroa.gep44.i, align 8
  %.val.i = load i32, ptr %i.ai, align 4          ; 2 uses
  %i.cb = select i1 %i.ca, i32 %.sroa.gep44.val.i, i32 %.val.i
  br label %_ZNK2cv8MatShapeclEv.exit.i.i

bb.ah:                                            ; preds = %bb.af
  %i.cc = icmp eq i32 %i.br, 0
  %i.cd = zext i1 %i.cc to i32
  %.pre = load i32, ptr %i.ai, align 4
  br label %_ZNK2cv8MatShapeclEv.exit.i.i

_ZNK2cv8MatShapeclEv.exit.i.i:                    ; preds = %bb.ah, %bb.ag
  %i.ce = phi i32 [ %.val.i, %bb.ag ], [ %.pre, %bb.ah ]
  %i.cf = phi i32 [ %i.cb, %bb.ag ], [ %i.cd, %bb.ah ]
  %i.cg = icmp eq i32 %i.br, 2
  %i.ch = icmp sgt i32 %i.br, -1
  %i.ci = zext i1 %i.ch to i32
  %i.cj = select i1 %i.cg, i32 %i.ce, i32 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %19, i64 72
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !25 ; 6 uses
  %i.cm = icmp slt i32 %i.cl, 3
  br i1 %i.cm, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %_ZNK2cv8MatShapeclEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc26.i unwind label %bb.bm

.noexc26.i:                                       ; preds = %bb.ai
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.8, i32 noundef 109) #19
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %.noexc26.i
  unreachable

bb.ak:                                            ; preds = %.noexc26.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i141.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i140.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i140.i.i: ; preds = %bb.ak
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !24
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i141.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i141.i.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i140.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.body24.i

bb.al:                                            ; preds = %_ZNK2cv8MatShapeclEv.exit.i.i
  %i.ct = icmp sgt i32 %i.cl, 0
  br i1 %i.ct, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cu = icmp eq i32 %i.cl, 2
  %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cu, i64 88, i64 84
  %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %19, i64 %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.cv = load i32, ptr %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !26
  br label %_ZNK2cv8MatShapeclEv.exit147.i.i

bb.an:                                            ; preds = %bb.al
  %i.cw = icmp eq i32 %i.cl, 0
  %i.cx = zext i1 %i.cw to i32
  br label %_ZNK2cv8MatShapeclEv.exit147.i.i

_ZNK2cv8MatShapeclEv.exit147.i.i:                 ; preds = %bb.an, %bb.am
  %i.cy = phi i32 [ %i.cv, %bb.am ], [ %i.cx, %bb.an ]
  %i.cz = icmp eq i32 %i.cl, 2
  %i.da = getelementptr inbounds nuw i8, ptr %19, i64 84
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = icmp sgt i32 %i.cl, -1
  %i.dd = zext i1 %i.dc to i32
  %i.de = select i1 %i.cz, i32 %i.db, i32 %i.dd
  %i.df = icmp eq i32 %i.cf, %i.cy
  %i.dg = icmp eq i32 %i.cj, %i.de
  %i.dh = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %i.dh, label %vector.body, label %bb.ao

vector.body:                                      ; preds = %_ZNK2cv8MatShapeclEv.exit147.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %_ZNK2cv8MatShapeclEv.exit147.i.i ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %_ZNK2cv8MatShapeclEv.exit147.i.i ] ; 2 uses
  %21 = trunc <16 x i64> %vec.ind to <16 x i32>
  %22 = add <16 x i32> %21, splat (i32 1)
  %i.di = call <16 x i32> @llvm.umin.v16i32(<16 x i32> %22, <16 x i32> splat (i32 255))
  %i.dj = trunc nuw <16 x i32> %i.di to <16 x i8>
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  store <16 x i8> %i.dj, ptr %i.dk, align 16, !tbaa !24
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.dl = icmp eq i64 %index.next, 256
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !116

bb.ao:                                            ; preds = %_ZNK2cv8MatShapeclEv.exit147.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cvL17distanceATS_L1_8uERKNS_3MatERS0_, ptr noundef nonnull @.str.1, i32 noundef 932) #19
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.ao
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150.i.i

bb.as:                                            ; preds = %bb.ap
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %11, align 8, !tbaa !23   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148.i.i: ; preds = %bb.as
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !24
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150.i.i: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148.i.i, %bb.ar
  %.pn130.i.i = phi { ptr, i32 } [ %i.dm, %bb.ar ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148.i.i ], [ %i.dn, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.bh

middle.block:                                     ; preds = %vector.body
  %i.dt = load i8, ptr %i.aw, align 1, !tbaa !24
  %i.du = icmp ne i8 %i.dt, 0
  %i.dv = sext i1 %i.du to i8
  store i8 %i.dv, ptr %i.az, align 1, !tbaa !24
  %i.dw = icmp sgt i32 %i.as, 1                   ; 2 uses
  br i1 %i.dw, label %.lr.ph.preheader.i.i, label %.preheader.thread.i.i

.lr.ph.preheader.i.i:                             ; preds = %middle.block
  %wide.trip.count.i.i = zext nneg i32 %i.as to i64 ; 2 uses
  %i.dx = add nsw i64 %wide.trip.count.i.i, -1    ; 6 uses
  %i.dy = add nsw i64 %wide.trip.count.i.i, -2    ; 2 uses
  %xtraiter51 = and i64 %i.dx, 1
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter54 = and i64 %i.dx, -2
  br label %.lr.ph.i.i

.preheader.i.i.unr-lcssa:                         ; preds = %bb.bc
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.preheader.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv181.i.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next182.i.i.1, %.preheader.i.i.unr-lcssa ] ; 3 uses
  %lcmp.mod53 = trunc i64 %i.dx to i1
  call void @llvm.assume(i1 %lcmp.mod53)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv181.i.i.epil.init
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !24
  %i.ec = icmp eq i8 %i.eb, 0
  br i1 %i.ec, label %.preheader.i.i.epilog-lcssa, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.epil.preheader
  %i.ed = getelementptr i8, ptr %i.az, i64 %indvars.iv181.i.i.epil.init
  %i.ee = getelementptr i8, ptr %i.ed, i64 -1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !24
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !24
  br label %.preheader.i.i.epilog-lcssa

.preheader.i.i.epilog-lcssa:                      ; preds = %bb.at, %.lr.ph.i.i.epil.preheader
  %i.ej = phi i8 [ %i.ei, %bb.at ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv181.i.i.epil.init
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !24
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.unr-lcssa, %.preheader.i.i.epilog-lcssa
  %i.el = icmp sgt i32 %i.au, 1
  br i1 %i.el, label %.lr.ph162.i.i, label %._crit_edge163.thread.i.i

.preheader.thread.i.i:                            ; preds = %middle.block
  %i.em = icmp sgt i32 %i.au, 1
  br i1 %i.em, label %.lr.ph162.thread.i.i, label %.loopexit.i

.lr.ph162.thread.i.i:                             ; preds = %.preheader.thread.i.i
  %i.en = shl i64 %i.bb, 32
  %i.eo = ashr exact i64 %i.en, 32                ; 3 uses
  %sext134219.i.i = shl i64 %i.bc, 32
  %i.ep = ashr exact i64 %sext134219.i.i, 32      ; 3 uses
  %.neg220.i.i = mul i64 %i.bc, -4294967296
  %i.eq = ashr exact i64 %.neg220.i.i, 32         ; 3 uses
  %i.er = add nsw i32 %i.au, -1                   ; 3 uses
  %xtraiter = and i32 %i.er, 1
  %i.es = icmp eq i32 %i.au, 2
  br i1 %i.es, label %.lr.ph162.split.i.i.epil.preheader, label %.lr.ph162.thread.i.i.new

.lr.ph162.thread.i.i.new:                         ; preds = %.lr.ph162.thread.i.i
  %unroll_iter = and i32 %i.er, -2
  br label %.lr.ph162.split.i.i

.lr.ph162.i.i:                                    ; preds = %.preheader.i.i
  %i.et = shl i64 %i.bb, 32
  %i.eu = ashr exact i64 %i.et, 32
  %sext134.i.i = shl i64 %i.bc, 32
  %i.ev = ashr exact i64 %sext134.i.i, 32
  %.neg.i.i = mul i64 %i.bc, -4294967296
  %i.ew = ashr exact i64 %.neg.i.i, 32
  %xtraiter56 = and i64 %i.dx, 1
  %i.ex = icmp eq i64 %i.dy, 0
  %unroll_iter59 = and i64 %i.dx, -2
  %lcmp.mod57.not = icmp eq i64 %xtraiter56, 0
  %lcmp.mod58 = trunc i64 %i.dx to i1
  br label %.lr.ph162.split.us.i.i

.lr.ph162.split.us.i.i:                           ; preds = %._crit_edge.us.i.i, %.lr.ph162.i.i
  %.0110161.us.i.i = phi ptr [ %i.ez, %._crit_edge.us.i.i ], [ %i.az, %.lr.ph162.i.i ] ; 4 uses
  %.0112160.us.i.i = phi ptr [ %i.ey, %._crit_edge.us.i.i ], [ %i.aw, %.lr.ph162.i.i ]
  %.0113159.us.i.i = phi i32 [ %i.gv, %._crit_edge.us.i.i ], [ 1, %.lr.ph162.i.i ]
  %i.ey = getelementptr inbounds i8, ptr %.0112160.us.i.i, i64 %i.eu ; 5 uses
  %i.ez = getelementptr inbounds i8, ptr %.0110161.us.i.i, i64 %i.ev ; 7 uses
  %i.fa = load i8, ptr %i.ey, align 1, !tbaa !24
  %i.fb = icmp eq i8 %i.fa, 0
  br i1 %i.fb, label %.lr.ph158.us.i.i, label %bb.au

bb.au:                                            ; preds = %.lr.ph162.split.us.i.i
  %i.fc = getelementptr inbounds i8, ptr %i.ez, i64 %i.ew
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !24
  %i.fe = zext i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !24
  %i.fh = zext i8 %i.fg to i32
  br label %.lr.ph158.us.i.i

.lr.ph158.us.i.i:                                 ; preds = %bb.au, %.lr.ph162.split.us.i.i
  %i.fi = phi i32 [ %i.fh, %bb.au ], [ 0, %.lr.ph162.split.us.i.i ] ; 3 uses
  %i.fj = trunc nuw i32 %i.fi to i8
  store i8 %i.fj, ptr %i.ez, align 1, !tbaa !24
  br i1 %i.ex, label %.epil.preheader, label %.lr.ph158.us.i.i.new

.lr.ph158.us.i.i.new:                             ; preds = %.lr.ph158.us.i.i, %bb.ay
  %indvars.iv186.i.i = phi i64 [ %indvars.iv.next187.i.i.1, %bb.ay ], [ 1, %.lr.ph158.us.i.i ] ; 5 uses
  %.0118156.us.i.i = phi i32 [ %i.gh, %bb.ay ], [ %i.fi, %.lr.ph158.us.i.i ]
  %niter60 = phi i64 [ %niter60.next.1, %bb.ay ], [ 0, %.lr.ph158.us.i.i ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ey, i64 %indvars.iv186.i.i
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !24
  %i.fm = icmp eq i8 %i.fl, 0
  br i1 %i.fm, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph158.us.i.i.new
  %i.fn = getelementptr inbounds nuw i8, ptr %.0110161.us.i.i, i64 %indvars.iv186.i.i
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !24
  %i.fp = zext i8 %i.fo to i32
  %..0118.us.i.i = call i32 @llvm.umin.i32(i32 %.0118156.us.i.i, i32 %i.fp)
  %i.fq = zext nneg i32 %..0118.us.i.i to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !24
  %i.ft = zext i8 %i.fs to i32
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph158.us.i.i.new
  %i.fu = phi i32 [ %i.ft, %bb.av ], [ 0, %.lr.ph158.us.i.i.new ] ; 2 uses
  %i.fv = trunc nuw i32 %i.fu to i8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv186.i.i
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !24
  %indvars.iv.next187.i.i = add nuw nsw i64 %indvars.iv186.i.i, 1 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ey, i64 %indvars.iv.next187.i.i
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !24
  %i.fz = icmp eq i8 %i.fy, 0
  br i1 %i.fz, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ga = getelementptr inbounds nuw i8, ptr %.0110161.us.i.i, i64 %indvars.iv.next187.i.i
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !24
  %i.gc = zext i8 %i.gb to i32
  %..0118.us.i.i.1 = call i32 @llvm.umin.i32(i32 %i.fu, i32 %i.gc)
  %i.gd = zext nneg i32 %..0118.us.i.i.1 to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !24
  %i.gg = zext i8 %i.gf to i32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gh = phi i32 [ %i.gg, %bb.ax ], [ 0, %bb.aw ] ; 3 uses
  %i.gi = trunc nuw i32 %i.gh to i8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv.next187.i.i
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !24
  %indvars.iv.next187.i.i.1 = add nuw nsw i64 %indvars.iv186.i.i, 2 ; 2 uses
end_hunk_0
