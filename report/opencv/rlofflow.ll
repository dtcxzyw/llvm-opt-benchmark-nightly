Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/rlofflow?download=true
inline.NumInlined: 922
inline.NumDeleted: 373
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2cv7optflow24DenseOpticalFlowRLOFImpl4calcERKNS_11_InputArrayES4_RKNS_17_InputOutputArrayE:bb.a

bb.at:                                            ; preds = %bb.as
  %i.cu = tail call noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
  %i.cv = icmp eq i32 %i.cu, 3
  br i1 %i.cv, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv7optflow24DenseOpticalFlowRLOFImpl4calcERKNS_11_InputArrayES4_RKNS_17_InputOutputArrayE, ptr noundef nonnull @.str.1, i32 noundef 144) #25
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.au
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

bb.ay:                                            ; preds = %bb.av
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load ptr, ptr %12, align 8, !tbaa !98   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223: ; preds = %bb.ay
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !55
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223, %bb.ax
  %.pn129 = phi { ptr, i32 } [ %i.cw, %bb.ax ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223 ], [ %i.cx, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %common.resume

bb.az:                                            ; preds = %_ZNSt12__shared_ptrIN2cv7optflow24RLOFOpticalFlowParameterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.at
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !99
  %switch = icmp ult i32 %i.de, 3
  br i1 %switch, label %bb.bf, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.bb unwind label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv7optflow24DenseOpticalFlowRLOFImpl4calcERKNS_11_InputArrayES4_RKNS_17_InputOutputArrayE, ptr noundef nonnull @.str.1, i32 noundef 145) #25
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %bb.bb
  unreachable

bb.bd:                                            ; preds = %bb.ba
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

bb.be:                                            ; preds = %bb.bb
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = load ptr, ptr %14, align 8, !tbaa !98   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %bb.be
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !55
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226, %bb.bd
  %.pn131 = phi { ptr, i32 } [ %i.df, %bb.bd ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226 ], [ %i.dg, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %common.resume

bb.bf:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.dm = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !177
  %i.dn = icmp eq i32 %i.dm, 65536
  br i1 %i.dn, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !101, !noalias !177
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %i.dp)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.bh:                                            ; preds = %bb.bf
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.dq = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.bm, !noalias !178

.noexc:                                           ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.dr = icmp eq i32 %i.dq, 65536
  br i1 %i.dr, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.noexc
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !101, !noalias !178
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %i.dt)
          to label %_ZNK2cv11_InputArray6getMatEi.exit231 unwind label %bb.bm

bb.bj:                                            ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit231 unwind label %bb.bm

_ZNK2cv11_InputArray6getMatEi.exit231:            ; preds = %bb.bi, %bb.bj
  %i.du = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !102
  %i.dw = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !179 ; 2 uses
  %i.dy = mul nsw i32 %i.dx, %i.dv                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %i.ea = icmp slt i32 %i.dy, 0
  br i1 %i.ea, label %bb.bk, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.bk:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit231
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #25
          to label %.noexc233 unwind label %bb.bn

.noexc233:                                        ; preds = %bb.bk
  unreachable

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %_ZNK2cv11_InputArray6getMatEi.exit231
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %.not.i.i.i.i232 = icmp eq i32 %i.dy, 0
  br i1 %.not.i.i.i.i232, label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  store i64 0, ptr %18, align 8
  br label %bb.bl

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.eb = shl nuw nsw i64 %i.dz, 3                ; 3 uses
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #22
          to label %.noexc234 unwind label %bb.bn ; 5 uses

.noexc234:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.ec, ptr %18, align 8, !tbaa !105
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.dz
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ec, i8 0, i64 %i.eb, i1 false), !tbaa !21
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ec, i64 %i.eb
  %.pre = load i32, ptr %i.dw, align 8, !tbaa !179
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i, %.noexc234
  %i.ee = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.ec, %.noexc234 ] ; 6 uses
  %i.ef = phi i32 [ %i.dx, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %.pre, %.noexc234 ]
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.ed, %.noexc234 ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %scevgep.i.i.i.i.i, %.noexc234 ] ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.eh, align 8, !tbaa !106
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.eg, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.val = load i64, ptr %i.ei, align 8            ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.val to i32 ; 6 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %.val, 32
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32 ; 2 uses
  %i.ej = sdiv i32 %.sroa.0.0.extract.trunc.i, 2  ; 6 uses
  %i.ek = sdiv i32 %.sroa.4.0.extract.trunc.i, 2  ; 3 uses
  %i.el = sub nsw i32 %i.ef, %i.ek                ; 2 uses
  %i.em = icmp slt i32 %i.ek, %i.el
  br i1 %i.em, label %.preheader403.lr.ph, label %._crit_edge408

.preheader403.lr.ph:                              ; preds = %bb.bl
  %i.en = load i32, ptr %i.du, align 4, !tbaa !102
  %i.eo = sub nsw i32 %i.en, %i.ej                ; 4 uses
  %i.ep = icmp slt i32 %i.ej, %i.eo
  br i1 %i.ep, label %.preheader403.us.preheader, label %._crit_edge408

.preheader403.us.preheader:                       ; preds = %.preheader403.lr.ph
  %i.eq = add i32 %i.ej, %.sroa.0.0.extract.trunc.i ; 3 uses
  %i.er = call i32 @llvm.smax.i32(i32 %i.eo, i32 %i.eq)
  %i.es = icmp slt i32 %i.eq, %i.eo
  %i.et = zext i1 %i.es to i32                    ; 2 uses
  %i.eu = add i32 %i.eq, %i.et
  %i.ev = sub i32 %i.er, %i.eu
  %69 = call i32 @llvm.umax.i32(i32 %.sroa.0.0.extract.trunc.i, i32 1)
  %i.ew = udiv i32 %i.ev, %69
  %i.ex = add i32 %i.ew, %i.et                    ; 2 uses
  %i.ey = zext i32 %i.ex to i64
  %i.ez = add nuw nsw i64 %i.ey, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ex, 3
  %n.vec = and i64 %i.ez, 8589934588              ; 4 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.0.0.extract.trunc.i, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fa = trunc i64 %n.vec to i32
  %i.fb = mul i32 %i.fa, %.sroa.0.0.extract.trunc.i
  %i.fc = add i32 %i.ej, %i.fb
  %i.fd = shl <2 x i32> %broadcast.splat, splat (i32 1) ; 3 uses
  %broadcast.splatinsert516 = insertelement <2 x i32> poison, i32 %i.ej, i64 0
  %broadcast.splat517 = shufflevector <2 x i32> %broadcast.splatinsert516, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.fe = mul nuw nsw <2 x i32> %broadcast.splat, <i32 0, i32 1>
  %induction = add nsw <2 x i32> %broadcast.splat517, %i.fe
  %invariant.op = add <2 x i32> %i.fd, %i.fd
  %cmp.n = icmp eq i64 %i.ez, %n.vec
  br label %.preheader403.us

.preheader403.us:                                 ; preds = %.preheader403.us.preheader, %._crit_edge.us
  %.0117407.us = phi i64 [ %indvars.iv.next.lcssa, %._crit_edge.us ], [ 0, %.preheader403.us.preheader ] ; 3 uses
  %.0123406.us = phi i32 [ %i.fs, %._crit_edge.us ], [ %i.ek, %.preheader403.us.preheader ] ; 2 uses
  %i.ff = sitofp i32 %.0123406.us to float        ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader403.us
  %i.fg = add i64 %.0117407.us, %n.vec            ; 2 uses
  %broadcast.splatinsert514 = insertelement <2 x float> poison, float %i.ff, i64 0 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %step.add = add nsw <2 x i32> %vec.ind, %i.fd
  %i.fh = add i64 %.0117407.us, %index            ; 2 uses
  %i.fi = sitofp <2 x i32> %vec.ind to <2 x float>
  %i.fj = sitofp <2 x i32> %step.add to <2 x float>
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.fh
  %i.fl = getelementptr [8 x i8], ptr %i.ee, i64 %i.fh
  %i.fm = getelementptr i8, ptr %i.fl, i64 16
  %interleaved.vec = shufflevector <2 x float> %i.fi, <2 x float> %broadcast.splatinsert514, <4 x i32> <i32 0, i32 2, i32 1, i32 2>
  store <4 x float> %interleaved.vec, ptr %i.fk, align 4, !tbaa !21
  %interleaved.vec518 = shufflevector <2 x float> %i.fj, <2 x float> %broadcast.splatinsert514, <4 x i32> <i32 0, i32 2, i32 1, i32 2>
  store <4 x float> %interleaved.vec518, ptr %i.fm, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next.reass = add <2 x i32> %vec.ind, %invariant.op
  %i.fn = icmp eq i64 %index.next, %n.vec
  br i1 %i.fn, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader403.us, %middle.block
  %indvars.iv.ph = phi i64 [ %.0117407.us, %.preheader403.us ], [ %i.fg, %middle.block ]
  %.0122404.us.ph = phi i32 [ %i.ej, %.preheader403.us ], [ %i.fc, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.0122404.us = phi i32 [ %i.fq, %scalar.ph ], [ %.0122404.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fo = sitofp i32 %.0122404.us to float
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv ; 2 uses
  store float %i.fo, ptr %i.fp, align 4, !tbaa !21
  %.sroa_idx395.us = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store float %i.ff, ptr %.sroa_idx395.us, align 4, !tbaa !21
  %i.fq = add nsw i32 %.0122404.us, %.sroa.0.0.extract.trunc.i ; 2 uses
  %i.fr = icmp slt i32 %i.fq, %i.eo
  br i1 %i.fr, label %scalar.ph, label %._crit_edge.us, !llvm.loop !158

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.fg, %middle.block ], [ %indvars.iv.next, %scalar.ph ] ; 2 uses
  %i.fs = add nsw i32 %.0123406.us, %.sroa.4.0.extract.trunc.i ; 2 uses
  %i.ft = icmp slt i32 %i.fs, %i.el
  br i1 %i.ft, label %.preheader403.us, label %._crit_edge408, !llvm.loop !159

._crit_edge408:                                   ; preds = %._crit_edge.us, %.preheader403.lr.ph, %bb.bl
  %.0117.lcssa = phi i64 [ 0, %bb.bl ], [ 0, %.preheader403.lr.ph ], [ %indvars.iv.next.lcssa, %._crit_edge.us ]
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %.0117.lcssa ; 3 uses
  %.not.i.i235 = icmp eq ptr %i.fu, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i235, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit, label %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %._crit_edge408
  store ptr %i.fu, ptr %i.eg, align 8, !tbaa !107
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit

bb.bm:                                            ; preds = %bb.bj, %bb.bi, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ic

bb.bn:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.bk
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit338

bb.bo:                                            ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i, %bb.bq, %bb.bu, %bb.ca, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit: ; preds = %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i.i, %._crit_edge408
  %i.fy = phi ptr [ %i.fu, %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i.i ], [ %.0.lcssa.i.i.i.i.i, %._crit_edge408 ] ; 2 uses
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.ee to i64
  %i.gb = sub i64 %i.fz, %i.ga                    ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.not509 = icmp eq ptr %i.fy, %i.ee
  br i1 %.not509, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ge = icmp ugt i64 %i.gb, 9223372036854775800
  br i1 %i.ge, label %bb.bq, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
          to label %.noexc341 unwind label %bb.bo

.noexc341:                                        ; preds = %bb.bq
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bp
  %i.gf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gb) #22
          to label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i unwind label %bb.bo ; 3 uses

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i: ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gf, i8 0, i64 %i.gb, i1 false), !tbaa !21
  store ptr %i.gf, ptr %19, align 8, !tbaa !105
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gb ; 2 uses
  store ptr %i.gg, ptr %i.gc, align 8, !tbaa !107
  store ptr %i.gg, ptr %i.gd, align 8, !tbaa !106
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %16)
          to label %bb.br unwind label %bb.bo

bb.br:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.bs unwind label %bb.ce

bb.bs:                                            ; preds = %bb.br
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.gj = load ptr, ptr %i.al, align 8, !tbaa !32
  invoke void @_ZN2cv7optflow20calcLocalOpticalFlowENS_3MatES1_PNS_3PtrINS0_12CImageBufferEEES5_RKSt6vectorINS_6Point_IfEESaIS8_EERSA_RKNS0_24RLOFOpticalFlowParameterE(ptr noundef nonnull align 8 %21, ptr noundef nonnull align 8 %22, ptr noundef nonnull %i.gh, ptr noundef nonnull %i.gi, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 4 dereferenceable(48) %i.gj)
          to label %bb.bt unwind label %bb.cf

bb.bt:                                            ; preds = %bb.bs
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #23
  %i.gk = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !111 ; 6 uses
  %i.gm = icmp slt i32 %i.gl, 3
  br i1 %i.gm, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc241 unwind label %bb.bo

.noexc241:                                        ; preds = %bb.bu
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.10, i32 noundef 109) #25
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %.noexc241
  unreachable

bb.bw:                                            ; preds = %.noexc241
  %i.gn = landingpad { ptr, i32 }
          cleanup
  %i.go = load ptr, ptr %4, align 8, !tbaa !98    ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bw
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !55
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.bx:                                            ; preds = %bb.bt
  %i.gt = icmp sgt i32 %i.gl, 0
  br i1 %i.gt, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.gu = icmp eq i32 %i.gl, 2
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.gu, i64 88, i64 84
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %16, i64 %.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.gv = load i32, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !22
  br label %bb.ca

end_hunk_0
begin_hunk_1_@_ZN2cv7optflow25SparseRLOFOpticalFlowImpl27setRLOFOpticalFlowParameterENS_3PtrINS0_24RLOFOpticalFlowParameterEEE:bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv7optflow25SparseRLOFOpticalFlowImpl27getRLOFOpticalFlowParameterEv(ptr dead_on_unwind noalias writable sret(%"struct.cv::Ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !54
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !54
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN2cv3PtrINS_7optflow24RLOFOpticalFlowParameterEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !22
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !22
  br label %_ZN2cv3PtrINS_7optflow24RLOFOpticalFlowParameterEEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN2cv3PtrINS_7optflow24RLOFOpticalFlowParameterEEC2ERKS3_.exit

_ZN2cv3PtrINS_7optflow24RLOFOpticalFlowParameterEEC2ERKS3_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7optflow25SparseRLOFOpticalFlowImpl18setForwardBackwardEf(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %1, ptr %i.a, align 8, !tbaa !132
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK2cv7optflow25SparseRLOFOpticalFlowImpl18getForwardBackwardEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load float, ptr %i.a, align 8, !tbaa !132
  ret float %i.b
}

; Function Attrs: nounwind
declare void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZN2cv6detail24check_failed_MatChannelsEiiRKNS0_12CheckContextE(i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #11

declare noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #12

declare void @_ZNK2cv12_OutputArray7releaseEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #12

declare void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #12

declare noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #12

declare void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #12

declare void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2cv7optflow24RLOFOpticalFlowParameterELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !36
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !1
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !1
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv7optflow24RLOFOpticalFlowParameterESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv7optflow24RLOFOpticalFlowParameterESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv7optflow24RLOFOpticalFlowParameterESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv7optflow24RLOFOpticalFlowParameterESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv7optflow24RLOFOpticalFlowParameterESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !55
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #23
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { nounwind }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn }
attributes #26 = { noreturn nounwind }

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv7optflow24RLOFOpticalFlowParameterELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1 = distinct !{null, null}
!2 = distinct !{null, null, null, null, null}
!3 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv7optflow12CImageBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4 = distinct !{null, null, null, null, null}
!5 = distinct !{!5, !108}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"_ZTSN2cv7optflow10SolverTypeE", !10, i64 0}
!15 = !{!"_ZTSN2cv7optflow17SupportRegionTypeE", !10, i64 0}
!16 = !{!"float", !10, i64 0}
!17 = !{!"bool", !10, i64 0}
!18 = !{!"_ZTSN2cv7optflow24RLOFOpticalFlowParameterE", !14, i64 0, !15, i64 4, !16, i64 8, !16, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !17, i64 32, !17, i64 33, !17, i64 34, !11, i64 36, !16, i64 40, !16, i64 44}
!19 = !{!18, !14, i64 0}
!20 = !{!18, !15, i64 4}
!21 = !{!16, !16, i64 0}
!22 = !{!11, !11, i64 0}
!23 = !{!18, !17, i64 32}
!24 = !{!18, !17, i64 33}
!25 = !{!18, !17, i64 34}
!26 = !{!18, !11, i64 36}
!27 = !{!"any pointer", !10, i64 0}
!28 = !{!"p1 _ZTSN2cv7optflow24RLOFOpticalFlowParameterE", !27, i64 0}
!29 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !27, i64 0}
!30 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !29, i64 0}
!31 = !{!"_ZTSSt12__shared_ptrIN2cv7optflow24RLOFOpticalFlowParameterELN9__gnu_cxx12_Lock_policyE2EE", !28, i64 0, !30, i64 8}
!32 = !{!31, !28, i64 0}
!33 = !{!30, !29, i64 0}
!34 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 8, !11, i64 12}
!35 = !{!34, !11, i64 8}
!36 = !{!34, !11, i64 12}
!37 = !{!"vtable pointer", !9, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"_ZTSSt15_Sp_counted_ptrIPN2cv7optflow24RLOFOpticalFlowParameterELN9__gnu_cxx12_Lock_policyE2EE", !34, i64 0, !28, i64 16}
!40 = !{!39, !28, i64 16}
!41 = !{!18, !16, i64 8}
!42 = !{!18, !16, i64 12}
!43 = !{!18, !11, i64 16}
!44 = !{!18, !11, i64 20}
!45 = !{!18, !11, i64 24}
!46 = !{!18, !11, i64 28}
!47 = !{i8 0, i8 2}
!48 = !{}
!49 = !{!18, !16, i64 40}
!50 = !{!18, !16, i64 44}
!51 = !{!"p1 _ZTSN2cv7optflow20DenseRLOFOpticalFlowE", !27, i64 0}
!52 = !{!"_ZTSSt12__shared_ptrIN2cv7optflow20DenseRLOFOpticalFlowELN9__gnu_cxx12_Lock_policyE2EE", !51, i64 0, !30, i64 8}
!53 = !{!52, !51, i64 0}
!54 = !{!27, !27, i64 0}
!55 = !{!10, !10, i64 0}
!56 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!57 = !{!"p1 _ZTSN2cv7optflow21SparseRLOFOpticalFlowE", !27, i64 0}
!58 = !{!"_ZTSSt12__shared_ptrIN2cv7optflow21SparseRLOFOpticalFlowELN9__gnu_cxx12_Lock_policyE2EE", !57, i64 0, !30, i64 8}
!59 = !{!58, !57, i64 0}
!60 = !{!"p1 omnipotent char", !27, i64 0}
!61 = !{!"_ZTSSt9type_info", !60, i64 8}
!62 = !{!61, !60, i64 8}
!63 = !{!"_ZTSN2cv9AlgorithmE"}
!64 = !{!"_ZTSN2cv16DenseOpticalFlowE", !63, i64 0}
!65 = !{!"_ZTSN2cv7optflow20DenseRLOFOpticalFlowE", !64, i64 0}
!66 = !{!"_ZTSSt10shared_ptrIN2cv7optflow24RLOFOpticalFlowParameterEE", !31, i64 0}
!67 = !{!"_ZTSN2cv3PtrINS_7optflow24RLOFOpticalFlowParameterEEE", !66, i64 0}
!68 = !{!"_ZTSN2cv5Size_IiEE", !11, i64 0, !11, i64 4}
!69 = !{!"_ZTSN2cv7optflow17InterpolationTypeE", !10, i64 0}
!70 = !{!"_ZTSN2cv8ximgproc8SLICTypeE", !10, i64 0}
!71 = !{!"_ZTSN2cv7optflow24DenseOpticalFlowRLOFImplE", !65, i64 0, !67, i64 8, !16, i64 24, !10, i64 32, !10, i64 64, !68, i64 96, !69, i64 104, !11, i64 108, !16, i64 112, !16, i64 116, !16, i64 120, !16, i64 124, !17, i64 128, !17, i64 129, !11, i64 132, !70, i64 136}
!72 = !{!71, !16, i64 24}
!73 = !{!71, !17, i64 128}
!74 = !{!71, !17, i64 129}
!75 = !{!71, !11, i64 132}
!76 = !{!71, !70, i64 136}
!77 = !{!"p1 _ZTSN2cv3MatE", !27, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !77, i64 0, !77, i64 8, !77, i64 16}
!79 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE12_Vector_implE", !78, i64 0}
!80 = !{!"_ZTSSt12_Vector_baseIN2cv3MatESaIS1_EE", !79, i64 0}
!81 = !{!"_ZTSSt6vectorIN2cv3MatESaIS1_EE", !80, i64 0}
!82 = !{!"p1 _ZTSN2cv12MatAllocatorE", !27, i64 0}
!83 = !{!"p1 _ZTSN2cv8UMatDataE", !27, i64 0}
!84 = !{!"_ZTSN2cv10DataLayoutE", !10, i64 0}
!85 = !{!"_ZTSN2cv8MatShapeE", !11, i64 0, !84, i64 4, !11, i64 8, !10, i64 12}
!86 = !{!"_ZTSN2cv7MatStepE", !10, i64 0}
!87 = !{!"_ZTSN2cv3MatE", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !60, i64 24, !60, i64 32, !60, i64 40, !60, i64 48, !82, i64 56, !83, i64 64, !85, i64 72, !86, i64 128}
!88 = !{!"_ZTSN2cv7optflow12CImageBufferE", !81, i64 0, !87, i64 24, !87, i64 232, !81, i64 440, !11, i64 464, !17, i64 468}
!89 = !{!88, !17, i64 468}
!90 = !{!"p1 _ZTSN2cv7optflow12CImageBufferE", !27, i64 0}
!91 = !{!"_ZTSSt15_Sp_counted_ptrIPN2cv7optflow12CImageBufferELN9__gnu_cxx12_Lock_policyE2EE", !34, i64 0, !90, i64 16}
!92 = !{!91, !90, i64 16}
!93 = !{!"_ZTSSt12__shared_ptrIN2cv7optflow12CImageBufferELN9__gnu_cxx12_Lock_policyE2EE", !90, i64 0, !30, i64 8}
!94 = !{!93, !90, i64 0}
!95 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !60, i64 0}
!96 = !{!"long", !10, i64 0}
!97 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !95, i64 0, !96, i64 8, !10, i64 16}
!98 = !{!97, !60, i64 0}
!99 = !{!71, !69, i64 104}
!100 = !{!"_ZTSN2cv11_InputArrayE", !11, i64 0, !27, i64 8, !68, i64 16}
!101 = !{!100, !27, i64 8}
!102 = !{!87, !11, i64 12}
!103 = !{!"p1 _ZTSN2cv6Point_IfEE", !27, i64 0}
!104 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE17_Vector_impl_dataE", !103, i64 0, !103, i64 8, !103, i64 16}
!105 = !{!104, !103, i64 0}
!106 = !{!104, !103, i64 16}
!107 = !{!104, !103, i64 8}
!108 = !{!"llvm.loop.mustprogress"}
!109 = !{!"llvm.loop.isvectorized", i32 1}
!110 = !{!"llvm.loop.unroll.runtime.disable"}
!111 = !{!85, !11, i64 0}
!112 = !{!87, !11, i64 4}
!113 = !{!87, !60, i64 24}
!114 = !{!"_ZTSN2cv6Point_IfEE", !16, i64 0, !16, i64 4}
!115 = !{!114, !16, i64 0}
!116 = !{!114, !16, i64 4}
!117 = !{!"double", !10, i64 0}
!118 = !{!117, !117, i64 0}
!119 = !{!100, !11, i64 0}
!120 = !{!71, !11, i64 108}
!121 = !{!71, !16, i64 112}
!122 = !{!71, !16, i64 116}
!123 = !{!71, !16, i64 120}
!124 = !{!71, !16, i64 124}
!125 = !{!78, !77, i64 0}
!126 = !{!78, !77, i64 16}
!127 = !{!78, !77, i64 8}
!128 = !{!96, !96, i64 0}
!129 = !{!"_ZTSN2cv17SparseOpticalFlowE", !63, i64 0}
!130 = !{!"_ZTSN2cv7optflow21SparseRLOFOpticalFlowE", !129, i64 0}
!131 = !{!"_ZTSN2cv7optflow25SparseRLOFOpticalFlowImplE", !130, i64 0, !67, i64 8, !16, i64 24, !10, i64 32, !10, i64 64}
!132 = !{!131, !16, i64 24}
!133 = distinct !{!133, i1 true, !"_ZN2cvL7makePtrINS_7optflow24DenseOpticalFlowRLOFImplEJEEENS_3PtrIT_EEDpRKT0_"}
!134 = distinct !{!134, !133, !"_ZN2cvL7makePtrINS_7optflow24DenseOpticalFlowRLOFImplEJEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!135 = distinct !{!135, i1 true, !"_ZSt11make_sharedIN2cv7optflow24DenseOpticalFlowRLOFImplEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!136 = distinct !{!136, !135, !"_ZSt11make_sharedIN2cv7optflow24DenseOpticalFlowRLOFImplEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!137 = distinct !{!137, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN2cv7optflow24DenseOpticalFlowRLOFImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_"}
!138 = distinct !{!138, !137, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN2cv7optflow24DenseOpticalFlowRLOFImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_: argument 0"}
!139 = !{!138, !136, !134}
!140 = !{!136, !134}
!141 = distinct !{!141, i1 true, !"_ZN2cvL7makePtrINS_7optflow25SparseRLOFOpticalFlowImplEJEEENS_3PtrIT_EEDpRKT0_"}
!142 = distinct !{!142, !141, !"_ZN2cvL7makePtrINS_7optflow25SparseRLOFOpticalFlowImplEJEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!143 = distinct !{!143, i1 true, !"_ZSt11make_sharedIN2cv7optflow25SparseRLOFOpticalFlowImplEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!144 = distinct !{!144, !143, !"_ZSt11make_sharedIN2cv7optflow25SparseRLOFOpticalFlowImplEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!145 = distinct !{!145, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN2cv7optflow25SparseRLOFOpticalFlowImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_"}
!146 = distinct !{!146, !145, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN2cv7optflow25SparseRLOFOpticalFlowImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_: argument 0"}
!147 = !{!146, !144, !142}
!148 = !{!144, !142}
!149 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv7optflow20DenseRLOFOpticalFlowELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!150 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv7optflow21SparseRLOFOpticalFlowELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!151 = distinct !{null}
!152 = distinct !{null}
!153 = distinct !{!153, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!154 = distinct !{!154, !153, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!155 = distinct !{!155, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!156 = distinct !{!156, !155, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!157 = distinct !{!157, !108, !109, !110}
!158 = distinct !{!158, !108, !110, !109}
!159 = distinct !{!159, !108}
!160 = distinct !{!160, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!161 = distinct !{!161, !160, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!162 = distinct !{!162, !108}
!163 = distinct !{!163, i1 true, !"_ZSt19__relocate_object_aIN2cv6Point_IfEES2_SaIS2_EEvPT_PT0_RT1_"}
!164 = distinct !{!164, !163, !"_ZSt19__relocate_object_aIN2cv6Point_IfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!165 = distinct !{!165, !163, !"_ZSt19__relocate_object_aIN2cv6Point_IfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!166 = distinct !{!166, !108, !109, !110}
!167 = distinct !{!167, !108, !109}
end_hunk_1
