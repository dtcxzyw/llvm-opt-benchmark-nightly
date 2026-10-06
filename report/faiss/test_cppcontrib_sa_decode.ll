Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_cppcontrib_sa_decode?download=true
inline.NumInlined: 5280
inline.NumDeleted: 463
loop-unroll.NumCompletelyUnrolled: 150
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_Z30verifyMinMaxIndex2LevelDecoderIN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS1_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  br i1 %exitcond1200.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i421, label %bb.ai, !llvm.loop !492

.lr.ph1139:                                       ; preds = %.lr.ph1139.preheader1400, %.lr.ph1139
  %.02101138 = phi i64 [ %i.hg, %.lr.ph1139 ], [ %.02101138.ph, %.lr.ph1139.preheader1400 ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0741.0888, i64 %.02101138
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !75
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0751.0841850, i64 %.02101138 ; 2 uses
  %i.he = load float, ptr %i.hd, align 4, !tbaa !75
  %i.hf = call float @llvm.fmuladd.f32(float %i.gs, float %i.hc, float %i.he)
  store float %i.hf, ptr %i.hd, align 4, !tbaa !75
  %i.hg = add nuw nsw i64 %.02101138, 1           ; 2 uses
  %exitcond1199.not = icmp eq i64 %i.hg, %1
  br i1 %exitcond1199.not, label %._crit_edge, label %.lr.ph1139, !llvm.loop !493

_ZNSt6vectorIfSaIfEED2Ev.exit638.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i409, %_ZN7testing7MessageD2Ev.exit406
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.fc

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i421: ; preds = %._crit_edge, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit401
  br i1 %.not.i.i.i.i379, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit430, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i421
  %i.hh = shl nuw nsw i64 %1, 2                   ; 2 uses
  %i.hi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hh) #24
          to label %.noexc429 unwind label %bb.ba ; 3 uses

.noexc429:                                        ; preds = %bb.az
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hi, i8 0, i64 %i.hh, i1 false), !tbaa !75
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %1
  %i.hk = ptrtoint ptr %i.hj to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit430

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit430:         ; preds = %.noexc429, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i421
  %.sroa.0714.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i421 ], [ %i.hi, %.noexc429 ] ; 24 uses
  %.sroa.23.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i421 ], [ %i.hk, %.noexc429 ] ; 2 uses
  br i1 %.not2861140.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i459, label %.lr.ph1154

.lr.ph1154:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit430
  %i.hl = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.hm = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.hn = fdiv x86_fp80 %i.hl, %i.hm
  %i.ho = fptoui x86_fp80 %i.hn to i64            ; 2 uses
  %i.hp = add i64 %i.ho, 23
  %i.hq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.hr = add nsw i64 %1, -1
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.hs = icmp ult i64 %i.hr, 3
  %unroll_iter = and i64 %1, 2305843009213693948
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1404 = icmp ne i64 %xtraiter, 0
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit654

bb.bb:                                            ; preds = %.lr.ph1154, %.critedge348
  %.02091153 = phi i64 [ 0, %.lr.ph1154 ], [ %i.ly, %.critedge348 ] ; 2 uses
  %.sroa.0770.11152 = phi i64 [ 123, %.lr.ph1154 ], [ %i.ik, %.critedge348 ]
  %i.hu = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.hv = load ptr, ptr %3, align 8, !tbaa !43
  %i.hw = mul i64 %.02091153, %i.bx               ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hw
  %i.hy = load ptr, ptr %i.hu, align 8, !tbaa !32
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 208
  %i.ia = load ptr, ptr %i.hz, align 8
  invoke void %i.ia(ptr noundef nonnull align 8 dereferenceable(36) %i.hu, i64 noundef 1, ptr noundef %i.hx, ptr noundef %.sroa.0741.0888)
          to label %.preheader1115 unwind label %bb.be

.preheader1115:                                   ; preds = %bb.bb
  br i1 %.not.i.i.i.i379, label %._crit_edge1146, label %.lr.ph1145.preheader

.lr.ph1145.preheader:                             ; preds = %.preheader1115
  br i1 %i.hs, label %.lr.ph1145.epil.preheader, label %.lr.ph1145

._crit_edge1146.loopexit.unr-lcssa:               ; preds = %.lr.ph1145
  br i1 %lcmp.mod.not, label %._crit_edge1146, label %.lr.ph1145.epil.preheader

.lr.ph1145.epil.preheader:                        ; preds = %._crit_edge1146.loopexit.unr-lcssa, %.lr.ph1145.preheader
  %.02081144.epil.init = phi i64 [ 0, %.lr.ph1145.preheader ], [ %i.jf, %._crit_edge1146.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1404)
  br label %.lr.ph1145.epil

.lr.ph1145.epil:                                  ; preds = %.lr.ph1145.epil, %.lr.ph1145.epil.preheader
  %.02081144.epil = phi i64 [ %i.ib, %.lr.ph1145.epil ], [ %.02081144.epil.init, %.lr.ph1145.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph1145.epil ], [ 0, %.lr.ph1145.epil.preheader ]
  %i.ib = add nuw nsw i64 %.02081144.epil, 1      ; 3 uses
  %i.ic = mul i64 %i.ib, %i.ib
  %i.id = uitofp i64 %i.ic to float
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0714.0, i64 %.02081144.epil
  store float %i.id, ptr %i.ie, align 4, !tbaa !75
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge1146, label %.lr.ph1145.epil, !llvm.loop !494

._crit_edge1146:                                  ; preds = %._crit_edge1146.loopexit.unr-lcssa, %.lr.ph1145.epil, %.preheader1115
  %i.if = udiv i64 %i.hp, %i.ho
  %spec.select.i.i.i.i431 = call i64 @llvm.umax.i64(i64 %i.if, i64 1)
  br label %select.unfold.i.i.i.i433

bb.bc:                                            ; preds = %select.unfold.i.i.i.i433
  %i.ig = fdiv float %i.in, %i.iq                 ; 2 uses
  %i.ih = fcmp ult float %i.ig, 1.000000e+00
  br i1 %i.ih, label %bb.bf, label %bb.bd, !prof !77

select.unfold.i.i.i.i433:                         ; preds = %select.unfold.i.i.i.i433, %._crit_edge1146
  %.023.i.i.i.i434 = phi i64 [ %spec.select.i.i.i.i431, %._crit_edge1146 ], [ %i.ir, %select.unfold.i.i.i.i433 ]
  %.01422.i.i.i.i435 = phi float [ 1.000000e+00, %._crit_edge1146 ], [ %i.iq, %select.unfold.i.i.i.i433 ] ; 2 uses
  %.01521.i.i.i.i436 = phi float [ 0.000000e+00, %._crit_edge1146 ], [ %i.in, %select.unfold.i.i.i.i433 ]
  %i.ii = phi i64 [ %.sroa.0770.11152, %._crit_edge1146 ], [ %i.ik, %select.unfold.i.i.i.i433 ]
  %i.ij = mul nuw nsw i64 %i.ii, 16807
  %i.ik = urem i64 %i.ij, 2147483647              ; 3 uses
  %i.il = add nsw i64 %i.ik, -1
  %i.im = uitofp i64 %i.il to float
  %i.in = call float @llvm.fmuladd.f32(float %i.im, float %.01422.i.i.i.i435, float %.01521.i.i.i.i436) ; 2 uses
  %i.io = fpext float %.01422.i.i.i.i435 to x86_fp80
  %i.ip = fmul x86_fp80 %i.io, f0x401DFFFFFFFC00000000
  %i.iq = fptrunc x86_fp80 %i.ip to float         ; 2 uses
  %i.ir = add i64 %.023.i.i.i.i434, -1            ; 2 uses
  %.not.i.i.i.i437 = icmp eq i64 %i.ir, 0
  br i1 %.not.i.i.i.i437, label %bb.bc, label %select.unfold.i.i.i.i433, !llvm.loop !4

bb.bd:                                            ; preds = %bb.bc
  br label %bb.bf

bb.be:                                            ; preds = %bb.bb
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit652

.lr.ph1145:                                       ; preds = %.lr.ph1145.preheader, %.lr.ph1145
  %.02081144 = phi i64 [ %i.jf, %.lr.ph1145 ], [ 0, %.lr.ph1145.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph1145 ], [ 0, %.lr.ph1145.preheader ]
  %i.it = or disjoint i64 %.02081144, 1           ; 3 uses
  %i.iu = mul i64 %i.it, %i.it
  %i.iv = uitofp i64 %i.iu to float
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0714.0, i64 %.02081144
  store float %i.iv, ptr %i.iw, align 4, !tbaa !75
  %i.ix = or disjoint i64 %.02081144, 2           ; 3 uses
  %i.iy = mul i64 %i.ix, %i.ix
  %i.iz = uitofp i64 %i.iy to float
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0714.0, i64 %i.it
  store float %i.iz, ptr %i.ja, align 4, !tbaa !75
  %i.jb = or disjoint i64 %.02081144, 3           ; 3 uses
  %i.jc = mul i64 %i.jb, %i.jb
  %i.jd = uitofp i64 %i.jc to float
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0714.0, i64 %i.ix
  store float %i.jd, ptr %i.je, align 4, !tbaa !75
  %i.jf = add nuw nsw i64 %.02081144, 4           ; 4 uses
  %i.jg = mul i64 %i.jf, %i.jf
  %i.jh = uitofp i64 %i.jg to float
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0714.0, i64 %i.jb
  store float %i.jh, ptr %i.ji, align 4, !tbaa !75
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge1146.loopexit.unr-lcssa, label %.lr.ph1145, !llvm.loop !495

bb.bf:                                            ; preds = %bb.bd, %bb.bc
  %.016.i.i.i.i438 = phi float [ f0x3F7FFFFF, %bb.bd ], [ %i.ig, %bb.bc ]
  %i.jj = fadd float %.016.i.i.i.i438, 0.000000e+00 ; 2 uses
  %i.jk = load ptr, ptr %3, align 8, !tbaa !43
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.hw ; 2 uses
  %i.jm = load <2 x i16>, ptr %i.jl, align 2, !tbaa !108, !alias.scope !555, !noalias !556 ; 2 uses
  %i.jn = zext <2 x i16> %i.jm to <2 x i32>
  %i.jo = shl nuw nsw <2 x i32> %i.jn, splat (i32 13) ; 3 uses
  %i.jp = and <2 x i32> %i.jo, splat (i32 268427264) ; 2 uses
  %i.jq = and <2 x i32> %i.jo, splat (i32 260046848) ; 2 uses
  %i.jr = add nuw nsw <2 x i32> %i.jp, splat (i32 939524096)
  %i.js = or <2 x i32> %i.jo, splat (i32 1879048192)
  %i.jt = add nuw nsw <2 x i32> %i.jp, splat (i32 947912704)
  %i.ju = bitcast <2 x i32> %i.jt to <2 x float>
  %i.jv = fadd <2 x float> %i.ju, splat (float f0xB8800000)
  %i.jw = bitcast <2 x float> %i.jv to <2 x i32>
  %i.jx = icmp eq <2 x i32> %i.jq, zeroinitializer
  %i.jy = select <2 x i1> %i.jx, <2 x i32> %i.jw, <2 x i32> %i.jr
  %i.jz = sext <2 x i16> %i.jm to <2 x i32>
  %i.ka = and <2 x i32> %i.jz, splat (i32 -2147483648)
  %i.kb = icmp eq <2 x i32> %i.jq, splat (i32 260046848)
  %i.kc = select <2 x i1> %i.kb, <2 x i32> %i.js, <2 x i32> %i.jy
  %i.kd = or <2 x i32> %i.kc, %i.ka
  %i.ke = bitcast <2 x i32> %i.kd to <2 x float>
  %i.kf = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.kg = shufflevector <2 x float> %i.kf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kh = fmul <2 x float> %i.kg, %i.ke           ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  %i.kj = extractelement <2 x float> %i.kh, i64 0
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1807, ptr noundef %.1, ptr noundef nonnull %i.ki, float noundef %i.kj, ptr noundef %.sroa.0714.0)
  %i.kk = extractelement <2 x float> %i.kh, i64 1
  %i.kl = fadd float %i.kk, 0.000000e+00
  br i1 %.not.i.i.i.i379, label %.critedge348, label %.lr.ph1150

.lr.ph1150:                                       ; preds = %bb.bf, %bb.bt
  %.02071148 = phi i64 [ %i.kr, %bb.bt ], [ 0, %bb.bf ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0714.0, i64 %.02071148
  %i.kn = load float, ptr %i.km, align 4, !tbaa !75
  %i.ko = fadd float %i.kl, %i.kn
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0741.0888, i64 %.02071148
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !75
  %i.kr = add nuw nsw i64 %.02071148, 1           ; 4 uses
  %i.ks = mul i64 %i.kr, %i.kr
  %i.kt = uitofp i64 %i.ks to float
  %i.ku = call float @llvm.fmuladd.f32(float %i.kq, float %i.jj, float %i.kt)
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, float noundef %i.ko, float noundef %i.ku)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %.lr.ph1150
  %i.kv = load i8, ptr %11, align 8, !tbaa !98, !range !99, !noundef !100
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %.critedge346, label %bb.bi

bb.bh:                                            ; preds = %.lr.ph1150
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit652.thread

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.ky = load ptr, ptr %i.hq, align 8, !tbaa !101 ; 2 uses
  %.not.i.i441 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i441, label %_ZNK7testing15AssertionResult15failure_messageEv.exit442, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit442

_ZNK7testing15AssertionResult15failure_messageEv.exit442: ; preds = %bb.bk, %bb.bj
  %i.la = phi ptr [ %i.kz, %bb.bk ], [ @.str.20, %bb.bj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 388, ptr noundef %i.la)
          to label %bb.bl unwind label %bb.bp

bb.bl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit442
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bm unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.lb = load ptr, ptr %12, align 8, !tbaa !103  ; 3 uses
  %.not.i.i443 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i443, label %_ZN7testing7MessageD2Ev.exit445, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i444

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i444: ; preds = %bb.bm
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !32
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = load ptr, ptr %i.ld, align 8
  call void %i.le(ptr noundef nonnull align 8 dereferenceable(128) %i.lb) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit445

_ZN7testing7MessageD2Ev.exit445:                  ; preds = %bb.bm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i444
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.lf = load ptr, ptr %i.hq, align 8, !tbaa !101 ; 4 uses
  %.not.i.i446 = icmp eq ptr %i.lf, null
  br i1 %.not.i.i446, label %_ZNSt6vectorIfSaIfEED2Ev.exit636.thread, label %bb.bn

bb.bn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit445
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !25 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 16 ; 2 uses
  %i.li = icmp eq ptr %i.lg, %i.lh
  br i1 %i.li, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i448, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i447

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i447: ; preds = %bb.bn
  %i.lj = load i64, ptr %i.lh, align 8, !tbaa !24
  %i.lk = add i64 %i.lj, 1
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lk) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i448

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i448: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i447
  call void @_ZdlPvm(ptr noundef nonnull %i.lf, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit636.thread

bb.bo:                                            ; preds = %bb.bi
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit453

bb.bp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit442
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bl
  %i.ln = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #22
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn287 = phi { ptr, i32 } [ %i.ln, %bb.bq ], [ %i.lm, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.lo = load ptr, ptr %12, align 8, !tbaa !103  ; 3 uses
  %.not.i.i451 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i451, label %_ZN7testing7MessageD2Ev.exit453, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i452

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i452: ; preds = %bb.br
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !32
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8
  call void %i.lr(ptr noundef nonnull align 8 dereferenceable(128) %i.lo) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit453

_ZN7testing7MessageD2Ev.exit453:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i452, %bb.br, %bb.bo
  %.pn287.pn = phi { ptr, i32 } [ %i.ll, %bb.bo ], [ %.pn287, %bb.br ], [ %.pn287, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i452 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit652.thread

.critedge346:                                     ; preds = %bb.bg
  %i.ls = load ptr, ptr %i.hq, align 8, !tbaa !101 ; 4 uses
  %.not.i.i454 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i454, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.critedge346
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !25 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 16 ; 2 uses
  %i.lv = icmp eq ptr %i.lt, %i.lu
  br i1 %i.lv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i456, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i455

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i455: ; preds = %bb.bs
  %i.lw = load i64, ptr %i.lu, align 8, !tbaa !24
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lt, i64 noundef %i.lx) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i456

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i456: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i455
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef 32) #23
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i456, %.critedge346
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %exitcond1202.not = icmp eq i64 %i.kr, %1
  br i1 %exitcond1202.not, label %.critedge348, label %.lr.ph1150, !llvm.loop !501

_ZNSt6vectorIfSaIfEED2Ev.exit652.thread:          ; preds = %bb.bh, %_ZN7testing7MessageD2Ev.exit453
  %.pn287.pn.pn = phi { ptr, i32 } [ %.pn287.pn, %_ZN7testing7MessageD2Ev.exit453 ], [ %i.kx, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.fo

.critedge348:                                     ; preds = %bb.bt, %bb.bf
  %i.ly = add nuw i64 %.02091153, 1               ; 2 uses
  %exitcond1203.not = icmp eq i64 %i.ly, %0
  br i1 %exitcond1203.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i459, label %bb.bb, !llvm.loop !502

_ZNSt6vectorIfSaIfEED2Ev.exit636.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i448, %_ZN7testing7MessageD2Ev.exit445
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.fb

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i459: ; preds = %.critedge348, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit430
  br i1 %.not.i.i.i.i379, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit478, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i459
  %i.lz = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.ma = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lz) #24
          to label %.noexc467 unwind label %bb.bv ; 4 uses

.noexc467:                                        ; preds = %bb.bu
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ma, i8 0, i64 %i.lz, i1 false), !tbaa !75
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %1 ; 2 uses
  %i.mc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lz) #24
          to label %.noexc477 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit650.thread ; 3 uses

.noexc477:                                        ; preds = %.noexc467
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.mc, i8 0, i64 %i.lz, i1 false), !tbaa !75
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %1
  %i.me = ptrtoint ptr %i.md to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit478

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit478:         ; preds = %.noexc477, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i459
  %.sroa.12699.0923 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i459 ], [ %i.mb, %.noexc477 ] ; 2 uses
  %.sroa.0693.0915 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i459 ], [ %i.ma, %.noexc477 ] ; 9 uses
  %.sroa.0683.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i459 ], [ %i.mc, %.noexc477 ] ; 10 uses
  %.sroa.12689.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i459 ], [ %i.me, %.noexc477 ] ; 2 uses
  br i1 %.not2861140.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i540, label %.preheader1114.lr.ph

.preheader1114.lr.ph:                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit478
  %i.mf = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.mg = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.mh = fdiv x86_fp80 %i.mf, %i.mg
  %i.mi = fptoui x86_fp80 %i.mh to i64            ; 2 uses
  %i.mj = add i64 %i.mi, 23
  %i.mk = udiv i64 %i.mj, %i.mi
  %spec.select.i.i.i.i479 = call i64 @llvm.umax.i64(i64 %i.mk, i64 1) ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %min.iters.check1360 = icmp ult i64 %1, 4
  %n.vec1362 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1367 = icmp eq i64 %1, %n.vec1362
  br label %.preheader1114

.preheader1114:                                   ; preds = %.preheader1114.lr.ph, %.critedge356
  %.02061164 = phi i64 [ 0, %.preheader1114.lr.ph ], [ %i.zw, %.critedge356 ] ; 3 uses
  %.sroa.0770.21163 = phi i64 [ 123, %.preheader1114.lr.ph ], [ %i.nt, %.critedge356 ]
  br i1 %.not.i.i.i.i379, label %select.unfold.i.i.i.i481.preheader, label %.lr.ph1156.preheader

select.unfold.i.i.i.i481.preheader:               ; preds = %.lr.ph1156, %middle.block1366, %.preheader1114
end_hunk_0
begin_hunk_1_@_Z26verifyMinMaxIndexPQDecoderIN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS1_14IndexPQDecoderILl256ELl16ELl8EEEEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  br i1 %exitcond1176.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431, label %bb.aa, !llvm.loop !603

.lr.ph1115:                                       ; preds = %.lr.ph1115.preheader1368, %.lr.ph1115
  %.02241114 = phi i64 [ %i.go, %.lr.ph1115 ], [ %.02241114.ph, %.lr.ph1115.preheader1368 ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0752.0864, i64 %.02241114
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !75
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0762.0817826, i64 %.02241114 ; 2 uses
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !75
  %i.gn = call float @llvm.fmuladd.f32(float %i.ga, float %i.gk, float %i.gm)
  store float %i.gn, ptr %i.gl, align 4, !tbaa !75
  %i.go = add nuw nsw i64 %.02241114, 1           ; 2 uses
  %exitcond1175.not = icmp eq i64 %i.go, %1
  br i1 %exitcond1175.not, label %._crit_edge, label %.lr.ph1115, !llvm.loop !604

_ZNSt6vectorIfSaIfEED2Ev.exit649.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i419, %_ZN7testing7MessageD2Ev.exit416
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.eu

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431: ; preds = %._crit_edge, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit411
  br i1 %.not.i.i.i.i389, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit440, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431
  %i.gp = shl nuw nsw i64 %1, 2                   ; 2 uses
  %i.gq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gp) #24
          to label %.noexc439 unwind label %bb.as ; 3 uses

.noexc439:                                        ; preds = %bb.ar
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gq, i8 0, i64 %i.gp, i1 false), !tbaa !75
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %1
  %i.gs = ptrtoint ptr %i.gr to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit440

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit440:         ; preds = %.noexc439, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431
  %.sroa.0725.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431 ], [ %i.gq, %.noexc439 ] ; 24 uses
  %.sroa.23.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431 ], [ %i.gs, %.noexc439 ] ; 2 uses
  br i1 %.not3001116.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i469, label %.lr.ph1130

.lr.ph1130:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit440
  %i.gt = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.gu = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.gv = fdiv x86_fp80 %i.gt, %i.gu
  %i.gw = fptoui x86_fp80 %i.gv to i64            ; 2 uses
  %i.gx = add i64 %i.gw, 23
  %i.gy = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.gz = add nsw i64 %1, -1
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.ha = icmp ult i64 %i.gz, 3
  %unroll_iter = and i64 %1, 2305843009213693948
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1372 = icmp ne i64 %xtraiter, 0
  br label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit665

bb.at:                                            ; preds = %.lr.ph1130, %.critedge361
  %.02231129 = phi i64 [ 0, %.lr.ph1130 ], [ %i.lg, %.critedge361 ] ; 2 uses
  %.sroa.0781.11128 = phi i64 [ 123, %.lr.ph1130 ], [ %i.hs, %.critedge361 ]
  %i.hc = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.hd = load ptr, ptr %3, align 8, !tbaa !43
  %i.he = mul i64 %.02231129, %i.bf               ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.he
  %i.hg = load ptr, ptr %i.hc, align 8, !tbaa !32
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 208
  %i.hi = load ptr, ptr %i.hh, align 8
  invoke void %i.hi(ptr noundef nonnull align 8 dereferenceable(36) %i.hc, i64 noundef 1, ptr noundef %i.hf, ptr noundef %.sroa.0752.0864)
          to label %.preheader1091 unwind label %bb.aw

.preheader1091:                                   ; preds = %bb.at
  br i1 %.not.i.i.i.i389, label %._crit_edge1122, label %.lr.ph1121.preheader

.lr.ph1121.preheader:                             ; preds = %.preheader1091
  br i1 %i.ha, label %.lr.ph1121.epil.preheader, label %.lr.ph1121

._crit_edge1122.loopexit.unr-lcssa:               ; preds = %.lr.ph1121
  br i1 %lcmp.mod.not, label %._crit_edge1122, label %.lr.ph1121.epil.preheader

.lr.ph1121.epil.preheader:                        ; preds = %._crit_edge1122.loopexit.unr-lcssa, %.lr.ph1121.preheader
  %.02221120.epil.init = phi i64 [ 0, %.lr.ph1121.preheader ], [ %i.in, %._crit_edge1122.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1372)
  br label %.lr.ph1121.epil

.lr.ph1121.epil:                                  ; preds = %.lr.ph1121.epil, %.lr.ph1121.epil.preheader
  %.02221120.epil = phi i64 [ %i.hj, %.lr.ph1121.epil ], [ %.02221120.epil.init, %.lr.ph1121.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph1121.epil ], [ 0, %.lr.ph1121.epil.preheader ]
  %i.hj = add nuw nsw i64 %.02221120.epil, 1      ; 3 uses
  %i.hk = mul i64 %i.hj, %i.hj
  %i.hl = uitofp i64 %i.hk to float
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0725.0, i64 %.02221120.epil
  store float %i.hl, ptr %i.hm, align 4, !tbaa !75
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge1122, label %.lr.ph1121.epil, !llvm.loop !605

._crit_edge1122:                                  ; preds = %._crit_edge1122.loopexit.unr-lcssa, %.lr.ph1121.epil, %.preheader1091
  %i.hn = udiv i64 %i.gx, %i.gw
  %spec.select.i.i.i.i441 = call i64 @llvm.umax.i64(i64 %i.hn, i64 1)
  br label %select.unfold.i.i.i.i443

bb.au:                                            ; preds = %select.unfold.i.i.i.i443
  %i.ho = fdiv float %i.hv, %i.hy                 ; 2 uses
  %i.hp = fcmp ult float %i.ho, 1.000000e+00
  br i1 %i.hp, label %bb.ax, label %bb.av, !prof !77

select.unfold.i.i.i.i443:                         ; preds = %select.unfold.i.i.i.i443, %._crit_edge1122
  %.023.i.i.i.i444 = phi i64 [ %spec.select.i.i.i.i441, %._crit_edge1122 ], [ %i.hz, %select.unfold.i.i.i.i443 ]
  %.01422.i.i.i.i445 = phi float [ 1.000000e+00, %._crit_edge1122 ], [ %i.hy, %select.unfold.i.i.i.i443 ] ; 2 uses
  %.01521.i.i.i.i446 = phi float [ 0.000000e+00, %._crit_edge1122 ], [ %i.hv, %select.unfold.i.i.i.i443 ]
  %i.hq = phi i64 [ %.sroa.0781.11128, %._crit_edge1122 ], [ %i.hs, %select.unfold.i.i.i.i443 ]
  %i.hr = mul nuw nsw i64 %i.hq, 16807
  %i.hs = urem i64 %i.hr, 2147483647              ; 3 uses
  %i.ht = add nsw i64 %i.hs, -1
  %i.hu = uitofp i64 %i.ht to float
  %i.hv = call float @llvm.fmuladd.f32(float %i.hu, float %.01422.i.i.i.i445, float %.01521.i.i.i.i446) ; 2 uses
  %i.hw = fpext float %.01422.i.i.i.i445 to x86_fp80
  %i.hx = fmul x86_fp80 %i.hw, f0x401DFFFFFFFC00000000
  %i.hy = fptrunc x86_fp80 %i.hx to float         ; 2 uses
  %i.hz = add i64 %.023.i.i.i.i444, -1            ; 2 uses
  %.not.i.i.i.i447 = icmp eq i64 %i.hz, 0
  br i1 %.not.i.i.i.i447, label %bb.au, label %select.unfold.i.i.i.i443, !llvm.loop !4

bb.av:                                            ; preds = %bb.au
  br label %bb.ax

bb.aw:                                            ; preds = %bb.at
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit663

.lr.ph1121:                                       ; preds = %.lr.ph1121.preheader, %.lr.ph1121
  %.02221120 = phi i64 [ %i.in, %.lr.ph1121 ], [ 0, %.lr.ph1121.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph1121 ], [ 0, %.lr.ph1121.preheader ]
  %i.ib = or disjoint i64 %.02221120, 1           ; 3 uses
  %i.ic = mul i64 %i.ib, %i.ib
  %i.id = uitofp i64 %i.ic to float
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0725.0, i64 %.02221120
  store float %i.id, ptr %i.ie, align 4, !tbaa !75
  %i.if = or disjoint i64 %.02221120, 2           ; 3 uses
  %i.ig = mul i64 %i.if, %i.if
  %i.ih = uitofp i64 %i.ig to float
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0725.0, i64 %i.ib
  store float %i.ih, ptr %i.ii, align 4, !tbaa !75
  %i.ij = or disjoint i64 %.02221120, 3           ; 3 uses
  %i.ik = mul i64 %i.ij, %i.ij
  %i.il = uitofp i64 %i.ik to float
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0725.0, i64 %i.if
  store float %i.il, ptr %i.im, align 4, !tbaa !75
  %i.in = add nuw nsw i64 %.02221120, 4           ; 4 uses
  %i.io = mul i64 %i.in, %i.in
  %i.ip = uitofp i64 %i.io to float
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0725.0, i64 %i.ij
  store float %i.ip, ptr %i.iq, align 4, !tbaa !75
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge1122.loopexit.unr-lcssa, label %.lr.ph1121, !llvm.loop !606

bb.ax:                                            ; preds = %bb.av, %bb.au
  %.016.i.i.i.i448 = phi float [ f0x3F7FFFFF, %bb.av ], [ %i.ho, %bb.au ]
  %i.ir = fadd float %.016.i.i.i.i448, 0.000000e+00 ; 2 uses
  %i.is = load ptr, ptr %3, align 8, !tbaa !43
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.he ; 2 uses
  %i.iu = load <2 x i16>, ptr %i.it, align 2, !tbaa !108, !alias.scope !657, !noalias !658 ; 2 uses
  %i.iv = zext <2 x i16> %i.iu to <2 x i32>
  %i.iw = shl nuw nsw <2 x i32> %i.iv, splat (i32 13) ; 3 uses
  %i.ix = and <2 x i32> %i.iw, splat (i32 268427264) ; 2 uses
  %i.iy = and <2 x i32> %i.iw, splat (i32 260046848) ; 2 uses
  %i.iz = add nuw nsw <2 x i32> %i.ix, splat (i32 939524096)
  %i.ja = or <2 x i32> %i.iw, splat (i32 1879048192)
  %i.jb = add nuw nsw <2 x i32> %i.ix, splat (i32 947912704)
  %i.jc = bitcast <2 x i32> %i.jb to <2 x float>
  %i.jd = fadd <2 x float> %i.jc, splat (float f0xB8800000)
  %i.je = bitcast <2 x float> %i.jd to <2 x i32>
  %i.jf = icmp eq <2 x i32> %i.iy, zeroinitializer
  %i.jg = select <2 x i1> %i.jf, <2 x i32> %i.je, <2 x i32> %i.iz
  %i.jh = sext <2 x i16> %i.iu to <2 x i32>
  %i.ji = and <2 x i32> %i.jh, splat (i32 -2147483648)
  %i.jj = icmp eq <2 x i32> %i.iy, splat (i32 260046848)
  %i.jk = select <2 x i1> %i.jj, <2 x i32> %i.ja, <2 x i32> %i.jg
  %i.jl = or <2 x i32> %i.jk, %i.ji
  %i.jm = bitcast <2 x i32> %i.jl to <2 x float>
  %i.jn = insertelement <2 x float> poison, float %i.ir, i64 0
  %i.jo = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jp = fmul <2 x float> %i.jo, %i.jm           ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  %i.jr = extractelement <2 x float> %i.jp, i64 0
  call void @_ZN5faiss10cppcontrib14IndexPQDecoderILl256ELl16ELl8EE5accumEPKfPKhfPf(ptr noundef %i.ba, ptr noundef nonnull %i.jq, float noundef %i.jr, ptr noundef %.sroa.0725.0)
  %i.js = extractelement <2 x float> %i.jp, i64 1
  %i.jt = fadd float %i.js, 0.000000e+00
  br i1 %.not.i.i.i.i389, label %.critedge361, label %.lr.ph1126

.lr.ph1126:                                       ; preds = %bb.ax, %bb.bl
  %.02211124 = phi i64 [ %i.jz, %bb.bl ], [ 0, %bb.ax ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0725.0, i64 %.02211124
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !75
  %i.jw = fadd float %i.jt, %i.jv
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0752.0864, i64 %.02211124
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !75
  %i.jz = add nuw nsw i64 %.02211124, 1           ; 4 uses
  %i.ka = mul i64 %i.jz, %i.jz
  %i.kb = uitofp i64 %i.ka to float
  %i.kc = call float @llvm.fmuladd.f32(float %i.jy, float %i.ir, float %i.kb)
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, float noundef %i.jw, float noundef %i.kc)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %.lr.ph1126
  %i.kd = load i8, ptr %11, align 8, !tbaa !98, !range !99, !noundef !100
  %i.ke = trunc nuw i8 %i.kd to i1
  br i1 %i.ke, label %.critedge359, label %bb.ba

bb.az:                                            ; preds = %.lr.ph1126
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit663.thread

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bb unwind label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.kg = load ptr, ptr %i.gy, align 8, !tbaa !101 ; 2 uses
  %.not.i.i451 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i451, label %_ZNK7testing15AssertionResult15failure_messageEv.exit452, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit452

_ZNK7testing15AssertionResult15failure_messageEv.exit452: ; preds = %bb.bc, %bb.bb
  %i.ki = phi ptr [ %i.kh, %bb.bc ], [ @.str.20, %bb.bb ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 820, ptr noundef %i.ki)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit452
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.be unwind label %bb.bi

bb.be:                                            ; preds = %bb.bd
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kj = load ptr, ptr %12, align 8, !tbaa !103  ; 3 uses
  %.not.i.i453 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i453, label %_ZN7testing7MessageD2Ev.exit455, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454: ; preds = %bb.be
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !32
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load ptr, ptr %i.kl, align 8
  call void %i.km(ptr noundef nonnull align 8 dereferenceable(128) %i.kj) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit455

_ZN7testing7MessageD2Ev.exit455:                  ; preds = %bb.be, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.kn = load ptr, ptr %i.gy, align 8, !tbaa !101 ; 4 uses
  %.not.i.i456 = icmp eq ptr %i.kn, null
  br i1 %.not.i.i456, label %_ZNSt6vectorIfSaIfEED2Ev.exit647.thread, label %bb.bf

bb.bf:                                            ; preds = %_ZN7testing7MessageD2Ev.exit455
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !25 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 16 ; 2 uses
  %i.kq = icmp eq ptr %i.ko, %i.kp
  br i1 %i.kq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457: ; preds = %bb.bf
  %i.kr = load i64, ptr %i.kp, align 8, !tbaa !24
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.ko, i64 noundef %i.ks) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457
  call void @_ZdlPvm(ptr noundef nonnull %i.kn, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit647.thread

bb.bg:                                            ; preds = %bb.ba
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit463

bb.bh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit452
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bd
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #22
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn301 = phi { ptr, i32 } [ %i.kv, %bb.bi ], [ %i.ku, %bb.bh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kw = load ptr, ptr %12, align 8, !tbaa !103  ; 3 uses
  %.not.i.i461 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i461, label %_ZN7testing7MessageD2Ev.exit463, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i462

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i462: ; preds = %bb.bj
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !32
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8
  call void %i.kz(ptr noundef nonnull align 8 dereferenceable(128) %i.kw) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit463

_ZN7testing7MessageD2Ev.exit463:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i462, %bb.bj, %bb.bg
  %.pn301.pn = phi { ptr, i32 } [ %i.kt, %bb.bg ], [ %.pn301, %bb.bj ], [ %.pn301, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i462 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit663.thread

.critedge359:                                     ; preds = %bb.ay
  %i.la = load ptr, ptr %i.gy, align 8, !tbaa !101 ; 4 uses
  %.not.i.i464 = icmp eq ptr %i.la, null
  br i1 %.not.i.i464, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.critedge359
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !25 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 16 ; 2 uses
  %i.ld = icmp eq ptr %i.lb, %i.lc
  br i1 %i.ld, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i466, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i465

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i465: ; preds = %bb.bk
  %i.le = load i64, ptr %i.lc, align 8, !tbaa !24
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.lf) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i466

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i466: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i465
  call void @_ZdlPvm(ptr noundef nonnull %i.la, i64 noundef 32) #23
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i466, %.critedge359
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %exitcond1178.not = icmp eq i64 %i.jz, %1
  br i1 %exitcond1178.not, label %.critedge361, label %.lr.ph1126, !llvm.loop !611

_ZNSt6vectorIfSaIfEED2Ev.exit663.thread:          ; preds = %bb.az, %_ZN7testing7MessageD2Ev.exit463
  %.pn301.pn.pn = phi { ptr, i32 } [ %.pn301.pn, %_ZN7testing7MessageD2Ev.exit463 ], [ %i.kf, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.fg

.critedge361:                                     ; preds = %bb.bl, %bb.ax
  %i.lg = add nuw i64 %.02231129, 1               ; 2 uses
  %exitcond1179.not = icmp eq i64 %i.lg, %0
  br i1 %exitcond1179.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i469, label %bb.at, !llvm.loop !612

_ZNSt6vectorIfSaIfEED2Ev.exit647.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, %_ZN7testing7MessageD2Ev.exit455
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.et

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i469: ; preds = %.critedge361, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit440
  br i1 %.not.i.i.i.i389, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit488, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i469
  %i.lh = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.li = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lh) #24
          to label %.noexc477 unwind label %bb.bn ; 4 uses

.noexc477:                                        ; preds = %bb.bm
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.li, i8 0, i64 %i.lh, i1 false), !tbaa !75
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %1 ; 2 uses
  %i.lk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lh) #24
          to label %.noexc487 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit661.thread ; 3 uses

.noexc487:                                        ; preds = %.noexc477
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lk, i8 0, i64 %i.lh, i1 false), !tbaa !75
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %1
  %i.lm = ptrtoint ptr %i.ll to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit488

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit488:         ; preds = %.noexc487, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i469
  %.sroa.12710.0899 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i469 ], [ %i.lj, %.noexc487 ] ; 2 uses
  %.sroa.0704.0891 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i469 ], [ %i.li, %.noexc487 ] ; 9 uses
  %.sroa.0692.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i469 ], [ %i.lk, %.noexc487 ] ; 10 uses
  %.sroa.12698.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i469 ], [ %i.lm, %.noexc487 ] ; 2 uses
  br i1 %.not3001116.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i551, label %.preheader1090.lr.ph

.preheader1090.lr.ph:                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit488
  %i.ln = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.lo = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.lp = fdiv x86_fp80 %i.ln, %i.lo
  %i.lq = fptoui x86_fp80 %i.lp to i64            ; 2 uses
  %i.lr = add i64 %i.lq, 23
  %i.ls = udiv i64 %i.lr, %i.lq
  %spec.select.i.i.i.i489 = call i64 @llvm.umax.i64(i64 %i.ls, i64 1) ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %min.iters.check1328 = icmp ult i64 %1, 4
  %n.vec1330 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1335 = icmp eq i64 %1, %n.vec1330
  br label %.preheader1090

.preheader1090:                                   ; preds = %.preheader1090.lr.ph, %.critedge369
  %.02201140 = phi i64 [ 0, %.preheader1090.lr.ph ], [ %i.ze, %.critedge369 ] ; 3 uses
  %.sroa.0781.21139 = phi i64 [ 123, %.preheader1090.lr.ph ], [ %i.nb, %.critedge369 ]
  br i1 %.not.i.i.i.i389, label %select.unfold.i.i.i.i491.preheader, label %.lr.ph1132.preheader

select.unfold.i.i.i.i491.preheader:               ; preds = %.lr.ph1132, %middle.block1334, %.preheader1090
end_hunk_1
begin_hunk_2_@_Z30verifyMinMaxIndex2LevelDecoderIN5faiss10cppcontrib18IndexMinMaxDecoderINS1_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %wide.load1332 = load <4 x float>, ptr %i.fm, align 4, !tbaa !75
  %i.fn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load1331)
  %i.fo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load1330, <4 x float> %wide.load1332)
  store <4 x float> %i.fn, ptr %i.fl, align 4, !tbaa !75
  store <4 x float> %i.fo, ptr %i.fm, align 4, !tbaa !75
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fp = icmp eq i64 %index.next, %n.vec
  br i1 %i.fp, label %middle.block, label %vector.body, !llvm.loop !686

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph1125.preheader1386

.lr.ph1125.preheader1386:                         ; preds = %.lr.ph1125.preheader, %middle.block
  %.02101124.ph = phi i64 [ 0, %.lr.ph1125.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph1125

._crit_edge:                                      ; preds = %.lr.ph1125, %middle.block, %_ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_.exit
  %i.fq = add nuw i64 %.02121128, 1               ; 2 uses
  %exitcond1186.not = icmp eq i64 %i.fq, %0
  br i1 %exitcond1186.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i421, label %bb.ai, !llvm.loop !687

.lr.ph1125:                                       ; preds = %.lr.ph1125.preheader1386, %.lr.ph1125
  %.02101124 = phi i64 [ %i.fw, %.lr.ph1125 ], [ %.02101124.ph, %.lr.ph1125.preheader1386 ] ; 3 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0731.0874, i64 %.02101124
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !75
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0741.0831840, i64 %.02101124 ; 2 uses
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !75
  %i.fv = call float @llvm.fmuladd.f32(float %i.fi, float %i.fs, float %i.fu)
  store float %i.fv, ptr %i.ft, align 4, !tbaa !75
  %i.fw = add nuw nsw i64 %.02101124, 1           ; 2 uses
  %exitcond1185.not = icmp eq i64 %i.fw, %1
  br i1 %exitcond1185.not, label %._crit_edge, label %.lr.ph1125, !llvm.loop !688

_ZNSt6vectorIfSaIfEED2Ev.exit624.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i409, %_ZN7testing7MessageD2Ev.exit406
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ey

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i421: ; preds = %._crit_edge, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit401
  br i1 %.not.i.i.i.i379, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit430, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i421
  %i.fx = shl nuw nsw i64 %1, 2                   ; 2 uses
  %i.fy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #24
          to label %.noexc429 unwind label %bb.ba ; 3 uses

.noexc429:                                        ; preds = %bb.az
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fy, i8 0, i64 %i.fx, i1 false), !tbaa !75
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %1
  %i.ga = ptrtoint ptr %i.fz to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit430

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit430:         ; preds = %.noexc429, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i421
  %.sroa.0704.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i421 ], [ %i.fy, %.noexc429 ] ; 24 uses
  %.sroa.23.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i421 ], [ %i.ga, %.noexc429 ] ; 2 uses
  br i1 %.not2861126.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i458, label %.lr.ph1140

.lr.ph1140:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit430
  %i.gb = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.gc = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.gd = fdiv x86_fp80 %i.gb, %i.gc
  %i.ge = fptoui x86_fp80 %i.gd to i64            ; 2 uses
  %i.gf = add i64 %i.ge, 23
  %i.gg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.gh = add nsw i64 %1, -1
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.gi = icmp ult i64 %i.gh, 3
  %unroll_iter = and i64 %1, 2305843009213693948
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1390 = icmp ne i64 %xtraiter, 0
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit640

bb.bb:                                            ; preds = %.lr.ph1140, %.critedge348
  %.02091139 = phi i64 [ 0, %.lr.ph1140 ], [ %i.jv, %.critedge348 ] ; 2 uses
  %.sroa.0760.11138 = phi i64 [ 123, %.lr.ph1140 ], [ %i.ha, %.critedge348 ]
  %i.gk = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.gl = load ptr, ptr %3, align 8, !tbaa !43
  %i.gm = mul i64 %.02091139, %i.bv               ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gm
  %i.go = load ptr, ptr %i.gk, align 8, !tbaa !32
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 208
  %i.gq = load ptr, ptr %i.gp, align 8
  invoke void %i.gq(ptr noundef nonnull align 8 dereferenceable(36) %i.gk, i64 noundef 1, ptr noundef %i.gn, ptr noundef %.sroa.0731.0874)
          to label %.preheader1101 unwind label %bb.be

.preheader1101:                                   ; preds = %bb.bb
  br i1 %.not.i.i.i.i379, label %._crit_edge1132, label %.lr.ph1131.preheader

.lr.ph1131.preheader:                             ; preds = %.preheader1101
  br i1 %i.gi, label %.lr.ph1131.epil.preheader, label %.lr.ph1131

._crit_edge1132.loopexit.unr-lcssa:               ; preds = %.lr.ph1131
  br i1 %lcmp.mod.not, label %._crit_edge1132, label %.lr.ph1131.epil.preheader

.lr.ph1131.epil.preheader:                        ; preds = %._crit_edge1132.loopexit.unr-lcssa, %.lr.ph1131.preheader
  %.02081130.epil.init = phi i64 [ 0, %.lr.ph1131.preheader ], [ %i.hv, %._crit_edge1132.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1390)
  br label %.lr.ph1131.epil

.lr.ph1131.epil:                                  ; preds = %.lr.ph1131.epil, %.lr.ph1131.epil.preheader
  %.02081130.epil = phi i64 [ %i.gr, %.lr.ph1131.epil ], [ %.02081130.epil.init, %.lr.ph1131.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph1131.epil ], [ 0, %.lr.ph1131.epil.preheader ]
  %i.gr = add nuw nsw i64 %.02081130.epil, 1      ; 3 uses
  %i.gs = mul i64 %i.gr, %i.gr
  %i.gt = uitofp i64 %i.gs to float
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0704.0, i64 %.02081130.epil
  store float %i.gt, ptr %i.gu, align 4, !tbaa !75
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge1132, label %.lr.ph1131.epil, !llvm.loop !689

._crit_edge1132:                                  ; preds = %._crit_edge1132.loopexit.unr-lcssa, %.lr.ph1131.epil, %.preheader1101
  %i.gv = udiv i64 %i.gf, %i.ge
  %spec.select.i.i.i.i431 = call i64 @llvm.umax.i64(i64 %i.gv, i64 1)
  br label %select.unfold.i.i.i.i433

bb.bc:                                            ; preds = %select.unfold.i.i.i.i433
  %i.gw = fdiv float %i.hd, %i.hg                 ; 2 uses
  %i.gx = fcmp ult float %i.gw, 1.000000e+00
  br i1 %i.gx, label %bb.bf, label %bb.bd, !prof !77

select.unfold.i.i.i.i433:                         ; preds = %select.unfold.i.i.i.i433, %._crit_edge1132
  %.023.i.i.i.i434 = phi i64 [ %spec.select.i.i.i.i431, %._crit_edge1132 ], [ %i.hh, %select.unfold.i.i.i.i433 ]
  %.01422.i.i.i.i435 = phi float [ 1.000000e+00, %._crit_edge1132 ], [ %i.hg, %select.unfold.i.i.i.i433 ] ; 2 uses
  %.01521.i.i.i.i436 = phi float [ 0.000000e+00, %._crit_edge1132 ], [ %i.hd, %select.unfold.i.i.i.i433 ]
  %i.gy = phi i64 [ %.sroa.0760.11138, %._crit_edge1132 ], [ %i.ha, %select.unfold.i.i.i.i433 ]
  %i.gz = mul nuw nsw i64 %i.gy, 16807
  %i.ha = urem i64 %i.gz, 2147483647              ; 3 uses
  %i.hb = add nsw i64 %i.ha, -1
  %i.hc = uitofp i64 %i.hb to float
  %i.hd = call float @llvm.fmuladd.f32(float %i.hc, float %.01422.i.i.i.i435, float %.01521.i.i.i.i436) ; 2 uses
  %i.he = fpext float %.01422.i.i.i.i435 to x86_fp80
  %i.hf = fmul x86_fp80 %i.he, f0x401DFFFFFFFC00000000
  %i.hg = fptrunc x86_fp80 %i.hf to float         ; 2 uses
  %i.hh = add i64 %.023.i.i.i.i434, -1            ; 2 uses
  %.not.i.i.i.i437 = icmp eq i64 %i.hh, 0
  br i1 %.not.i.i.i.i437, label %bb.bc, label %select.unfold.i.i.i.i433, !llvm.loop !4

bb.bd:                                            ; preds = %bb.bc
  br label %bb.bf

bb.be:                                            ; preds = %bb.bb
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit638

.lr.ph1131:                                       ; preds = %.lr.ph1131.preheader, %.lr.ph1131
  %.02081130 = phi i64 [ %i.hv, %.lr.ph1131 ], [ 0, %.lr.ph1131.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph1131 ], [ 0, %.lr.ph1131.preheader ]
  %i.hj = or disjoint i64 %.02081130, 1           ; 3 uses
  %i.hk = mul i64 %i.hj, %i.hj
  %i.hl = uitofp i64 %i.hk to float
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0704.0, i64 %.02081130
  store float %i.hl, ptr %i.hm, align 4, !tbaa !75
  %i.hn = or disjoint i64 %.02081130, 2           ; 3 uses
  %i.ho = mul i64 %i.hn, %i.hn
  %i.hp = uitofp i64 %i.ho to float
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0704.0, i64 %i.hj
  store float %i.hp, ptr %i.hq, align 4, !tbaa !75
  %i.hr = or disjoint i64 %.02081130, 3           ; 3 uses
  %i.hs = mul i64 %i.hr, %i.hr
  %i.ht = uitofp i64 %i.hs to float
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0704.0, i64 %i.hn
  store float %i.ht, ptr %i.hu, align 4, !tbaa !75
  %i.hv = add nuw nsw i64 %.02081130, 4           ; 4 uses
  %i.hw = mul i64 %i.hv, %i.hv
  %i.hx = uitofp i64 %i.hw to float
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0704.0, i64 %i.hr
  store float %i.hx, ptr %i.hy, align 4, !tbaa !75
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge1132.loopexit.unr-lcssa, label %.lr.ph1131, !llvm.loop !690

bb.bf:                                            ; preds = %bb.bd, %bb.bc
  %.016.i.i.i.i438 = phi float [ f0x3F7FFFFF, %bb.bd ], [ %i.gw, %bb.bc ]
  %i.hz = fadd float %.016.i.i.i.i438, 0.000000e+00 ; 3 uses
  %i.ia = load ptr, ptr %3, align 8, !tbaa !43
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.gm ; 3 uses
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !75, !alias.scope !768, !noalias !769
  %i.id = fmul float %i.hz, %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.if = load float, ptr %i.ie, align 4, !tbaa !75, !alias.scope !768, !noalias !769
  %i.ig = fmul float %i.hz, %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1797, ptr noundef %.1, ptr noundef nonnull %i.ih, float noundef %i.id, ptr noundef %.sroa.0704.0)
  %i.ii = fadd float %i.ig, 0.000000e+00
  br i1 %.not.i.i.i.i379, label %.critedge348, label %.lr.ph1136

.lr.ph1136:                                       ; preds = %bb.bf, %bb.bt
  %.02071134 = phi i64 [ %i.io, %bb.bt ], [ 0, %bb.bf ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0704.0, i64 %.02071134
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !75
  %i.il = fadd float %i.ii, %i.ik
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0731.0874, i64 %.02071134
  %i.in = load float, ptr %i.im, align 4, !tbaa !75
  %i.io = add nuw nsw i64 %.02071134, 1           ; 4 uses
  %i.ip = mul i64 %i.io, %i.io
  %i.iq = uitofp i64 %i.ip to float
  %i.ir = call float @llvm.fmuladd.f32(float %i.in, float %i.hz, float %i.iq)
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, float noundef %i.il, float noundef %i.ir)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %.lr.ph1136
  %i.is = load i8, ptr %11, align 8, !tbaa !98, !range !99, !noundef !100
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %.critedge346, label %bb.bi

bb.bh:                                            ; preds = %.lr.ph1136
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit638.thread

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.iv = load ptr, ptr %i.gg, align 8, !tbaa !101 ; 2 uses
  %.not.i.i440 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i440, label %_ZNK7testing15AssertionResult15failure_messageEv.exit441, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit441

_ZNK7testing15AssertionResult15failure_messageEv.exit441: ; preds = %bb.bk, %bb.bj
  %i.ix = phi ptr [ %i.iw, %bb.bk ], [ @.str.20, %bb.bj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 388, ptr noundef %i.ix)
          to label %bb.bl unwind label %bb.bp

bb.bl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit441
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bm unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.iy = load ptr, ptr %12, align 8, !tbaa !103  ; 3 uses
  %.not.i.i442 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i442, label %_ZN7testing7MessageD2Ev.exit444, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i443

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i443: ; preds = %bb.bm
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !32
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(128) %i.iy) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit444

_ZN7testing7MessageD2Ev.exit444:                  ; preds = %bb.bm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i443
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.jc = load ptr, ptr %i.gg, align 8, !tbaa !101 ; 4 uses
  %.not.i.i445 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i445, label %_ZNSt6vectorIfSaIfEED2Ev.exit622.thread, label %bb.bn

bb.bn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit444
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !25 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 16 ; 2 uses
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i447, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i446

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i446: ; preds = %bb.bn
  %i.jg = load i64, ptr %i.je, align 8, !tbaa !24
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jh) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i447

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i447: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i446
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit622.thread

bb.bo:                                            ; preds = %bb.bi
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit452

bb.bp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit441
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bl
  %i.jk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #22
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn287 = phi { ptr, i32 } [ %i.jk, %bb.bq ], [ %i.jj, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.jl = load ptr, ptr %12, align 8, !tbaa !103  ; 3 uses
  %.not.i.i450 = icmp eq ptr %i.jl, null
  br i1 %.not.i.i450, label %_ZN7testing7MessageD2Ev.exit452, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i451

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i451: ; preds = %bb.br
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !32
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(128) %i.jl) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit452

_ZN7testing7MessageD2Ev.exit452:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i451, %bb.br, %bb.bo
  %.pn287.pn = phi { ptr, i32 } [ %i.ji, %bb.bo ], [ %.pn287, %bb.br ], [ %.pn287, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i451 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit638.thread

.critedge346:                                     ; preds = %bb.bg
  %i.jp = load ptr, ptr %i.gg, align 8, !tbaa !101 ; 4 uses
  %.not.i.i453 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i453, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.critedge346
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !25 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 16 ; 2 uses
  %i.js = icmp eq ptr %i.jq, %i.jr
  br i1 %i.js, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i455, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i454

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i454: ; preds = %bb.bs
  %i.jt = load i64, ptr %i.jr, align 8, !tbaa !24
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.ju) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i455

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i455: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i454
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef 32) #23
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i455, %.critedge346
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %exitcond1188.not = icmp eq i64 %i.io, %1
  br i1 %exitcond1188.not, label %.critedge348, label %.lr.ph1136, !llvm.loop !696

_ZNSt6vectorIfSaIfEED2Ev.exit638.thread:          ; preds = %bb.bh, %_ZN7testing7MessageD2Ev.exit452
  %.pn287.pn.pn = phi { ptr, i32 } [ %.pn287.pn, %_ZN7testing7MessageD2Ev.exit452 ], [ %i.iu, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.fj

.critedge348:                                     ; preds = %bb.bt, %bb.bf
  %i.jv = add nuw i64 %.02091139, 1               ; 2 uses
  %exitcond1189.not = icmp eq i64 %i.jv, %0
  br i1 %exitcond1189.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i458, label %bb.bb, !llvm.loop !697

_ZNSt6vectorIfSaIfEED2Ev.exit622.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i447, %_ZN7testing7MessageD2Ev.exit444
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.ex

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i458: ; preds = %.critedge348, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit430
  br i1 %.not.i.i.i.i379, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit477, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i458
  %i.jw = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.jx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jw) #24
          to label %.noexc466 unwind label %bb.bv ; 4 uses

.noexc466:                                        ; preds = %bb.bu
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jx, i8 0, i64 %i.jw, i1 false), !tbaa !75
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %1 ; 2 uses
  %i.jz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jw) #24
          to label %.noexc476 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit636.thread ; 3 uses

.noexc476:                                        ; preds = %.noexc466
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jz, i8 0, i64 %i.jw, i1 false), !tbaa !75
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %1
  %i.kb = ptrtoint ptr %i.ka to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit477

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit477:         ; preds = %.noexc476, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i458
  %.sroa.12689.0909 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i458 ], [ %i.jy, %.noexc476 ] ; 2 uses
  %.sroa.0683.0901 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i458 ], [ %i.jx, %.noexc476 ] ; 9 uses
  %.sroa.0673.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i458 ], [ %i.jz, %.noexc476 ] ; 10 uses
  %.sroa.12679.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i458 ], [ %i.kb, %.noexc476 ] ; 2 uses
  br i1 %.not2861126.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i532, label %.preheader1100.lr.ph

.preheader1100.lr.ph:                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit477
  %i.kc = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.kd = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ke = fdiv x86_fp80 %i.kc, %i.kd
  %i.kf = fptoui x86_fp80 %i.ke to i64            ; 2 uses
  %i.kg = add i64 %i.kf, 23
  %i.kh = udiv i64 %i.kg, %i.kf
  %spec.select.i.i.i.i478 = call i64 @llvm.umax.i64(i64 %i.kh, i64 1) ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %min.iters.check1346 = icmp ult i64 %1, 4
  %n.vec1348 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1353 = icmp eq i64 %1, %n.vec1348
  br label %.preheader1100

.preheader1100:                                   ; preds = %.preheader1100.lr.ph, %.critedge356
  %.02061150 = phi i64 [ 0, %.preheader1100.lr.ph ], [ %i.qu, %.critedge356 ] ; 3 uses
  %.sroa.0760.21149 = phi i64 [ 123, %.preheader1100.lr.ph ], [ %i.lq, %.critedge356 ]
  br i1 %.not.i.i.i.i379, label %select.unfold.i.i.i.i480.preheader, label %.lr.ph1142.preheader

select.unfold.i.i.i.i480.preheader:               ; preds = %.lr.ph1142, %middle.block1352, %.preheader1100
end_hunk_2
begin_hunk_3_@_Z26verifyMinMaxIndexPQDecoderIN5faiss10cppcontrib18IndexMinMaxDecoderINS1_14IndexPQDecoderILl256ELl16ELl8EEEEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %wide.load1299 = load <4 x float>, ptr %i.eu, align 4, !tbaa !75
  %i.ev = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load1298)
  %i.ew = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load1297, <4 x float> %wide.load1299)
  store <4 x float> %i.ev, ptr %i.et, align 4, !tbaa !75
  store <4 x float> %i.ew, ptr %i.eu, align 4, !tbaa !75
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ex = icmp eq i64 %index.next, %n.vec
  br i1 %i.ex, label %middle.block, label %vector.body, !llvm.loop !808

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph1100.preheader1353

.lr.ph1100.preheader1353:                         ; preds = %.lr.ph1100.preheader, %middle.block
  %.02241099.ph = phi i64 [ 0, %.lr.ph1100.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph1100

._crit_edge:                                      ; preds = %.lr.ph1100, %middle.block, %_ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_.exit
  %i.ey = add nuw i64 %.02261103, 1               ; 2 uses
  %exitcond1161.not = icmp eq i64 %i.ey, %0
  br i1 %exitcond1161.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431, label %bb.aa, !llvm.loop !809

.lr.ph1100:                                       ; preds = %.lr.ph1100.preheader1353, %.lr.ph1100
  %.02241099 = phi i64 [ %i.fe, %.lr.ph1100 ], [ %.02241099.ph, %.lr.ph1100.preheader1353 ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0741.0849, i64 %.02241099
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !75
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0751.0806815, i64 %.02241099 ; 2 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !75
  %i.fd = call float @llvm.fmuladd.f32(float %i.eq, float %i.fa, float %i.fc)
  store float %i.fd, ptr %i.fb, align 4, !tbaa !75
  %i.fe = add nuw nsw i64 %.02241099, 1           ; 2 uses
  %exitcond1160.not = icmp eq i64 %i.fe, %1
  br i1 %exitcond1160.not, label %._crit_edge, label %.lr.ph1100, !llvm.loop !810

_ZNSt6vectorIfSaIfEED2Ev.exit634.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i419, %_ZN7testing7MessageD2Ev.exit416
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.eq

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431: ; preds = %._crit_edge, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit411
  br i1 %.not.i.i.i.i389, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit440, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431
  %i.ff = shl nuw nsw i64 %1, 2                   ; 2 uses
  %i.fg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ff) #24
          to label %.noexc439 unwind label %bb.as ; 3 uses

.noexc439:                                        ; preds = %bb.ar
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fg, i8 0, i64 %i.ff, i1 false), !tbaa !75
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %1
  %i.fi = ptrtoint ptr %i.fh to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit440

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit440:         ; preds = %.noexc439, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431
  %.sroa.0714.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431 ], [ %i.fg, %.noexc439 ] ; 24 uses
  %.sroa.23.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431 ], [ %i.fi, %.noexc439 ] ; 2 uses
  br i1 %.not3001101.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i468, label %.lr.ph1115

.lr.ph1115:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit440
  %i.fj = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.fk = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.fl = fdiv x86_fp80 %i.fj, %i.fk
  %i.fm = fptoui x86_fp80 %i.fl to i64            ; 2 uses
  %i.fn = add i64 %i.fm, 23
  %i.fo = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.fp = add nsw i64 %1, -1
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.fq = icmp ult i64 %i.fp, 3
  %unroll_iter = and i64 %1, 2305843009213693948
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1357 = icmp ne i64 %xtraiter, 0
  br label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit650

bb.at:                                            ; preds = %.lr.ph1115, %.critedge361
  %.02231114 = phi i64 [ 0, %.lr.ph1115 ], [ %i.jd, %.critedge361 ] ; 2 uses
  %.sroa.0770.11113 = phi i64 [ 123, %.lr.ph1115 ], [ %i.gi, %.critedge361 ]
  %i.fs = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.ft = load ptr, ptr %3, align 8, !tbaa !43
  %i.fu = mul i64 %.02231114, %i.bd               ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fu
  %i.fw = load ptr, ptr %i.fs, align 8, !tbaa !32
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 208
  %i.fy = load ptr, ptr %i.fx, align 8
  invoke void %i.fy(ptr noundef nonnull align 8 dereferenceable(36) %i.fs, i64 noundef 1, ptr noundef %i.fv, ptr noundef %.sroa.0741.0849)
          to label %.preheader1076 unwind label %bb.aw

.preheader1076:                                   ; preds = %bb.at
  br i1 %.not.i.i.i.i389, label %._crit_edge1107, label %.lr.ph1106.preheader

.lr.ph1106.preheader:                             ; preds = %.preheader1076
  br i1 %i.fq, label %.lr.ph1106.epil.preheader, label %.lr.ph1106

._crit_edge1107.loopexit.unr-lcssa:               ; preds = %.lr.ph1106
  br i1 %lcmp.mod.not, label %._crit_edge1107, label %.lr.ph1106.epil.preheader

.lr.ph1106.epil.preheader:                        ; preds = %._crit_edge1107.loopexit.unr-lcssa, %.lr.ph1106.preheader
  %.02221105.epil.init = phi i64 [ 0, %.lr.ph1106.preheader ], [ %i.hd, %._crit_edge1107.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1357)
  br label %.lr.ph1106.epil

.lr.ph1106.epil:                                  ; preds = %.lr.ph1106.epil, %.lr.ph1106.epil.preheader
  %.02221105.epil = phi i64 [ %i.fz, %.lr.ph1106.epil ], [ %.02221105.epil.init, %.lr.ph1106.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph1106.epil ], [ 0, %.lr.ph1106.epil.preheader ]
  %i.fz = add nuw nsw i64 %.02221105.epil, 1      ; 3 uses
  %i.ga = mul i64 %i.fz, %i.fz
  %i.gb = uitofp i64 %i.ga to float
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0714.0, i64 %.02221105.epil
  store float %i.gb, ptr %i.gc, align 4, !tbaa !75
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge1107, label %.lr.ph1106.epil, !llvm.loop !811

._crit_edge1107:                                  ; preds = %._crit_edge1107.loopexit.unr-lcssa, %.lr.ph1106.epil, %.preheader1076
  %i.gd = udiv i64 %i.fn, %i.fm
  %spec.select.i.i.i.i441 = call i64 @llvm.umax.i64(i64 %i.gd, i64 1)
  br label %select.unfold.i.i.i.i443

bb.au:                                            ; preds = %select.unfold.i.i.i.i443
  %i.ge = fdiv float %i.gl, %i.go                 ; 2 uses
  %i.gf = fcmp ult float %i.ge, 1.000000e+00
  br i1 %i.gf, label %bb.ax, label %bb.av, !prof !77

select.unfold.i.i.i.i443:                         ; preds = %select.unfold.i.i.i.i443, %._crit_edge1107
  %.023.i.i.i.i444 = phi i64 [ %spec.select.i.i.i.i441, %._crit_edge1107 ], [ %i.gp, %select.unfold.i.i.i.i443 ]
  %.01422.i.i.i.i445 = phi float [ 1.000000e+00, %._crit_edge1107 ], [ %i.go, %select.unfold.i.i.i.i443 ] ; 2 uses
  %.01521.i.i.i.i446 = phi float [ 0.000000e+00, %._crit_edge1107 ], [ %i.gl, %select.unfold.i.i.i.i443 ]
  %i.gg = phi i64 [ %.sroa.0770.11113, %._crit_edge1107 ], [ %i.gi, %select.unfold.i.i.i.i443 ]
  %i.gh = mul nuw nsw i64 %i.gg, 16807
  %i.gi = urem i64 %i.gh, 2147483647              ; 3 uses
  %i.gj = add nsw i64 %i.gi, -1
  %i.gk = uitofp i64 %i.gj to float
  %i.gl = call float @llvm.fmuladd.f32(float %i.gk, float %.01422.i.i.i.i445, float %.01521.i.i.i.i446) ; 2 uses
  %i.gm = fpext float %.01422.i.i.i.i445 to x86_fp80
  %i.gn = fmul x86_fp80 %i.gm, f0x401DFFFFFFFC00000000
  %i.go = fptrunc x86_fp80 %i.gn to float         ; 2 uses
  %i.gp = add i64 %.023.i.i.i.i444, -1            ; 2 uses
  %.not.i.i.i.i447 = icmp eq i64 %i.gp, 0
  br i1 %.not.i.i.i.i447, label %bb.au, label %select.unfold.i.i.i.i443, !llvm.loop !4

bb.av:                                            ; preds = %bb.au
  br label %bb.ax

bb.aw:                                            ; preds = %bb.at
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit648

.lr.ph1106:                                       ; preds = %.lr.ph1106.preheader, %.lr.ph1106
  %.02221105 = phi i64 [ %i.hd, %.lr.ph1106 ], [ 0, %.lr.ph1106.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph1106 ], [ 0, %.lr.ph1106.preheader ]
  %i.gr = or disjoint i64 %.02221105, 1           ; 3 uses
  %i.gs = mul i64 %i.gr, %i.gr
  %i.gt = uitofp i64 %i.gs to float
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0714.0, i64 %.02221105
  store float %i.gt, ptr %i.gu, align 4, !tbaa !75
  %i.gv = or disjoint i64 %.02221105, 2           ; 3 uses
  %i.gw = mul i64 %i.gv, %i.gv
  %i.gx = uitofp i64 %i.gw to float
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0714.0, i64 %i.gr
  store float %i.gx, ptr %i.gy, align 4, !tbaa !75
  %i.gz = or disjoint i64 %.02221105, 3           ; 3 uses
  %i.ha = mul i64 %i.gz, %i.gz
  %i.hb = uitofp i64 %i.ha to float
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0714.0, i64 %i.gv
  store float %i.hb, ptr %i.hc, align 4, !tbaa !75
  %i.hd = add nuw nsw i64 %.02221105, 4           ; 4 uses
  %i.he = mul i64 %i.hd, %i.hd
  %i.hf = uitofp i64 %i.he to float
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0714.0, i64 %i.gz
  store float %i.hf, ptr %i.hg, align 4, !tbaa !75
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge1107.loopexit.unr-lcssa, label %.lr.ph1106, !llvm.loop !812

bb.ax:                                            ; preds = %bb.av, %bb.au
  %.016.i.i.i.i448 = phi float [ f0x3F7FFFFF, %bb.av ], [ %i.ge, %bb.au ]
  %i.hh = fadd float %.016.i.i.i.i448, 0.000000e+00 ; 3 uses
  %i.hi = load ptr, ptr %3, align 8, !tbaa !43
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.fu ; 3 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !75, !alias.scope !877, !noalias !878
  %i.hl = fmul float %i.hh, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !75, !alias.scope !877, !noalias !878
  %i.ho = fmul float %i.hh, %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  call void @_ZN5faiss10cppcontrib14IndexPQDecoderILl256ELl16ELl8EE5accumEPKfPKhfPf(ptr noundef %i.ay, ptr noundef nonnull %i.hp, float noundef %i.hl, ptr noundef %.sroa.0714.0)
  %i.hq = fadd float %i.ho, 0.000000e+00
  br i1 %.not.i.i.i.i389, label %.critedge361, label %.lr.ph1111

.lr.ph1111:                                       ; preds = %bb.ax, %bb.bl
  %.02211109 = phi i64 [ %i.hw, %bb.bl ], [ 0, %bb.ax ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0714.0, i64 %.02211109
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !75
  %i.ht = fadd float %i.hq, %i.hs
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0741.0849, i64 %.02211109
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !75
  %i.hw = add nuw nsw i64 %.02211109, 1           ; 4 uses
  %i.hx = mul i64 %i.hw, %i.hw
  %i.hy = uitofp i64 %i.hx to float
  %i.hz = call float @llvm.fmuladd.f32(float %i.hv, float %i.hh, float %i.hy)
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, float noundef %i.ht, float noundef %i.hz)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %.lr.ph1111
  %i.ia = load i8, ptr %11, align 8, !tbaa !98, !range !99, !noundef !100
  %i.ib = trunc nuw i8 %i.ia to i1
  br i1 %i.ib, label %.critedge359, label %bb.ba

bb.az:                                            ; preds = %.lr.ph1111
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit648.thread

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bb unwind label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.id = load ptr, ptr %i.fo, align 8, !tbaa !101 ; 2 uses
  %.not.i.i450 = icmp eq ptr %i.id, null
  br i1 %.not.i.i450, label %_ZNK7testing15AssertionResult15failure_messageEv.exit451, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit451

_ZNK7testing15AssertionResult15failure_messageEv.exit451: ; preds = %bb.bc, %bb.bb
  %i.if = phi ptr [ %i.ie, %bb.bc ], [ @.str.20, %bb.bb ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 820, ptr noundef %i.if)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit451
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.be unwind label %bb.bi

bb.be:                                            ; preds = %bb.bd
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.ig = load ptr, ptr %12, align 8, !tbaa !103  ; 3 uses
  %.not.i.i452 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i452, label %_ZN7testing7MessageD2Ev.exit454, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i453

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i453: ; preds = %bb.be
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !32
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8
  call void %i.ij(ptr noundef nonnull align 8 dereferenceable(128) %i.ig) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit454

_ZN7testing7MessageD2Ev.exit454:                  ; preds = %bb.be, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i453
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.ik = load ptr, ptr %i.fo, align 8, !tbaa !101 ; 4 uses
  %.not.i.i455 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i455, label %_ZNSt6vectorIfSaIfEED2Ev.exit632.thread, label %bb.bf

bb.bf:                                            ; preds = %_ZN7testing7MessageD2Ev.exit454
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !25 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 16 ; 2 uses
  %i.in = icmp eq ptr %i.il, %i.im
  br i1 %i.in, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i457, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i456

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i456: ; preds = %bb.bf
  %i.io = load i64, ptr %i.im, align 8, !tbaa !24
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.ip) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i457

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i457: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i456
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit632.thread

bb.bg:                                            ; preds = %bb.ba
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit462

bb.bh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit451
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bd
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #22
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn301 = phi { ptr, i32 } [ %i.is, %bb.bi ], [ %i.ir, %bb.bh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.it = load ptr, ptr %12, align 8, !tbaa !103  ; 3 uses
  %.not.i.i460 = icmp eq ptr %i.it, null
  br i1 %.not.i.i460, label %_ZN7testing7MessageD2Ev.exit462, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i461

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i461: ; preds = %bb.bj
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !32
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(128) %i.it) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit462

_ZN7testing7MessageD2Ev.exit462:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i461, %bb.bj, %bb.bg
  %.pn301.pn = phi { ptr, i32 } [ %i.iq, %bb.bg ], [ %.pn301, %bb.bj ], [ %.pn301, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i461 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit648.thread

.critedge359:                                     ; preds = %bb.ay
  %i.ix = load ptr, ptr %i.fo, align 8, !tbaa !101 ; 4 uses
  %.not.i.i463 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i463, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.critedge359
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !25 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 16 ; 2 uses
  %i.ja = icmp eq ptr %i.iy, %i.iz
  br i1 %i.ja, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i465, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i464

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i464: ; preds = %bb.bk
  %i.jb = load i64, ptr %i.iz, align 8, !tbaa !24
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jc) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i465

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i465: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i464
  call void @_ZdlPvm(ptr noundef nonnull %i.ix, i64 noundef 32) #23
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i465, %.critedge359
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %exitcond1163.not = icmp eq i64 %i.hw, %1
  br i1 %exitcond1163.not, label %.critedge361, label %.lr.ph1111, !llvm.loop !817

_ZNSt6vectorIfSaIfEED2Ev.exit648.thread:          ; preds = %bb.az, %_ZN7testing7MessageD2Ev.exit462
  %.pn301.pn.pn = phi { ptr, i32 } [ %.pn301.pn, %_ZN7testing7MessageD2Ev.exit462 ], [ %i.ic, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.fb

.critedge361:                                     ; preds = %bb.bl, %bb.ax
  %i.jd = add nuw i64 %.02231114, 1               ; 2 uses
  %exitcond1164.not = icmp eq i64 %i.jd, %0
  br i1 %exitcond1164.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i468, label %bb.at, !llvm.loop !818

_ZNSt6vectorIfSaIfEED2Ev.exit632.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i457, %_ZN7testing7MessageD2Ev.exit454
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.ep

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i468: ; preds = %.critedge361, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit440
  br i1 %.not.i.i.i.i389, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit487, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i468
  %i.je = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.jf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.je) #24
          to label %.noexc476 unwind label %bb.bn ; 4 uses

.noexc476:                                        ; preds = %bb.bm
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jf, i8 0, i64 %i.je, i1 false), !tbaa !75
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %1 ; 2 uses
  %i.jh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.je) #24
          to label %.noexc486 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit646.thread ; 3 uses

.noexc486:                                        ; preds = %.noexc476
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jh, i8 0, i64 %i.je, i1 false), !tbaa !75
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %1
  %i.jj = ptrtoint ptr %i.ji to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit487

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit487:         ; preds = %.noexc486, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i468
  %.sroa.12699.0884 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i468 ], [ %i.jg, %.noexc486 ] ; 2 uses
  %.sroa.0693.0876 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i468 ], [ %i.jf, %.noexc486 ] ; 9 uses
  %.sroa.0681.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i468 ], [ %i.jh, %.noexc486 ] ; 10 uses
  %.sroa.12687.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i468 ], [ %i.jj, %.noexc486 ] ; 2 uses
  br i1 %.not3001101.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i542, label %.preheader1075.lr.ph

.preheader1075.lr.ph:                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit487
  %i.jk = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.jl = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.jm = fdiv x86_fp80 %i.jk, %i.jl
  %i.jn = fptoui x86_fp80 %i.jm to i64            ; 2 uses
  %i.jo = add i64 %i.jn, 23
  %i.jp = udiv i64 %i.jo, %i.jn
  %spec.select.i.i.i.i488 = call i64 @llvm.umax.i64(i64 %i.jp, i64 1) ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %min.iters.check1313 = icmp ult i64 %1, 4
  %n.vec1315 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1320 = icmp eq i64 %1, %n.vec1315
  br label %.preheader1075

.preheader1075:                                   ; preds = %.preheader1075.lr.ph, %.critedge369
  %.02201125 = phi i64 [ 0, %.preheader1075.lr.ph ], [ %i.qc, %.critedge369 ] ; 3 uses
  %.sroa.0770.21124 = phi i64 [ 123, %.preheader1075.lr.ph ], [ %i.ky, %.critedge369 ]
  br i1 %.not.i.i.i.i389, label %select.unfold.i.i.i.i490.preheader, label %.lr.ph1117.preheader

select.unfold.i.i.i.i490.preheader:               ; preds = %.lr.ph1117, %middle.block1319, %.preheader1075
end_hunk_3
