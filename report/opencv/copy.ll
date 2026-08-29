Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/copy?download=true
inline.NumInlined: 329
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN2cv6repeatERKNS_11_InputArrayEiiRKNS_12_OutputArrayE:bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %9, align 8, !tbaa !8      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.n
  %i.t = load i64, ptr %i.r, align 8, !tbaa !14
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.m
  %.pn48 = phi { ptr, i32 } [ %i.o, %bb.m ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %i.p, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.as

bb.o:                                             ; preds = %bb.i
  %i.v = icmp sgt i32 %1, 0
  %i.w = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv6repeatERKNS_11_InputArrayEiiRKNS_12_OutputArrayE, ptr noundef nonnull @.str.1, i32 noundef 904) #20
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.t:                                             ; preds = %bb.q
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %11, align 8, !tbaa !8     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.t
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !14
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.s
  %.pn50 = phi { ptr, i32 } [ %i.x, %bb.s ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %i.y, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.as

bb.u:                                             ; preds = %bb.o
  %i.ae = invoke i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.v unwind label %bb.ak      ; 3 uses

bb.v:                                             ; preds = %bb.u
  %.sroa.016.0.extract.trunc = trunc i64 %i.ae to i32 ; 2 uses
  %.sroa.9.0.extract.shift = lshr i64 %i.ae, 32   ; 2 uses
  %.sroa.9.0.extract.trunc = trunc nuw i64 %.sroa.9.0.extract.shift to i32 ; 4 uses
  %i.af = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.w unwind label %bb.ak

bb.w:                                             ; preds = %bb.v
  %i.ag = mul nsw i32 %2, %.sroa.016.0.extract.trunc
  %i.ah = mul nsw i32 %1, %.sroa.9.0.extract.trunc
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.ah, i32 noundef %i.ag, i32 noundef %i.af, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.x unwind label %bb.ak

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.ai = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc unwind label %bb.al

.noexc:                                           ; preds = %bb.x
  %i.aj = icmp eq i32 %i.ai, 65536
  br i1 %i.aj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.noexc
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !110, !noalias !183
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %i.ak)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.al

bb.z:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.al

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.al = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc65 unwind label %bb.am

.noexc65:                                         ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.am = icmp eq i32 %i.al, 65536
  br i1 %i.am, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.noexc65
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !110, !noalias !186
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %i.an)
          to label %_ZNK2cv11_InputArray6getMatEi.exit68 unwind label %bb.am

bb.ab:                                            ; preds = %.noexc65
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit68 unwind label %bb.am

_ZNK2cv11_InputArray6getMatEi.exit68:             ; preds = %bb.aa, %bb.ab
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 72
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !153 ; 6 uses
  %i.aq = icmp slt i32 %i.ap, 3
  br i1 %i.aq, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit68
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc69 unwind label %bb.an

.noexc69:                                         ; preds = %bb.ac
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.42, i32 noundef 109) #20
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.noexc69
  unreachable

bb.ae:                                            ; preds = %.noexc69
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ae
  %i.av = load i64, ptr %i.at, align 8, !tbaa !14
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %.body

bb.af:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit68
  %i.ax = icmp sgt i32 %i.ap, 0
  br i1 %i.ax, label %bb.ag, label %.thread.i

.thread.i:                                        ; preds = %bb.af
  %i.ay = icmp eq i32 %i.ap, 0
  %i.az = zext i1 %i.ay to i32
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 84
  %i.bb = icmp eq i32 %i.ap, 2
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %14, i64 88
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 8
  %.val = load i32, ptr %i.ba, align 4            ; 2 uses
  %i.bc = select i1 %i.bb, i32 %.sroa.gep.val, i32 %.val ; 2 uses
  %.not.i = icmp eq i32 %i.ap, 1
  br i1 %.not.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %.thread.i
  %i.bd = phi i32 [ %i.az, %.thread.i ], [ %i.bc, %bb.ag ]
  %i.be = icmp sgt i32 %i.ap, -1
  %i.bf = zext i1 %i.be to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.bg = phi i32 [ %i.bd, %bb.ah ], [ %i.bc, %bb.ag ]
  %i.bh = phi i32 [ %i.bf, %bb.ah ], [ %.val, %bb.ag ] ; 2 uses
  %i.bi = load i32, ptr %13, align 8, !tbaa !63   ; 2 uses
  %i.bj = lshr i32 %i.bi, 5
  %i.bk = and i32 %i.bj, 127
  %i.bl = add nuw nsw i32 %i.bk, 1
  %i.bm = shl i32 %i.bi, 2
  %i.bn = and i32 %i.bm, 124
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = lshr i64 1275511473185297, %i.bo
  %i.bq = trunc i64 %i.bp to i32
  %i.br = and i32 %i.bq, 15
  %i.bs = mul nuw nsw i32 %i.br, %i.bl            ; 2 uses
  %i.bt = mul nsw i32 %i.bs, %i.bg                ; 3 uses
  %i.bu = icmp sgt i32 %.sroa.9.0.extract.trunc, 0
  br i1 %i.bu, label %.preheader72.lr.ph, label %.preheader

.preheader72.lr.ph:                               ; preds = %bb.ai
  %i.bv = mul i32 %i.bs, %.sroa.016.0.extract.trunc
  %i.bw = icmp sgt i32 %i.bt, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 128
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 128
  %i.cb = sext i32 %i.bv to i64                   ; 2 uses
  br i1 %i.bw, label %.preheader72.us.preheader, label %.preheader

.preheader72.us.preheader:                        ; preds = %.preheader72.lr.ph
  %i.cc = zext nneg i32 %i.bt to i64
  br label %.preheader72.us

.preheader72.us:                                  ; preds = %.preheader72.us.preheader, %._crit_edge.us
  %indvars.iv79 = phi i64 [ 0, %.preheader72.us.preheader ], [ %indvars.iv.next80, %._crit_edge.us ] ; 3 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader72.us, %bb.aj
  %indvars.iv.a = phi i64 [ 0, %.preheader72.us ], [ %indvars.iv.next.a, %bb.aj ] ; 2 uses
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !70
  %i.ce = load i64, ptr %i.by, align 8, !tbaa !51
  %i.cf = mul i64 %i.ce, %indvars.iv79
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cf
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %indvars.iv.a
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !70
  %i.cj = load i64, ptr %i.ca, align 8, !tbaa !51
  %i.ck = mul i64 %i.cj, %indvars.iv79
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ck
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ch, ptr align 1 %i.cl, i64 %i.cb, i1 false)
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, %i.cb ; 2 uses
  %15 = icmp slt i64 %indvars.iv.next.a, %i.cc
  br i1 %15, label %bb.aj, label %._crit_edge.us, !llvm.loop !189

._crit_edge.us:                                   ; preds = %bb.aj
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next80, %.sroa.9.0.extract.shift
  br i1 %exitcond.not, label %.preheader, label %.preheader72.us, !llvm.loop !190

.preheader:                                       ; preds = %._crit_edge.us, %.preheader72.lr.ph, %bb.ai
  %.0.lcssa = phi i32 [ 0, %bb.ai ], [ %.sroa.9.0.extract.trunc, %.preheader72.lr.ph ], [ %.sroa.9.0.extract.trunc, %._crit_edge.us ] ; 2 uses
  %i.cm = icmp slt i32 %.0.lcssa, %i.bh
  br i1 %i.cm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.cn = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 128 ; 3 uses
  %i.cp = sext i32 %i.bt to i64                   ; 3 uses
  %i.cq = zext nneg i32 %.0.lcssa to i64          ; 6 uses
  %i.cr = ashr i64 %i.ae, 32                      ; 3 uses
  %wide.trip.count85 = zext nneg i32 %i.bh to i64 ; 3 uses
  %i.cs = sub nsw i64 %wide.trip.count85, %i.cq
  %xtraiter = and i64 %i.cs, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !70 ; 2 uses
  %i.cu = load i64, ptr %i.co, align 8, !tbaa !51 ; 2 uses
  %i.cv = mul i64 %i.cu, %i.cq
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cv
  %i.cx = sub nsw i64 %i.cq, %i.cr
  %i.cy = mul i64 %i.cu, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr align 1 %i.cz, i64 %i.cp, i1 false)
  %indvars.iv.next83.prol = add nuw nsw i64 %i.cq, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv82.unr = phi i64 [ %i.cq, %.lr.ph ], [ %indvars.iv.next83.prol, %.prol.loopexit.unr-lcssa ]
  %i.da = add nsw i64 %wide.trip.count85, -1
  %i.db = icmp eq i64 %i.da, %i.cq
  br i1 %i.db, label %._crit_edge, label %.lr.ph.new

bb.ak:                                            ; preds = %bb.w, %bb.v, %bb.u
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.al:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.am:                                            ; preds = %bb.ab, %bb.aa, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.an:                                            ; preds = %bb.ac
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.an
  %eh.lpad-body = phi { ptr, i32 } [ %i.df, %bb.an ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #19
  br label %bb.aq

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv82 = phi i64 [ %indvars.iv.next83.1, %.lr.ph.new ], [ %indvars.iv82.unr, %.prol.loopexit ] ; 4 uses
  %i.dg = load ptr, ptr %i.cn, align 8, !tbaa !70 ; 2 uses
  %i.dh = load i64, ptr %i.co, align 8, !tbaa !51 ; 2 uses
  %i.di = mul i64 %i.dh, %indvars.iv82
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.di
  %i.dk = sub nsw i64 %indvars.iv82, %i.cr
  %i.dl = mul i64 %i.dh, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dj, ptr align 1 %i.dm, i64 %i.cp, i1 false)
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.dn = load ptr, ptr %i.cn, align 8, !tbaa !70 ; 2 uses
  %i.do = load i64, ptr %i.co, align 8, !tbaa !51 ; 2 uses
  %i.dp = mul i64 %i.do, %indvars.iv.next83
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dp
  %i.dr = sub nsw i64 %indvars.iv.next83, %i.cr
  %i.ds = mul i64 %i.do, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ds
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dq, ptr align 1 %i.dt, i64 %i.cp, i1 false)
  %indvars.iv.next83.1 = add nuw nsw i64 %indvars.iv82, 2 ; 2 uses
  %exitcond86.not.1 = icmp eq i64 %indvars.iv.next83.1, %wide.trip.count85
  br i1 %exitcond86.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !191

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %.preheader
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !58
  %.not.i70 = icmp eq i32 %i.dv, 0
  br i1 %.not.i70, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #22
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void

bb.aq:                                            ; preds = %.body, %bb.am
  %.pn52 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.de, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #19
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.al
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %bb.aq ], [ %i.dd, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.as

bb.as:                                            ; preds = %bb.ak, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %.pn52.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %i.e, %bb.b ], [ %.pn52.pn, %bb.ar ], [ %i.dc, %bb.ak ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %.pn52.pn.pn.pn
}

declare i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6repeatERKNS_3MatEii(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %i.a = icmp eq i32 %3, 1
  %i.b = icmp eq i32 %2, 1
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !192
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.d, align 4, !tbaa !193
  store i32 16842752, ptr %4, align 8, !tbaa !194
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.g, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !194
  store ptr %0, ptr %i.f, align 8, !tbaa !110
  invoke void @_ZN2cv6repeatERKNS_11_InputArrayEiiRKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #19
  resume { ptr, i32 } %i.h

bb.f:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = icmp ult i32 %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %bb.s [
    i32 1, label %bb.c
    i32 4, label %bb.d
    i32 2, label %bb.d
    i32 3, label %bb.i
end_hunk_0
