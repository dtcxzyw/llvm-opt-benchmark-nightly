Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/calibinit?download=true
inline.NumInlined: 5554
inline.NumDeleted: 2159
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 112
begin_hunk_0_@_ZN2cv18ChessBoardDetector13generateQuadsERKNS_3MatEii:bb.a
  %.not.i.i250 = icmp ne i64 %i.jb, 0
  call void @llvm.assume(i1 %.not.i.i250)
  %i.jc = mul nuw nsw i64 %i.jb, 36
  %i.jd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jc) #35
          to label %.noexc253 unwind label %.loopexit304 ; 5 uses

.noexc253:                                        ; preds = %_ZNKSt6vectorIN2cv12QuadCountourESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.iv ; 5 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  store i32 %i.ch, ptr %i.jf, align 4, !tbaa !252
  store i64 %.sroa.0.0.copyload, ptr %i.je, align 4
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store i64 %.sroa.9.0.copyload, ptr %i.jg, align 4
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store i64 %.sroa.13.0.copyload, ptr %i.jh, align 4
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  store i64 %.sroa.17.0.copyload, ptr %i.ji, align 4
  %.not10.i.i.i.i = icmp eq ptr %.sroa.0280.0421, %.sroa.10.0420
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc253, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.jk, %.lr.ph.i.i.i.i ], [ %i.jd, %.noexc253 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.jj, %.lr.ph.i.i.i.i ], [ %.sroa.0280.0421, %.noexc253 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(36) %.0911.i.i.i.i, i64 36, i1 false), !tbaa.struct !254, !alias.scope !255
  %i.jj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 36 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 36 ; 2 uses
  %.not.i.i.i.i251 = icmp eq ptr %i.jj, %.sroa.10.0420
  br i1 %.not.i.i.i.i251, label %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i, label %.lr.ph.i.i.i.i, !llvm.loop !259

_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i: ; preds = %.lr.ph.i.i.i.i, %.noexc253
  %.0.lcssa.i.i.i.i = phi ptr [ %i.jd, %.noexc253 ], [ %i.jk, %.lr.ph.i.i.i.i ]
  %i.jl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 36
  %.not.i34.i = icmp eq ptr %.sroa.0280.0421, null
  br i1 %.not.i34.i, label %.noexc231, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0280.0421, i64 noundef %i.iv) #36
  br label %.noexc231

.noexc231:                                        ; preds = %bb.br, %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i
  %i.jm = getelementptr inbounds nuw [36 x i8], ptr %i.jd, i64 %i.jb
  br label %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE12emplace_backIJRA4_NS0_6Point_IiEERiEEERS1_DpOT_.exit

_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE12emplace_backIJRA4_NS0_6Point_IiEERiEEERS1_DpOT_.exit: ; preds = %.noexc231, %bb.bo, %bb.bd, %bb.bc, %_ZN2cvL9normL2SqrIdEET_RKNS_6Point_IiEE.exit229
  %.sroa.17.1 = phi ptr [ %.sroa.17.0419, %_ZN2cvL9normL2SqrIdEET_RKNS_6Point_IiEE.exit229 ], [ %.sroa.17.0419, %bb.bd ], [ %.sroa.17.0419, %bb.bc ], [ %i.jm, %.noexc231 ], [ %.sroa.17.0419, %bb.bo ]
  %.sroa.10.1 = phi ptr [ %.sroa.10.0420, %_ZN2cvL9normL2SqrIdEET_RKNS_6Point_IiEE.exit229 ], [ %.sroa.10.0420, %bb.bd ], [ %.sroa.10.0420, %bb.bc ], [ %i.jl, %.noexc231 ], [ %i.is, %bb.bo ]
  %.sroa.0280.1 = phi ptr [ %.sroa.0280.0421, %_ZN2cvL9normL2SqrIdEET_RKNS_6Point_IiEE.exit229 ], [ %.sroa.0280.0421, %bb.bd ], [ %.sroa.0280.0421, %bb.bc ], [ %i.jd, %.noexc231 ], [ %.sroa.0280.0421, %bb.bo ]
  %.2108 = phi i32 [ %.0106422, %_ZN2cvL9normL2SqrIdEET_RKNS_6Point_IiEE.exit229 ], [ %.0106422, %bb.bd ], [ %.0106422, %bb.bc ], [ %.1107, %.noexc231 ], [ %.1107, %bb.bo ]
  %.pre = load ptr, ptr %10, align 8, !tbaa !245
  br label %bb.bs

bb.bs:                                            ; preds = %bb.am, %._crit_edge, %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE12emplace_backIJRA4_NS0_6Point_IiEERiEEERS1_DpOT_.exit
  %i.jn = phi ptr [ %.pre, %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE12emplace_backIJRA4_NS0_6Point_IiEERiEEERS1_DpOT_.exit ], [ %.pre552, %bb.am ], [ %i.ej, %._crit_edge ] ; 3 uses
  %.sroa.17.2 = phi ptr [ %.sroa.17.1, %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE12emplace_backIJRA4_NS0_6Point_IiEERiEEERS1_DpOT_.exit ], [ %.sroa.17.0419, %bb.am ], [ %.sroa.17.0419, %._crit_edge ]
  %.sroa.10.2 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE12emplace_backIJRA4_NS0_6Point_IiEERiEEERS1_DpOT_.exit ], [ %.sroa.10.0420, %bb.am ], [ %.sroa.10.0420, %._crit_edge ]
  %.sroa.0280.2 = phi ptr [ %.sroa.0280.1, %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE12emplace_backIJRA4_NS0_6Point_IiEERiEEERS1_DpOT_.exit ], [ %.sroa.0280.0421, %bb.am ], [ %.sroa.0280.0421, %._crit_edge ]
  %.3109 = phi i32 [ %.2108, %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EE12emplace_backIJRA4_NS0_6Point_IiEERiEEERS1_DpOT_.exit ], [ %.0106422, %bb.am ], [ %.0106422, %._crit_edge ]
  %.not.i.i.i = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jo = load ptr, ptr %i.ar, align 8, !tbaa !247
  %i.jp = ptrtoint ptr %i.jo to i64
  %i.jq = ptrtoint ptr %i.jn to i64
  %i.jr = sub i64 %i.jp, %i.jq
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef %i.jr) #36
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit:    ; preds = %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit, %bb.z, %bb.v
  %.sroa.17.4 = phi ptr [ %.sroa.17.0419, %bb.v ], [ %.sroa.17.0419, %bb.z ], [ %.sroa.17.2, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit ] ; 2 uses
  %.sroa.10.4 = phi ptr [ %.sroa.10.0420, %bb.v ], [ %.sroa.10.0420, %bb.z ], [ %.sroa.10.2, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit ] ; 2 uses
  %.sroa.0280.4 = phi ptr [ %.sroa.0280.0421, %bb.v ], [ %.sroa.0280.0421, %bb.z ], [ %.sroa.0280.2, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit ] ; 2 uses
  %.5111 = phi i32 [ %.0106422, %bb.v ], [ %.0106422, %bb.z ], [ %.3109, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.js = icmp sgt i64 %indvars.iv, 0
  br i1 %i.js, label %bb.v, label %._crit_edge425, !llvm.loop !260

bb.bv:                                            ; preds = %bb.bj, %bb.bg, %.loopexit.split-lp305, %.loopexit304, %bb.an, %bb.ak
  %.sroa.17.0419480 = phi ptr [ %.sroa.17.0419, %bb.ak ], [ %.sroa.17.0419, %bb.an ], [ %.sroa.17.0419, %bb.bj ], [ %.sroa.17.0419, %bb.bg ], [ %.sroa.10.0420, %.loopexit304 ], [ %.sroa.10.0420, %.loopexit.split-lp305 ] ; 2 uses
  %.pn145.pn.pn = phi { ptr, i32 } [ %.pn145.pn, %bb.ak ], [ %i.ez, %bb.an ], [ %.pn134, %bb.bj ], [ %.pn132, %bb.bg ], [ %lpad.loopexit306, %.loopexit304 ], [ %lpad.loopexit.split-lp307, %.loopexit.split-lp305 ] ; 2 uses
  %i.jt = load ptr, ptr %10, align 8, !tbaa !245  ; 3 uses
  %.not.i.i.i232 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i232, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit233, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ju = load ptr, ptr %i.ar, align 8, !tbaa !247
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = ptrtoint ptr %i.jt to i64
  %i.jx = sub i64 %i.jv, %i.jw
  call void @_ZdlPvm(ptr noundef nonnull %i.jt, i64 noundef %i.jx) #36
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit233

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit233: ; preds = %.loopexit, %.loopexit.split-lp, %bb.bw, %bb.bv
  %.sroa.17.0419479 = phi ptr [ %.sroa.17.0419480, %bb.bw ], [ %.sroa.17.0419480, %bb.bv ], [ %.sroa.17.0419, %.loopexit ], [ %.sroa.17.0419, %.loopexit.split-lp ]
  %.pn145.pn.pn.pn = phi { ptr, i32 } [ %.pn145.pn.pn, %bb.bw ], [ %.pn145.pn.pn, %bb.bv ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.cl

_ZN2cv10AutoBufferINS_14ChessBoardQuadELm19EE8allocateEm.exit: ; preds = %bb.t, %_ZN2cv10AutoBufferINS_14ChessBoardQuadELm19EE10deallocateEv.exit.i, %bb.m
  %i.jy = shl i64 %.sroa.speculated259, 2         ; 5 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 1912 ; 3 uses
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !203
  %.not.i234 = icmp ugt i64 %i.jy, %i.ka
  br i1 %.not.i234, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %_ZN2cv10AutoBufferINS_14ChessBoardQuadELm19EE8allocateEm.exit
  store i64 %i.jy, ptr %i.jz, align 8, !tbaa !203
  br label %_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EE8allocateEm.exit

bb.by:                                            ; preds = %_ZN2cv10AutoBufferINS_14ChessBoardQuadELm19EE8allocateEm.exit
  %i.kb = load ptr, ptr %i.g, align 8, !tbaa !202 ; 3 uses
  %.not.i.i235 = icmp eq ptr %i.kb, %i.i
  br i1 %.not.i.i235, label %_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EE10deallocateEv.exit.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.kc = icmp eq ptr %i.kb, null
  br i1 %i.kc, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_ZdaPv(ptr noundef nonnull %i.kb) #36
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  store ptr %i.i, ptr %i.g, align 8, !tbaa !202
  br label %_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EE10deallocateEv.exit.i

_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EE10deallocateEv.exit.i: ; preds = %bb.cb, %bb.by
  store i64 %i.jy, ptr %i.jz, align 8, !tbaa !203
  %i.kd = icmp ugt i64 %i.jy, 29
  br i1 %i.kd, label %bb.cc, label %_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EE8allocateEm.exit

bb.cc:                                            ; preds = %_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EE10deallocateEv.exit.i
  %i.ke = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.jy, i64 48) ; 2 uses
  %i.kf = extractvalue { i64, i1 } %i.ke, 1
  %i.kg = extractvalue { i64, i1 } %i.ke, 0
  %i.kh = select i1 %i.kf, i64 -1, i64 %i.kg
  %i.ki = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kh) #35
          to label %.noexc236 unwind label %bb.ce ; 2 uses

.noexc236:                                        ; preds = %bb.cc
  %i.kj = mul i64 %.sroa.speculated259, 192
  %i.kk = add i64 %i.kj, -48                      ; 2 uses
  %i.kl = urem i64 %i.kk, 48
  %i.km = sub nuw i64 %i.kk, %i.kl
  %i.kn = add i64 %i.km, 48
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ki, i8 0, i64 %i.kn, i1 false)
  store ptr %i.ki, ptr %i.g, align 8, !tbaa !202
  br label %_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EE8allocateEm.exit

_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EE8allocateEm.exit: ; preds = %bb.bx, %_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EE10deallocateEv.exit.i, %.noexc236
  %.not439 = icmp eq ptr %.sroa.10.0.lcssa, %.sroa.0280.0.lcssa
  br i1 %.not439, label %._crit_edge436, label %.lr.ph435

.lr.ph435:                                        ; preds = %_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EE8allocateEm.exit
  %i.ko = shl nsw i32 %3, 1                       ; 3 uses
  %i.kp = sitofp i32 %i.ko to float
  %i.kq = mul nsw i32 %i.ko, %i.ko
  %i.kr = uitofp nneg i32 %i.kq to float
  %umax = call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  br label %bb.cf

._crit_edge436:                                   ; preds = %_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EE8allocateEm.exit
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 3312
  store i32 0, ptr %i.ks, align 8, !tbaa !42
  %.not.i.i.i237 = icmp eq ptr %.sroa.0280.0.lcssa, null
  br i1 %.not.i.i.i237, label %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EED2Ev.exit, label %bb.cd

bb.cd:                                            ; preds = %._crit_edge436.thread, %._crit_edge436
  %i.kt = ptrtoint ptr %.sroa.17.0.lcssa to i64
  %i.ku = sub i64 %i.kt, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0280.0.lcssa, i64 noundef %i.ku) #36
  br label %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv12QuadCountourESaIS1_EED2Ev.exit: ; preds = %bb.cd, %._crit_edge436
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ad) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.ce:                                            ; preds = %bb.cc, %bb.r
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.cf:                                            ; preds = %.lr.ph435, %bb.ch
  %.0434 = phi i32 [ 0, %.lr.ph435 ], [ %.1, %bb.ch ] ; 4 uses
  %.0112433 = phi i64 [ 0, %.lr.ph435 ], [ %i.np, %bb.ch ] ; 2 uses
  %i.kw = getelementptr inbounds nuw [36 x i8], ptr %.sroa.0280.0.lcssa, i64 %.0112433 ; 5 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  %i.ky = load i32, ptr %i.kx, align 4
  %.not122 = icmp eq i32 %i.ky, %.0106.lcssa
  %or.cond158 = select i1 %.not, i1 true, i1 %.not122
  br i1 %or.cond158, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.kz = sext i32 %.0434 to i64
  %i.la = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.lb = getelementptr inbounds nuw [88 x i8], ptr %i.la, i64 %i.kz ; 9 uses
  store i32 0, ptr %i.lb, align 8, !tbaa !97
  %.sroa.4257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  store i32 -1, ptr %.sroa.4257.0..sroa_idx, align 4, !tbaa !97
  %.sroa.5.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.5.0..sroa_idx.a, i8 0, i64 9, i1 false)
  %i.lc = getelementptr i8, ptr %i.lb, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.lc, i8 0, i64 68, i1 false)
  %i.ld = shl nsw i32 %.0434, 2
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 24 ; 2 uses
  %i.lf = sext i32 %i.ld to i64                   ; 4 uses
  %i.lg = load <2 x i32>, ptr %i.kw, align 4, !tbaa !97
  %i.lh = sitofp <2 x i32> %i.lg to <2 x float>
  %i.li = load ptr, ptr %i.g, align 8, !tbaa !202
  %i.lj = getelementptr inbounds nuw [48 x i8], ptr %i.li, i64 %i.lf ; 3 uses
  store <2 x float> %i.lh, ptr %i.lj, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, i8 0, i64 40, i1 false)
  store ptr %i.lj, ptr %i.le, align 8, !tbaa !53
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.ll = load <2 x i32>, ptr %i.lk, align 4, !tbaa !97
  %i.lm = sitofp <2 x i32> %i.ll to <2 x float>
  %i.ln = load ptr, ptr %i.g, align 8, !tbaa !202
  %i.lo = getelementptr inbounds nuw [48 x i8], ptr %i.ln, i64 %i.lf ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 48 ; 2 uses
  store <2 x float> %i.lm, ptr %i.lp, align 8
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.lo, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.1, i8 0, i64 40, i1 false)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lb, i64 32 ; 2 uses
  store ptr %i.lp, ptr %i.lq, align 8, !tbaa !53
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %i.ls = load <2 x i32>, ptr %i.lr, align 4, !tbaa !97
  %i.lt = sitofp <2 x i32> %i.ls to <2 x float>
  %i.lu = load ptr, ptr %i.g, align 8, !tbaa !202
  %i.lv = getelementptr inbounds nuw [48 x i8], ptr %i.lu, i64 %i.lf ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 96 ; 2 uses
  store <2 x float> %i.lt, ptr %i.lw, align 8
  %.sroa.4.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.lv, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.2, i8 0, i64 40, i1 false)
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lb, i64 40 ; 2 uses
  store ptr %i.lw, ptr %i.lx, align 8, !tbaa !53
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kw, i64 24
  %i.lz = load <2 x i32>, ptr %i.ly, align 4, !tbaa !97
  %i.ma = sitofp <2 x i32> %i.lz to <2 x float>   ; 5 uses
  %i.mb = load ptr, ptr %i.g, align 8, !tbaa !202
  %i.mc = getelementptr inbounds nuw [48 x i8], ptr %i.mb, i64 %i.lf ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 144 ; 2 uses
  store <2 x float> %i.ma, ptr %i.md, align 8
  %.sroa.4.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.mc, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.3, i8 0, i64 40, i1 false)
  %i.me = getelementptr inbounds nuw i8, ptr %i.lb, i64 48
  store ptr %i.md, ptr %i.me, align 8, !tbaa !53
  %i.mf = load ptr, ptr %i.le, align 8, !tbaa !53
  %i.mg = load ptr, ptr %i.lq, align 8, !tbaa !53
  %i.mh = load ptr, ptr %i.lx, align 8, !tbaa !53
  %i.mi = load <2 x float>, ptr %i.mf, align 4, !tbaa !149 ; 2 uses
  %i.mj = load <2 x float>, ptr %i.mg, align 4, !tbaa !149
  %i.mk = load <2 x float>, ptr %i.mh, align 4, !tbaa !149
  %i.ml = shufflevector <2 x float> %i.ma, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.mm = shufflevector <2 x float> %i.ma, <2 x float> %i.mi, <4 x i32> <i32 2, i32 poison, i32 poison, i32 0>
  %i.mn = shufflevector <2 x float> %i.mj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.mo = shufflevector <4 x float> %i.mm, <4 x float> %i.mn, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.mp = shufflevector <2 x float> %i.mk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.mq = shufflevector <4 x float> %i.mo, <4 x float> %i.mp, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.mr = shufflevector <4 x float> %i.ml, <4 x float> %i.mq, <4 x i32> <i32 5, i32 6, i32 2, i32 4>
  %i.ms = fsub <4 x float> %i.mq, %i.mr           ; 2 uses
  %i.mt = shufflevector <2 x float> %i.ma, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 poison>
  %i.mu = shufflevector <2 x float> %i.ma, <2 x float> %i.mi, <4 x i32> <i32 3, i32 poison, i32 poison, i32 1>
  %i.mv = shufflevector <4 x float> %i.mu, <4 x float> %i.mn, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.mw = shufflevector <4 x float> %i.mv, <4 x float> %i.mp, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.mx = shufflevector <4 x float> %i.mt, <4 x float> %i.mw, <4 x i32> <i32 5, i32 6, i32 2, i32 4>
  %i.my = fsub <4 x float> %i.mw, %i.mx           ; 2 uses
  %i.mz = fmul <4 x float> %i.my, %i.my
  %i.na = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ms, <4 x float> %i.ms, <4 x float> %i.mz) ; 4 uses
  %i.nb = extractelement <4 x float> %i.na, i64 0 ; 2 uses
  %i.nc = fcmp olt float %i.nb, f0x7F7FFFFF
  %.sroa.speculated = select i1 %i.nc, float %i.nb, float f0x7F7FFFFF ; 2 uses
  %i.nd = extractelement <4 x float> %i.na, i64 1 ; 2 uses
  %i.ne = fcmp olt float %i.nd, %.sroa.speculated
  %.sroa.speculated.1 = select i1 %i.ne, float %i.nd, float %.sroa.speculated ; 2 uses
  %i.nf = extractelement <4 x float> %i.na, i64 2 ; 2 uses
  %i.ng = fcmp olt float %i.nf, %.sroa.speculated.1
  %.sroa.speculated.2 = select i1 %i.ng, float %i.nf, float %.sroa.speculated.1 ; 2 uses
  %i.nh = extractelement <4 x float> %i.na, i64 3 ; 2 uses
  %i.ni = fcmp olt float %i.nh, %.sroa.speculated.2
  %.sroa.speculated.3 = select i1 %i.ni, float %i.nh, float %.sroa.speculated.2 ; 2 uses
  %i.nj = add nsw i32 %.0434, 1
  %i.nk = getelementptr inbounds nuw i8, ptr %i.lb, i64 20
  %i.nl = call noundef float @sqrtf(float noundef %.sroa.speculated.3) #37
  %i.nm = fmul float %i.nl, 2.000000e+00
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %i.kp, float %i.kr)
  %i.no = fadd float %.sroa.speculated.3, %i.nn
  store float %i.no, ptr %i.nk, align 4, !tbaa !159
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cf, %bb.cg
  %.1 = phi i32 [ %i.nj, %bb.cg ], [ %.0434, %bb.cf ] ; 2 uses
  %i.np = add nuw i64 %.0112433, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.np, %umax
  br i1 %exitcond.not, label %._crit_edge436.thread, label %bb.cf, !llvm.loop !261

._crit_edge436.thread:                            ; preds = %bb.ch
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 3312
  store i32 %.1, ptr %i.nq, align 8, !tbaa !42
  br label %bb.cd

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EED2Ev.exit, %bb.i
  %i.nr = load ptr, ptr %5, align 8, !tbaa !239   ; 3 uses
  %.not.i.i.i242 = icmp eq ptr %i.nr, null
  br i1 %.not.i.i.i242, label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ns = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !262
  %i.nu = ptrtoint ptr %i.nt to i64
  %i.nv = ptrtoint ptr %i.nr to i64
  %i.nw = sub i64 %i.nu, %i.nv
  call void @_ZdlPvm(ptr noundef nonnull %i.nr, i64 noundef %i.nw) #36
  br label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit:   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.nx = load ptr, ptr %4, align 8, !tbaa !238   ; 3 uses
  %i.ny = load ptr, ptr %i.u, align 8, !tbaa !236 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.nx, %i.ny
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.of, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i ], [ %i.nx, %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit ] ; 3 uses
  %i.nz = load ptr, ptr %.05.i.i.i, align 8, !tbaa !245 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.nz, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i.i.i
  %i.oa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !247
  %i.oc = ptrtoint ptr %i.ob to i64
  %i.od = ptrtoint ptr %i.nz to i64
  %i.oe = sub i64 %i.oc, %i.od
  call void @_ZdlPvm(ptr noundef nonnull %i.nz, i64 noundef %i.oe) #36
  br label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.cj, %.lr.ph.i.i.i
  %i.of = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i243 = icmp eq ptr %i.of, %i.ny
  br i1 %.not.i.i.i243, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !263

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !238
  br label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit
  %i.og = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.nx, %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.og, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.oh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !264
  %i.oj = ptrtoint ptr %i.oi to i64
  %i.ok = ptrtoint ptr %i.og to i64
  %i.ol = sub i64 %i.oj, %i.ok
  call void @_ZdlPvm(ptr noundef nonnull %i.og, i64 noundef %i.ol) #36
  br label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

bb.cl:                                            ; preds = %bb.ac, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit233, %bb.ce
  %.sroa.17.0384 = phi ptr [ %.sroa.17.0419479, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit233 ], [ %.sroa.17.0.lcssa, %bb.ce ], [ %.sroa.17.0419, %bb.ac ]
  %.sroa.0280.0348 = phi ptr [ %.sroa.0280.0421, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit233 ], [ %.sroa.0280.0.lcssa, %bb.ce ], [ %.sroa.0280.0421, %bb.ac ] ; 3 uses
  %.pn145.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn145.pn.pn.pn, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit233 ], [ %i.kv, %bb.ce ], [ %.pn126, %bb.ac ]
  %.not.i.i.i244 = icmp eq ptr %.sroa.0280.0348, null
  br i1 %.not.i.i.i244, label %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EED2Ev.exit245, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.om = ptrtoint ptr %.sroa.17.0384 to i64
  %i.on = ptrtoint ptr %.sroa.0280.0348 to i64
  %i.oo = sub i64 %i.om, %i.on
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0280.0348, i64 noundef %i.oo) #36
  br label %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EED2Ev.exit245

_ZNSt6vectorIN2cv12QuadCountourESaIS1_EED2Ev.exit245: ; preds = %bb.cm, %bb.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ad) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit247

_ZNSt6vectorIiSaIiEED2Ev.exit247:                 ; preds = %bb.u, %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EED2Ev.exit245, %bb.j
  %.pn145.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.x, %bb.j ], [ %i.cd, %bb.u ], [ %.pn145.pn.pn.pn.pn.pn, %_ZNSt6vectorIN2cv12QuadCountourESaIS1_EED2Ev.exit245 ]
  %i.op = load ptr, ptr %5, align 8, !tbaa !239   ; 3 uses
  %.not.i.i.i248 = icmp eq ptr %i.op, null
  br i1 %.not.i.i.i248, label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit249, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit247
  %i.oq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !262
  %i.os = ptrtoint ptr %i.or to i64
  %i.ot = ptrtoint ptr %i.op to i64
  %i.ou = sub i64 %i.os, %i.ot
  call void @_ZdlPvm(ptr noundef nonnull %i.op, i64 noundef %i.ou) #36
  br label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit249

_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit249: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit247, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
end_hunk_0
begin_hunk_1_@_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_:bb.a
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load i32, ptr %1, align 4, !tbaa !97
  store i32 %i.n, ptr %i.m, align 4, !tbaa !330
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  store i32 0, ptr %i.o, align 4, !tbaa !332
  %i.p = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(4) %i.m)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.d:                                             ; preds = %.critedge
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i32, ptr %i.m, align 4, !tbaa !97
  %i.v = load i32, ptr %i.t, align 4, !tbaa !97
  %i.w = icmp slt i32 %i.u, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.x = phi i1 [ %i.w, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #37
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !126
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !126
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 40) #36
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 40) #36
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit: ; preds = %bb.g, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 36
  ret ptr %i.ac
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv18ChessBoardDetector9orderQuadERNS_14ChessBoardQuadERNS_16ChessBoardCornerEi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(3316) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, i32 noundef %3) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.val25 = load float, ptr %2, align 8, !tbaa !163 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val26 = load float, ptr %i.b, align 4         ; 4 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %.val = load float, ptr %i.c, align 4, !tbaa !163
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val24 = load float, ptr %i.d, align 4
  %i.e = fcmp oeq float %.val, %.val25
  %i.f = fcmp oeq float %.val24, %.val26
  %i.g = select i1 %i.e, i1 %i.f, i1 false
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %.val.1 = load float, ptr %i.i, align 4, !tbaa !163
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %.val24.1 = load float, ptr %i.j, align 4
  %i.k = fcmp oeq float %.val.1, %.val25
  %i.l = fcmp oeq float %.val24.1, %.val26
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !53   ; 2 uses
  %.val.2 = load float, ptr %i.o, align 4, !tbaa !163
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %.val24.2 = load float, ptr %i.p, align 4
  %i.q = fcmp oeq float %.val.2, %.val25
  %i.r = fcmp oeq float %.val24.2, %.val26
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53   ; 2 uses
  %.val.3 = load float, ptr %i.u, align 4, !tbaa !163
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %.val24.3 = load float, ptr %i.v, align 4
  %i.w = fcmp oeq float %.val.3, %.val25
  %i.x = fcmp oeq float %.val24.3, %.val26
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  %spec.select = select i1 %i.y, i32 3, i32 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.023.lcssa = phi i32 [ 0, %bb.a ], [ 2, %bb.c ], [ 1, %bb.b ], [ %spec.select, %bb.d ] ; 2 uses
  %.not29 = icmp eq i32 %.023.lcssa, %3
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80
  %scevgep = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !156
  %.pre34 = load ptr, ptr %i.ac, align 8, !tbaa !156
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.pre35 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !156
  %.pre36 = load ptr, ptr %i.aa, align 8, !tbaa !156
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %i.ae = phi ptr [ %.pre36, %.lr.ph ], [ %i.ah, %bb.f ] ; 2 uses
  %i.af = phi ptr [ %.pre35, %.lr.ph ], [ %i.ae, %bb.f ] ; 2 uses
  %i.ag = phi ptr [ %.pre34, %.lr.ph ], [ %i.af, %bb.f ] ; 2 uses
  %i.ah = phi ptr [ %.pre, %.lr.ph ], [ %i.ag, %bb.f ] ; 2 uses
  %.130 = phi i32 [ %.023.lcssa, %.lr.ph ], [ %i.ak, %bb.f ]
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !53
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scevgep, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa !53
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !53
  %i.aj = add nuw nsw i32 %.130, 1
  %i.ak = and i32 %i.aj, 3                        ; 2 uses
  %.not = icmp eq i32 %i.ak, %3
  br i1 %.not, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !318

._crit_edge.loopexit:                             ; preds = %bb.f
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !156
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !156
  store ptr %i.ae, ptr %.phi.trans.insert, align 8, !tbaa !156
  store ptr %i.ah, ptr %i.aa, align 8, !tbaa !156
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN2cv18ChessBoardDetector12addOuterQuadERNS_14ChessBoardQuadERSt6vectorIPS1_SaIS4_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(3316) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.c = load i64, ptr %i.b, align 8, !tbaa !201
  %i.d = trunc i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3312 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1904 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.pre-phi, %.loopexit ] ; 11 uses
  %.0117 = phi i32 [ 0, %bb.a ], [ %.1, %.loopexit ] ; 3 uses
  %i.r = load i32, ptr %i.e, align 8, !tbaa !42   ; 4 uses
  %i.s = icmp slt i32 %i.r, %i.d
  br i1 %i.s, label %bb.c, label %.critedge

.critedge:                                        ; preds = %.loopexit, %bb.b
  %.0.lcssa = phi i32 [ %.1, %.loopexit ], [ %.0117, %bb.b ]
  ret i32 %.0.lcssa

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !156
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.d, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %bb.c
  %.pre = add nuw nsw i64 %indvars.iv, 1
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.v = add nsw i32 %i.r, 1
  store i32 %i.v, ptr %i.e, align 8, !tbaa !42
  %i.w = sext i32 %i.r to i64
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw [88 x i8], ptr %i.x, i64 %i.w ; 21 uses
  %.sroa.4112.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %3 = getelementptr i8, ptr %i.y, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(68) %3, i8 0, i64 68, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.y, i8 0, i64 17, i1 false)
  %i.z = add nsw i32 %.0117, 1                    ; 7 uses
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !297 ; 4 uses
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !294
  %.not.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !156
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !297
  br label %_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE9push_backEOS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %2, align 8, !tbaa !292   ; 4 uses
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 5 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.g, label %_ZNKSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #34
  unreachable

_ZNKSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #35 ; 4 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ag ; 2 uses
  store ptr %i.y, ptr %i.ap, align 8, !tbaa !156
  %i.aq = icmp sgt i64 %i.ag, 0
  br i1 %i.aq, label %bb.h, label %_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.ad, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !294
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.au) #36
  br label %_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.ao, ptr %2, align 8, !tbaa !292
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !297
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.av, ptr %i.h, align 8, !tbaa !294
  br label %_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.e, %_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  store ptr %i.y, ptr %i.t, align 8, !tbaa !156
  %i.aw = load i32, ptr %1, align 8, !tbaa !162
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %1, align 8, !tbaa !162
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 56 ; 3 uses
  %i.az = and i64 %indvars.iv, 4294967295
  %i.ba = xor i64 %i.az, 2                        ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ba
  store ptr %1, ptr %i.bb, align 8, !tbaa !156
  %i.bc = load i32, ptr %i.i, align 4, !tbaa !200
  store i32 %i.bc, ptr %.sroa.4112.0..sroa_idx.a, align 4, !tbaa !200
  store i32 1, ptr %i.y, align 8, !tbaa !162
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i8 0, ptr %i.bd, align 8, !tbaa !308
  %i.be = load float, ptr %i.j, align 4, !tbaa !159
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  store float %i.be, ptr %i.bf, align 4, !tbaa !159
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !53
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ba
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !53
  %i.bk = shl nsw i32 %i.r, 2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 4 uses
  %i.bm = sext i32 %i.bk to i64                   ; 4 uses
  %i.bn = load ptr, ptr %i.l, align 8, !tbaa !202
  %i.bo = getelementptr inbounds nuw [48 x i8], ptr %i.bn, i64 %i.bm ; 3 uses
  %i.bp = load ptr, ptr %i.k, align 8, !tbaa !53
  %i.bq = load <2 x float>, ptr %i.bp, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load <2 x float>, ptr %i.bh, align 4, !tbaa !149
  %i.bs = load <2 x float>, ptr %i.bj, align 4, !tbaa !149
  %i.bt = fsub <2 x float> %i.br, %i.bs           ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, i8 0, i64 40, i1 false)
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !53
  %i.bu = fadd <2 x float> %i.bt, %i.bq
  store <2 x float> %i.bu, ptr %i.bo, align 8, !tbaa !149
  %i.bv = load ptr, ptr %i.l, align 8, !tbaa !202
  %i.bw = getelementptr inbounds nuw [48 x i8], ptr %i.bv, i64 %i.bm ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48 ; 2 uses
  %i.by = load ptr, ptr %i.o, align 8, !tbaa !53
  %i.bz = load <2 x float>, ptr %i.by, align 4
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.1, i8 0, i64 40, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr %i.bx, ptr %i.ca, align 8, !tbaa !53
  %i.cb = fadd <2 x float> %i.bt, %i.bz
  store <2 x float> %i.cb, ptr %i.bx, align 8, !tbaa !149
  %i.cc = load ptr, ptr %i.l, align 8, !tbaa !202
  %i.cd = getelementptr inbounds nuw [48 x i8], ptr %i.cc, i64 %i.bm ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 96 ; 2 uses
  %i.cf = load ptr, ptr %i.p, align 8, !tbaa !53
  %i.cg = load <2 x float>, ptr %i.cf, align 4
  %.sroa.4.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.cd, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.2, i8 0, i64 40, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr %i.ce, ptr %i.ch, align 8, !tbaa !53
  %i.ci = fadd <2 x float> %i.bt, %i.cg
  store <2 x float> %i.ci, ptr %i.ce, align 8, !tbaa !149
  %i.cj = load ptr, ptr %i.l, align 8, !tbaa !202
  %i.ck = getelementptr inbounds nuw [48 x i8], ptr %i.cj, i64 %i.bm ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 144 ; 2 uses
  %i.cm = load ptr, ptr %i.q, align 8, !tbaa !53
  %i.cn = load <2 x float>, ptr %i.cm, align 4
  %.sroa.4.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.ck, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.3, i8 0, i64 40, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store ptr %i.cl, ptr %i.co, align 8, !tbaa !53
  %i.cp = fadd <2 x float> %i.bt, %i.cn
  store <2 x float> %i.cp, ptr %i.cl, align 8, !tbaa !149
  %i.cq = load ptr, ptr %i.bg, align 8, !tbaa !53
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.ba
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !53
  %i.cs = icmp ult i64 %indvars.iv, 4
  br i1 %i.cs, label %switch.lookup, label %bb.j

switch.lookup:                                    ; preds = %_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE9push_backEOS2_.exit
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN2cv18ChessBoardDetector12addOuterQuadERNS_14ChessBoardQuadERSt6vectorIPS1_SaIS4_EE, i64 %indvars.iv
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep134 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN2cv18ChessBoardDetector12addOuterQuadERNS_14ChessBoardQuadERSt6vectorIPS1_SaIS4_EE.20, i64 %indvars.iv
  %switch.load135 = load i32, ptr %switch.gep134, align 4
  %i.ct = load i32, ptr %i.m, align 4, !tbaa !307
  %i.cu = add nsw i32 %i.ct, %switch.load
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !307
  %i.cw = load i32, ptr %i.n, align 8, !tbaa !306
  %i.cx = add nsw i32 %i.cw, %switch.load135
  store i32 %i.cx, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !306
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE9push_backEOS2_.exit, %switch.lookup
  %i.cy = getelementptr inbounds nuw i8, ptr %i.y, i64 12 ; 2 uses
  %i.cz = add nuw nsw i64 %indvars.iv, 1          ; 9 uses
  %i.da = and i64 %i.cz, 3
  %i.db = xor i64 %i.da, 2                        ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !156 ; 3 uses
  %.not102 = icmp eq ptr %i.dd, null
  br i1 %.not102, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load i8, ptr %i.de, align 8, !tbaa !308, !range !317, !noundef !104
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !156 ; 9 uses
  %.not103 = icmp eq ptr %i.dj, null
  br i1 %.not103, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !308, !range !317, !noundef !104
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !307
  %i.dp = load i32, ptr %i.cy, align 4, !tbaa !307
  %i.dq = sub nsw i32 %i.do, %i.dp
  %i.dr = tail call i32 @llvm.abs.i32(i32 %i.dq, i1 true)
  %i.ds = icmp eq i32 %i.dr, 1
  br i1 %i.ds, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !306
  %i.dv = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !306
  %i.dw = sub nsw i32 %i.du, %i.dv
  %i.dx = tail call i32 @llvm.abs.i32(i32 %i.dw, i1 true)
  %i.dy = icmp eq i32 %i.dx, 1
  br i1 %i.dy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 2, ptr %i.y, align 8, !tbaa !162
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.db
  store ptr %i.dj, ptr %i.dz, align 8, !tbaa !156
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %i.eb = and i64 %i.cz, 3                        ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.eb
  store ptr %i.y, ptr %i.ec, align 8, !tbaa !156
  %i.ed = load i32, ptr %i.dj, align 8, !tbaa !162
  %i.ee = add nsw i32 %i.ed, 1
  store i32 %i.ee, ptr %i.dj, align 8, !tbaa !162
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.eb
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !53
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.db
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !53
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %i.ej = trunc i64 %indvars.iv to i32
  %i.ek = add i32 %i.ej, 3
  %i.el = and i32 %i.ek, 3                        ; 2 uses
  %i.em = xor i32 %i.el, 2
  %i.en = zext nneg i32 %i.em to i64              ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !156 ; 3 uses
  %.not102.1 = icmp eq ptr %i.ep, null
  br i1 %.not102.1, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load i8, ptr %i.eq, align 8, !tbaa !308, !range !317, !noundef !104
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 56
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !156 ; 9 uses
  %.not103.1 = icmp eq ptr %i.ev, null
  br i1 %.not103.1, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load i8, ptr %i.ew, align 8, !tbaa !308, !range !317, !noundef !104
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !307
  %i.fb = load i32, ptr %i.cy, align 4, !tbaa !307
  %i.fc = sub nsw i32 %i.fa, %i.fb
  %i.fd = tail call i32 @llvm.abs.i32(i32 %i.fc, i1 true)
  %i.fe = icmp eq i32 %i.fd, 1
  br i1 %i.fe, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !306
  %i.fh = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !306
  %i.fi = sub nsw i32 %i.fg, %i.fh
  %i.fj = tail call i32 @llvm.abs.i32(i32 %i.fi, i1 true)
  %i.fk = icmp eq i32 %i.fj, 1
  br i1 %i.fk, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  store i32 2, ptr %i.y, align 8, !tbaa !162
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.en
  store ptr %i.ev, ptr %i.fl, align 8, !tbaa !156
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ev, i64 56
  %i.fn = zext nneg i32 %i.el to i64              ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fn
  store ptr %i.y, ptr %i.fo, align 8, !tbaa !156
  %i.fp = load i32, ptr %i.ev, align 8, !tbaa !162
  %i.fq = add nsw i32 %i.fp, 1
  store i32 %i.fq, ptr %i.ev, align 8, !tbaa !162
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fn
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !53
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.en
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !53
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %..loopexit_crit_edge
  %indvars.iv.next.pre-phi = phi i64 [ %.pre, %..loopexit_crit_edge ], [ %i.cz, %bb.w ], [ %i.cz, %bb.v ], [ %i.cz, %bb.u ], [ %i.cz, %bb.t ], [ %i.cz, %bb.s ], [ %i.cz, %bb.r ], [ %i.cz, %bb.q ] ; 2 uses
  %.1 = phi i32 [ %.0117, %..loopexit_crit_edge ], [ %i.z, %bb.w ], [ %i.z, %bb.v ], [ %i.z, %bb.u ], [ %i.z, %bb.t ], [ %i.z, %bb.s ], [ %i.z, %bb.r ], [ %i.z, %bb.q ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, 4
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !333
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv18ChessBoardDetector19removeQuadFromGroupERSt6vectorIPNS_14ChessBoardQuadESaIS3_EERS2_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(88) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.14", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !297  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !292    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3                   ; 5 uses
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %wide.trip.count = and i64 %i.g, 2147483647
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 80
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit
  %i.n = icmp sgt i32 %spec.select, -1
  br i1 %i.n, label %bb.m, label %._crit_edge.thread

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.03852 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %.loopexit ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !156  ; 11 uses
  %i.q = icmp eq ptr %i.p, %2
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.q, i32 %i.r, i32 %.03852 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !156
  %i.u = icmp eq ptr %i.t, %2
  br i1 %i.u, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !156
  %i.x = icmp eq ptr %i.w, %2
  br i1 %i.x, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !156
  %i.aa = icmp eq ptr %i.z, %2
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !156
  %i.ad = icmp eq ptr %i.ac, %2
  br i1 %i.ad, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.lcssa = phi i64 [ 0, %bb.b ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.lcssa
  store ptr null, ptr %i.ae, align 8, !tbaa !156
  %i.af = load i32, ptr %i.p, align 8, !tbaa !162
  %i.ag = add nsw i32 %i.af, -1
  store i32 %i.ag, ptr %i.p, align 8, !tbaa !162
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !156
  %i.ai = icmp eq ptr %i.ah, %i.p
  br i1 %i.ai, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !156
  %i.ak = icmp eq ptr %i.aj, %i.p
  br i1 %i.ak, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !156
  %i.am = icmp eq ptr %i.al, %i.p
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !156
  %i.ao = icmp eq ptr %i.an, %i.p
  br i1 %i.ao, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.lcssa55 = phi i64 [ 0, %bb.f ], [ 1, %bb.g ], [ 2, %bb.h ], [ 3, %bb.i ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.lcssa55
  store ptr null, ptr %i.ap, align 8, !tbaa !156
  %i.aq = load i32, ptr %2, align 8, !tbaa !162
  %i.ar = add nsw i32 %i.aq, -1
  store i32 %i.ar, ptr %2, align 8, !tbaa !162
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.e, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !334

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv18ChessBoardDetector19removeQuadFromGroupERSt6vectorIPNS_14ChessBoardQuadESaIS3_EERS2_, ptr noundef nonnull @.str.1, i32 noundef 1348) #34
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %._crit_edge.thread
  unreachable

bb.l:                                             ; preds = %._crit_edge.thread
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %3, align 8, !tbaa !139   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !133
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %i.as

bb.m:                                             ; preds = %._crit_edge
  %i.ay = add nsw i32 %i.h, -1                    ; 3 uses
  %.not = icmp eq i32 %spec.select, %i.ay
  br i1 %.not, label %._crit_edge60, label %bb.n

._crit_edge60:                                    ; preds = %bb.m
  %.pre = zext nneg i32 %i.ay to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !156
  %i.bc = zext nneg i32 %spec.select to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bc
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !156
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge60, %bb.n
  %.pre-phi = phi i64 [ %.pre, %._crit_edge60 ], [ %i.az, %bb.n ] ; 4 uses
  %i.be = icmp ult i64 %i.g, %.pre-phi
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = sub nuw nsw i64 %.pre-phi, %i.g
  tail call void @_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bf)
  br label %_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE6resizeEm.exit

bb.q:                                             ; preds = %bb.o
  %i.bg = icmp ugt i64 %i.g, %.pre-phi
  br i1 %i.bg, label %bb.r, label %_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE6resizeEm.exit

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.pre-phi ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %i.bh
  br i1 %.not.i.i, label %_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPPN2cv14ChessBoardQuadES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN2cv14ChessBoardQuadES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.r
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !297
  br label %_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE6resizeEm.exit

_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE6resizeEm.exit: ; preds = %bb.p, %bb.q, %bb.r, %_ZSt8_DestroyIPPN2cv14ChessBoardQuadES2_EvT_S4_RSaIT0_E.exit.i.i
end_hunk_1
