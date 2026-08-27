Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/scansegment?download=true
inline.NumInlined: 1020
inline.NumDeleted: 456
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN2cv8ximgproc15ScanSegmentImplC2Eiiiib:bb.a
  %i.fd = fmul float %i.fc, %i.fb
  %i.fe = call float @llvm.floor.f32(float %i.fd)
  %i.ff = fptosi float %i.fe to i32               ; 5 uses
  %i.fg = icmp sgt i32 %i.ff, 0                   ; 3 uses
  %.neg359 = zext i1 %i.fg to i32
  %i.fh = sext i1 %i.fg to i32
  %.081 = add nsw i32 %i.fh, %i.ff
  %i.fi = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.fj = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.fk = load ptr, ptr %i.g, align 8, !tbaa !61
  %invariant.op = select i1 %i.fg, i32 2, i32 1
  br label %bb.am

._crit_edge365:                                   ; preds = %._crit_edge, %.preheader360.lr.ph, %_ZN2cv10AutoBufferINS_5Rect_IiEELm72EED2Ev.exit168
  %i.fl = load i32, ptr %i.ae, align 8, !tbaa !69
  %i.fm = load i32, ptr %i.af, align 4, !tbaa !70
  %i.fn = add nsw i32 %i.fm, %i.fl
  %i.fo = sitofp i32 %i.fn to float
  %i.fp = fdiv nnan float 2.000000e+02, %i.fo
  %i.fq = fmul nnan float %i.fp, f0x3FDDB3D7
  %i.fr = load float, ptr %i.b, align 8, !tbaa !25
  %i.fs = fmul float %i.fr, %i.fq                 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.fu = fmul float %i.fs, %i.fs
  store float %i.fu, ptr %i.ft, align 4, !tbaa !86
  %i.fv = load i32, ptr %i.bo, align 8, !tbaa !79 ; 3 uses
  %i.fw = sext i32 %i.fv to i64                   ; 3 uses
  %i.fx = icmp slt i32 %i.fv, 0
  br i1 %i.fx, label %bb.x, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.x:                                             ; preds = %._crit_edge365
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #32
          to label %.noexc169 unwind label %bb.as

.noexc169:                                        ; preds = %bb.x
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge365
  %.not.i.i.i.i = icmp eq i32 %i.fv, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.fy = shl nuw nsw i64 %i.fw, 2
  %i.fz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fy) #30
          to label %.noexc170 unwind label %bb.as ; 5 uses

.noexc170:                                        ; preds = %bb.y
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.fw ; 2 uses
  store i32 0, ptr %i.fz, align 4, !tbaa !63
  %i.gb = getelementptr i8, ptr %i.fz, i64 4      ; 3 uses
  %i.gc = add nsw i64 %i.fw, -1                   ; 2 uses
  %i.gd = icmp eq i64 %i.gc, 0
  br i1 %i.gd, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc170
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.gc, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.gb, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !63
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

bb.z:                                             ; preds = %bb.b
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.aa:                                            ; preds = %bb.c
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.d
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #28
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.gh, %bb.ab ], [ %i.gg, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ck

bb.ad:                                            ; preds = %bb.f
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferINS_5Rect_IiEELm72EED2Ev.exit174

bb.ae:                                            ; preds = %bb.j
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gk = load ptr, ptr %7, align 8, !tbaa !61    ; 3 uses
  %.not.i.i171 = icmp eq ptr %i.gk, %scevgep.i116
  %i.gl = icmp eq ptr %i.gk, null
  %or.cond.i172 = or i1 %.not.i.i171, %i.gl
  br i1 %or.cond.i172, label %_ZN2cv10AutoBufferINS_5Rect_IiEELm72EED2Ev.exit174, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZdaPv(ptr noundef nonnull %i.gk) #31
  br label %_ZN2cv10AutoBufferINS_5Rect_IiEELm72EED2Ev.exit174

_ZN2cv10AutoBufferINS_5Rect_IiEELm72EED2Ev.exit174: ; preds = %bb.af, %bb.ae, %bb.ad
  %.pn93 = phi { ptr, i32 } [ %i.gi, %bb.ad ], [ %i.gj, %bb.ae ], [ %i.gj, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.ck

bb.ag:                                            ; preds = %bb.l
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferINS_5Rect_IiEELm72EED2Ev.exit178

bb.ah:                                            ; preds = %bb.p
  %i.gn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.go = load ptr, ptr %8, align 8, !tbaa !61    ; 3 uses
  %.not.i.i175 = icmp eq ptr %i.go, %scevgep.i121
  %i.gp = icmp eq ptr %i.go, null
  %or.cond.i176 = or i1 %.not.i.i175, %i.gp
  br i1 %or.cond.i176, label %_ZN2cv10AutoBufferINS_5Rect_IiEELm72EED2Ev.exit178, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZdaPv(ptr noundef nonnull %i.go) #31
  br label %_ZN2cv10AutoBufferINS_5Rect_IiEELm72EED2Ev.exit178

_ZN2cv10AutoBufferINS_5Rect_IiEELm72EED2Ev.exit178: ; preds = %bb.ai, %bb.ah, %bb.ag
  %.pn95 = phi { ptr, i32 } [ %i.gm, %bb.ag ], [ %i.gn, %bb.ah ], [ %i.gn, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.ck

bb.aj:                                            ; preds = %bb.r
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferINS_5Rect_IiEELm72EED2Ev.exit182

bb.ak:                                            ; preds = %bb.v
  %i.gr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gs = load ptr, ptr %9, align 8, !tbaa !61    ; 3 uses
  %.not.i.i179 = icmp eq ptr %i.gs, %scevgep.i145
  %i.gt = icmp eq ptr %i.gs, null
  %or.cond.i180 = or i1 %.not.i.i179, %i.gt
  br i1 %or.cond.i180, label %_ZN2cv10AutoBufferINS_5Rect_IiEELm72EED2Ev.exit182, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZdaPv(ptr noundef nonnull %i.gs) #31
  br label %_ZN2cv10AutoBufferINS_5Rect_IiEELm72EED2Ev.exit182

_ZN2cv10AutoBufferINS_5Rect_IiEELm72EED2Ev.exit182: ; preds = %bb.al, %bb.ak, %bb.aj
  %.pn97 = phi { ptr, i32 } [ %i.gq, %bb.aj ], [ %i.gr, %bb.ak ], [ %i.gr, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.ck

._crit_edge.loopexit:                             ; preds = %bb.ao
  %.pre385 = load i32, ptr %i.ba, align 4, !tbaa !77
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader360
  %i.gu = phi i32 [ %.pre385, %._crit_edge.loopexit ], [ %i.ex, %.preheader360 ] ; 2 uses
  %i.gv = phi i32 [ %i.is, %._crit_edge.loopexit ], [ %i.ey, %.preheader360 ]
  %i.gw = add nuw nsw i32 %.084364, 1             ; 2 uses
  %i.gx = icmp slt i32 %i.gw, %i.gu
  br i1 %i.gx, label %.preheader360, label %._crit_edge365, !llvm.loop !87

bb.am:                                            ; preds = %.lr.ph, %bb.ao
  %i.gy = phi i32 [ %i.ey, %.lr.ph ], [ %i.is, %bb.ao ] ; 2 uses
  %.083363 = phi i32 [ 0, %.lr.ph ], [ %i.ir, %bb.ao ] ; 6 uses
  %i.gz = uitofp nneg i32 %.083363 to float
  %i.ha = fmul float %i.fa, %i.gz
  %i.hb = call float @llvm.floor.f32(float %i.ha)
  %i.hc = fptosi float %i.hb to i32               ; 5 uses
  %i.hd = add nsw i32 %i.gy, -1
  %i.he = icmp eq i32 %.083363, %i.hd
  br i1 %i.he, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hf = load i32, ptr %i.ae, align 8, !tbaa !69
  %i.hg = sub nsw i32 %i.hf, %i.hc
  %i.hh = sitofp i32 %i.hg to float
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.hi = phi float [ %i.hh, %bb.an ], [ %i.fa, %bb.am ]
  %i.hj = fptosi float %i.hi to i32               ; 4 uses
  %i.hk = load i32, ptr %i.ba, align 4, !tbaa !77
  %i.hl = add nsw i32 %i.hk, -1
  %i.hm = icmp eq i32 %.084364, %i.hl
  %.pre = load i32, ptr %i.af, align 4, !tbaa !70 ; 2 uses
  %i.hn = sub nsw i32 %.pre, %i.ff
  %i.ho = sitofp i32 %i.hn to float
  %i.hp = select i1 %i.hm, float %i.ho, float %i.fc
  %i.hq = fptosi float %i.hp to i32               ; 4 uses
  %i.hr = add nsw i32 %i.hj, %i.hc
  %i.hs = add nsw i32 %i.hq, %i.ff
  %i.ht = icmp sgt i32 %i.hc, 0                   ; 2 uses
  %.neg = zext i1 %i.ht to i32
  %i.hu = sext i1 %i.ht to i32                    ; 2 uses
  %spec.select = add nsw i32 %i.hu, %i.hc
  %i.hv = load i32, ptr %i.ae, align 8, !tbaa !69
  %i.hw = icmp sge i32 %i.hr, %i.hv
  %i.hx = sext i1 %i.hw to i32
  %i.hy = icmp sge i32 %i.hs, %.pre
  %i.hz = sext i1 %i.hy to i32
  %i.ia = mul nsw i32 %i.gy, %.084364
  %i.ib = add nsw i32 %i.ia, %.083363
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [16 x i8], ptr %i.fi, i64 %i.ic ; 4 uses
  store i32 %i.hc, ptr %i.id, align 4, !tbaa !63
  %.sroa.6353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  store i32 %i.ff, ptr %.sroa.6353.0..sroa_idx, align 4, !tbaa !63
  %.sroa.9355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store i32 %i.hj, ptr %.sroa.9355.0..sroa_idx, align 4, !tbaa !63
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  store i32 %i.hq, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !63
  %reass.sub = sub i32 %i.hj, %i.hu
  %i.ie = add i32 %reass.sub, 1
  %i.if = add i32 %i.ie, %i.hx
  %.reass = add i32 %invariant.op, %i.hq
  %i.ig = add i32 %.reass, %i.hz
  %i.ih = load i32, ptr %i.az, align 8, !tbaa !76
  %i.ii = mul nsw i32 %i.ih, %.084364
  %i.ij = add nsw i32 %i.ii, %.083363
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [16 x i8], ptr %i.fj, i64 %i.ik ; 4 uses
  store i32 %spec.select, ptr %i.il, align 4, !tbaa !63
  %.sroa.4348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  store i32 %.081, ptr %.sroa.4348.0..sroa_idx, align 4, !tbaa !63
  %.sroa.5349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store i32 %i.if, ptr %.sroa.5349.0..sroa_idx, align 4, !tbaa !63
  %.sroa.6350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 12
  store i32 %i.ig, ptr %.sroa.6350.0..sroa_idx, align 4, !tbaa !63
  %i.im = load i32, ptr %i.az, align 8, !tbaa !76
  %i.in = mul nsw i32 %i.im, %.084364
  %i.io = add nsw i32 %i.in, %.083363
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [16 x i8], ptr %i.fk, i64 %i.ip ; 4 uses
  store i32 %.neg, ptr %i.iq, align 4, !tbaa !63
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  store i32 %.neg359, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !63
  %.sroa.5346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store i32 %i.hj, ptr %.sroa.5346.0..sroa_idx, align 4, !tbaa !63
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  store i32 %i.hq, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !63
  %i.ir = add nuw nsw i32 %.083363, 1             ; 2 uses
  %i.is = load i32, ptr %i.az, align 8, !tbaa !76 ; 3 uses
  %i.it = icmp slt i32 %i.ir, %i.is
  br i1 %i.it, label %bb.am, label %._crit_edge.loopexit, !llvm.loop !89

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc170, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0340.0 = phi ptr [ %i.fz, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.fz, %.noexc170 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.11343.0 = phi ptr [ %i.ga, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ga, %.noexc170 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.0.i.i.i.i.i = phi ptr [ %i.ge, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.gb, %.noexc170 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.iu = load ptr, ptr %i.m, align 8, !tbaa !90  ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 3648 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 3656 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !91
  store ptr %.sroa.0340.0, ptr %i.m, align 8, !tbaa !90
  store ptr %.0.i.i.i.i.i, ptr %i.iv, align 8, !tbaa !92
  store ptr %.sroa.11343.0, ptr %i.iw, align 8, !tbaa !91
  %.not.i.i.i.i.i = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.iy = ptrtoint ptr %i.ix to i64
  %i.iz = ptrtoint ptr %i.iu to i64
  %i.ja = sub i64 %i.iy, %i.iz
  call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef %i.ja) #31
  %.pre386 = load ptr, ptr %i.m, align 8, !tbaa !93
  %.pre387 = load ptr, ptr %i.iv, align 8, !tbaa !93
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ap, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.jb = phi ptr [ %.pre387, %bb.ap ], [ %.0.i.i.i.i.i, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 3 uses
  %i.jc = phi ptr [ %.pre386, %bb.ap ], [ %.sroa.0340.0, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 5 uses
  %.not5.i = icmp eq ptr %i.jc, %i.jb
  br i1 %.not5.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit, label %.lr.ph.i183.preheader

.lr.ph.i183.preheader:                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.jd = ptrtoaddr ptr %i.jb to i64
  %i.je = ptrtoaddr ptr %i.jc to i64
  %i.jf = add i64 %i.jd, -4
  %i.jg = sub i64 %i.jf, %i.je                    ; 2 uses
  %i.jh = lshr i64 %i.jg, 2
  %i.ji = add nuw nsw i64 %i.jh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.jg, 28
  br i1 %min.iters.check, label %.lr.ph.i183.preheader549, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i183.preheader
  %n.vec = and i64 %i.ji, 9223372036854775800     ; 4 uses
  %i.jj = trunc i64 %n.vec to i32
  %i.jk = shl i64 %n.vec, 2
  %i.jl = getelementptr i8, ptr %i.jc, i64 %i.jk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.jm = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.jc, i64 %i.jm ; 2 uses
  %i.jn = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 4, !tbaa !63
  store <4 x i32> %step.add, ptr %i.jn, align 4, !tbaa !63
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.jo = icmp eq i64 %index.next, %n.vec
  br i1 %i.jo, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ji, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit, label %.lr.ph.i183.preheader549

.lr.ph.i183.preheader549:                         ; preds = %.lr.ph.i183.preheader, %middle.block
  %.07.i.ph = phi i32 [ 0, %.lr.ph.i183.preheader ], [ %i.jj, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.jc, %.lr.ph.i183.preheader ], [ %i.jl, %middle.block ]
  br label %.lr.ph.i183

.lr.ph.i183:                                      ; preds = %.lr.ph.i183.preheader549, %.lr.ph.i183
  %.07.i = phi i32 [ %i.jp, %.lr.ph.i183 ], [ %.07.i.ph, %.lr.ph.i183.preheader549 ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %i.jq, %.lr.ph.i183 ], [ %.sroa.02.06.i.ph, %.lr.ph.i183.preheader549 ] ; 2 uses
  store i32 %.07.i, ptr %.sroa.02.06.i, align 4, !tbaa !63
  %i.jp = add nuw nsw i32 %.07.i, 1
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.jq, %i.jb
  br i1 %.not.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit, label %.lr.ph.i183, !llvm.loop !97

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i183, %middle.block, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.jr = load i32, ptr %i.ad, align 4, !tbaa !68 ; 3 uses
  %i.js = sext i32 %i.jr to i64                   ; 2 uses
  %i.jt = icmp slt i32 %i.jr, 0
  br i1 %i.jt, label %bb.aq, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.aq:                                            ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #32
          to label %.noexc185 unwind label %bb.at

.noexc185:                                        ; preds = %bb.aq
  unreachable

_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit
  %.not.i.i.i.i184 = icmp eq i32 %i.jr, 0
  br i1 %.not.i.i.i.i184, label %_ZNSt6vectorISt4pairIiiESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ju = shl nuw nsw i64 %i.js, 3                ; 3 uses
  %i.jv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ju) #30
          to label %.noexc186 unwind label %bb.at ; 4 uses

.noexc186:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %i.js
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jv, i8 0, i64 %i.ju, i1 false), !tbaa !63
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.jv, i64 %i.ju
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EEC2EmRKS2_.exit

_ZNSt6vectorISt4pairIiiESaIS1_EEC2EmRKS2_.exit:   ; preds = %.noexc186, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.sroa.0336.0 = phi ptr [ %i.jv, %.noexc186 ], [ null, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 2 uses
  %.sink.i = phi ptr [ %i.jw, %.noexc186 ], [ null, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc186 ], [ null, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ]
  %i.jx = load ptr, ptr %i.n, align 8, !tbaa !98  ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 3680 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !99
  store ptr %.sroa.0336.0, ptr %i.n, align 8, !tbaa !98
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.jy, align 8, !tbaa !100
  store ptr %.sink.i, ptr %i.jz, align 8, !tbaa !99
  %.not.i.i.i.i.i187 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.i.i.i187, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EEC2EmRKS2_.exit
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = ptrtoint ptr %i.jx to i64
  %i.kd = sub i64 %i.kb, %i.kc
  call void @_ZdlPvm(ptr noundef nonnull %i.jx, i64 noundef %i.kd) #31
  %.pre389.pre = load ptr, ptr %i.n, align 8, !tbaa !98
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit:        ; preds = %bb.ar, %_ZNSt6vectorISt4pairIiiESaIS1_EEC2EmRKS2_.exit
  %.pre389 = phi ptr [ %.pre389.pre, %bb.ar ], [ %.sroa.0336.0, %_ZNSt6vectorISt4pairIiiESaIS1_EEC2EmRKS2_.exit ] ; 4 uses
  %i.ke = load i32, ptr %i.aj, align 8, !tbaa !73 ; 2 uses
  %i.kf = load i32, ptr %i.ad, align 4, !tbaa !68 ; 4 uses
  %i.kg = sdiv i32 %i.ke, %i.kf                   ; 3 uses
  %i.kh = add i32 %i.kf, -1                       ; 2 uses
  %i.ki = icmp sgt i32 %i.kf, 1
  br i1 %i.ki, label %.lr.ph368, label %._crit_edge369

.lr.ph368:                                        ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit
  %wide.trip.count = zext nneg i32 %i.kh to i64   ; 3 uses
  %min.iters.check487 = icmp ult i32 %i.kf, 5
  br i1 %min.iters.check487, label %scalar.ph486.preheader, label %vector.ph488

vector.ph488:                                     ; preds = %.lr.ph368
  %n.vec489 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.kg, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.kj = trunc nuw nsw i64 %n.vec489 to i32
  %i.kk = mul i32 %i.kg, %i.kj                    ; 2 uses
  %i.kl = shl <2 x i32> %broadcast.splat, splat (i32 1) ; 2 uses
  %i.km = mul nuw nsw <2 x i32> %broadcast.splat, <i32 0, i32 1>
  br label %vector.body490

vector.body490:                                   ; preds = %vector.body490, %vector.ph488
  %index491 = phi i64 [ 0, %vector.ph488 ], [ %index.next495, %vector.body490 ] ; 3 uses
  %vec.ind492 = phi <2 x i32> [ %i.km, %vector.ph488 ], [ %vec.ind.next496, %vector.body490 ] ; 3 uses
  %step.add493 = add nsw <2 x i32> %vec.ind492, %i.kl ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN2cv8ximgproc15ScanSegmentImpl16calculateClusterEPiS2_ii:bb.a

bb.an:                                            ; preds = %bb.am
  store i32 %4, ptr %i.ky, align 4, !tbaa !63
  %i.ly = load i32, ptr %2, align 4, !tbaa !63
  %i.lz = sext i32 %i.ly to i64
  %i.ma = getelementptr inbounds [4 x i8], ptr %1, i64 %i.lz
  store i32 %i.kt, ptr %i.ma, align 4, !tbaa !63
  %i.mb = load i32, ptr %2, align 4, !tbaa !63
  %i.mc = add nsw i32 %i.mb, 1
  store i32 %i.mc, ptr %2, align 4, !tbaa !63
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ak, %bb.al, %bb.am, %bb.an, %bb.aj, %bb.ae, %bb.z, %bb.u, %bb.p, %bb.k, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 1, 0) i32 @_ZN2cv8ximgproc15ScanSegmentImpl12allocWSNodesERSt6vectorINS1_6WSNodeESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !201    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 12                  ; 4 uses
  %i.h = trunc i64 %i.g to i32                    ; 5 uses
  %i.i = icmp sgt i32 %i.h, 85
  %i.j = lshr i32 %i.h, 1
  %i.k = add nsw i32 %i.j, %i.h
  %i.l = select i1 %i.i, i32 %i.k, i32 128        ; 2 uses
  %i.m = zext nneg i32 %i.l to i64                ; 4 uses
  %i.n = icmp ult i64 %i.g, %i.m
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = sub nuw nsw i64 %i.m, %i.g
  tail call void @_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.o)
  %.pre.pre.pre = load ptr, ptr %0, align 8, !tbaa !201
  br label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.p = icmp ugt i64 %i.g, %i.m
  br i1 %i.p, label %bb.d, label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %i.m ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv8ximgproc15ScanSegmentImpl6WSNodeES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8ximgproc15ScanSegmentImpl6WSNodeES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.q, ptr %i.a, align 8, !tbaa !195
  br label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit

_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN2cv8ximgproc15ScanSegmentImpl6WSNodeES3_EvT_S5_RSaIT0_E.exit.i.i
  %.pre.pre = phi ptr [ %.pre.pre.pre, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.c, %_ZSt8_DestroyIPN2cv8ximgproc15ScanSegmentImpl6WSNodeES3_EvT_S5_RSaIT0_E.exit.i.i ] ; 7 uses
  %i.r = icmp eq i32 %i.h, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit
  store i32 0, ptr %.pre.pre, align 4, !tbaa !202
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit
  %.016 = phi i32 [ 1, %bb.e ], [ %i.h, %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit ] ; 3 uses
  %i.s = add nsw i32 %i.l, -1                     ; 3 uses
  %i.t = icmp slt i32 %.016, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.u = sext i32 %.016 to i64                    ; 4 uses
  %wide.trip.count = sext i32 %i.s to i64         ; 3 uses
  %i.v = sub nsw i64 %wide.trip.count, %i.u
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.u, %.lr.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %indvars.iv.prol
  %i.x = trunc nsw i64 %indvars.iv.next.prol to i32
  store i32 %i.x, ptr %i.w, align 4, !tbaa !202
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !221

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.u, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.y = sub nsw i64 %i.u, %wide.trip.count
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.f
  %i.aa = zext nneg i32 %i.s to i64
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %i.aa
  store i32 0, ptr %i.ab, align 4, !tbaa !202
  ret i32 %.016

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %indvars.iv
  %i.ad = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !202
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %indvars.iv.next
  %i.af = trunc nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !202
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %indvars.iv.next.1
  %i.ah = trunc nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !202
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 3 uses
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %indvars.iv.next.2
  %i.aj = trunc nsw i64 %indvars.iv.next.3 to i32
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !202
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.new, !llvm.loop !205
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc15ScanSegmentImpl9getLabelsERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(7368) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7160
  tail call void @_ZNK2cv12_OutputArray6assignERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(208) %i.a)
  ret void
}

declare void @_ZNK2cv12_OutputArray6assignERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc15ScanSegmentImpl19getLabelContourMaskERKNS_12_OutputArrayEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7368) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Mat", align 8           ; 12 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %5 = alloca %"class.cv::Scalar_", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 24 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !69
  tail call void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.b, i32 noundef %i.d, i32 noundef 0, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.e = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !222
  %i.f = icmp eq i32 %i.e, 65536
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128, !noalias !222
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %i.h)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %4, align 8, !tbaa !138
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %5, ptr %i.j, align 8, !tbaa !128
  store i64 17179869185, ptr %i.i, align 8
  %i.k = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.e unwind label %bb.as

bb.e:                                             ; preds = %bb.d
  %i.l = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.f unwind label %bb.as      ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.m = load i32, ptr %i.a, align 4, !tbaa !70
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.preheader51.lr.ph, label %._crit_edge58

.preheader51.lr.ph:                               ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 7184 ; 21 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %i.t = load i32, ptr %i.c, align 8, !tbaa !69   ; 4 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.preheader51, label %._crit_edge58

.preheader51:                                     ; preds = %.preheader51.lr.ph, %._crit_edge
  %i.v = phi i32 [ %i.hy, %._crit_edge ], [ %i.t, %.preheader51.lr.ph ] ; 3 uses
  %i.w = phi i32 [ %i.hz, %._crit_edge ], [ %i.t, %.preheader51.lr.ph ] ; 2 uses
  %i.x = phi i32 [ %i.ia, %._crit_edge ], [ %i.t, %.preheader51.lr.ph ] ; 11 uses
  %indvars.iv70 = phi i64 [ %indvars.iv.next71.pre-phi, %._crit_edge ], [ 0, %.preheader51.lr.ph ] ; 26 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.preheader.lr.ph, label %.preheader51.._crit_edge_crit_edge

.preheader51.._crit_edge_crit_edge:               ; preds = %.preheader51
  %.pre84 = add nuw nsw i64 %indvars.iv70, 1
  br label %._crit_edge

.preheader.lr.ph:                                 ; preds = %.preheader51
  %i.z = trunc nuw nsw i64 %indvars.iv70 to i32   ; 3 uses
  %i.aa = add nsw i64 %indvars.iv70, -1           ; 8 uses
  %i.ab = icmp sgt i64 %indvars.iv70, 0           ; 2 uses
  %i.ac = trunc nuw nsw i64 %i.aa to i32          ; 2 uses
  %i.ad = add nsw i64 %indvars.iv70, -1           ; 3 uses
  %i.ae = icmp sgt i64 %indvars.iv70, 0           ; 3 uses
  %i.af = icmp sgt i64 %indvars.iv70, 0           ; 3 uses
  %i.ag = add nuw nsw i64 %indvars.iv70, 1        ; 17 uses
  %6 = trunc nuw nsw i64 %i.ag to i32             ; 3 uses
  %7 = trunc nuw nsw i64 %i.ag to i32             ; 3 uses
  %i.ah = trunc nuw nsw i64 %i.ag to i32          ; 2 uses
  br i1 %2, label %.preheader.us.peel, label %.preheader

.preheader.us.peel:                               ; preds = %.preheader.lr.ph
  %i.ai = mul nsw i32 %i.x, %i.z                  ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 5 uses
  br i1 %i.ae, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.preheader.us.peel
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !70
  %i.al = sext i32 %i.ak to i64
  %.not112.peel = icmp sgt i64 %indvars.iv70, %i.al
  br i1 %.not112.peel, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = trunc nuw nsw i64 %i.ad to i32
  %i.an = mul nsw i32 %i.x, %i.am
  %i.ao = zext i32 %i.an to i64
  %i.ap = load ptr, ptr %i.o, align 8, !tbaa !181 ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.aj
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !63
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao
  %i.at = load i32, ptr %i.as, align 4, !tbaa !63
  %.not.us.us.2.peel = icmp ne i32 %i.ar, %i.at
  %i.au = zext i1 %.not.us.us.2.peel to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.preheader.us.peel
  %.2.us.us.2.peel = phi i32 [ %i.au, %bb.h ], [ 0, %bb.g ], [ 0, %.preheader.us.peel ] ; 3 uses
  %i.av = icmp ne i32 %i.x, 1
  %or.cond.us.us.3.peel = and i1 %i.av, %i.af
  br i1 %or.cond.us.us.3.peel, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !70
  %i.ax = sext i32 %i.aw to i64
  %.not113.peel = icmp sgt i64 %indvars.iv70, %i.ax
  br i1 %.not113.peel, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = trunc nuw nsw i64 %i.ad to i32
  %i.az = mul nsw i32 %i.x, %i.ay
  %i.ba = zext i32 %i.az to i64
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !181 ; 2 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.aj
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !63
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ba
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !63
  %.not.us.us.3.peel = icmp ne i32 %i.bd, %i.bg
  %i.bh = zext i1 %.not.us.us.3.peel to i32
  %spec.select.3.peel = add nuw nsw i32 %.2.us.us.2.peel, %i.bh
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.2.us.us.3.peel = phi i32 [ %spec.select.3.peel, %bb.k ], [ %.2.us.us.2.peel, %bb.j ], [ %.2.us.us.2.peel, %bb.i ] ; 3 uses
  %.not163 = icmp eq i32 %i.x, 1
  br i1 %.not163, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = load i32, ptr %i.a, align 4, !tbaa !70
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv70, %i.bj
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = zext i32 %i.ai to i64
  %i.bm = load ptr, ptr %i.o, align 8, !tbaa !181 ; 2 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.aj
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !63
  %8 = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.bl
  %i.bp = load i32, ptr %9, align 4, !tbaa !63
  %.not.us.us.4.peel = icmp ne i32 %i.bo, %i.bp
  %i.bq = zext i1 %.not.us.us.4.peel to i32
  %spec.select.4.peel = add nuw nsw i32 %.2.us.us.3.peel, %i.bq
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.2.us.us.4.peel = phi i32 [ %spec.select.4.peel, %bb.n ], [ %.2.us.us.3.peel, %bb.m ], [ %.2.us.us.3.peel, %bb.l ] ; 3 uses
  %.not164 = icmp eq i32 %i.x, 1
  br i1 %.not164, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = load i32, ptr %i.a, align 4, !tbaa !70
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp slt i64 %i.ag, %i.bs
  br i1 %i.bt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %10 = mul nsw i32 %i.x, %6
  %11 = zext i32 %10 to i64
  %i.bu = load ptr, ptr %i.o, align 8, !tbaa !181 ; 2 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.aj
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !63
  %12 = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %13 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %11
  %i.bx = load i32, ptr %13, align 4, !tbaa !63
  %.not.us.us.5.peel = icmp ne i32 %i.bw, %i.bx
  %i.by = zext i1 %.not.us.us.5.peel to i32
  %spec.select.5.peel = add nuw nsw i32 %.2.us.us.4.peel, %i.by
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q
  %.2.us.us.5.peel = phi i32 [ %spec.select.5.peel, %bb.q ], [ %.2.us.us.4.peel, %bb.p ], [ %.2.us.us.4.peel, %bb.o ] ; 2 uses
  %i.bz = load i32, ptr %i.a, align 4, !tbaa !70
  %i.ca = sext i32 %i.bz to i64
  %i.cb = icmp slt i64 %i.ag, %i.ca
  br i1 %i.cb, label %bb.s, label %.split.us.us.peel

bb.s:                                             ; preds = %bb.r
  %14 = mul nsw i32 %i.x, %7
  %15 = zext i32 %14 to i64
  %i.cc = load ptr, ptr %i.o, align 8, !tbaa !181 ; 2 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.aj
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !63
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %15
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !63
  %.not.us.us.6.peel = icmp ne i32 %i.ce, %i.cg
  %i.ch = zext i1 %.not.us.us.6.peel to i32
  %spec.select.6.peel = add nuw nsw i32 %.2.us.us.5.peel, %i.ch
  br label %.split.us.us.peel

.split.us.us.peel:                                ; preds = %bb.r, %bb.s
  %.2.us.us.6.peel = phi i32 [ %spec.select.6.peel, %bb.s ], [ %.2.us.us.5.peel, %bb.r ]
  %i.ci = icmp samesign ugt i32 %.2.us.us.6.peel, 1
  br i1 %i.ci, label %_ZN2cv3Mat3ptrIhEEPT_ii.exit50.us.peel, label %bb.t

_ZN2cv3Mat3ptrIhEEPT_ii.exit50.us.peel:           ; preds = %.split.us.us.peel
  %i.cj = load i32, ptr %i.p, align 4, !tbaa !225
  %i.ck = icmp slt i32 %i.cj, 2
  %i.cl = load ptr, ptr %i.q, align 8, !tbaa !194
  %i.cm = load i64, ptr %i.r, align 8, !tbaa !183
  %i.cn = mul i64 %i.cm, %indvars.iv70
  %.sink.idx.peel = select i1 %i.ck, i64 0, i64 %i.cn
  %.sink.peel = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.sink.idx.peel
  store i8 -1, ptr %.sink.peel, align 1, !tbaa !113
  %.pre83.peel = load i32, ptr %i.c, align 8, !tbaa !69
  br label %bb.t

bb.t:                                             ; preds = %_ZN2cv3Mat3ptrIhEEPT_ii.exit50.us.peel, %.split.us.us.peel
  %i.co = phi i32 [ %i.v, %.split.us.us.peel ], [ %.pre83.peel, %_ZN2cv3Mat3ptrIhEEPT_ii.exit50.us.peel ] ; 5 uses
  %i.cp = icmp sgt i32 %i.co, 1
  br i1 %i.cp, label %.preheader.us.preheader.peel.newph, label %._crit_edge

.preheader.us.preheader.peel.newph:               ; preds = %bb.t
  %i.cq = trunc nuw nsw i64 %i.aa to i32
  %i.cr = trunc nuw nsw i64 %i.aa to i32
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader.peel.newph, %bb.u
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %bb.u ], [ 1, %.preheader.us.preheader.peel.newph ] ; 11 uses
  %i.cs = phi i32 [ %i.dh, %bb.u ], [ %i.co, %.preheader.us.preheader.peel.newph ] ; 16 uses
  %i.ct = mul nsw i32 %i.cs, %i.z                 ; 3 uses
  %i.cu = trunc nuw nsw i64 %indvars.iv67 to i32
  %i.cv = add nsw i32 %i.ct, %i.cu
  %i.cw = sext i32 %i.cv to i64                   ; 8 uses
  %i.cx = add nsw i64 %indvars.iv67, -1           ; 3 uses
  %i.cy = sext i32 %i.cs to i64
  %.not110 = icmp sgt i64 %indvars.iv67, %i.cy
  br i1 %.not110, label %bb.x, label %bb.v

_ZN2cv3Mat3ptrIhEEPT_ii.exit50.us:                ; preds = %.split.us.us
  %i.cz = load i32, ptr %i.p, align 4, !tbaa !225
  %i.da = icmp slt i32 %i.cz, 2                   ; 2 uses
  %i.db = load ptr, ptr %i.q, align 8, !tbaa !194
  %i.dc = load i64, ptr %i.r, align 8, !tbaa !183 ; 2 uses
  %i.dd = mul i64 %i.dc, %indvars.iv70
  %i.de = load i64, ptr %i.s, align 8
  %.sink127 = select i1 %i.da, i64 %i.dc, i64 %i.de
  %.sink.idx = select i1 %i.da, i64 0, i64 %i.dd
  %.sink = getelementptr inbounds nuw i8, ptr %i.db, i64 %.sink.idx
  %i.df = mul i64 %.sink127, %indvars.iv67
  %i.dg = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.df
  store i8 -1, ptr %i.dg, align 1, !tbaa !113
  %.pre83 = load i32, ptr %i.c, align 8, !tbaa !69
  br label %bb.u

bb.u:                                             ; preds = %.split.us.us, %_ZN2cv3Mat3ptrIhEEPT_ii.exit50.us
  %i.dh = phi i32 [ %i.cs, %.split.us.us ], [ %.pre83, %_ZN2cv3Mat3ptrIhEEPT_ii.exit50.us ] ; 5 uses
  %i.di = sext i32 %i.dh to i64
  %i.dj = icmp slt i64 %indvars.iv.next68, %i.di
  br i1 %i.dj, label %.preheader.us, label %._crit_edge, !llvm.loop !226

bb.v:                                             ; preds = %.preheader.us
  %i.dk = load i32, ptr %i.a, align 4, !tbaa !70
  %i.dl = sext i32 %i.dk to i64
  %i.dm = icmp slt i64 %indvars.iv70, %i.dl
  br i1 %i.dm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dn = trunc nuw nsw i64 %i.cx to i32
  %i.do = add nuw nsw i32 %i.ct, %i.dn
  %i.dp = load ptr, ptr %i.o, align 8, !tbaa !181 ; 2 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.cw
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !63
  %i.ds = zext nneg i32 %i.do to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !63
  %.not.us.us = icmp ne i32 %i.dr, %i.du
  %i.dv = zext i1 %.not.us.us to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %.preheader.us
  %.2.us.us.ph = phi i32 [ %i.dv, %bb.w ], [ 0, %.preheader.us ], [ 0, %bb.v ] ; 3 uses
  %i.dw = sext i32 %i.cs to i64
  %i.dx = icmp sle i64 %indvars.iv67, %i.dw
  %or.cond.us.us.1 = and i1 %i.dx, %i.ab
  br i1 %or.cond.us.us.1, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dy = load i32, ptr %i.a, align 4, !tbaa !70
  %i.dz = sext i32 %i.dy to i64
  %.not111 = icmp sgt i64 %indvars.iv70, %i.dz
  br i1 %.not111, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ea = mul nsw i32 %i.cs, %i.ac
  %i.eb = trunc nuw nsw i64 %i.cx to i32
  %i.ec = add nuw nsw i32 %i.ea, %i.eb
  %i.ed = load ptr, ptr %i.o, align 8, !tbaa !181 ; 2 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.cw
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !63
  %i.eg = zext nneg i32 %i.ec to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !63
  %.not.us.us.1 = icmp ne i32 %i.ef, %i.ei
  %i.ej = zext i1 %.not.us.us.1 to i32
  %spec.select.1 = add nuw nsw i32 %.2.us.us.ph, %i.ej
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.y, %bb.z
  %.2.us.us.1 = phi i32 [ %spec.select.1, %bb.z ], [ %.2.us.us.ph, %bb.y ], [ %.2.us.us.ph, %bb.x ] ; 3 uses
  %i.ek = sext i32 %i.cs to i64
  %i.el = icmp slt i64 %indvars.iv67, %i.ek
  %or.cond.us.us.2 = and i1 %i.el, %i.ae
  br i1 %or.cond.us.us.2, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.em = load i32, ptr %i.a, align 4, !tbaa !70
  %i.en = sext i32 %i.em to i64
  %.not112 = icmp sgt i64 %indvars.iv70, %i.en
  br i1 %.not112, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eo = mul nsw i32 %i.cs, %i.cq
  %i.ep = zext i32 %i.eo to i64
  %i.eq = load ptr, ptr %i.o, align 8, !tbaa !181 ; 2 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.cw
  %i.es = load i32, ptr %i.er, align 4, !tbaa !63
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv67
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.ep
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !63
  %.not.us.us.2 = icmp ne i32 %i.es, %i.ev
  %i.ew = zext i1 %.not.us.us.2 to i32
  %spec.select.2 = add nuw nsw i32 %.2.us.us.1, %i.ew
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ab, %bb.ac
  %.2.us.us.2 = phi i32 [ %spec.select.2, %bb.ac ], [ %.2.us.us.1, %bb.ab ], [ %.2.us.us.1, %bb.aa ] ; 3 uses
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 8 uses
  %i.ex = sext i32 %i.cs to i64
  %i.ey = icmp slt i64 %indvars.iv.next68, %i.ex
  %or.cond.us.us.3 = and i1 %i.ey, %i.af
  br i1 %or.cond.us.us.3, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ez = load i32, ptr %i.a, align 4, !tbaa !70
  %i.fa = sext i32 %i.ez to i64
  %.not113 = icmp sgt i64 %indvars.iv70, %i.fa
  br i1 %.not113, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fb = mul nsw i32 %i.cs, %i.cr
  %i.fc = zext i32 %i.fb to i64
  %i.fd = load ptr, ptr %i.o, align 8, !tbaa !181 ; 2 uses
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.cw
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !63
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.next68
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fc
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !63
  %.not.us.us.3 = icmp ne i32 %i.ff, %i.fi
  %i.fj = zext i1 %.not.us.us.3 to i32
  %spec.select.3 = add nuw nsw i32 %.2.us.us.2, %i.fj
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.ae, %bb.af
  %.2.us.us.3 = phi i32 [ %spec.select.3, %bb.af ], [ %.2.us.us.2, %bb.ae ], [ %.2.us.us.2, %bb.ad ] ; 3 uses
  %i.fk = sext i32 %i.cs to i64
  %i.fl = icmp slt i64 %indvars.iv.next68, %i.fk
  br i1 %i.fl, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.fm = load i32, ptr %i.a, align 4, !tbaa !70
  %i.fn = sext i32 %i.fm to i64
  %i.fo = icmp slt i64 %indvars.iv70, %i.fn
  br i1 %i.fo, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fp = zext i32 %i.ct to i64
  %i.fq = load ptr, ptr %i.o, align 8, !tbaa !181 ; 2 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.cw
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !63
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv.next68
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.fp
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !63
  %.not.us.us.4 = icmp ne i32 %i.fs, %i.fv
  %i.fw = zext i1 %.not.us.us.4 to i32
  %spec.select.4 = add nuw nsw i32 %.2.us.us.3, %i.fw
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ah, %bb.ai
  %.2.us.us.4 = phi i32 [ %spec.select.4, %bb.ai ], [ %.2.us.us.3, %bb.ah ], [ %.2.us.us.3, %bb.ag ] ; 3 uses
  %i.fx = sext i32 %i.cs to i64
  %i.fy = icmp slt i64 %indvars.iv.next68, %i.fx
  br i1 %i.fy, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.fz = load i32, ptr %i.a, align 4, !tbaa !70
  %i.ga = sext i32 %i.fz to i64
  %i.gb = icmp slt i64 %i.ag, %i.ga
  br i1 %i.gb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %16 = mul nsw i32 %i.cs, %6
  %17 = zext i32 %16 to i64
  %i.gc = load ptr, ptr %i.o, align 8, !tbaa !181 ; 2 uses
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.cw
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !63
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.next68
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %17
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !63
  %.not.us.us.5 = icmp ne i32 %i.ge, %i.gh
  %i.gi = zext i1 %.not.us.us.5 to i32
  %spec.select.5 = add nuw nsw i32 %.2.us.us.4, %i.gi
  br label %bb.am

bb.am:                                            ; preds = %bb.aj, %bb.ak, %bb.al
  %.2.us.us.5 = phi i32 [ %spec.select.5, %bb.al ], [ %.2.us.us.4, %bb.ak ], [ %.2.us.us.4, %bb.aj ] ; 3 uses
  %i.gj = sext i32 %i.cs to i64
  %i.gk = icmp slt i64 %indvars.iv67, %i.gj
  br i1 %i.gk, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.gl = load i32, ptr %i.a, align 4, !tbaa !70
  %i.gm = sext i32 %i.gl to i64
  %i.gn = icmp slt i64 %i.ag, %i.gm
  br i1 %i.gn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %18 = mul nsw i32 %i.cs, %7
  %19 = zext i32 %18 to i64
  %i.go = load ptr, ptr %i.o, align 8, !tbaa !181 ; 2 uses
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.cw
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !63
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv67
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %19
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !63
  %.not.us.us.6 = icmp ne i32 %i.gq, %i.gt
  %i.gu = zext i1 %.not.us.us.6 to i32
  %spec.select.6 = add nuw nsw i32 %.2.us.us.5, %i.gu
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %.2.us.us.6 = phi i32 [ %spec.select.6, %bb.ao ], [ %.2.us.us.5, %bb.an ], [ %.2.us.us.5, %bb.am ] ; 3 uses
  %i.gv = sext i32 %i.cs to i64
  %.not114 = icmp sgt i64 %indvars.iv67, %i.gv
  br i1 %.not114, label %.split.us.us, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gw = load i32, ptr %i.a, align 4, !tbaa !70
  %i.gx = sext i32 %i.gw to i64
  %i.gy = icmp slt i64 %i.ag, %i.gx
  br i1 %i.gy, label %bb.ar, label %.split.us.us

bb.ar:                                            ; preds = %bb.aq
  %i.gz = mul nsw i32 %i.cs, %i.ah
  %i.ha = trunc nuw nsw i64 %i.cx to i32
  %i.hb = add nuw nsw i32 %i.gz, %i.ha
  %i.hc = load ptr, ptr %i.o, align 8, !tbaa !181 ; 2 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.cw
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !63
  %i.hf = zext nneg i32 %i.hb to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !63
  %.not.us.us.7 = icmp ne i32 %i.he, %i.hh
  %i.hi = zext i1 %.not.us.us.7 to i32
  %spec.select.7 = add nuw nsw i32 %.2.us.us.6, %i.hi
  br label %.split.us.us

.split.us.us:                                     ; preds = %bb.ar, %bb.aq, %bb.ap
  %.2.us.us.7 = phi i32 [ %.2.us.us.6, %bb.ap ], [ %.2.us.us.6, %bb.aq ], [ %spec.select.7, %bb.ar ]
  %i.hj = icmp samesign ugt i32 %.2.us.us.7, 1
  br i1 %i.hj, label %_ZN2cv3Mat3ptrIhEEPT_ii.exit50.us, label %bb.u

._crit_edge58:                                    ; preds = %._crit_edge, %.preheader51.lr.ph, %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.as:                                            ; preds = %bb.e, %bb.d
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.hk

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.br
  %i.hl = phi i32 [ %i.nr, %bb.br ], [ %i.v, %.preheader.lr.ph ]
  %i.hm = phi i32 [ %i.ns, %bb.br ], [ %i.w, %.preheader.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.br ], [ 0, %.preheader.lr.ph ] ; 14 uses
  %i.hn = phi i32 [ %i.ns, %bb.br ], [ %i.x, %.preheader.lr.ph ] ; 15 uses
  %i.ho = mul nsw i32 %i.hn, %i.z                 ; 3 uses
  %i.hp = trunc nuw nsw i64 %indvars.iv to i32
  %i.hq = add nsw i32 %i.ho, %i.hp
  %i.hr = sext i32 %i.hq to i64                   ; 8 uses
  %i.hs = load i32, ptr %i.p, align 4
  %i.ht = icmp slt i32 %i.hs, 2                   ; 18 uses
  %i.hu = load ptr, ptr %i.q, align 8             ; 9 uses
  %i.hv = load i64, ptr %i.r, align 8             ; 18 uses
  %i.hw = load i64, ptr %i.s, align 8             ; 9 uses
  %i.hx = add nsw i64 %indvars.iv, -1             ; 6 uses
  %.not103 = icmp eq i64 %indvars.iv, 0           ; 2 uses
  br i1 %.not103, label %bb.az, label %bb.at

._crit_edge:                                      ; preds = %bb.br, %bb.t, %bb.u, %.preheader51.._crit_edge_crit_edge
  %indvars.iv.next71.pre-phi = phi i64 [ %.pre84, %.preheader51.._crit_edge_crit_edge ], [ %i.ag, %bb.t ], [ %i.ag, %bb.u ], [ %i.ag, %bb.br ] ; 2 uses
  %i.hy = phi i32 [ %i.v, %.preheader51.._crit_edge_crit_edge ], [ %i.dh, %bb.u ], [ %i.co, %bb.t ], [ %i.nr, %bb.br ]
  %i.hz = phi i32 [ %i.w, %.preheader51.._crit_edge_crit_edge ], [ %i.dh, %bb.u ], [ %i.co, %bb.t ], [ %i.ns, %bb.br ]
  %i.ia = phi i32 [ %i.x, %.preheader51.._crit_edge_crit_edge ], [ %i.dh, %bb.u ], [ %i.co, %bb.t ], [ %i.ns, %bb.br ]
  %i.ib = load i32, ptr %i.a, align 4, !tbaa !70
  %i.ic = sext i32 %i.ib to i64
  %i.id = icmp slt i64 %indvars.iv.next71.pre-phi, %i.ic
  br i1 %i.id, label %.preheader51, label %._crit_edge58, !llvm.loop !228

bb.at:                                            ; preds = %.preheader
  %i.ie = sext i32 %i.hn to i64
  %.not104 = icmp sgt i64 %indvars.iv, %i.ie
  br i1 %.not104, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.if = load i32, ptr %i.a, align 4, !tbaa !70
  %i.ig = sext i32 %i.if to i64
  %i.ih = icmp slt i64 %indvars.iv70, %i.ig
  br i1 %i.ih, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ii = trunc nuw nsw i64 %i.hx to i32
  %i.ij = add nuw nsw i32 %i.ho, %i.ii
  %i.ik = load ptr, ptr %i.o, align 8, !tbaa !181 ; 2 uses
  %i.il = getelementptr inbounds [4 x i8], ptr %i.ik, i64 %i.hr
  %i.im = load i32, ptr %i.il, align 4, !tbaa !63
  %i.in = zext nneg i32 %i.ij to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !63
  %.not = icmp eq i32 %i.im, %i.ip
  br i1 %.not, label %bb.aw, label %_ZN2cv3Mat3ptrIhEEPT_ii.exit

_ZN2cv3Mat3ptrIhEEPT_ii.exit:                     ; preds = %bb.av
  %i.iq = mul i64 %i.hv, %indvars.iv70
  %.sink130 = select i1 %i.ht, i64 %i.hv, i64 %i.hw
  %.sink128.idx = select i1 %i.ht, i64 0, i64 %i.iq
  %.sink128 = getelementptr inbounds nuw i8, ptr %i.hu, i64 %.sink128.idx
  %i.ir = mul i64 %.sink130, %i.hx
  %i.is = getelementptr inbounds nuw i8, ptr %.sink128, i64 %i.ir
  %i.it = load i8, ptr %i.is, align 1, !tbaa !113
  %.not48 = icmp eq i8 %i.it, 0
  %i.iu = zext i1 %.not48 to i32
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN2cv3Mat3ptrIhEEPT_ii.exit, %bb.av, %bb.au, %bb.at
  %.2.ph = phi i32 [ %i.iu, %_ZN2cv3Mat3ptrIhEEPT_ii.exit ], [ 0, %bb.av ], [ 0, %bb.at ], [ 0, %bb.au ] ; 4 uses
  %i.iv = sext i32 %i.hn to i64
  %i.iw = icmp sle i64 %indvars.iv, %i.iv
  %or.cond.1 = and i1 %i.iw, %i.ab
  br i1 %or.cond.1, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.ix = load i32, ptr %i.a, align 4, !tbaa !70
  %i.iy = sext i32 %i.ix to i64
  %.not105 = icmp sgt i64 %indvars.iv70, %i.iy
  br i1 %.not105, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.iz = mul nsw i32 %i.hn, %i.ac
  %i.ja = trunc nuw nsw i64 %i.hx to i32
  %i.jb = add nuw nsw i32 %i.iz, %i.ja
  %i.jc = load ptr, ptr %i.o, align 8, !tbaa !181 ; 2 uses
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.jc, i64 %i.hr
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !63
  %i.jf = zext nneg i32 %i.jb to i64
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.jf
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !63
  %.not.1 = icmp eq i32 %i.je, %i.jh
  br i1 %.not.1, label %bb.az, label %_ZN2cv3Mat3ptrIhEEPT_ii.exit.1

_ZN2cv3Mat3ptrIhEEPT_ii.exit.1:                   ; preds = %bb.ay
  %i.ji = mul i64 %i.hv, %i.aa
  %.sink133 = select i1 %i.ht, i64 %i.hv, i64 %i.hw
  %.sink131.idx = select i1 %i.ht, i64 0, i64 %i.ji
  %.sink131 = getelementptr inbounds nuw i8, ptr %i.hu, i64 %.sink131.idx
  %i.jj = mul i64 %.sink133, %i.hx
  %i.jk = getelementptr inbounds nuw i8, ptr %.sink131, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !113
  %.not48.1 = icmp eq i8 %i.jl, 0
  %i.jm = zext i1 %.not48.1 to i32
  %spec.select59.1 = add nuw nsw i32 %.2.ph, %i.jm
  br label %bb.az

bb.az:                                            ; preds = %.preheader, %bb.aw, %bb.ax, %bb.ay, %_ZN2cv3Mat3ptrIhEEPT_ii.exit.1
  %i.jn = phi i64 [ %i.aa, %_ZN2cv3Mat3ptrIhEEPT_ii.exit.1 ], [ %i.aa, %bb.ax ], [ %i.aa, %bb.aw ], [ %i.aa, %bb.ay ], [ %i.ad, %.preheader ] ; 4 uses
  %.2.1 = phi i32 [ %spec.select59.1, %_ZN2cv3Mat3ptrIhEEPT_ii.exit.1 ], [ %.2.ph, %bb.ax ], [ %.2.ph, %bb.aw ], [ %.2.ph, %bb.ay ], [ 0, %.preheader ] ; 4 uses
  %i.jo = sext i32 %i.hn to i64
  %i.jp = icmp slt i64 %indvars.iv, %i.jo
  %or.cond.2 = and i1 %i.jp, %i.ae
  br i1 %or.cond.2, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.jq = load i32, ptr %i.a, align 4, !tbaa !70
  %i.jr = sext i32 %i.jq to i64
  %.not106 = icmp sgt i64 %indvars.iv70, %i.jr
  br i1 %.not106, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.js = trunc nuw nsw i64 %i.jn to i32
  %i.jt = mul nsw i32 %i.hn, %i.js
  %i.ju = zext i32 %i.jt to i64
  %i.jv = load ptr, ptr %i.o, align 8, !tbaa !181 ; 2 uses
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.jv, i64 %i.hr
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !63
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.ju
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !63
  %.not.2 = icmp eq i32 %i.jx, %i.ka
  br i1 %.not.2, label %bb.bc, label %_ZN2cv3Mat3ptrIhEEPT_ii.exit.2

_ZN2cv3Mat3ptrIhEEPT_ii.exit.2:                   ; preds = %bb.bb
  %i.kb = mul i64 %i.hv, %i.jn
  %.sink136 = select i1 %i.ht, i64 %i.hv, i64 %i.hw
  %.sink134.idx = select i1 %i.ht, i64 0, i64 %i.kb
  %.sink134 = getelementptr inbounds nuw i8, ptr %i.hu, i64 %.sink134.idx
  %i.kc = mul i64 %.sink136, %indvars.iv
  %i.kd = getelementptr inbounds nuw i8, ptr %.sink134, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !113
  %.not48.2 = icmp eq i8 %i.ke, 0
  %i.kf = zext i1 %.not48.2 to i32
  %spec.select59.2 = add nuw nsw i32 %.2.1, %i.kf
  br label %bb.bc

bb.bc:                                            ; preds = %bb.az, %bb.ba, %bb.bb, %_ZN2cv3Mat3ptrIhEEPT_ii.exit.2
  %.2.2 = phi i32 [ %spec.select59.2, %_ZN2cv3Mat3ptrIhEEPT_ii.exit.2 ], [ %.2.1, %bb.ba ], [ %.2.1, %bb.az ], [ %.2.1, %bb.bb ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 11 uses
  %i.kg = sext i32 %i.hn to i64
  %i.kh = icmp slt i64 %indvars.iv.next, %i.kg
  %or.cond.3 = and i1 %i.kh, %i.af
  br i1 %or.cond.3, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.ki = load i32, ptr %i.a, align 4, !tbaa !70
  %i.kj = sext i32 %i.ki to i64
  %.not107 = icmp sgt i64 %indvars.iv70, %i.kj
  br i1 %.not107, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kk = trunc nuw nsw i64 %i.jn to i32
  %i.kl = mul nsw i32 %i.hn, %i.kk
  %i.km = zext i32 %i.kl to i64
  %i.kn = load ptr, ptr %i.o, align 8, !tbaa !181 ; 2 uses
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.kn, i64 %i.hr
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !63
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv.next
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.km
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !63
  %.not.3 = icmp eq i32 %i.kp, %i.ks
  br i1 %.not.3, label %bb.bf, label %_ZN2cv3Mat3ptrIhEEPT_ii.exit.3

_ZN2cv3Mat3ptrIhEEPT_ii.exit.3:                   ; preds = %bb.be
  %i.kt = mul i64 %i.hv, %i.jn
  %.sink139 = select i1 %i.ht, i64 %i.hv, i64 %i.hw
  %.sink137.idx = select i1 %i.ht, i64 0, i64 %i.kt
  %.sink137 = getelementptr inbounds nuw i8, ptr %i.hu, i64 %.sink137.idx
  %i.ku = mul i64 %.sink139, %indvars.iv.next
  %i.kv = getelementptr inbounds nuw i8, ptr %.sink137, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !113
  %.not48.3 = icmp eq i8 %i.kw, 0
  %i.kx = zext i1 %.not48.3 to i32
  %spec.select59.3 = add nuw nsw i32 %.2.2, %i.kx
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bc, %bb.bd, %bb.be, %_ZN2cv3Mat3ptrIhEEPT_ii.exit.3
  %.2.3 = phi i32 [ %spec.select59.3, %_ZN2cv3Mat3ptrIhEEPT_ii.exit.3 ], [ %.2.2, %bb.bd ], [ %.2.2, %bb.bc ], [ %.2.2, %bb.be ] ; 4 uses
  %i.ky = sext i32 %i.hn to i64
  %i.kz = icmp slt i64 %indvars.iv.next, %i.ky
  br i1 %i.kz, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.la = load i32, ptr %i.a, align 4, !tbaa !70
  %i.lb = sext i32 %i.la to i64
  %i.lc = icmp slt i64 %indvars.iv70, %i.lb
  br i1 %i.lc, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ld = zext i32 %i.ho to i64
  %i.le = load ptr, ptr %i.o, align 8, !tbaa !181 ; 2 uses
  %i.lf = getelementptr inbounds [4 x i8], ptr %i.le, i64 %i.hr
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !63
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.next
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.ld
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !63
  %.not.4 = icmp eq i32 %i.lg, %i.lj
  br i1 %.not.4, label %bb.bi, label %_ZN2cv3Mat3ptrIhEEPT_ii.exit.4

_ZN2cv3Mat3ptrIhEEPT_ii.exit.4:                   ; preds = %bb.bh
  %i.lk = mul i64 %i.hv, %indvars.iv70
  %.sink142 = select i1 %i.ht, i64 %i.hv, i64 %i.hw
  %.sink140.idx = select i1 %i.ht, i64 0, i64 %i.lk
  %.sink140 = getelementptr inbounds nuw i8, ptr %i.hu, i64 %.sink140.idx
  %i.ll = mul i64 %.sink142, %indvars.iv.next
  %i.lm = getelementptr inbounds nuw i8, ptr %.sink140, i64 %i.ll
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !113
  %.not48.4 = icmp eq i8 %i.ln, 0
  %i.lo = zext i1 %.not48.4 to i32
  %spec.select59.4 = add nuw nsw i32 %.2.3, %i.lo
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bf, %bb.bg, %bb.bh, %_ZN2cv3Mat3ptrIhEEPT_ii.exit.4
  %.2.4 = phi i32 [ %spec.select59.4, %_ZN2cv3Mat3ptrIhEEPT_ii.exit.4 ], [ %.2.3, %bb.bg ], [ %.2.3, %bb.bf ], [ %.2.3, %bb.bh ] ; 4 uses
  %i.lp = sext i32 %i.hn to i64
  %i.lq = icmp slt i64 %indvars.iv.next, %i.lp
  br i1 %i.lq, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.lr = load i32, ptr %i.a, align 4, !tbaa !70
  %i.ls = sext i32 %i.lr to i64
  %i.lt = icmp slt i64 %i.ag, %i.ls
  br i1 %i.lt, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %20 = mul nsw i32 %i.hn, %6
  %21 = zext i32 %20 to i64
  %i.lu = load ptr, ptr %i.o, align 8, !tbaa !181 ; 2 uses
  %i.lv = getelementptr inbounds [4 x i8], ptr %i.lu, i64 %i.hr
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !63
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %indvars.iv.next
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %21
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !63
  %.not.5 = icmp eq i32 %i.lw, %i.lz
  br i1 %.not.5, label %bb.bl, label %_ZN2cv3Mat3ptrIhEEPT_ii.exit.5

_ZN2cv3Mat3ptrIhEEPT_ii.exit.5:                   ; preds = %bb.bk
  %i.ma = mul i64 %i.hv, %i.ag
  %.sink145 = select i1 %i.ht, i64 %i.hv, i64 %i.hw
  %.sink143.idx = select i1 %i.ht, i64 0, i64 %i.ma
  %.sink143 = getelementptr inbounds nuw i8, ptr %i.hu, i64 %.sink143.idx
  %i.mb = mul i64 %.sink145, %indvars.iv.next
  %i.mc = getelementptr inbounds nuw i8, ptr %.sink143, i64 %i.mb
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !113
  %.not48.5 = icmp eq i8 %i.md, 0
  %i.me = zext i1 %.not48.5 to i32
  %spec.select59.5 = add nuw nsw i32 %.2.4, %i.me
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bi, %bb.bj, %bb.bk, %_ZN2cv3Mat3ptrIhEEPT_ii.exit.5
  %.2.5 = phi i32 [ %spec.select59.5, %_ZN2cv3Mat3ptrIhEEPT_ii.exit.5 ], [ %.2.4, %bb.bj ], [ %.2.4, %bb.bi ], [ %.2.4, %bb.bk ] ; 4 uses
  %i.mf = sext i32 %i.hn to i64
  %i.mg = icmp slt i64 %indvars.iv, %i.mf
  br i1 %i.mg, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.mh = load i32, ptr %i.a, align 4, !tbaa !70
  %i.mi = sext i32 %i.mh to i64
  %i.mj = icmp slt i64 %i.ag, %i.mi
  br i1 %i.mj, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %22 = mul nsw i32 %i.hn, %7
  %23 = zext i32 %22 to i64
  %i.mk = load ptr, ptr %i.o, align 8, !tbaa !181 ; 2 uses
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.mk, i64 %i.hr
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !63
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %23
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !63
  %.not.6 = icmp eq i32 %i.mm, %i.mp
  br i1 %.not.6, label %bb.bo, label %_ZN2cv3Mat3ptrIhEEPT_ii.exit.6

_ZN2cv3Mat3ptrIhEEPT_ii.exit.6:                   ; preds = %bb.bn
  %i.mq = mul i64 %i.hv, %i.ag
  %.sink148 = select i1 %i.ht, i64 %i.hv, i64 %i.hw
  %.sink146.idx = select i1 %i.ht, i64 0, i64 %i.mq
  %.sink146 = getelementptr inbounds nuw i8, ptr %i.hu, i64 %.sink146.idx
  %i.mr = mul i64 %.sink148, %indvars.iv
  %i.ms = getelementptr inbounds nuw i8, ptr %.sink146, i64 %i.mr
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !113
  %.not48.6 = icmp eq i8 %i.mt, 0
  %i.mu = zext i1 %.not48.6 to i32
  %spec.select59.6 = add nuw nsw i32 %.2.5, %i.mu
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN2cv3Mat3ptrIhEEPT_ii.exit.6, %bb.bn, %bb.bm, %bb.bl
  %.2.6 = phi i32 [ %spec.select59.6, %_ZN2cv3Mat3ptrIhEEPT_ii.exit.6 ], [ %.2.5, %bb.bm ], [ %.2.5, %bb.bl ], [ %.2.5, %bb.bn ] ; 4 uses
  %i.mv = sext i32 %i.hn to i64
  %.not108 = icmp sgt i64 %indvars.iv, %i.mv
  %or.cond149 = or i1 %.not103, %.not108
  br i1 %or.cond149, label %.split, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mw = load i32, ptr %i.a, align 4, !tbaa !70
  %i.mx = sext i32 %i.mw to i64
  %i.my = icmp slt i64 %i.ag, %i.mx
  br i1 %i.my, label %bb.bq, label %.split

bb.bq:                                            ; preds = %bb.bp
  %i.mz = mul nsw i32 %i.hn, %i.ah
  %i.na = trunc nuw nsw i64 %i.hx to i32
  %i.nb = add nuw nsw i32 %i.mz, %i.na
  %i.nc = load ptr, ptr %i.o, align 8, !tbaa !181 ; 2 uses
  %i.nd = getelementptr inbounds [4 x i8], ptr %i.nc, i64 %i.hr
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !63
  %i.nf = zext nneg i32 %i.nb to i64
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !63
  %.not.7 = icmp eq i32 %i.ne, %i.nh
  br i1 %.not.7, label %.split, label %_ZN2cv3Mat3ptrIhEEPT_ii.exit.7

_ZN2cv3Mat3ptrIhEEPT_ii.exit.7:                   ; preds = %bb.bq
  %i.ni = mul i64 %i.hv, %i.ag
  %.sink152 = select i1 %i.ht, i64 %i.hv, i64 %i.hw
  %.sink150.idx = select i1 %i.ht, i64 0, i64 %i.ni
  %.sink150 = getelementptr inbounds nuw i8, ptr %i.hu, i64 %.sink150.idx
  %i.nj = mul i64 %.sink152, %i.hx
  %i.nk = getelementptr inbounds nuw i8, ptr %.sink150, i64 %i.nj
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !113
  %.not48.7 = icmp eq i8 %i.nl, 0
  %i.nm = zext i1 %.not48.7 to i32
  %spec.select59.7 = add nuw nsw i32 %.2.6, %i.nm
  br label %.split

.split:                                           ; preds = %_ZN2cv3Mat3ptrIhEEPT_ii.exit.7, %bb.bq, %bb.bp, %bb.bo
  %.2.7 = phi i32 [ %.2.6, %bb.bo ], [ %.2.6, %bb.bp ], [ %spec.select59.7, %_ZN2cv3Mat3ptrIhEEPT_ii.exit.7 ], [ %.2.6, %bb.bq ]
  %i.nn = icmp samesign ugt i32 %.2.7, 1
  br i1 %i.nn, label %_ZN2cv3Mat3ptrIhEEPT_ii.exit50, label %bb.br

_ZN2cv3Mat3ptrIhEEPT_ii.exit50:                   ; preds = %.split
  %i.no = mul i64 %i.hv, %indvars.iv70
  %.sink155 = select i1 %i.ht, i64 %i.hv, i64 %i.hw
  %.sink153.idx = select i1 %i.ht, i64 0, i64 %i.no
  %.sink153 = getelementptr inbounds nuw i8, ptr %i.hu, i64 %.sink153.idx
  %i.np = mul i64 %.sink155, %indvars.iv
  %i.nq = getelementptr inbounds nuw i8, ptr %.sink153, i64 %i.np
  store i8 -1, ptr %i.nq, align 1, !tbaa !113
  %.pre = load i32, ptr %i.c, align 8, !tbaa !69  ; 2 uses
  br label %bb.br

bb.br:                                            ; preds = %_ZN2cv3Mat3ptrIhEEPT_ii.exit50, %.split
  %i.nr = phi i32 [ %.pre, %_ZN2cv3Mat3ptrIhEEPT_ii.exit50 ], [ %i.hl, %.split ] ; 2 uses
  %i.ns = phi i32 [ %.pre, %_ZN2cv3Mat3ptrIhEEPT_ii.exit50 ], [ %i.hm, %.split ] ; 5 uses
  %i.nt = sext i32 %i.ns to i64
  %i.nu = icmp slt i64 %indvars.iv.next, %i.nt
  br i1 %i.nu, label %.preheader, label %._crit_edge, !llvm.loop !229
}

declare void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv9Algorithm5clearEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv9Algorithm5writeERNS_11FileStorageE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv9Algorithm4readERKNS_8FileNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv9Algorithm5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK2cv9Algorithm4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #7

declare void @_ZNK2cv9Algorithm14getDefaultNameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv8ximgproc15ScanSegmentImpl22getNumberOfSuperpixelsEv(ptr noundef nonnull align 8 dereferenceable(7368) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !75
  ret i32 %i.b
}

declare void @_ZN2cv9AlgorithmC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse.cvtss2si(<4 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #20

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #7

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #7

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #28
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit unwind label %bb.c, !inline_history !186 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #29, !inline_history !186
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #28, !inline_history !186
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv29ParallelLoopBodyLambdaWrapperclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #32
  unreachable

_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !157
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %1), !inline_history !230
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #12

declare void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #22

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
end_hunk_1
