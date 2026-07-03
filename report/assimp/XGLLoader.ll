inline.NumInlined: 2834
inline.NumDeleted: 1257
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6Assimp11XGLImporter8ReadMeshERN4pugi8xml_nodeERNS0_9TempScopeE:bb.a
bb.cq:                                            ; preds = %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.it, ptr noundef nonnull align 4 dereferenceable(12) %i.is, i64 12, i1 false)
  %i.iv = load ptr, ptr %i.hk, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  store ptr %i.iw, ptr %i.hk, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

bb.cr:                                            ; preds = %bb.cp
  %i.ix = load ptr, ptr %i.hi, align 8            ; 5 uses
  %i.iy = ptrtoint ptr %i.it to i64
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = sub i64 %i.iy, %i.iz                    ; 4 uses
  %i.jb = icmp eq i64 %i.ja, 9223372036854775800
  br i1 %i.jb, label %.invoke, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.cv, %bb.cr, %bb.cz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #30
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.cr
  %i.jc = sdiv exact i64 %i.ja, 12                ; 3 uses
  %.sroa.speculated.i.i.i195 = call i64 @llvm.umax.i64(i64 %i.jc, i64 1)
  %i.jd = add nsw i64 %.sroa.speculated.i.i.i195, %i.jc ; 2 uses
  %i.je = icmp ult i64 %i.jd, %i.jc
  %i.jf = call i64 @llvm.umin.i64(i64 %i.jd, i64 768614336404564650)
  %i.jg = select i1 %i.je, i64 768614336404564650, i64 %i.jf ; 3 uses
  %.not.i.i.i196 = icmp ne i64 %i.jg, 0
  call void @llvm.assume(i1 %.not.i.i.i196)
  %i.jh = mul nuw nsw i64 %i.jg, 12
  %i.ji = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jh) #29
          to label %.noexc198 unwind label %.loopexit ; 5 uses

.noexc198:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.ja
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jj, ptr noundef nonnull align 4 dereferenceable(12) %i.is, i64 12, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.ix, %i.it
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc198, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.jl, %.lr.ph.i.i.i.i.i ], [ %i.ji, %.noexc198 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.jk, %.lr.ph.i.i.i.i.i ], [ %i.ix, %.noexc198 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !58
  %i.jk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jk, %i.it
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !62

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc198
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ji, %.noexc198 ], [ %i.jl, %.lr.ph.i.i.i.i.i ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12
  %.not.i23.i.i = icmp eq ptr %i.ix, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ix, i64 noundef %i.ja) #27
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.cs, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ji, ptr %i.hi, align 8
  store ptr %i.jm, ptr %i.hk, align 8
  %i.jn = getelementptr inbounds nuw [12 x i8], ptr %i.ji, i64 %i.jg
  store ptr %i.jn, ptr %i.hl, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.cq
  br i1 %i.gv, label %bb.ct, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit214

bb.ct:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  %i.jo = getelementptr inbounds nuw i8, ptr %i.is, i64 12 ; 2 uses
  %i.jp = load ptr, ptr %i.hn, align 8            ; 5 uses
  %i.jq = load ptr, ptr %i.ho, align 8
  %.not.i199 = icmp eq ptr %i.jp, %i.jq
  br i1 %.not.i199, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jp, ptr noundef nonnull align 4 dereferenceable(12) %i.jo, i64 12, i1 false)
  %i.jr = load ptr, ptr %i.hn, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 12
  store ptr %i.js, ptr %i.hn, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit214

bb.cv:                                            ; preds = %bb.ct
  %i.jt = load ptr, ptr %i.hm, align 8            ; 5 uses
  %i.ju = ptrtoint ptr %i.jp to i64
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = sub i64 %i.ju, %i.jv                    ; 4 uses
  %i.jx = icmp eq i64 %i.jw, 9223372036854775800
  br i1 %i.jx, label %.invoke, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i200

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i200: ; preds = %bb.cv
  %i.jy = sdiv exact i64 %i.jw, 12                ; 3 uses
  %.sroa.speculated.i.i.i201 = call i64 @llvm.umax.i64(i64 %i.jy, i64 1)
  %i.jz = add nsw i64 %.sroa.speculated.i.i.i201, %i.jy ; 2 uses
  %i.ka = icmp ult i64 %i.jz, %i.jy
  %i.kb = call i64 @llvm.umin.i64(i64 %i.jz, i64 768614336404564650)
  %i.kc = select i1 %i.ka, i64 768614336404564650, i64 %i.kb ; 3 uses
  %.not.i.i.i202 = icmp ne i64 %i.kc, 0
  call void @llvm.assume(i1 %.not.i.i.i202)
  %i.kd = mul nuw nsw i64 %i.kc, 12
  %i.ke = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kd) #29
          to label %.noexc213 unwind label %.loopexit ; 5 uses

.noexc213:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i200
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.jw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kf, ptr noundef nonnull align 4 dereferenceable(12) %i.jo, i64 12, i1 false)
  %.not10.i.i.i.i.i203 = icmp eq ptr %i.jt, %i.jp
  br i1 %.not10.i.i.i.i.i203, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i208, label %.lr.ph.i.i.i.i.i204

.lr.ph.i.i.i.i.i204:                              ; preds = %.noexc213, %.lr.ph.i.i.i.i.i204
  %.012.i.i.i.i.i205 = phi ptr [ %i.kh, %.lr.ph.i.i.i.i.i204 ], [ %i.ke, %.noexc213 ] ; 2 uses
  %.0911.i.i.i.i.i206 = phi ptr [ %i.kg, %.lr.ph.i.i.i.i.i204 ], [ %i.jt, %.noexc213 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i205, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i206, i64 12, i1 false), !alias.scope !63
  %i.kg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i206, i64 12 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i205, i64 12 ; 2 uses
  %.not.i.i.i.i.i207 = icmp eq ptr %i.kg, %i.jp
  br i1 %.not.i.i.i.i.i207, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i208, label %.lr.ph.i.i.i.i.i204, !llvm.loop !62

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i208: ; preds = %.lr.ph.i.i.i.i.i204, %.noexc213
  %.0.lcssa.i.i.i.i.i209 = phi ptr [ %i.ke, %.noexc213 ], [ %i.kh, %.lr.ph.i.i.i.i.i204 ]
  %i.ki = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i209, i64 12
  %.not.i23.i.i210 = icmp eq ptr %i.jt, null
  br i1 %.not.i23.i.i210, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i211, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i208
  call void @_ZdlPvm(ptr noundef nonnull %i.jt, i64 noundef %i.jw) #27
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i211

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i211: ; preds = %bb.cw, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i208
  store ptr %i.ke, ptr %i.hm, align 8
  store ptr %i.ki, ptr %i.hn, align 8
  %i.kj = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %i.kc
  store ptr %i.kj, ptr %i.ho, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit214

.loopexit:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i200, %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit214: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i211, %bb.cu, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  br i1 %i.ha, label %bb.cx, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit

bb.cx:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit214
  %i.kk = getelementptr inbounds nuw i8, ptr %i.is, i64 24 ; 2 uses
  %i.kl = load ptr, ptr %i.hq, align 8            ; 5 uses
  %i.km = load ptr, ptr %i.hr, align 8
  %.not.i215 = icmp eq ptr %i.kl, %i.km
  br i1 %.not.i215, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.kn = load i64, ptr %i.kk, align 4
  store i64 %i.kn, ptr %i.kl, align 4
  %i.ko = load ptr, ptr %i.hq, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store ptr %i.kp, ptr %i.hq, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit

bb.cz:                                            ; preds = %bb.cx
  %i.kq = load ptr, ptr %i.hp, align 8            ; 7 uses
  %i.kr = ptrtoint ptr %i.kl to i64               ; 2 uses
  %i.ks = ptrtoint ptr %i.kq to i64               ; 3 uses
  %i.kt = sub i64 %i.kr, %i.ks                    ; 4 uses
  %i.ku = icmp eq i64 %i.kt, 9223372036854775800
  br i1 %i.ku, label %.invoke, label %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.cz
  %i.kv = ashr exact i64 %i.kt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i216 = call i64 @llvm.umax.i64(i64 %i.kv, i64 1)
  %i.kw = add nsw i64 %.sroa.speculated.i.i.i216, %i.kv ; 2 uses
  %i.kx = icmp ult i64 %i.kw, %i.kv
  %i.ky = call i64 @llvm.umin.i64(i64 %i.kw, i64 1152921504606846975)
  %i.kz = select i1 %i.kx, i64 1152921504606846975, i64 %i.ky ; 3 uses
  %.not.i.i.i217 = icmp ne i64 %i.kz, 0
  call void @llvm.assume(i1 %.not.i.i.i217)
  %i.la = shl nuw nsw i64 %i.kz, 3
  %i.lb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.la) #29
          to label %.noexc226 unwind label %.loopexit ; 8 uses

.noexc226:                                        ; preds = %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.kt
  %i.ld = load i64, ptr %i.kk, align 4
  store i64 %i.ld, ptr %i.lc, align 4
  %.not10.i.i.i.i.i218 = icmp eq ptr %i.kq, %i.kl
  br i1 %.not10.i.i.i.i.i218, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i219.preheader

.lr.ph.i.i.i.i.i219.preheader:                    ; preds = %.noexc226
  %i.le = ptrtoaddr ptr %i.lb to i64
  %i.lf = sub i64 %i.kr, %i.ks
  %i.lg = add i64 %i.lf, -8                       ; 2 uses
  %i.lh = lshr i64 %i.lg, 3
  %i.li = add nuw nsw i64 %i.lh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.lg, 24
  %i.lj = sub i64 %i.ks, %i.le
  %diff.check = icmp ugt i64 %i.lj, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i219.preheader722, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i219.preheader
  %n.vec = and i64 %i.li, 4611686018427387900     ; 3 uses
  %i.lk = shl i64 %n.vec, 3                       ; 2 uses
  %i.ll = getelementptr i8, ptr %i.lb, i64 %i.lk  ; 2 uses
  %i.lm = getelementptr i8, ptr %i.kq, i64 %i.lk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ln = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.lb, i64 %i.ln ; 2 uses
  %next.gep719 = getelementptr i8, ptr %i.kq, i64 %i.ln ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.lo = getelementptr i8, ptr %next.gep719, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep719, align 4, !alias.scope !70, !noalias !67
  %wide.load720 = load <2 x i64>, ptr %i.lo, align 4, !alias.scope !70, !noalias !67
  %i.lp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !67, !noalias !70
  store <2 x i64> %wide.load720, ptr %i.lp, align 4, !alias.scope !67, !noalias !70
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lq = icmp eq i64 %index.next, %n.vec
  br i1 %i.lq, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.li, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i219.preheader722

.lr.ph.i.i.i.i.i219.preheader722:                 ; preds = %.lr.ph.i.i.i.i.i219.preheader, %middle.block
  %.012.i.i.i.i.i220.ph = phi ptr [ %i.lb, %.lr.ph.i.i.i.i.i219.preheader ], [ %i.ll, %middle.block ]
  %.0911.i.i.i.i.i221.ph = phi ptr [ %i.kq, %.lr.ph.i.i.i.i.i219.preheader ], [ %i.lm, %middle.block ]
  br label %.lr.ph.i.i.i.i.i219

.lr.ph.i.i.i.i.i219:                              ; preds = %.lr.ph.i.i.i.i.i219.preheader722, %.lr.ph.i.i.i.i.i219
  %.012.i.i.i.i.i220 = phi ptr [ %i.lt, %.lr.ph.i.i.i.i.i219 ], [ %.012.i.i.i.i.i220.ph, %.lr.ph.i.i.i.i.i219.preheader722 ] ; 2 uses
  %.0911.i.i.i.i.i221 = phi ptr [ %i.ls, %.lr.ph.i.i.i.i.i219 ], [ %.0911.i.i.i.i.i221.ph, %.lr.ph.i.i.i.i.i219.preheader722 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.lr = load i64, ptr %.0911.i.i.i.i.i221, align 4, !alias.scope !70, !noalias !67
  store i64 %i.lr, ptr %.012.i.i.i.i.i220, align 4, !alias.scope !67, !noalias !70
  %i.ls = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i221, i64 8 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i220, i64 8 ; 2 uses
  %.not.i.i.i.i.i222 = icmp eq ptr %i.ls, %i.kl
  br i1 %.not.i.i.i.i.i222, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i219, !llvm.loop !75

_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i219, %middle.block, %.noexc226
  %.0.lcssa.i.i.i.i.i223 = phi ptr [ %i.lb, %.noexc226 ], [ %i.ll, %middle.block ], [ %i.lt, %.lr.ph.i.i.i.i.i219 ]
  %i.lu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i223, i64 8
  %.not.i23.i.i224 = icmp eq ptr %i.kq, null
  br i1 %.not.i23.i.i224, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.kq, i64 noundef %i.kt) #27
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.da, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.lb, ptr %i.hp, align 8
  store ptr %i.lu, ptr %i.hq, align 8
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.kz
  store ptr %i.lv, ptr %i.hr, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.cy, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit214
  %i.lw = load i32, ptr %i.hu, align 8
  %i.lx = or i32 %i.lw, %i.ht
  store i32 %i.lx, ptr %i.hu, align 8
  %indvars.iv.next534 = add nuw nsw i64 %indvars.iv533, 1 ; 2 uses
  %exitcond537.not = icmp eq i64 %indvars.iv.next534, %wide.trip.count
  br i1 %exitcond537.not, label %bb.cj, label %bb.cp, !llvm.loop !76

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit179.thread249

bb.db:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit265, %.loopexit.split-lp266
  %.pn102 = phi { ptr, i32 } [ %lpad.loopexit.split-lp268, %.loopexit.split-lp266 ], [ %lpad.loopexit267, %.loopexit265 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  br label %.body

.body:                                            ; preds = %.loopexit260, %.loopexit.split-lp261, %bb.bz, %bb.by, %bb.bt, %bb.ch, %bb.db, %bb.bu
  %.pn104.pn = phi { ptr, i32 } [ %i.gj, %bb.bu ], [ %i.hd, %bb.ch ], [ %i.gi, %bb.bt ], [ %.pn102, %bb.db ], [ %i.gp, %bb.by ], [ %i.gq, %bb.bz ], [ %lpad.loopexit262, %.loopexit260 ], [ %lpad.loopexit.split-lp263, %.loopexit.split-lp261 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.dc

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit179.thread249: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit170, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE7LogWarnIJRA33_KcEEEvDpOT_.exit, %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE7LogWarnIJRA34_KcEEEvDpOT_.exit, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit179, %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE7LogWarnIJRA33_KcEEEvDpOT_.exit153
  %.170 = phi i1 [ %.069, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit179 ], [ %.069, %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE7LogWarnIJRA33_KcEEEvDpOT_.exit ], [ %.069, %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE7LogWarnIJRA33_KcEEEvDpOT_.exit153 ], [ %.069, %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE7LogWarnIJRA34_KcEEEvDpOT_.exit ], [ true, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.069, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.069, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.069, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit170 ], [ %.069, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.1 = phi i32 [ %.0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit179 ], [ %.0, %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE7LogWarnIJRA33_KcEEEvDpOT_.exit ], [ %.0, %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE7LogWarnIJRA33_KcEEEvDpOT_.exit153 ], [ %.0, %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE7LogWarnIJRA34_KcEEEvDpOT_.exit ], [ %.0, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.cx, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit170 ], [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.ly = load ptr, ptr %13, align 8              ; 2 uses
  %i.lz = icmp eq ptr %i.ly, %i.ao
  br i1 %i.lz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit179.thread249
  %i.ma = load i64, ptr %i.ao, align 8
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit179.thread249, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.mc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.d unwind label %bb.i       ; 0 uses

bb.dc:                                            ; preds = %.body, %bb.bl, %bb.ay, %bb.ak, %bb.w
  %.pn124 = phi { ptr, i32 } [ %i.df, %bb.w ], [ %.pn122, %bb.ak ], [ %.pn117, %bb.ay ], [ %.pn112, %bb.bl ], [ %.pn104.pn, %.body ]
  %i.md = load ptr, ptr %13, align 8              ; 2 uses
  %i.me = icmp eq ptr %i.md, %i.ao
  br i1 %i.me, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %bb.dc
  %i.mf = load i64, ptr %i.ao, align 8
  %i.mg = add i64 %i.mf, 1
  call void @_ZdlPvm(ptr noundef %i.md, i64 noundef %i.mg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.dd

bb.dd:                                            ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %bb.i
  %.pn128 = phi { ptr, i32 } [ %i.ba, %bb.i ], [ %i.cy, %bb.t ], [ %.pn124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.ds

bb.de:                                            ; preds = %bb.f
  %i.mh = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNSt3mapIjN6Assimp11XGLImporter16TempMaterialMeshESt4lessIjESaISt4pairIKjS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %bb.df unwind label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 100
  store i32 %.0, ptr %i.mi, align 4
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dh:                                            ; preds = %bb.df, %bb.f
  %i.mk = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  store i32 0, ptr %i.mk, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  store ptr null, ptr %i.ml, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  store ptr %i.mk, ptr %i.mm, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 2 uses
  store ptr %i.mk, ptr %i.mn, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 2 uses
  store i64 0, ptr %i.mo, align 8
  %i.mp = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.mp, null
  br i1 %.not.i.i, label %_ZNSt3mapIjN6Assimp11XGLImporter16TempMaterialMeshESt4lessIjESaISt4pairIKjS2_EEEC2ERKS9_.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %20, ptr %3, align 8
  %i.mq = invoke noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp11XGLImporter16TempMaterialMeshEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull %i.mp, ptr noundef nonnull %i.mk, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i.i233 unwind label %bb.g ; 3 uses

.noexc.i.i233:                                    ; preds = %bb.di, %.noexc.i.i233
  %.0.i.i.i.i.i.i = phi ptr [ %i.ms, %.noexc.i.i233 ], [ %i.mq, %bb.di ] ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp11XGLImporter16TempMaterialMeshEESt10_Select1stIS5_ESt4lessIjESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i233, !llvm.loop !77

_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp11XGLImporter16TempMaterialMeshEESt10_Select1stIS5_ESt4lessIjESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i233
  store ptr %.0.i.i.i.i.i.i, ptr %i.mm, align 8
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dj, %_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp11XGLImporter16TempMaterialMeshEESt10_Select1stIS5_ESt4lessIjESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.mq, %_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp11XGLImporter16TempMaterialMeshEESt10_Select1stIS5_ESt4lessIjESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.mu, %bb.dj ] ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.mu = load ptr, ptr %i.mt, align 8            ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.mu, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.dk, label %bb.dj, !llvm.loop !78

bb.dk:                                            ; preds = %bb.dj
  store ptr %.0.i.i7.i.i.i.i, ptr %i.mn, align 8
  %i.mv = load i64, ptr %i.ah, align 8
  store i64 %i.mv, ptr %i.mo, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  store ptr %i.mq, ptr %i.ml, align 8
  br label %_ZNSt3mapIjN6Assimp11XGLImporter16TempMaterialMeshESt4lessIjESaISt4pairIKjS2_EEEC2ERKS9_.exit

_ZNSt3mapIjN6Assimp11XGLImporter16TempMaterialMeshESt4lessIjESaISt4pairIKjS2_EEEC2ERKS9_.exit: ; preds = %bb.dk, %bb.dh
  %i.mw = load i32, ptr %i.i, align 4
  invoke void @_ZN6Assimp11XGLImporter18AppendOutputMeshesESt3mapIjNS0_16TempMaterialMeshESt4lessIjESaISt4pairIKjS2_EEERNS0_9TempScopeEj(ptr nonnull align 8 poison, ptr noundef nonnull %20, ptr noundef nonnull align 8 dereferenceable(152) %2, i32 noundef %i.mw)
          to label %bb.dl unwind label %bb.dr

bb.dl:                                            ; preds = %_ZNSt3mapIjN6Assimp11XGLImporter16TempMaterialMeshESt4lessIjESaISt4pairIKjS2_EEEC2ERKS9_.exit
  %i.mx = load ptr, ptr %i.ml, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp11XGLImporter16TempMaterialMeshEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef %i.mx)
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp11XGLImporter16TempMaterialMeshEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_:bb.a
bb.s:                                             ; preds = %bb.p, %bb.n
  %.0.in = getelementptr inbounds nuw i8, ptr %.040, i64 16
  %.0 = load ptr, ptr %.0.in, align 8             ; 2 uses
  %.not32 = icmp eq ptr %.0, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !130

bb.t:                                             ; preds = %bb.r, %.body
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.u

._crit_edge:                                      ; preds = %bb.s, %bb.i
  ret ptr %i.b

bb.u:                                             ; preds = %bb.t
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #28
  unreachable

bb.v:                                             ; preds = %bb.r
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp11XGLImporter16TempMaterialMeshEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp11XGLImporter16TempMaterialMeshEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp11XGLImporter16TempMaterialMeshEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.07) #26
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !131

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp11XGLImporter16TempMaterialMeshC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 12
  %i.h = icmp ugt i64 %i.g, 768614336404564650
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorI10aiVector3tIfEE8allocateEmPKv.exit.i.i.i.i, !prof !6

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt15__new_allocatorI10aiVector3tIfEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorI10aiVector3tIfEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorI10aiVector3tIfEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %1, align 8                ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i.i.i.i, i64 12, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !132

_ZNSt6vectorI10aiVector3tIfESaIS1_EEC2ERKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.k, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %.not.i.i.i.i11 = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i.i11, label %.noexc20, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EEC2ERKS3_.exit
  %i.z = sdiv exact i64 %i.y, 12
  %i.aa = icmp ugt i64 %i.z, 768614336404564650
  br i1 %i.aa, label %.noexc.i.i19, label %_ZNSt15__new_allocatorI10aiVector3tIfEE8allocateEmPKv.exit.i.i.i.i12, !prof !6

.noexc.i.i19:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i19
  unreachable

_ZNSt15__new_allocatorI10aiVector3tIfEE8allocateEmPKv.exit.i.i.i.i12: ; preds = %bb.d
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #29
          to label %.noexc20 unwind label %bb.k

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorI10aiVector3tIfEE8allocateEmPKv.exit.i.i.i.i12, %_ZNSt6vectorI10aiVector3tIfESaIS1_EEC2ERKS3_.exit
  %i.ac = phi ptr [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EEC2ERKS3_.exit ], [ %i.ab, %_ZNSt15__new_allocatorI10aiVector3tIfEE8allocateEmPKv.exit.i.i.i.i12 ] ; 5 uses
  store ptr %i.ac, ptr %i.r, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.y
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ah = load ptr, ptr %i.t, align 8             ; 2 uses
  %.not7.i.i.i.i.i13 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not7.i.i.i.i.i13, label %.loopexit39, label %.lr.ph.i.i.i.i.i14

.lr.ph.i.i.i.i.i14:                               ; preds = %.noexc20, %.lr.ph.i.i.i.i.i14
  %.09.i.i.i.i.i15 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i14 ], [ %i.ac, %.noexc20 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i16 = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i14 ], [ %i.ag, %.noexc20 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i15, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i.i.i.i16, i64 12, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i16, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i15, i64 12 ; 2 uses
  %.not.i.i.i.i.i17 = icmp eq ptr %i.ai, %i.ah
  br i1 %.not.i.i.i.i.i17, label %.loopexit39, label %.lr.ph.i.i.i.i.i14, !llvm.loop !132

.loopexit39:                                      ; preds = %.lr.ph.i.i.i.i.i14, %.noexc20
  %.0.lcssa.i.i.i.i.i18 = phi ptr [ %i.ac, %.noexc20 ], [ %i.aj, %.lr.ph.i.i.i.i.i14 ]
  store ptr %.0.lcssa.i.i.i.i.i18, ptr %i.ad, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %.not.i.i.i.i22 = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i.i.i.i22, label %.noexc31, label %bb.e

bb.e:                                             ; preds = %.loopexit39
  %i.as = icmp ugt i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %.noexc.i.i29, label %_ZNSt15__new_allocatorI10aiVector2tIfEE8allocateEmPKv.exit.i.i.i.i, !prof !6

.noexc.i.i29:                                     ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc30 unwind label %bb.l

.noexc30:                                         ; preds = %.noexc.i.i29
  unreachable

_ZNSt15__new_allocatorI10aiVector2tIfEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.e
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #29
          to label %.noexc31 unwind label %bb.l

.noexc31:                                         ; preds = %_ZNSt15__new_allocatorI10aiVector2tIfEE8allocateEmPKv.exit.i.i.i.i, %.loopexit39
  %i.au = phi ptr [ null, %.loopexit39 ], [ %i.at, %_ZNSt15__new_allocatorI10aiVector2tIfEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.au, ptr %i.ak, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ar
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.aw, ptr %i.ax, align 8
  %i.ay = load ptr, ptr %i.al, align 8            ; 6 uses
  %i.az = load ptr, ptr %i.am, align 8            ; 3 uses
  %.not7.i.i.i.i.i23 = icmp eq ptr %i.ay, %i.az
  br i1 %.not7.i.i.i.i.i23, label %.loopexit, label %.lr.ph.i.i.i.i.i24.preheader

.lr.ph.i.i.i.i.i24.preheader:                     ; preds = %.noexc31
  %i.ba = ptrtoaddr ptr %i.ay to i64
  %i.bb = ptrtoaddr ptr %i.au to i64
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.ay to i64
  %i.be = add i64 %i.bc, -8
  %i.bf = sub i64 %i.be, %i.bd                    ; 2 uses
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bf, 72
  %i.bi = sub i64 %i.ba, %i.bb
  %diff.check = icmp ugt i64 %i.bi, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i24.preheader62, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i24.preheader
  %n.vec = and i64 %i.bh, 4611686018427387900     ; 3 uses
  %i.bj = shl i64 %n.vec, 3                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.au, i64 %i.bj  ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ay, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.au, i64 %i.bm ; 2 uses
  %next.gep59 = getelementptr i8, ptr %i.ay, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep59, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep59, align 4
  %wide.load60 = load <2 x i64>, ptr %i.bn, align 4
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load60, ptr %i.bo, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i24.preheader62

.lr.ph.i.i.i.i.i24.preheader62:                   ; preds = %.lr.ph.i.i.i.i.i24.preheader, %middle.block
  %.09.i.i.i.i.i25.ph = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i24.preheader ], [ %i.bk, %middle.block ]
  %.sroa.04.08.i.i.i.i.i26.ph = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i24.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i.i.i.i24

.lr.ph.i.i.i.i.i24:                               ; preds = %.lr.ph.i.i.i.i.i24.preheader62, %.lr.ph.i.i.i.i.i24
  %.09.i.i.i.i.i25 = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i24 ], [ %.09.i.i.i.i.i25.ph, %.lr.ph.i.i.i.i.i24.preheader62 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i26 = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i24 ], [ %.sroa.04.08.i.i.i.i.i26.ph, %.lr.ph.i.i.i.i.i24.preheader62 ] ; 2 uses
  %i.bq = load i64, ptr %.sroa.04.08.i.i.i.i.i26, align 4
  store i64 %i.bq, ptr %.09.i.i.i.i.i25, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i26, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i25, i64 8 ; 2 uses
  %.not.i.i.i.i.i27 = icmp eq ptr %i.br, %i.az
  br i1 %.not.i.i.i.i.i27, label %.loopexit, label %.lr.ph.i.i.i.i.i24, !llvm.loop !134

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i24, %middle.block, %.noexc31
  %.0.lcssa.i.i.i.i.i28 = phi ptr [ %i.au, %.noexc31 ], [ %i.bk, %middle.block ], [ %i.bs, %.lr.ph.i.i.i.i.i24 ]
  store ptr %.0.lcssa.i.i.i.i.i28, ptr %i.av, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i8 0, i64 24, i1 false)
  %.not.i.i.i.i32 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i.i.i.i32, label %.noexc35, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.cb = icmp ugt i64 %i.ca, 9223372036854775804
  br i1 %i.cb, label %.noexc.i.i33, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, !prof !6

.noexc.i.i33:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc34 unwind label %bb.m

.noexc34:                                         ; preds = %.noexc.i.i33
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.f
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #29
          to label %.noexc35 unwind label %bb.m

.noexc35:                                         ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, %.loopexit
  %i.cd = phi ptr [ null, %.loopexit ], [ %i.cc, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.cd, ptr %i.bt, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.cd, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ca
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.cf, ptr %i.cg, align 8
  %i.ch = load ptr, ptr %i.bu, align 8            ; 3 uses
  %i.ci = load ptr, ptr %i.bv, align 8
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = sub i64 %i.cj, %i.ck                    ; 4 uses
  %i.cm = icmp sgt i64 %i.cl, 4
  br i1 %i.cm, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %.noexc35
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cd, ptr align 4 %i.ch, i64 %i.cl, i1 false)
  br label %bb.j

bb.h:                                             ; preds = %.noexc35
  %i.cn = icmp eq i64 %i.cl, 4
  br i1 %i.cn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.co = load i32, ptr %i.ch, align 4
  store i32 %i.co, ptr %i.cd, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.cp = getelementptr inbounds i8, ptr %i.cd, i64 %i.cl
  store ptr %i.cp, ptr %i.ce, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cs = load i64, ptr %i.cr, align 8
  store i64 %i.cs, ptr %i.cq, align 8
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorI10aiVector3tIfEE8allocateEmPKv.exit.i.i.i.i12, %.noexc.i.i19
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

bb.l:                                             ; preds = %_ZNSt15__new_allocatorI10aiVector2tIfEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i29
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit

bb.m:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i33
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = load ptr, ptr %i.ak, align 8            ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cx = load ptr, ptr %i.ax, align 8
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = sub i64 %i.cy, %i.cz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.da) #27
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit:    ; preds = %bb.n, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.cu, %bb.l ], [ %i.cv, %bb.m ], [ %i.cv, %bb.n ] ; 2 uses
  %i.db = load ptr, ptr %i.r, align 8             ; 3 uses
  %.not.i.i.i36 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit
  %i.dc = load ptr, ptr %i.af, align 8
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = sub i64 %i.dd, %i.de
  tail call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.df) #27
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %bb.o, %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.ct, %bb.k ], [ %.pn, %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit ], [ %.pn, %bb.o ]
  %i.dg = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i.i.i37 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit38, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit
  %i.dh = load ptr, ptr %i.m, align 8
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.dg to i64
  %i.dk = sub i64 %i.di, %i.dj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dk) #27
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit38

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit38:  ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, %bb.p
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp11XGLImporter16TempMaterialMeshEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #27
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i:              ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
end_hunk_1
