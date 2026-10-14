Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/calibinit?download=true
inline.NumInlined: 5554
inline.NumDeleted: 2159
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN2cv18ChessBoardDetector13generateQuadsERKNS_3MatEii:bb.a
bb.bd:                                            ; preds = %bb.bc
  %i.hk = fmul double %i.eq, 1.500000e-01         ; 2 uses
  %i.hl = fcmp ult double %.0.i.i, %i.hk
  %i.hm = fcmp ult double %.0.i.i214, %i.hk
  %or.cond156 = select i1 %i.hl, i1 true, i1 %i.hm
  br i1 %or.cond156, label %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE12emplace_backIJRA4_NS0_6Point_IiEERiEEERS1_DpOT_.exit, label %.critedge

bb.be:                                            ; preds = %bb.ap
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bf:                                            ; preds = %bb.aq
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn132 = phi { ptr, i32 } [ %i.ho, %bb.bf ], [ %i.hn, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.bv

bb.bh:                                            ; preds = %bb.as
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %bb.at
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn134 = phi { ptr, i32 } [ %i.hq, %bb.bi ], [ %i.hp, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.bv

.critedge:                                        ; preds = %bb.bd, %.preheader
  %i.hr = sext i32 %i.ch to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.hr ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !110 ; 2 uses
  %i.hu = add nsw i32 %i.ht, 1
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !110
  %.not142 = icmp eq i32 %.084421, %i.ch
  br i1 %.not142, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %.critedge
  %i.hv = icmp slt i32 %.084421, 0
  br i1 %i.hv, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hw = zext nneg i32 %.084421 to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !110
  %.not299 = icmp sgt i32 %i.hy, %i.ht
  br i1 %.not299, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %.critedge
  %.185 = phi i32 [ %i.ch, %bb.bm ], [ %.084421, %bb.bl ], [ %.084421, %.critedge ] ; 2 uses
  %.not.i230 = icmp eq ptr %.sroa.10.0418, %.sroa.16.0419
  br i1 %.not.i230, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.10.0418, i64 32
  store i32 %i.ch, ptr %i.hz, align 4, !tbaa !698
  store i64 %.sroa.0.0.copyload, ptr %.sroa.10.0418, align 4, !tbaa !110
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.10.0418, i64 8
  store i64 %.sroa.9.0.copyload, ptr %i.ia, align 4, !tbaa !110
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.10.0418, i64 16
  store i64 %.sroa.13.0.copyload, ptr %i.ib, align 4, !tbaa !110
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.10.0418, i64 24
  store i64 %.sroa.17.0.copyload, ptr %i.ic, align 4, !tbaa !110
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.10.0418, i64 36
  br label %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE12emplace_backIJRA4_NS0_6Point_IiEERiEEERS1_DpOT_.exit

bb.bp:                                            ; preds = %bb.bn
  %i.ie = ptrtoint ptr %.sroa.16.0419 to i64
  %i.if = ptrtoint ptr %.sroa.0280.0420 to i64
  %i.ig = sub i64 %i.ie, %i.if                    ; 4 uses
  %i.ih = icmp eq i64 %i.ig, 9223372036854775800
  br i1 %i.ih, label %bb.bq, label %_ZNKSt6vectorIN2cv12QuadCountourESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #34
          to label %.noexc252 unwind label %.loopexit.split-lp304

.noexc252:                                        ; preds = %bb.bq
  unreachable

_ZNKSt6vectorIN2cv12QuadCountourESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bp
  %i.ii = sdiv exact i64 %i.ig, 36                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ii, i64 1)
  %i.ij = add nsw i64 %.sroa.speculated.i.i, %i.ii ; 2 uses
  %i.ik = icmp ult i64 %i.ij, %i.ii
  %i.il = call i64 @llvm.umin.i64(i64 %i.ij, i64 256204778801521550)
  %i.im = select i1 %i.ik, i64 256204778801521550, i64 %i.il ; 3 uses
  %.not.i.i250 = icmp ne i64 %i.im, 0
  call void @llvm.assume(i1 %.not.i.i250)
  %i.in = mul nuw nsw i64 %i.im, 36
  %i.io = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.in) #35
          to label %.noexc253 unwind label %.loopexit303 ; 5 uses

.noexc253:                                        ; preds = %_ZNKSt6vectorIN2cv12QuadCountourESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.ig ; 5 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  store i32 %i.ch, ptr %i.iq, align 4, !tbaa !698
  store i64 %.sroa.0.0.copyload, ptr %i.ip, align 4, !tbaa !110
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store i64 %.sroa.9.0.copyload, ptr %i.ir, align 4, !tbaa !110
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store i64 %.sroa.13.0.copyload, ptr %i.is, align 4, !tbaa !110
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  store i64 %.sroa.17.0.copyload, ptr %i.it, align 4, !tbaa !110
  %.not10.i.i.i.i = icmp eq ptr %.sroa.0280.0420, %.sroa.16.0419
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc253, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.iv, %.lr.ph.i.i.i.i ], [ %i.io, %.noexc253 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.iu, %.lr.ph.i.i.i.i ], [ %.sroa.0280.0420, %.noexc253 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(36) %.0911.i.i.i.i, i64 36, i1 false), !tbaa.struct !699, !alias.scope !700
  %i.iu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 36 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 36 ; 2 uses
  %.not.i.i.i.i251 = icmp eq ptr %i.iu, %.sroa.16.0419
  br i1 %.not.i.i.i.i251, label %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i, label %.lr.ph.i.i.i.i, !llvm.loop !688

_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i: ; preds = %.lr.ph.i.i.i.i, %.noexc253
  %.0.lcssa.i.i.i.i = phi ptr [ %i.io, %.noexc253 ], [ %i.iv, %.lr.ph.i.i.i.i ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 36
  %.not.i34.i = icmp eq ptr %.sroa.0280.0420, null
  br i1 %.not.i34.i, label %.noexc231, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0280.0420, i64 noundef %i.ig) #36
  br label %.noexc231

.noexc231:                                        ; preds = %bb.br, %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i
  %i.ix = getelementptr inbounds nuw [36 x i8], ptr %i.io, i64 %i.im
  br label %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE12emplace_backIJRA4_NS0_6Point_IiEERiEEERS1_DpOT_.exit

_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE12emplace_backIJRA4_NS0_6Point_IiEERiEEERS1_DpOT_.exit: ; preds = %.noexc231, %bb.bo, %bb.bd, %bb.bc, %_ZN2cvL9normL2SqrIdEET_RKNS_6Point_IiEE.exit229
  %.sroa.10.1 = phi ptr [ %.sroa.10.0418, %_ZN2cvL9normL2SqrIdEET_RKNS_6Point_IiEE.exit229 ], [ %.sroa.10.0418, %bb.bd ], [ %.sroa.10.0418, %bb.bc ], [ %i.iw, %.noexc231 ], [ %i.id, %bb.bo ]
  %.sroa.16.1 = phi ptr [ %.sroa.16.0419, %_ZN2cvL9normL2SqrIdEET_RKNS_6Point_IiEE.exit229 ], [ %.sroa.16.0419, %bb.bd ], [ %.sroa.16.0419, %bb.bc ], [ %i.ix, %.noexc231 ], [ %.sroa.16.0419, %bb.bo ]
  %.sroa.0280.1 = phi ptr [ %.sroa.0280.0420, %_ZN2cvL9normL2SqrIdEET_RKNS_6Point_IiEE.exit229 ], [ %.sroa.0280.0420, %bb.bd ], [ %.sroa.0280.0420, %bb.bc ], [ %i.io, %.noexc231 ], [ %.sroa.0280.0420, %bb.bo ]
  %.2 = phi i32 [ %.084421, %_ZN2cvL9normL2SqrIdEET_RKNS_6Point_IiEE.exit229 ], [ %.084421, %bb.bd ], [ %.084421, %bb.bc ], [ %.185, %.noexc231 ], [ %.185, %bb.bo ]
  %.pre = load ptr, ptr %10, align 8, !tbaa !195
  br label %bb.bs

bb.bs:                                            ; preds = %bb.am, %._crit_edge, %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE12emplace_backIJRA4_NS0_6Point_IiEERiEEERS1_DpOT_.exit
  %i.iy = phi ptr [ %.pre, %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE12emplace_backIJRA4_NS0_6Point_IiEERiEEERS1_DpOT_.exit ], [ %.pre551, %bb.am ], [ %i.du, %._crit_edge ] ; 3 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE12emplace_backIJRA4_NS0_6Point_IiEERiEEERS1_DpOT_.exit ], [ %.sroa.10.0418, %bb.am ], [ %.sroa.10.0418, %._crit_edge ]
  %.sroa.16.2 = phi ptr [ %.sroa.16.1, %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE12emplace_backIJRA4_NS0_6Point_IiEERiEEERS1_DpOT_.exit ], [ %.sroa.16.0419, %bb.am ], [ %.sroa.16.0419, %._crit_edge ]
  %.sroa.0280.2 = phi ptr [ %.sroa.0280.1, %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE12emplace_backIJRA4_NS0_6Point_IiEERiEEERS1_DpOT_.exit ], [ %.sroa.0280.0420, %bb.am ], [ %.sroa.0280.0420, %._crit_edge ]
  %.3 = phi i32 [ %.2, %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE12emplace_backIJRA4_NS0_6Point_IiEERiEEERS1_DpOT_.exit ], [ %.084421, %bb.am ], [ %.084421, %._crit_edge ]
  %.not.i.i.i = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.iz = load ptr, ptr %i.ar, align 8, !tbaa !197
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = ptrtoint ptr %i.iy to i64
  %i.jc = sub i64 %i.ja, %i.jb
  call void @_ZdlPvm(ptr noundef nonnull %i.iy, i64 noundef %i.jc) #36
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit:    ; preds = %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit, %bb.z, %bb.v
  %.sroa.10.4 = phi ptr [ %.sroa.10.0418, %bb.v ], [ %.sroa.10.0418, %bb.z ], [ %.sroa.10.2, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit ] ; 2 uses
  %.sroa.16.4 = phi ptr [ %.sroa.16.0419, %bb.v ], [ %.sroa.16.0419, %bb.z ], [ %.sroa.16.2, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit ] ; 2 uses
  %.sroa.0280.4 = phi ptr [ %.sroa.0280.0420, %bb.v ], [ %.sroa.0280.0420, %bb.z ], [ %.sroa.0280.2, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit ] ; 2 uses
  %.5 = phi i32 [ %.084421, %bb.v ], [ %.084421, %bb.z ], [ %.3, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.jd = icmp sgt i64 %indvars.iv, 0
  br i1 %i.jd, label %bb.v, label %._crit_edge424, !llvm.loop !689

bb.bv:                                            ; preds = %bb.bj, %bb.bg, %.loopexit.split-lp304, %.loopexit303, %bb.an, %bb.ak
  %.pn145.pn.pn = phi { ptr, i32 } [ %.pn145.pn, %bb.ak ], [ %i.ek, %bb.an ], [ %.pn134, %bb.bj ], [ %.pn132, %bb.bg ], [ %lpad.loopexit305, %.loopexit303 ], [ %lpad.loopexit.split-lp306, %.loopexit.split-lp304 ] ; 2 uses
  %i.je = load ptr, ptr %10, align 8, !tbaa !195  ; 3 uses
  %.not.i.i.i232 = icmp eq ptr %i.je, null
  br i1 %.not.i.i.i232, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit233, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jf = load ptr, ptr %i.ar, align 8, !tbaa !197
  %i.jg = ptrtoint ptr %i.jf to i64
  %i.jh = ptrtoint ptr %i.je to i64
  %i.ji = sub i64 %i.jg, %i.jh
  call void @_ZdlPvm(ptr noundef nonnull %i.je, i64 noundef %i.ji) #36
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit233

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit233: ; preds = %.loopexit, %.loopexit.split-lp, %bb.bw, %bb.bv
  %.pn145.pn.pn.pn = phi { ptr, i32 } [ %.pn145.pn.pn, %bb.bw ], [ %.pn145.pn.pn, %bb.bv ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.cl

_ZN2cv10AutoBufferINS_14ChessBoardQuadELm19EE8allocateEm.exit: ; preds = %bb.t, %_ZN2cv10AutoBufferINS_14ChessBoardQuadELm19EE10deallocateEv.exit.i, %bb.m
  %i.jj = shl nsw i64 %.sroa.speculated259, 2     ; 5 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 1912 ; 3 uses
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !183
  %.not.i234 = icmp ugt i64 %i.jj, %i.jl
  br i1 %.not.i234, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %_ZN2cv10AutoBufferINS_14ChessBoardQuadELm19EE8allocateEm.exit
  store i64 %i.jj, ptr %i.jk, align 8, !tbaa !183
  br label %_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EE8allocateEm.exit

bb.by:                                            ; preds = %_ZN2cv10AutoBufferINS_14ChessBoardQuadELm19EE8allocateEm.exit
  %i.jm = load ptr, ptr %i.g, align 8, !tbaa !182 ; 3 uses
  %.not.i.i235 = icmp eq ptr %i.jm, %i.i
  br i1 %.not.i.i235, label %_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EE10deallocateEv.exit.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_ZdaPv(ptr noundef nonnull %i.jm) #36
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  store ptr %i.i, ptr %i.g, align 8, !tbaa !182
  br label %_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EE10deallocateEv.exit.i

_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EE10deallocateEv.exit.i: ; preds = %bb.cb, %bb.by
  store i64 %i.jj, ptr %i.jk, align 8, !tbaa !183
  %i.jo = icmp ugt i64 %i.jj, 29
  br i1 %i.jo, label %bb.cc, label %_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EE8allocateEm.exit

bb.cc:                                            ; preds = %_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EE10deallocateEv.exit.i
  %i.jp = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.jj, i64 48) ; 2 uses
  %i.jq = extractvalue { i64, i1 } %i.jp, 1
  %i.jr = extractvalue { i64, i1 } %i.jp, 0
  %i.js = select i1 %i.jq, i64 -1, i64 %i.jr
  %i.jt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.js) #35
          to label %.noexc236 unwind label %bb.ce ; 2 uses

.noexc236:                                        ; preds = %bb.cc
  %i.ju = mul i64 %.sroa.speculated259, 192
  %i.jv = add i64 %i.ju, -48                      ; 2 uses
  %i.jw = urem i64 %i.jv, 48
  %i.jx = sub nuw i64 %i.jv, %i.jw
  %i.jy = add i64 %i.jx, 48
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.jt, i8 0, i64 %i.jy, i1 false)
  store ptr %i.jt, ptr %i.g, align 8, !tbaa !182
  br label %_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EE8allocateEm.exit

_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EE8allocateEm.exit: ; preds = %bb.bx, %_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EE10deallocateEv.exit.i, %.noexc236
  %.not438 = icmp eq ptr %.sroa.10.0.lcssa, %.sroa.0280.0.lcssa
  br i1 %.not438, label %._crit_edge435, label %.lr.ph434

.lr.ph434:                                        ; preds = %_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EE8allocateEm.exit
  %i.jz = shl nsw i32 %3, 1                       ; 3 uses
  %i.ka = sitofp i32 %i.jz to float
  %i.kb = mul nsw i32 %i.jz, %i.jz
  %i.kc = uitofp nneg i32 %i.kb to float
  %umax = call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  br label %bb.cf

._crit_edge435:                                   ; preds = %_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EE8allocateEm.exit
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 3312
  store i32 0, ptr %i.kd, align 8, !tbaa !97
  %.not.i.i.i237 = icmp eq ptr %.sroa.0280.0.lcssa, null
  br i1 %.not.i.i.i237, label %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EED2Ev.exit, label %bb.cd

bb.cd:                                            ; preds = %._crit_edge435.thread, %._crit_edge435
  %i.ke = ptrtoint ptr %.sroa.16.0.lcssa to i64
  %i.kf = sub i64 %i.ke, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0280.0.lcssa, i64 noundef %i.kf) #36
  br label %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv12QuadCountourESaIS1_EED2Ev.exit: ; preds = %bb.cd, %._crit_edge435
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ad) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.ce:                                            ; preds = %bb.cc, %bb.r
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.cf:                                            ; preds = %.lr.ph434, %bb.ch
  %.0433 = phi i32 [ 0, %.lr.ph434 ], [ %.1, %bb.ch ] ; 4 uses
  %.080432 = phi i64 [ 0, %.lr.ph434 ], [ %i.na, %bb.ch ] ; 2 uses
  %i.kh = getelementptr inbounds nuw [36 x i8], ptr %.sroa.0280.0.lcssa, i64 %.080432 ; 5 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  %i.kj = load i32, ptr %i.ki, align 4
  %.not122 = icmp eq i32 %i.kj, %.084.lcssa
  %or.cond158 = select i1 %.not, i1 true, i1 %.not122
  br i1 %or.cond158, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.kk = sext i32 %.0433 to i64
  %i.kl = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.km = getelementptr inbounds nuw [88 x i8], ptr %i.kl, i64 %i.kk ; 9 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.5.0..sroa_idx, i8 0, i64 9, i1 false)
  store i32 0, ptr %i.km, align 8, !tbaa !110
  %.sroa.4257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  store i32 -1, ptr %.sroa.4257.0..sroa_idx, align 4, !tbaa !110
  %i.kn = getelementptr i8, ptr %i.km, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.kn, i8 0, i64 68, i1 false)
  %i.ko = shl nsw i32 %.0433, 2
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 24 ; 2 uses
  %i.kq = sext i32 %i.ko to i64                   ; 4 uses
  %i.kr = load <2 x i32>, ptr %i.kh, align 4, !tbaa !110
  %i.ks = sitofp <2 x i32> %i.kr to <2 x float>
  %i.kt = load ptr, ptr %i.g, align 8, !tbaa !182
  %i.ku = getelementptr inbounds nuw [48 x i8], ptr %i.kt, i64 %i.kq ; 3 uses
  store <2 x float> %i.ks, ptr %i.ku, align 8, !tbaa !102
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, i8 0, i64 40, i1 false)
  store ptr %i.ku, ptr %i.kp, align 8, !tbaa !101
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kw = load <2 x i32>, ptr %i.kv, align 4, !tbaa !110
  %i.kx = sitofp <2 x i32> %i.kw to <2 x float>
  %i.ky = load ptr, ptr %i.g, align 8, !tbaa !182
  %i.kz = getelementptr inbounds nuw [48 x i8], ptr %i.ky, i64 %i.kq ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 48 ; 2 uses
  store <2 x float> %i.kx, ptr %i.la, align 8, !tbaa !102
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.kz, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.1, i8 0, i64 40, i1 false)
  %i.lb = getelementptr inbounds nuw i8, ptr %i.km, i64 32 ; 2 uses
  store ptr %i.la, ptr %i.lb, align 8, !tbaa !101
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.ld = load <2 x i32>, ptr %i.lc, align 4, !tbaa !110
  %i.le = sitofp <2 x i32> %i.ld to <2 x float>
  %i.lf = load ptr, ptr %i.g, align 8, !tbaa !182
  %i.lg = getelementptr inbounds nuw [48 x i8], ptr %i.lf, i64 %i.kq ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 96 ; 2 uses
  store <2 x float> %i.le, ptr %i.lh, align 8, !tbaa !102
  %.sroa.4.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.lg, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.2, i8 0, i64 40, i1 false)
  %i.li = getelementptr inbounds nuw i8, ptr %i.km, i64 40 ; 2 uses
  store ptr %i.lh, ptr %i.li, align 8, !tbaa !101
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  %i.lk = load <2 x i32>, ptr %i.lj, align 4, !tbaa !110
  %i.ll = sitofp <2 x i32> %i.lk to <2 x float>   ; 5 uses
  %i.lm = load ptr, ptr %i.g, align 8, !tbaa !182
  %i.ln = getelementptr inbounds nuw [48 x i8], ptr %i.lm, i64 %i.kq ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 144 ; 2 uses
  store <2 x float> %i.ll, ptr %i.lo, align 8, !tbaa !102
  %.sroa.4.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.ln, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.3, i8 0, i64 40, i1 false)
  %i.lp = getelementptr inbounds nuw i8, ptr %i.km, i64 48
  store ptr %i.lo, ptr %i.lp, align 8, !tbaa !101
  %i.lq = load ptr, ptr %i.kp, align 8, !tbaa !101
  %i.lr = load ptr, ptr %i.lb, align 8, !tbaa !101
  %i.ls = load ptr, ptr %i.li, align 8, !tbaa !101
  %i.lt = load <2 x float>, ptr %i.lq, align 4, !tbaa !102 ; 2 uses
  %i.lu = load <2 x float>, ptr %i.lr, align 4, !tbaa !102
  %i.lv = load <2 x float>, ptr %i.ls, align 4, !tbaa !102
  %i.lw = shufflevector <2 x float> %i.ll, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.lx = shufflevector <2 x float> %i.ll, <2 x float> %i.lt, <4 x i32> <i32 2, i32 poison, i32 poison, i32 0>
  %i.ly = shufflevector <2 x float> %i.lu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.lz = shufflevector <4 x float> %i.lx, <4 x float> %i.ly, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.ma = shufflevector <2 x float> %i.lv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.mb = shufflevector <4 x float> %i.lz, <4 x float> %i.ma, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.mc = shufflevector <4 x float> %i.lw, <4 x float> %i.mb, <4 x i32> <i32 5, i32 6, i32 2, i32 4>
  %i.md = fsub <4 x float> %i.mb, %i.mc           ; 2 uses
  %i.me = shufflevector <2 x float> %i.ll, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 poison>
  %i.mf = shufflevector <2 x float> %i.ll, <2 x float> %i.lt, <4 x i32> <i32 3, i32 poison, i32 poison, i32 1>
  %i.mg = shufflevector <4 x float> %i.mf, <4 x float> %i.ly, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.mh = shufflevector <4 x float> %i.mg, <4 x float> %i.ma, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.mi = shufflevector <4 x float> %i.me, <4 x float> %i.mh, <4 x i32> <i32 5, i32 6, i32 2, i32 4>
  %i.mj = fsub <4 x float> %i.mh, %i.mi           ; 2 uses
  %i.mk = fmul <4 x float> %i.mj, %i.mj
  %i.ml = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.md, <4 x float> %i.md, <4 x float> %i.mk) ; 4 uses
  %i.mm = extractelement <4 x float> %i.ml, i64 0 ; 2 uses
  %i.mn = fcmp olt float %i.mm, f0x7F7FFFFF
  %.sroa.speculated = select i1 %i.mn, float %i.mm, float f0x7F7FFFFF ; 2 uses
  %i.mo = extractelement <4 x float> %i.ml, i64 1 ; 2 uses
  %i.mp = fcmp olt float %i.mo, %.sroa.speculated
  %.sroa.speculated.1 = select i1 %i.mp, float %i.mo, float %.sroa.speculated ; 2 uses
  %i.mq = extractelement <4 x float> %i.ml, i64 2 ; 2 uses
  %i.mr = fcmp olt float %i.mq, %.sroa.speculated.1
  %.sroa.speculated.2 = select i1 %i.mr, float %i.mq, float %.sroa.speculated.1 ; 2 uses
  %i.ms = extractelement <4 x float> %i.ml, i64 3 ; 2 uses
  %i.mt = fcmp olt float %i.ms, %.sroa.speculated.2
  %.sroa.speculated.3 = select i1 %i.mt, float %i.ms, float %.sroa.speculated.2 ; 2 uses
  %i.mu = add nsw i32 %.0433, 1
  %i.mv = getelementptr inbounds nuw i8, ptr %i.km, i64 20
  %i.mw = call noundef float @sqrtf(float noundef %.sroa.speculated.3) #37
  %i.mx = fmul float %i.mw, 2.000000e+00
  %i.my = call float @llvm.fmuladd.f32(float %i.mx, float %i.ka, float %i.kc)
  %i.mz = fadd float %.sroa.speculated.3, %i.my
  store float %i.mz, ptr %i.mv, align 4, !tbaa !165
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cf, %bb.cg
  %.1 = phi i32 [ %i.mu, %bb.cg ], [ %.0433, %bb.cf ] ; 2 uses
  %i.na = add nuw i64 %.080432, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.na, %umax
  br i1 %exitcond.not, label %._crit_edge435.thread, label %bb.cf, !llvm.loop !690

._crit_edge435.thread:                            ; preds = %bb.ch
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 3312
  store i32 %.1, ptr %i.nb, align 8, !tbaa !97
  br label %bb.cd
end_hunk_0
