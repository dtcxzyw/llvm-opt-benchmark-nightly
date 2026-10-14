Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/convolution_layer?download=true
inline.NumInlined: 1238
inline.NumDeleted: 554
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN2cv3dnn20ConvolutionLayerImpl8finalizeERKNS_11_InputArrayERKNS_12_OutputArrayE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ae

bb.p:                                             ; preds = %bb.ai, %bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.q:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.r:                                             ; preds = %bb.ae, %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.s:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.t:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.u:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.v:                                             ; preds = %bb.k, %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.ab

bb.w:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.x:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.z

bb.y:                                             ; preds = %bb.n
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn32 = phi { ptr, i32 } [ %i.aq, %bb.y ], [ %i.ap, %bb.x ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #22
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.pn32.pn = phi { ptr, i32 } [ %.pn32, %bb.z ], [ %i.ao, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.v
  %.pn32.pn.pn = phi { ptr, i32 } [ %.pn32.pn, %bb.aa ], [ %i.an, %bb.v ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.u
  %.pn32.pn.pn.pn = phi { ptr, i32 } [ %.pn32.pn.pn, %bb.ab ], [ %i.am, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.t
  %.pn32.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn32.pn.pn.pn, %bb.ac ], [ %i.al, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ag

bb.ae:                                            ; preds = %bb.o, %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.as = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ar, ptr noundef nonnull align 8 dereferenceable(208) %12)
          to label %bb.af unwind label %bb.r      ; 0 uses

bb.af:                                            ; preds = %bb.ae
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.aj

bb.ag:                                            ; preds = %bb.s, %bb.ad, %bb.r
  %.pn39 = phi { ptr, i32 } [ %i.aj, %bb.r ], [ %.pn32.pn.pn.pn.pn, %bb.ad ], [ %i.ak, %bb.s ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.q
  %.pn39.pn = phi { ptr, i32 } [ %.pn39, %bb.ag ], [ %i.ai, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.bs

bb.ai:                                            ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 424
  invoke void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %i.at)
          to label %bb.aj unwind label %bb.p

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 4 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !55
  %i.ax = sext i32 %i.aw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !93
  invoke void @_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt6vectorIdSaIdEE6assignEmRKd.exit unwind label %bb.ar

_ZNSt6vectorIdSaIdEE6assignEmRKd.exit:            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !95  ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = sdiv exact i64 %i.bc, 208
  %i.be = icmp ugt i64 %i.bd, 1
  br i1 %i.be, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZNSt6vectorIdSaIdEE6assignEmRKd.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 208
  %i.bg = load i32, ptr %i.av, align 8, !tbaa !55
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %19, ptr noundef nonnull align 8 dereferenceable(208) %i.bf, i32 noundef 1, i32 noundef %i.bg)
          to label %bb.am unwind label %bb.as

bb.al:                                            ; preds = %_ZNSt6vectorIdSaIdEE6assignEmRKd.exit
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %19) #22
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 4 uses
  %i.bi = load i32, ptr %i.av, align 8, !tbaa !55
  %i.bj = add nsw i32 %i.bi, 2
  %i.bk = sext i32 %i.bj to i64                   ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !96 ; 2 uses
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !75 ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = ashr exact i64 %i.bq, 2                 ; 3 uses
  %i.bs = icmp ult i64 %i.br, %i.bk
  br i1 %i.bs, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.bt = sub nuw nsw i64 %i.bk, %i.br
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 noundef %i.bt)
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit unwind label %bb.at

bb.ao:                                            ; preds = %bb.am
  %i.bu = icmp ugt i64 %i.br, %i.bk
  br i1 %i.bu, label %bb.ap, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.ap:                                            ; preds = %bb.ao
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bk ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, %i.bv
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ap
  store ptr %i.bv, ptr %i.bl, align 8, !tbaa !96
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %bb.ap, %bb.ao, %bb.an
  %i.bw = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %19)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.bx = load i32, ptr %i.av, align 8, !tbaa !55 ; 8 uses
  %i.by = icmp sgt i32 %i.bx, 0                   ; 2 uses
  br i1 %i.bw, label %.preheader, label %.preheader60

.preheader60:                                     ; preds = %bb.aq
  br i1 %i.by, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader60
  %i.bz = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !97
  %i.cb = icmp slt i32 %i.ca, 2
  %i.cc = getelementptr inbounds nuw i8, ptr %19, i64 84 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %19, i64 88
  %i.ce = load i32, ptr %i.cd, align 8
  %.fr74 = freeze i32 %i.ce
  %i.cf = icmp eq i32 %.fr74, 1
  %i.cg = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.ch = load i32, ptr %i.cg, align 4            ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8            ; 22 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %19, i64 128
  %i.cl = load i64, ptr %i.ck, align 8            ; 4 uses
  %i.cm = load ptr, ptr %i.bh, align 8, !tbaa !75 ; 18 uses
  br i1 %i.cb, label %_ZN2cv3Mat2atIfEERT_i.exit.us.preheader, label %.lr.ph.split

_ZN2cv3Mat2atIfEERT_i.exit.us.preheader:          ; preds = %.lr.ph
  %wide.trip.count93 = zext nneg i32 %i.bx to i64 ; 5 uses
  %min.iters.check125 = icmp ult i32 %i.bx, 8
  %20 = ptrtoaddr ptr %i.cm to i64
  %21 = ptrtoaddr ptr %i.cj to i64
  %i.cn = sub i64 %21, %20
  %diff.check123 = icmp ugt i64 %i.cn, -32
  %or.cond = select i1 %min.iters.check125, i1 true, i1 %diff.check123
  br i1 %or.cond, label %_ZN2cv3Mat2atIfEERT_i.exit.us.preheader137, label %vector.ph126

vector.ph126:                                     ; preds = %_ZN2cv3Mat2atIfEERT_i.exit.us.preheader
  %n.vec127 = and i64 %wide.trip.count93, 2147483640 ; 3 uses
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph126
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next132, %vector.body128 ] ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %index129 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %wide.load130 = load <4 x float>, ptr %i.co, align 4, !tbaa !99
  %wide.load131 = load <4 x float>, ptr %i.cp, align 4, !tbaa !99
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %index129 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store <4 x float> %wide.load130, ptr %i.cq, align 4, !tbaa !99
  store <4 x float> %wide.load131, ptr %i.cr, align 4, !tbaa !99
  %index.next132 = add nuw i64 %index129, 8       ; 2 uses
  %i.cs = icmp eq i64 %index.next132, %n.vec127
  br i1 %i.cs, label %middle.block133, label %vector.body128, !llvm.loop !162

middle.block133:                                  ; preds = %vector.body128
  %cmp.n134 = icmp eq i64 %n.vec127, %wide.trip.count93
  br i1 %cmp.n134, label %.loopexit, label %_ZN2cv3Mat2atIfEERT_i.exit.us.preheader137

_ZN2cv3Mat2atIfEERT_i.exit.us.preheader137:       ; preds = %_ZN2cv3Mat2atIfEERT_i.exit.us.preheader, %middle.block133
  %indvars.iv90.ph = phi i64 [ 0, %_ZN2cv3Mat2atIfEERT_i.exit.us.preheader ], [ %n.vec127, %middle.block133 ] ; 3 uses
  %xtraiter145 = and i64 %wide.trip.count93, 3    ; 2 uses
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %_ZN2cv3Mat2atIfEERT_i.exit.us.prol.loopexit, label %_ZN2cv3Mat2atIfEERT_i.exit.us.prol

_ZN2cv3Mat2atIfEERT_i.exit.us.prol:               ; preds = %_ZN2cv3Mat2atIfEERT_i.exit.us.preheader137, %_ZN2cv3Mat2atIfEERT_i.exit.us.prol
  %indvars.iv90.prol = phi i64 [ %indvars.iv.next91.prol, %_ZN2cv3Mat2atIfEERT_i.exit.us.prol ], [ %indvars.iv90.ph, %_ZN2cv3Mat2atIfEERT_i.exit.us.preheader137 ] ; 3 uses
  %prol.iter147 = phi i64 [ %prol.iter147.next, %_ZN2cv3Mat2atIfEERT_i.exit.us.prol ], [ 0, %_ZN2cv3Mat2atIfEERT_i.exit.us.preheader137 ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv90.prol
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !99
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv90.prol
  store float %i.cu, ptr %i.cv, align 4, !tbaa !99
  %indvars.iv.next91.prol = add nuw nsw i64 %indvars.iv90.prol, 1 ; 2 uses
  %prol.iter147.next = add i64 %prol.iter147, 1   ; 2 uses
  %prol.iter147.cmp.not = icmp eq i64 %prol.iter147.next, %xtraiter145
  br i1 %prol.iter147.cmp.not, label %_ZN2cv3Mat2atIfEERT_i.exit.us.prol.loopexit, label %_ZN2cv3Mat2atIfEERT_i.exit.us.prol, !llvm.loop !163

_ZN2cv3Mat2atIfEERT_i.exit.us.prol.loopexit:      ; preds = %_ZN2cv3Mat2atIfEERT_i.exit.us.prol, %_ZN2cv3Mat2atIfEERT_i.exit.us.preheader137
  %indvars.iv90.unr = phi i64 [ %indvars.iv90.ph, %_ZN2cv3Mat2atIfEERT_i.exit.us.preheader137 ], [ %indvars.iv.next91.prol, %_ZN2cv3Mat2atIfEERT_i.exit.us.prol ]
  %i.cw = sub nsw i64 %indvars.iv90.ph, %wide.trip.count93
  %i.cx = icmp ugt i64 %i.cw, -4
  br i1 %i.cx, label %.loopexit, label %_ZN2cv3Mat2atIfEERT_i.exit.us

_ZN2cv3Mat2atIfEERT_i.exit.us:                    ; preds = %_ZN2cv3Mat2atIfEERT_i.exit.us.prol.loopexit, %_ZN2cv3Mat2atIfEERT_i.exit.us
  %indvars.iv90 = phi i64 [ %indvars.iv.next91.3, %_ZN2cv3Mat2atIfEERT_i.exit.us ], [ %indvars.iv90.unr, %_ZN2cv3Mat2atIfEERT_i.exit.us.prol.loopexit ] ; 6 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv90
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !99
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv90
  store float %i.cz, ptr %i.da, align 4, !tbaa !99
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next91
  %i.dc = load float, ptr %i.db, align 4, !tbaa !99
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next91
  store float %i.dc, ptr %i.dd, align 4, !tbaa !99
  %indvars.iv.next91.1 = add nuw nsw i64 %indvars.iv90, 2 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next91.1
  %i.df = load float, ptr %i.de, align 4, !tbaa !99
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next91.1
  store float %i.df, ptr %i.dg, align 4, !tbaa !99
  %indvars.iv.next91.2 = add nuw nsw i64 %indvars.iv90, 3 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next91.2
  %i.di = load float, ptr %i.dh, align 4, !tbaa !99
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next91.2
  store float %i.di, ptr %i.dj, align 4, !tbaa !99
  %indvars.iv.next91.3 = add nuw nsw i64 %indvars.iv90, 4 ; 2 uses
  %exitcond94.not.3 = icmp eq i64 %indvars.iv.next91.3, %wide.trip.count93
  br i1 %exitcond94.not.3, label %.loopexit, label %_ZN2cv3Mat2atIfEERT_i.exit.us, !llvm.loop !164

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.dk = load i32, ptr %19, align 8
  %.fr = freeze i32 %i.dk
  %i.dl = and i32 %.fr, 16384
  %.not73 = icmp eq i32 %i.dl, 0
  %wide.trip.count88 = zext nneg i32 %i.bx to i64 ; 8 uses
  br i1 %.not73, label %.lr.ph.split.split, label %_ZN2cv3Mat2atIfEERT_i.exit.us64.preheader

_ZN2cv3Mat2atIfEERT_i.exit.us64.preheader:        ; preds = %.lr.ph.split
  %min.iters.check = icmp ult i32 %i.bx, 8
  %22 = ptrtoaddr ptr %i.cm to i64
  %23 = ptrtoaddr ptr %i.cj to i64
  %i.dm = sub i64 %23, %22
  %diff.check = icmp ugt i64 %i.dm, -32
  %or.cond136 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond136, label %_ZN2cv3Mat2atIfEERT_i.exit.us64.preheader140, label %vector.ph

vector.ph:                                        ; preds = %_ZN2cv3Mat2atIfEERT_i.exit.us64.preheader
  %n.vec = and i64 %wide.trip.count88, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load = load <4 x float>, ptr %i.dn, align 4, !tbaa !99
  %wide.load121 = load <4 x float>, ptr %i.do, align 4, !tbaa !99
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %index ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store <4 x float> %wide.load, ptr %i.dp, align 4, !tbaa !99
  store <4 x float> %wide.load121, ptr %i.dq, align 4, !tbaa !99
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !165

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count88
  br i1 %cmp.n, label %.loopexit, label %_ZN2cv3Mat2atIfEERT_i.exit.us64.preheader140

_ZN2cv3Mat2atIfEERT_i.exit.us64.preheader140:     ; preds = %_ZN2cv3Mat2atIfEERT_i.exit.us64.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %_ZN2cv3Mat2atIfEERT_i.exit.us64.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count88, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv3Mat2atIfEERT_i.exit.us64.prol.loopexit, label %_ZN2cv3Mat2atIfEERT_i.exit.us64.prol

_ZN2cv3Mat2atIfEERT_i.exit.us64.prol:             ; preds = %_ZN2cv3Mat2atIfEERT_i.exit.us64.preheader140, %_ZN2cv3Mat2atIfEERT_i.exit.us64.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %_ZN2cv3Mat2atIfEERT_i.exit.us64.prol ], [ %indvars.iv.ph, %_ZN2cv3Mat2atIfEERT_i.exit.us64.preheader140 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN2cv3Mat2atIfEERT_i.exit.us64.prol ], [ 0, %_ZN2cv3Mat2atIfEERT_i.exit.us64.preheader140 ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.prol
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !99
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.prol
  store float %i.dt, ptr %i.du, align 4, !tbaa !99
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN2cv3Mat2atIfEERT_i.exit.us64.prol.loopexit, label %_ZN2cv3Mat2atIfEERT_i.exit.us64.prol, !llvm.loop !166

_ZN2cv3Mat2atIfEERT_i.exit.us64.prol.loopexit:    ; preds = %_ZN2cv3Mat2atIfEERT_i.exit.us64.prol, %_ZN2cv3Mat2atIfEERT_i.exit.us64.preheader140
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %_ZN2cv3Mat2atIfEERT_i.exit.us64.preheader140 ], [ %indvars.iv.next.prol, %_ZN2cv3Mat2atIfEERT_i.exit.us64.prol ]
  %i.dv = sub nsw i64 %indvars.iv.ph, %wide.trip.count88
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %.loopexit, label %_ZN2cv3Mat2atIfEERT_i.exit.us64

_ZN2cv3Mat2atIfEERT_i.exit.us64:                  ; preds = %_ZN2cv3Mat2atIfEERT_i.exit.us64.prol.loopexit, %_ZN2cv3Mat2atIfEERT_i.exit.us64
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %_ZN2cv3Mat2atIfEERT_i.exit.us64 ], [ %indvars.iv.unr, %_ZN2cv3Mat2atIfEERT_i.exit.us64.prol.loopexit ] ; 6 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !99
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv
  store float %i.dy, ptr %i.dz, align 4, !tbaa !99
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !99
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next
  store float %i.eb, ptr %i.ec, align 4, !tbaa !99
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next.1
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !99
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.1
  store float %i.ee, ptr %i.ef, align 4, !tbaa !99
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next.2
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !99
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.2
  store float %i.eh, ptr %i.ei, align 4, !tbaa !99
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count88
  br i1 %exitcond.not.3, label %.loopexit, label %_ZN2cv3Mat2atIfEERT_i.exit.us64, !llvm.loop !167

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %i.cf, label %.lr.ph.split.split.split.us.preheader, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us.preheader:            ; preds = %.lr.ph.split.split
  %xtraiter142 = and i64 %wide.trip.count88, 1
  %i.ej = icmp eq i32 %i.bx, 1
  br i1 %i.ej, label %.lr.ph.split.split.split.us.epil.preheader, label %.lr.ph.split.split.split.us.preheader.new

.lr.ph.split.split.split.us.preheader.new:        ; preds = %.lr.ph.split.split.split.us.preheader
  %unroll_iter = and i64 %wide.trip.count88, 2147483646
  br label %.lr.ph.split.split.split.us

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split.split.us, %.lr.ph.split.split.split.us.preheader.new
  %indvars.iv85 = phi i64 [ 0, %.lr.ph.split.split.split.us.preheader.new ], [ %indvars.iv.next86.1, %.lr.ph.split.split.split.us ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.split.us.preheader.new ], [ %niter.next.1, %.lr.ph.split.split.split.us ]
  %i.ek = load i32, ptr %i.cc, align 4
  %i.el = icmp eq i32 %i.ek, 1
  %i.em = mul i64 %i.cl, %indvars.iv85
  %i.en = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.em
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv85
  %.0.i.us68 = select i1 %i.el, ptr %i.eo, ptr %i.en
  %i.ep = load float, ptr %.0.i.us68, align 4, !tbaa !99
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv85
  store float %i.ep, ptr %i.eq, align 4, !tbaa !99
  %indvars.iv.next86 = or disjoint i64 %indvars.iv85, 1 ; 3 uses
  %i.er = load i32, ptr %i.cc, align 4
  %i.es = icmp eq i32 %i.er, 1
  %i.et = mul i64 %i.cl, %indvars.iv.next86
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.et
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next86
  %.0.i.us68.1 = select i1 %i.es, ptr %i.ev, ptr %i.eu
  %i.ew = load float, ptr %.0.i.us68.1, align 4, !tbaa !99
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next86
  store float %i.ew, ptr %i.ex, align 4, !tbaa !99
  %indvars.iv.next86.1 = add nuw nsw i64 %indvars.iv85, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit138.unr-lcssa, label %.lr.ph.split.split.split.us, !llvm.loop !168

.preheader:                                       ; preds = %bb.aq
  br i1 %i.by, label %.lr.ph71, label %.loopexit

.lr.ph71:                                         ; preds = %.preheader
  %i.ey = load ptr, ptr %i.bh, align 8, !tbaa !75
  %i.ez = zext nneg i32 %i.bx to i64
  %i.fa = shl nuw nsw i64 %i.ez, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ey, i8 0, i64 %i.fa, i1 false), !tbaa !99
  br label %.loopexit

bb.ar:                                            ; preds = %bb.aj
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.bs

bb.as:                                            ; preds = %bb.ak
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.at:                                            ; preds = %bb.bd, %bb.ay, %bb.an, %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %_ZN2cv3Mat2atIfEERT_i.exit
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %_ZN2cv3Mat2atIfEERT_i.exit ], [ 0, %.lr.ph.split.split ] ; 4 uses
  %i.fe = load i32, ptr %i.cc, align 4
  %i.ff = icmp eq i32 %i.fe, 1
  br i1 %i.ff, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph.split.split.split
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv80
  br label %_ZN2cv3Mat2atIfEERT_i.exit

bb.av:                                            ; preds = %.lr.ph.split.split.split
  %i.fh = trunc nuw nsw i64 %indvars.iv80 to i32  ; 2 uses
  %i.fi = sdiv i32 %i.fh, %i.ch                   ; 2 uses
  %i.fj = mul nsw i32 %i.fi, %i.ch                ; 0 uses
  %.recomposed = srem i32 %i.fh, %i.ch
  %i.fk = sext i32 %i.fi to i64
  %i.fl = mul i64 %i.cl, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.fl
  %i.fn = sext i32 %.recomposed to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.fn
  br label %_ZN2cv3Mat2atIfEERT_i.exit

_ZN2cv3Mat2atIfEERT_i.exit:                       ; preds = %bb.av, %bb.au
  %.0.i = phi ptr [ %i.fo, %bb.av ], [ %i.fg, %bb.au ]
  %i.fp = load float, ptr %.0.i, align 4, !tbaa !99
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv80
  store float %i.fp, ptr %i.fq, align 4, !tbaa !99
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count88
  br i1 %exitcond84.not, label %.loopexit, label %.lr.ph.split.split.split, !llvm.loop !168

.loopexit.loopexit138.unr-lcssa:                  ; preds = %.lr.ph.split.split.split.us
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %.loopexit, label %.lr.ph.split.split.split.us.epil.preheader

.lr.ph.split.split.split.us.epil.preheader:       ; preds = %.loopexit.loopexit138.unr-lcssa, %.lr.ph.split.split.split.us.preheader
  %indvars.iv85.epil.init = phi i64 [ 0, %.lr.ph.split.split.split.us.preheader ], [ %indvars.iv.next86.1, %.loopexit.loopexit138.unr-lcssa ] ; 3 uses
  %lcmp.mod144 = trunc i32 %i.bx to i1
  call void @llvm.assume(i1 %lcmp.mod144)
  %i.fr = load i32, ptr %i.cc, align 4
  %i.fs = icmp eq i32 %i.fr, 1
  %i.ft = mul i64 %i.cl, %indvars.iv85.epil.init
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ft
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv85.epil.init
  %.0.i.us68.epil = select i1 %i.fs, ptr %i.fv, ptr %i.fu
  %i.fw = load float, ptr %.0.i.us68.epil, align 4, !tbaa !99
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv85.epil.init
  store float %i.fw, ptr %i.fx, align 4, !tbaa !99
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN2cv3Mat2atIfEERT_i.exit.us64.prol.loopexit, %_ZN2cv3Mat2atIfEERT_i.exit.us64, %_ZN2cv3Mat2atIfEERT_i.exit, %.lr.ph.split.split.split.us.epil.preheader, %.loopexit.loopexit138.unr-lcssa, %_ZN2cv3Mat2atIfEERT_i.exit.us.prol.loopexit, %_ZN2cv3Mat2atIfEERT_i.exit.us, %middle.block, %middle.block133, %.lr.ph71, %.preheader60, %.preheader
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 382
  %i.fz = load i8, ptr %i.fy, align 2, !tbaa !54, !range !103, !noundef !104
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.aw, label %bb.bh

bb.aw:                                            ; preds = %.loopexit
  %i.gb = load ptr, ptr %11, align 8, !tbaa !95   ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !97
end_hunk_0
