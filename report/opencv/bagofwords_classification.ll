Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/bagofwords_classification?download=true
inline.NumInlined: 4875
inline.NumDeleted: 1409
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN7VocData24calcClassifierConfMatRowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI8ObdImageSaIS9_EERKS8_IfSaIfEE11VocConfCondfRS8_IS5_SaIS5_EERSF_:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.iw = load i64, ptr %i.iu, align 8, !tbaa !17
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.ix) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  %i.iy = load ptr, ptr %22, align 8, !tbaa !15   ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ja = icmp eq ptr %i.iy, %i.iz
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.jb = load i64, ptr %i.iz, align 8, !tbaa !17
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #32
  %i.jd = load ptr, ptr %19, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef %i.jd, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.bc unwind label %bb.bj

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @__func__._ZN7VocData24calcClassifierConfMatRowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI8ObdImageSaIS9_EERKS8_IfSaIfEE11VocConfCondfRS8_IS5_SaIS5_EERSF_, ptr noundef nonnull @.str.11, i32 noundef 1055) #31
          to label %bb.bd unwind label %bb.bk

bb.bd:                                            ; preds = %bb.bc
  unreachable

bb.be:                                            ; preds = %.lr.ph207
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bf:                                            ; preds = %bb.ax
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

bb.bg:                                            ; preds = %bb.ay
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

bb.bh:                                            ; preds = %bb.az
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

bb.bi:                                            ; preds = %bb.ba
  %i.ji = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jj = load ptr, ptr %20, align 8, !tbaa !15   ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.jl = icmp eq ptr %i.jj, %i.jk
  br i1 %i.jl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %bb.bi
  %i.jm = load i64, ptr %i.jk, align 8, !tbaa !17
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152, %bb.bh
  %.pn97 = phi { ptr, i32 } [ %i.jh, %bb.bh ], [ %i.ji, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152 ], [ %i.ji, %bb.bi ] ; 2 uses
  %i.jo = load ptr, ptr %21, align 8, !tbaa !15   ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !17
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155, %bb.bg
  %.pn97.pn = phi { ptr, i32 } [ %i.jg, %bb.bg ], [ %.pn97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155 ], [ %.pn97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154 ] ; 2 uses
  %i.jt = load ptr, ptr %22, align 8, !tbaa !15   ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.jv = icmp eq ptr %i.jt, %i.ju
  br i1 %i.jv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %i.jw = load i64, ptr %i.ju, align 8, !tbaa !17
  %i.jx = add i64 %i.jw, 1
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158, %bb.bf
  %.pn97.pn.pn = phi { ptr, i32 } [ %i.jf, %bb.bf ], [ %.pn97.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158 ], [ %.pn97.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

bb.bk:                                            ; preds = %bb.bc
  %i.jz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ka = load ptr, ptr %23, align 8, !tbaa !15   ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.kc = icmp eq ptr %i.ka, %i.kb
  br i1 %i.kc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %bb.bk
  %i.kd = load i64, ptr %i.kb, align 8, !tbaa !17
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.ke) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161, %bb.bj
  %.pn101 = phi { ptr, i32 } [ %i.jy, %bb.bj ], [ %i.jz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161 ], [ %i.jz, %bb.bk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  %i.kf = load ptr, ptr %19, align 8, !tbaa !15   ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.kh = icmp eq ptr %i.kf, %i.kg
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %i.ki = load i64, ptr %i.kg, align 8, !tbaa !17
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.kj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %.pn101.pn = phi { ptr, i32 } [ %.pn97.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ], [ %.pn101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164 ], [ %.pn101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %bb.bo

bb.bl:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SD_SD_RKT0_.exit142
  %i.kk = load ptr, ptr %6, align 8, !tbaa !121
  %i.kl = ptrtoint ptr %i.ie to i64
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = sub i64 %i.kl, %i.km
  %i.ko = load ptr, ptr %i.dr, align 8, !tbaa !87
  %i.kp = load ptr, ptr %16, align 8, !tbaa !84   ; 2 uses
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = sdiv exact i64 %i.ks, 48                ; 2 uses
  %i.ku = uitofp i64 %i.kt to float
  %i.kv = fdiv float 1.000000e+00, %i.ku
  %sext = shl i64 %i.kn, 27
  %i.kw = load ptr, ptr %7, align 8, !tbaa !134
  %i.kx = ashr exact i64 %sext, 30
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.kx ; 2 uses
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !142
  %i.la = fadd float %i.kz, %i.kv
  store float %i.la, ptr %i.ky, align 4, !tbaa !142
  %i.lb = add nuw i64 %.089206, 1                 ; 2 uses
  %i.lc = icmp ult i64 %i.lb, %i.kt
  br i1 %i.lc, label %.lr.ph207, label %.loopexit, !llvm.loop !326

.loopexit:                                        ; preds = %bb.bl, %.preheader199, %.preheader, %bb.aj
  %.188 = phi i32 [ %spec.select, %bb.aj ], [ %.087211, %.preheader ], [ %.087211, %.preheader199 ], [ %.087211, %bb.bl ] ; 2 uses
  br i1 %i.cd, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.loopexit
  %i.ld = sitofp i32 %.188 to float
  %i.le = fdiv float %i.ld, %.090
  %i.lf = fcmp ult float %i.le, %5
  br i1 %i.lf, label %bb.bn, label %._crit_edge.loopexit

bb.bn:                                            ; preds = %.loopexit, %bb.bm
  %i.lg = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.lh = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = sub i64 %i.li, %i.lj
  %i.ll = ashr exact i64 %i.lk, 6
  %i.lm = icmp ult i64 %i.ec, %i.ll
  br i1 %i.lm, label %bb.af, label %._crit_edge.loopexit, !llvm.loop !327

._crit_edge.loopexit:                             ; preds = %bb.bm, %bb.ag, %bb.bn
  %.192.ph.in = phi i64 [ %i.ec, %bb.bn ], [ %i.ec, %bb.bm ], [ %.095208, %bb.ag ]
  %.192.ph = trunc i64 %.192.ph.in to i32
  %i.ln = sitofp i32 %.192.ph to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ae
  %.192 = phi float [ 0.000000e+00, %bb.ae ], [ %i.ln, %._crit_edge.loopexit ] ; 2 uses
  %i.lo = load ptr, ptr %7, align 8, !tbaa !274   ; 5 uses
  %i.lp = load ptr, ptr %i.am, align 8, !tbaa !274 ; 3 uses
  %i.lq = icmp ult ptr %i.lo, %i.lp
  br i1 %i.lq, label %.lr.ph219.preheader, label %._crit_edge220

.lr.ph219.preheader:                              ; preds = %._crit_edge
  %i.lr = ptrtoaddr ptr %i.lp to i64
  %i.ls = ptrtoaddr ptr %i.lo to i64              ; 2 uses
  %25 = add i64 %i.ls, 4
  %26 = call i64 @llvm.umax.i64(i64 %i.lr, i64 %25)
  %i.lt = xor i64 %i.ls, -1
  %i.lu = add i64 %26, %i.lt                      ; 2 uses
  %i.lv = lshr i64 %i.lu, 2
  %i.lw = add nuw nsw i64 %i.lv, 1                ; 2 uses
  %min.iters.check327 = icmp ult i64 %i.lu, 12
  br i1 %min.iters.check327, label %.lr.ph219.preheader338, label %vector.ph328

vector.ph328:                                     ; preds = %.lr.ph219.preheader
  %n.vec329 = and i64 %i.lw, 9223372036854775804  ; 3 uses
  %i.lx = shl i64 %n.vec329, 2
  %i.ly = getelementptr i8, ptr %i.lo, i64 %i.lx
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.192, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body330

vector.body330:                                   ; preds = %vector.body330, %vector.ph328
  %index331 = phi i64 [ 0, %vector.ph328 ], [ %index.next334, %vector.body330 ] ; 2 uses
  %i.lz = shl i64 %index331, 2
  %next.gep332 = getelementptr i8, ptr %i.lo, i64 %i.lz ; 2 uses
  %wide.load333 = load <4 x float>, ptr %next.gep332, align 4, !tbaa !142
  %i.ma = fdiv <4 x float> %wide.load333, %broadcast.splat
  store <4 x float> %i.ma, ptr %next.gep332, align 4, !tbaa !142
  %index.next334 = add nuw i64 %index331, 4       ; 2 uses
  %i.mb = icmp eq i64 %index.next334, %n.vec329
  br i1 %i.mb, label %middle.block335, label %vector.body330, !llvm.loop !328

middle.block335:                                  ; preds = %vector.body330
  %cmp.n336 = icmp eq i64 %i.lw, %n.vec329
  br i1 %cmp.n336, label %._crit_edge220, label %.lr.ph219.preheader338

.lr.ph219.preheader338:                           ; preds = %.lr.ph219.preheader, %middle.block335
  %.sroa.0174.0217.ph = phi ptr [ %i.lo, %.lr.ph219.preheader ], [ %i.ly, %middle.block335 ]
  br label %.lr.ph219

bb.bo:                                            ; preds = %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %bb.ak
  %.pn105.pn = phi { ptr, i32 } [ %i.je, %bb.be ], [ %i.fa, %bb.ak ], [ %.pn101.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ]
  %i.mc = load ptr, ptr %17, align 8, !tbaa !74   ; 3 uses
  %.not.i.i.i167 = icmp eq ptr %i.mc, null
  br i1 %.not.i.i.i167, label %_ZNSt6vectorI13VocObjectDataSaIS0_EED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.md = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !77
  %i.mf = ptrtoint ptr %i.me to i64
  %i.mg = ptrtoint ptr %i.mc to i64
  %i.mh = sub i64 %i.mf, %i.mg
  call void @_ZdlPvm(ptr noundef nonnull %i.mc, i64 noundef %i.mh) #33
  br label %_ZNSt6vectorI13VocObjectDataSaIS0_EED2Ev.exit

_ZNSt6vectorI13VocObjectDataSaIS0_EED2Ev.exit:    ; preds = %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  call void @_ZNSt6vectorI9ObdObjectSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %bb.bt

._crit_edge220:                                   ; preds = %.lr.ph219, %middle.block335, %._crit_edge
  %i.mi = load ptr, ptr %17, align 8, !tbaa !74   ; 3 uses
  %.not.i.i.i168 = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i168, label %_ZNSt6vectorI13VocObjectDataSaIS0_EED2Ev.exit169, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge220
  %i.mj = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !77
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = ptrtoint ptr %i.mi to i64
  %i.mn = sub i64 %i.ml, %i.mm
  call void @_ZdlPvm(ptr noundef nonnull %i.mi, i64 noundef %i.mn) #33
  br label %_ZNSt6vectorI13VocObjectDataSaIS0_EED2Ev.exit169

_ZNSt6vectorI13VocObjectDataSaIS0_EED2Ev.exit169: ; preds = %._crit_edge220, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.mo = load ptr, ptr %16, align 8, !tbaa !84   ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !87 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.mo, %i.mq
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP9ObdObjectS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorI13VocObjectDataSaIS0_EED2Ev.exit169, %_ZSt8_DestroyI9ObdObjectEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.mw, %_ZSt8_DestroyI9ObdObjectEvPT_.exit.i.i.i ], [ %i.mo, %_ZNSt6vectorI13VocObjectDataSaIS0_EED2Ev.exit169 ] ; 3 uses
  %i.mr = load ptr, ptr %.05.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.mt = icmp eq ptr %i.mr, %i.ms
  br i1 %i.mt, label %_ZSt8_DestroyI9ObdObjectEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.mu = load i64, ptr %i.ms, align 8, !tbaa !17
  %i.mv = add i64 %i.mu, 1
  call void @_ZdlPvm(ptr noundef %i.mr, i64 noundef %i.mv) #33
  br label %_ZSt8_DestroyI9ObdObjectEvPT_.exit.i.i.i

_ZSt8_DestroyI9ObdObjectEvPT_.exit.i.i.i:         ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.mw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i170 = icmp eq ptr %i.mw, %i.mq
  br i1 %.not.i.i.i170, label %_ZSt8_DestroyIP9ObdObjectS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !88

_ZSt8_DestroyIP9ObdObjectS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyI9ObdObjectEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %16, align 8, !tbaa !84
  br label %_ZSt8_DestroyIP9ObdObjectS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP9ObdObjectS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIP9ObdObjectS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorI13VocObjectDataSaIS0_EED2Ev.exit169
  %i.mx = phi ptr [ %.pr.i, %_ZSt8_DestroyIP9ObdObjectS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.mo, %_ZNSt6vectorI13VocObjectDataSaIS0_EED2Ev.exit169 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.mx, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI9ObdObjectSaIS0_EED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %_ZSt8_DestroyIP9ObdObjectS0_EvT_S2_RSaIT0_E.exit.i
  %i.my = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !89
  %i.na = ptrtoint ptr %i.mz to i64
  %i.nb = ptrtoint ptr %i.mx to i64
  %i.nc = sub i64 %i.na, %i.nb
  call void @_ZdlPvm(ptr noundef nonnull %i.mx, i64 noundef %i.nc) #33
  br label %_ZNSt6vectorI9ObdObjectSaIS0_EED2Ev.exit

_ZNSt6vectorI9ObdObjectSaIS0_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIP9ObdObjectS0_EvT_S2_RSaIT0_E.exit.i, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.nd = load ptr, ptr %10, align 8, !tbaa !268  ; 3 uses
  %.not.i.i.i171 = icmp eq ptr %i.nd, null
  br i1 %.not.i.i.i171, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorI9ObdObjectSaIS0_EED2Ev.exit
  %i.ne = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !279
  %i.ng = ptrtoint ptr %i.nf to i64
  %i.nh = ptrtoint ptr %i.nd to i64
  %i.ni = sub i64 %i.ng, %i.nh
  call void @_ZdlPvm(ptr noundef nonnull %i.nd, i64 noundef %i.ni) #33
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorI9ObdObjectSaIS0_EED2Ev.exit, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  ret void

.lr.ph219:                                        ; preds = %.lr.ph219.preheader338, %.lr.ph219
  %.sroa.0174.0217 = phi ptr [ %i.nl, %.lr.ph219 ], [ %.sroa.0174.0217.ph, %.lr.ph219.preheader338 ] ; 3 uses
  %i.nj = load float, ptr %.sroa.0174.0217, align 4, !tbaa !142
  %i.nk = fdiv float %i.nj, %.192
  store float %i.nk, ptr %.sroa.0174.0217, align 4, !tbaa !142
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.0174.0217, i64 4 ; 2 uses
  %i.nm = icmp ult ptr %i.nl, %i.lp
  br i1 %i.nm, label %.lr.ph219, label %._crit_edge220, !llvm.loop !329

bb.bt:                                            ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNSt6vectorI13VocObjectDataSaIS0_EED2Ev.exit, %_ZNSt6vectorIcSaIcEED2Ev.exit135, %bb.s, %bb.r
  %.pn112.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.r ], [ %i.be, %bb.s ], [ %i.de, %_ZNSt6vectorIcSaIcEED2Ev.exit135 ], [ %.pn105.pn, %_ZNSt6vectorI13VocObjectDataSaIS0_EED2Ev.exit ], [ %.pn112.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ %i.bf, %bb.t ]
  %i.nn = load ptr, ptr %10, align 8, !tbaa !268  ; 3 uses
  %.not.i.i.i172 = icmp eq ptr %i.nn, null
  br i1 %.not.i.i.i172, label %_ZNSt6vectorImSaImEED2Ev.exit173, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.no = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !279
  %i.nq = ptrtoint ptr %i.np to i64
  %i.nr = ptrtoint ptr %i.nn to i64
  %i.ns = sub i64 %i.nq, %i.nr
  call void @_ZdlPvm(ptr noundef nonnull %i.nn, i64 noundef %i.ns) #33
  br label %_ZNSt6vectorImSaImEED2Ev.exit173

_ZNSt6vectorImSaImEED2Ev.exit173:                 ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn112.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn112.pn.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit173 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn112.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !25     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.j = load ptr, ptr %0, align 8, !tbaa !25     ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !25     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.x, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i, align 8, !tbaa !15 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN7VocData22calcDetectorConfMatRowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14ObdDatasetTypeRKSt6vectorI8ObdImageSaISA_EERKS9_IS9_IfSaIfEESaISG_EERKS9_IS9_IN2cv5Rect_IiEESaISN_EESaISP_EE11VocConfCondfRS9_IS5_SaIS5_EERSG_b:bb.a
  br i1 %i.nv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236: ; preds = %bb.bk
  %i.nw = load i64, ptr %i.nu, align 8, !tbaa !17
  %i.nx = add i64 %i.nw, 1
  call void @_ZdlPvm(ptr noundef %i.nt, i64 noundef %i.nx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236
  %i.ny = load ptr, ptr %32, align 8, !tbaa !15   ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.oa = icmp eq ptr %i.ny, %i.nz
  br i1 %i.oa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  %i.ob = load i64, ptr %i.nz, align 8, !tbaa !17
  %i.oc = add i64 %i.ob, 1
  call void @_ZdlPvm(ptr noundef %i.ny, i64 noundef %i.oc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239
  %i.od = load ptr, ptr %33, align 8, !tbaa !15   ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.of = icmp eq ptr %i.od, %i.oe
  br i1 %i.of, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241
  %i.og = load i64, ptr %i.oe, align 8, !tbaa !17
  %i.oh = add i64 %i.og, 1
  call void @_ZdlPvm(ptr noundef %i.od, i64 noundef %i.oh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #32
  %i.oi = load ptr, ptr %30, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef %i.oi, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %bb.bl unwind label %bb.bs

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @__func__._ZN7VocData22calcDetectorConfMatRowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14ObdDatasetTypeRKSt6vectorI8ObdImageSaISA_EERKS9_IS9_IfSaIfEESaISG_EERKS9_IS9_IN2cv5Rect_IiEESaISN_EESaISP_EE11VocConfCondfRS9_IS5_SaIS5_EERSG_b, ptr noundef nonnull @.str.11, i32 noundef 1207) #31
          to label %bb.bm unwind label %bb.bt

bb.bm:                                            ; preds = %bb.bl
  unreachable

bb.bn:                                            ; preds = %bb.bf
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bo:                                            ; preds = %bb.bg
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

bb.bp:                                            ; preds = %bb.bh
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

bb.bq:                                            ; preds = %bb.bi
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

bb.br:                                            ; preds = %bb.bj
  %i.on = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oo = load ptr, ptr %31, align 8, !tbaa !15   ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.oq = icmp eq ptr %i.oo, %i.op
  br i1 %i.oq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %bb.br
  %i.or = load i64, ptr %i.op, align 8, !tbaa !17
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.os) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245, %bb.bq
  %.pn158 = phi { ptr, i32 } [ %i.om, %bb.bq ], [ %i.on, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %i.on, %bb.br ] ; 2 uses
  %i.ot = load ptr, ptr %32, align 8, !tbaa !15   ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.ov = icmp eq ptr %i.ot, %i.ou
  br i1 %i.ov, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247
  %i.ow = load i64, ptr %i.ou, align 8, !tbaa !17
  %i.ox = add i64 %i.ow, 1
  call void @_ZdlPvm(ptr noundef %i.ot, i64 noundef %i.ox) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248, %bb.bp
  %.pn158.pn = phi { ptr, i32 } [ %i.ol, %bb.bp ], [ %.pn158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248 ], [ %.pn158, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ] ; 2 uses
  %i.oy = load ptr, ptr %33, align 8, !tbaa !15   ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.pa = icmp eq ptr %i.oy, %i.oz
  br i1 %i.pa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250
  %i.pb = load i64, ptr %i.oz, align 8, !tbaa !17
  %i.pc = add i64 %i.pb, 1
  call void @_ZdlPvm(ptr noundef %i.oy, i64 noundef %i.pc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251, %bb.bo
  %.pn158.pn.pn = phi { ptr, i32 } [ %i.ok, %bb.bo ], [ %.pn158.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251 ], [ %.pn158.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

bb.bt:                                            ; preds = %bb.bl
  %i.pe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pf = load ptr, ptr %34, align 8, !tbaa !15   ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.ph = icmp eq ptr %i.pf, %i.pg
  br i1 %i.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254: ; preds = %bb.bt
  %i.pi = load i64, ptr %i.pg, align 8, !tbaa !17
  %i.pj = add i64 %i.pi, 1
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef %i.pj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254, %bb.bs
  %.pn162 = phi { ptr, i32 } [ %i.pd, %bb.bs ], [ %i.pe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254 ], [ %i.pe, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #32
  %i.pk = load ptr, ptr %30, align 8, !tbaa !15   ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.pm = icmp eq ptr %i.pk, %i.pl
  br i1 %i.pm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256
  %i.pn = load i64, ptr %i.pl, align 8, !tbaa !17
  %i.po = add i64 %i.pn, 1
  call void @_ZdlPvm(ptr noundef %i.pk, i64 noundef %i.po) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253
  %.pn162.pn = phi { ptr, i32 } [ %.pn158.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ], [ %.pn162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257 ], [ %.pn162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  br label %bb.bw

bb.bu:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SD_SD_RKT0_.exit
  %i.pp = load ptr, ptr %8, align 8, !tbaa !121
  %i.pq = ptrtoint ptr %i.nl to i64
  %i.pr = ptrtoint ptr %i.pp to i64
  %i.ps = sub i64 %i.pq, %i.pr
  %sext = shl i64 %i.ps, 27
  %i.pt = load ptr, ptr %9, align 8, !tbaa !134
  %i.pu = ashr exact i64 %sext, 30
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 %i.pu ; 2 uses
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !142
  %i.px = fadd float %i.pw, 1.000000e+00
  store float %i.px, ptr %i.pv, align 4, !tbaa !142
  br label %bb.bv

._crit_edge374.thread:                            ; preds = %_ZN8ObdImageD2Ev.exit233, %._crit_edge374
  %i.py = load ptr, ptr %i.fc, align 8, !tbaa !131
  %i.pz = load ptr, ptr %9, align 8, !tbaa !134   ; 2 uses
  %i.qa = ptrtoint ptr %i.py to i64
  %i.qb = ptrtoint ptr %i.pz to i64
  %i.qc = sub i64 %i.qa, %i.qb
  %i.qd = getelementptr i8, ptr %i.pz, i64 %i.qc
  %i.qe = getelementptr i8, ptr %i.qd, i64 -4     ; 2 uses
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !142
  %i.qg = fadd float %i.qf, 1.000000e+00
  store float %i.qg, ptr %i.qe, align 4, !tbaa !142
  br label %bb.bv

bb.bv:                                            ; preds = %._crit_edge374.thread, %bb.bu
  br i1 %or.cond180, label %bb.av, label %._crit_edge382.loopexit

._crit_edge382.loopexit:                          ; preds = %bb.ax, %bb.av, %bb.bv
  %.1142.ph.in = phi i64 [ %i.le, %bb.bv ], [ %i.le, %bb.av ], [ %.0140379, %bb.ax ]
  %.1142.ph = trunc i64 %.1142.ph.in to i32
  %i.qh = sitofp i32 %.1142.ph to float
  br label %._crit_edge382

._crit_edge382:                                   ; preds = %._crit_edge382.loopexit, %bb.au
  %.1142 = phi float [ 0.000000e+00, %bb.au ], [ %i.qh, %._crit_edge382.loopexit ] ; 2 uses
  %i.qi = load ptr, ptr %9, align 8, !tbaa !274   ; 5 uses
  %i.qj = load ptr, ptr %i.fc, align 8, !tbaa !274 ; 3 uses
  %i.qk = icmp ult ptr %i.qi, %i.qj
  br i1 %i.qk, label %.lr.ph390.preheader, label %._crit_edge391

.lr.ph390.preheader:                              ; preds = %._crit_edge382
  %i.ql = ptrtoaddr ptr %i.qj to i64
  %i.qm = ptrtoaddr ptr %i.qi to i64              ; 2 uses
  %36 = add i64 %i.qm, 4
  %37 = call i64 @llvm.umax.i64(i64 %i.ql, i64 %36)
  %i.qn = xor i64 %i.qm, -1
  %i.qo = add i64 %37, %i.qn                      ; 2 uses
  %i.qp = lshr i64 %i.qo, 2
  %i.qq = add nuw nsw i64 %i.qp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.qo, 12
  br i1 %min.iters.check, label %.lr.ph390.preheader559, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph390.preheader
  %n.vec = and i64 %i.qq, 9223372036854775804     ; 3 uses
  %i.qr = shl i64 %n.vec, 2
  %i.qs = getelementptr i8, ptr %i.qi, i64 %i.qr
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.1142, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.qt = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.qi, i64 %i.qt ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !142
  %i.qu = fdiv <4 x float> %wide.load, %broadcast.splat
  store <4 x float> %i.qu, ptr %next.gep, align 4, !tbaa !142
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.qv = icmp eq i64 %index.next, %n.vec
  br i1 %i.qv, label %middle.block, label %vector.body, !llvm.loop !340

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qq, %n.vec
  br i1 %cmp.n, label %._crit_edge391, label %.lr.ph390.preheader559

.lr.ph390.preheader559:                           ; preds = %.lr.ph390.preheader, %middle.block
  %.sroa.0301.0388.ph = phi ptr [ %i.qi, %.lr.ph390.preheader ], [ %i.qs, %middle.block ]
  br label %.lr.ph390

bb.bw:                                            ; preds = %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, %bb.az
  %.pn166.pn = phi { ptr, i32 } [ %i.ly, %bb.az ], [ %i.oj, %bb.bn ], [ %.pn162.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259 ]
  %i.qw = load ptr, ptr %28, align 8, !tbaa !74   ; 3 uses
  %.not.i.i.i260 = icmp eq ptr %i.qw, null
  br i1 %.not.i.i.i260, label %_ZNSt6vectorI13VocObjectDataSaIS0_EED2Ev.exit261, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.qx = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !77
  %i.qz = ptrtoint ptr %i.qy to i64
  %i.ra = ptrtoint ptr %i.qw to i64
  %i.rb = sub i64 %i.qz, %i.ra
  call void @_ZdlPvm(ptr noundef nonnull %i.qw, i64 noundef %i.rb) #33
  br label %_ZNSt6vectorI13VocObjectDataSaIS0_EED2Ev.exit261

_ZNSt6vectorI13VocObjectDataSaIS0_EED2Ev.exit261: ; preds = %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  call void @_ZNSt6vectorI9ObdObjectSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %27) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  br label %bb.ce

._crit_edge391:                                   ; preds = %.lr.ph390, %middle.block, %._crit_edge382
  %i.rc = load ptr, ptr %28, align 8, !tbaa !74   ; 3 uses
  %.not.i.i.i262 = icmp eq ptr %i.rc, null
  br i1 %.not.i.i.i262, label %_ZNSt6vectorI13VocObjectDataSaIS0_EED2Ev.exit263, label %bb.by

bb.by:                                            ; preds = %._crit_edge391
  %i.rd = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !77
  %i.rf = ptrtoint ptr %i.re to i64
  %i.rg = ptrtoint ptr %i.rc to i64
  %i.rh = sub i64 %i.rf, %i.rg
  call void @_ZdlPvm(ptr noundef nonnull %i.rc, i64 noundef %i.rh) #33
  br label %_ZNSt6vectorI13VocObjectDataSaIS0_EED2Ev.exit263

_ZNSt6vectorI13VocObjectDataSaIS0_EED2Ev.exit263: ; preds = %._crit_edge391, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  %i.ri = load ptr, ptr %27, align 8, !tbaa !84   ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !87 ; 2 uses
  %.not4.i.i.i264 = icmp eq ptr %i.ri, %i.rk
  br i1 %.not4.i.i.i264, label %_ZSt8_DestroyIP9ObdObjectS0_EvT_S2_RSaIT0_E.exit.i272, label %.lr.ph.i.i.i265

.lr.ph.i.i.i265:                                  ; preds = %_ZNSt6vectorI13VocObjectDataSaIS0_EED2Ev.exit263, %_ZSt8_DestroyI9ObdObjectEvPT_.exit.i.i.i268
  %.05.i.i.i266 = phi ptr [ %i.rq, %_ZSt8_DestroyI9ObdObjectEvPT_.exit.i.i.i268 ], [ %i.ri, %_ZNSt6vectorI13VocObjectDataSaIS0_EED2Ev.exit263 ] ; 3 uses
  %i.rl = load ptr, ptr %.05.i.i.i266, align 8, !tbaa !15 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.05.i.i.i266, i64 16 ; 2 uses
  %i.rn = icmp eq ptr %i.rl, %i.rm
  br i1 %i.rn, label %_ZSt8_DestroyI9ObdObjectEvPT_.exit.i.i.i268, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i267: ; preds = %.lr.ph.i.i.i265
  %i.ro = load i64, ptr %i.rm, align 8, !tbaa !17
  %i.rp = add i64 %i.ro, 1
  call void @_ZdlPvm(ptr noundef %i.rl, i64 noundef %i.rp) #33
  br label %_ZSt8_DestroyI9ObdObjectEvPT_.exit.i.i.i268

_ZSt8_DestroyI9ObdObjectEvPT_.exit.i.i.i268:      ; preds = %.lr.ph.i.i.i265, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i267
  %i.rq = getelementptr inbounds nuw i8, ptr %.05.i.i.i266, i64 48 ; 2 uses
  %.not.i.i.i269 = icmp eq ptr %i.rq, %i.rk
  br i1 %.not.i.i.i269, label %_ZSt8_DestroyIP9ObdObjectS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i270, label %.lr.ph.i.i.i265, !llvm.loop !88

_ZSt8_DestroyIP9ObdObjectS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i270: ; preds = %_ZSt8_DestroyI9ObdObjectEvPT_.exit.i.i.i268
  %.pr.i271 = load ptr, ptr %27, align 8, !tbaa !84
  br label %_ZSt8_DestroyIP9ObdObjectS0_EvT_S2_RSaIT0_E.exit.i272

_ZSt8_DestroyIP9ObdObjectS0_EvT_S2_RSaIT0_E.exit.i272: ; preds = %_ZSt8_DestroyIP9ObdObjectS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i270, %_ZNSt6vectorI13VocObjectDataSaIS0_EED2Ev.exit263
  %i.rr = phi ptr [ %.pr.i271, %_ZSt8_DestroyIP9ObdObjectS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i270 ], [ %i.ri, %_ZNSt6vectorI13VocObjectDataSaIS0_EED2Ev.exit263 ] ; 3 uses
  %.not.i.i1.i273 = icmp eq ptr %i.rr, null
  br i1 %.not.i.i1.i273, label %_ZNSt6vectorI9ObdObjectSaIS0_EED2Ev.exit275, label %bb.bz

bb.bz:                                            ; preds = %_ZSt8_DestroyIP9ObdObjectS0_EvT_S2_RSaIT0_E.exit.i272
  %i.rs = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !89
  %i.ru = ptrtoint ptr %i.rt to i64
  %i.rv = ptrtoint ptr %i.rr to i64
  %i.rw = sub i64 %i.ru, %i.rv
  call void @_ZdlPvm(ptr noundef nonnull %i.rr, i64 noundef %i.rw) #33
  br label %_ZNSt6vectorI9ObdObjectSaIS0_EED2Ev.exit275

_ZNSt6vectorI9ObdObjectSaIS0_EED2Ev.exit275:      ; preds = %_ZSt8_DestroyIP9ObdObjectS0_EvT_S2_RSaIT0_E.exit.i272, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  %i.rx = load ptr, ptr %20, align 8, !tbaa !268  ; 3 uses
  %.not.i.i.i276 = icmp eq ptr %i.rx, null
  br i1 %.not.i.i.i276, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorI9ObdObjectSaIS0_EED2Ev.exit275
  %i.ry = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !279
  %i.sa = ptrtoint ptr %i.rz to i64
  %i.sb = ptrtoint ptr %i.rx to i64
  %i.sc = sub i64 %i.sa, %i.sb
  call void @_ZdlPvm(ptr noundef nonnull %i.rx, i64 noundef %i.sc) #33
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorI9ObdObjectSaIS0_EED2Ev.exit275, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  %.not.i.i.i277 = icmp eq ptr %.sroa.0311.1, null
  br i1 %.not.i.i.i277, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.sd = ptrtoint ptr %.sroa.0311.1 to i64
  %i.se = sub i64 %.sroa.16.1, %i.sd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0311.1, i64 noundef %i.se) #33
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit:     ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.cb
  %i.sf = load ptr, ptr %17, align 8, !tbaa !134  ; 3 uses
  %.not.i.i.i278 = icmp eq ptr %i.sf, null
  br i1 %.not.i.i.i278, label %_ZNSt6vectorIfSaIfEED2Ev.exit279, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit
  %i.sg = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !263
  %i.si = ptrtoint ptr %i.sh to i64
  %i.sj = ptrtoint ptr %i.sf to i64
  %i.sk = sub i64 %i.si, %i.sj
  call void @_ZdlPvm(ptr noundef nonnull %i.sf, i64 noundef %i.sk) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit279

_ZNSt6vectorIfSaIfEED2Ev.exit279:                 ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.sl = load ptr, ptr %16, align 8, !tbaa !25   ; 3 uses
  %i.sm = load ptr, ptr %i.cc, align 8, !tbaa !28 ; 2 uses
  %.not4.i.i.i280 = icmp eq ptr %i.sl, %i.sm
  br i1 %.not4.i.i.i280, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i281

.lr.ph.i.i.i281:                                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit279, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i282 = phi ptr [ %i.ss, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.sl, %_ZNSt6vectorIfSaIfEED2Ev.exit279 ] ; 3 uses
  %i.sn = load ptr, ptr %.05.i.i.i282, align 8, !tbaa !15 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.05.i.i.i282, i64 16 ; 2 uses
  %i.sp = icmp eq ptr %i.sn, %i.so
  br i1 %i.sp, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i281
  %i.sq = load i64, ptr %i.so, align 8, !tbaa !17
  %i.sr = add i64 %i.sq, 1
  call void @_ZdlPvm(ptr noundef %i.sn, i64 noundef %i.sr) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i281, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ss = getelementptr inbounds nuw i8, ptr %.05.i.i.i282, i64 32 ; 2 uses
  %.not.i.i.i283 = icmp eq ptr %i.ss, %i.sm
  br i1 %.not.i.i.i283, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i281, !llvm.loop !29

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i284 = load ptr, ptr %16, align 8, !tbaa !25
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIfSaIfEED2Ev.exit279
  %i.st = phi ptr [ %.pr.i284, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.sl, %_ZNSt6vectorIfSaIfEED2Ev.exit279 ] ; 3 uses
  %.not.i.i1.i285 = icmp eq ptr %i.st, null
  br i1 %.not.i.i1.i285, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.cd

bb.cd:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.su = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !30
  %i.sw = ptrtoint ptr %i.sv to i64
  %i.sx = ptrtoint ptr %i.st to i64
  %i.sy = sub i64 %i.sw, %i.sx
  call void @_ZdlPvm(ptr noundef nonnull %i.st, i64 noundef %i.sy) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  ret void

.lr.ph390:                                        ; preds = %.lr.ph390.preheader559, %.lr.ph390
  %.sroa.0301.0388 = phi ptr [ %i.tb, %.lr.ph390 ], [ %.sroa.0301.0388.ph, %.lr.ph390.preheader559 ] ; 3 uses
end_hunk_1
