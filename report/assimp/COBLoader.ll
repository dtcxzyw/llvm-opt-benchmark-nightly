inline.NumInlined: 2278
inline.NumDeleted: 956
begin_hunk_0_@_ZN6Assimp11COBImporter15ReadPolH_BinaryERNS_3COB5SceneERNS_12StreamReaderILb0ELb0EEERKNS1_9ChunkInfoE:bb.a

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bw
  %.pn90.pn = phi { ptr, i32 } [ %.pn90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ij, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.body

bb.ca:                                            ; preds = %bb.bq
  %i.ir = load ptr, ptr %i.hr, align 8            ; 3 uses
  %i.is = load ptr, ptr %i.gn, align 8
  %.not.i = icmp eq ptr %i.ir, %i.is
  br i1 %.not.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ir, i8 0, i64 32, i1 false)
  %i.it = load ptr, ptr %i.hr, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 32 ; 2 uses
  store ptr %i.iu, ptr %i.hr, align 8
  br label %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

bb.cc:                                            ; preds = %bb.ca
  invoke void @_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.gl, ptr %i.ir)
          to label %._ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit_crit_edge unwind label %.loopexit185

._ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit_crit_edge: ; preds = %bb.cc
  %.pre213 = load ptr, ptr %i.hr, align 8
  br label %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit: ; preds = %._ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit_crit_edge, %bb.cb, %bb.br
  %i.iv = phi ptr [ %.pre213, %._ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit_crit_edge ], [ %i.iu, %bb.cb ], [ %i.ie, %bb.br ] ; 5 uses
  %i.iw = getelementptr inbounds i8, ptr %i.iv, i64 -32
  %i.ix = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 2 ; 2 uses
  %i.iz = load ptr, ptr %i.da, align 8
  %i.ja = icmp ugt ptr %i.iy, %i.iz
  br i1 %i.ja, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  %i.jb = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.jb, ptr noundef nonnull @.str.108)
          to label %.invoke273 unwind label %bb.ce

.invoke273:                                       ; preds = %bb.cl, %bb.cd
  %i.jc = phi ptr [ %i.jb, %bb.cd ], [ %i.kf, %bb.cl ]
  invoke void @__cxa_throw(ptr nonnull %i.jc, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %.cont274 unwind label %.loopexit.split-lp191

.cont274:                                         ; preds = %.invoke273
  unreachable

bb.ce:                                            ; preds = %bb.cd
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.jb) #26
  br label %.body

bb.cf:                                            ; preds = %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  %i.je = load i16, ptr %i.ix, align 1            ; 4 uses
  store ptr %i.iy, ptr %i.f, align 8
  %i.jf = sext i16 %i.je to i64                   ; 3 uses
  %i.jg = getelementptr inbounds i8, ptr %i.iv, i64 -24 ; 4 uses
  %i.jh = getelementptr inbounds i8, ptr %i.iv, i64 -16 ; 7 uses
  %i.ji = load ptr, ptr %i.jh, align 8
  %i.jj = load ptr, ptr %i.jg, align 8            ; 4 uses
  %i.jk = ptrtoint ptr %i.ji to i64
  %i.jl = ptrtoint ptr %i.jj to i64               ; 2 uses
  %i.jm = sub i64 %i.jk, %i.jl                    ; 4 uses
  %i.jn = ashr exact i64 %i.jm, 3
  %i.jo = add nsw i64 %i.jn, %i.jf                ; 4 uses
  %i.jp = icmp ugt i64 %i.jo, 1152921504606846975
  br i1 %i.jp, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #27
          to label %.noexc145 unwind label %.loopexit.split-lp191

.noexc145:                                        ; preds = %bb.cg
  unreachable

bb.ch:                                            ; preds = %bb.cf
  %i.jq = getelementptr inbounds i8, ptr %i.iv, i64 -8 ; 4 uses
  %i.jr = load ptr, ptr %i.jq, align 8
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = sub i64 %i.js, %i.jl                    ; 2 uses
  %i.ju = ashr exact i64 %i.jt, 3
  %i.jv = icmp ult i64 %i.ju, %i.jo
  br i1 %i.jv, label %_ZNSt12_Vector_baseIN6Assimp3COB11VertexIndexESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp3COB11VertexIndexESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.ch
  %i.jw = shl nuw nsw i64 %i.jo, 3
  %i.jx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jw) #29
          to label %.noexc146 unwind label %.loopexit190 ; 4 uses

.noexc146:                                        ; preds = %_ZNSt12_Vector_baseIN6Assimp3COB11VertexIndexESaIS2_EE11_M_allocateEm.exit.i
  %i.jy = icmp sgt i64 %i.jm, 0
  br i1 %i.jy, label %bb.ci, label %_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

bb.ci:                                            ; preds = %.noexc146
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jx, ptr align 4 %i.jj, i64 %i.jm, i1 false)
  br label %_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %bb.ci, %.noexc146
  %.not.i8.i144 = icmp eq ptr %i.jj, null
  br i1 %.not.i8.i144, label %_ZNSt12_Vector_baseIN6Assimp3COB11VertexIndexESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef %i.jt) #28
  br label %_ZNSt12_Vector_baseIN6Assimp3COB11VertexIndexESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN6Assimp3COB11VertexIndexESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.cj, %_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.jx, ptr %i.jg, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jm
  store ptr %i.jz, ptr %i.jh, align 8
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.jo
  store ptr %i.ka, ptr %i.jq, align 8
  br label %_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6Assimp3COB11VertexIndexESaIS2_EE13_M_deallocateEPS2_m.exit.i, %bb.ch
  br i1 %.not, label %.thread265, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE7reserveEm.exit
  %i.kb = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 2 ; 2 uses
  %i.kd = load ptr, ptr %i.da, align 8
  %i.ke = icmp ugt ptr %i.kc, %i.kd
  br i1 %i.ke, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %i.kf = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.kf, ptr noundef nonnull @.str.108)
          to label %.invoke273 unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.kf) #26
  br label %.body

.loopexit190:                                     ; preds = %_ZNSt12_Vector_baseIN6Assimp3COB11VertexIndexESaIS2_EE11_M_allocateEm.exit.i
  %lpad.loopexit192 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp191:                            ; preds = %.invoke273, %bb.cg
  %lpad.loopexit.split-lp193 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cn:                                            ; preds = %bb.ck
  %i.kh = load i16, ptr %i.kb, align 1
  store ptr %i.kc, ptr %i.f, align 8
  %i.ki = sext i16 %i.kh to i32
  store i32 %i.ki, ptr %i.iw, align 8
  %i.kj = getelementptr inbounds i8, ptr %i.iv, i64 -28
  store i32 0, ptr %i.kj, align 4
  %.not210 = icmp eq i16 %i.je, 0
  br i1 %.not210, label %_ZSt7reverseISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN6Assimp3COB11VertexIndexESt6vectorIS5_SaIS5_EEEEEEvT_SC_.exit, label %.lr.ph204.preheader

.lr.ph204.preheader:                              ; preds = %.thread265, %bb.cn
  br label %.lr.ph204

.thread265:                                       ; preds = %_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE7reserveEm.exit
  %.not210266 = icmp eq i16 %i.je, 0
  br i1 %.not210266, label %_ZSt7reverseISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN6Assimp3COB11VertexIndexESt6vectorIS5_SaIS5_EEEEEEvT_SC_.exit, label %.lr.ph204.preheader

._crit_edge205:                                   ; preds = %bb.cy
  %i.kk = icmp sgt i16 %i.je, 1
  %or.cond277 = and i1 %.not, %i.kk
  br i1 %or.cond277, label %.lr.ph.i.i.preheader, label %_ZSt7reverseISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN6Assimp3COB11VertexIndexESt6vectorIS5_SaIS5_EEEEEEvT_SC_.exit

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %bb.cy
  %.073202 = phi i64 [ %i.lv, %bb.cy ], [ 0, %.lr.ph204.preheader ]
  %i.kl = load ptr, ptr %i.jh, align 8            ; 3 uses
  %i.km = load ptr, ptr %i.jq, align 8
  %.not.i151 = icmp eq ptr %i.kl, %i.km
  br i1 %.not.i151, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %.lr.ph204
  store i64 0, ptr %i.kl, align 4
  %i.kn = load ptr, ptr %i.jh, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8 ; 2 uses
  store ptr %i.ko, ptr %i.jh, align 8
  br label %_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

bb.cp:                                            ; preds = %.lr.ph204
  %i.kp = load ptr, ptr %i.jg, align 8            ; 4 uses
  %i.kq = ptrtoint ptr %i.kl to i64
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 %i.kq, %i.kr                    ; 6 uses
  %i.kt = icmp eq i64 %i.ks, 9223372036854775800
  br i1 %i.kt, label %bb.cq, label %_ZNKSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #27
          to label %.noexc153 unwind label %.loopexit.split-lp

.noexc153:                                        ; preds = %bb.cq
  unreachable

_ZNKSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.cp
  %i.ku = ashr exact i64 %i.ks, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ku, i64 1)
  %i.kv = add nsw i64 %.sroa.speculated.i.i.i, %i.ku ; 2 uses
  %9 = icmp ult i64 %i.kv, %i.ku
  %i.kw = call i64 @llvm.umin.i64(i64 %i.kv, i64 1152921504606846975)
  %10 = select i1 %9, i64 1152921504606846975, i64 %i.kw ; 3 uses
  %.not.i.i.i152 = icmp ne i64 %10, 0
  call void @llvm.assume(i1 %.not.i.i.i152)
  %i.kx = shl nuw nsw i64 %10, 3
  %i.ky = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kx) #29
          to label %.noexc154 unwind label %.loopexit ; 4 uses

.noexc154:                                        ; preds = %_ZNKSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.kz = getelementptr inbounds i8, ptr %i.ky, i64 %i.ks ; 2 uses
  store i64 0, ptr %i.kz, align 4
  %i.la = icmp sgt i64 %i.ks, 0
  br i1 %i.la, label %bb.cr, label %_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit15.i.i

bb.cr:                                            ; preds = %.noexc154
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ky, ptr align 4 %i.kp, i64 %i.ks, i1 false)
  br label %_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit15.i.i

_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit15.i.i: ; preds = %bb.cr, %.noexc154
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 2 uses
  %.not.i16.i.i = icmp eq ptr %i.kp, null
  br i1 %.not.i16.i.i, label %_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit15.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.kp, i64 noundef %i.ks) #28
  br label %_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.cs, %_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit15.i.i
  store ptr %i.ky, ptr %i.jg, align 8
  store ptr %i.lb, ptr %i.jh, align 8
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %10
  store ptr %i.lc, ptr %i.jq, align 8
  br label %_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit: ; preds = %_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.co
  %i.ld = phi ptr [ %i.lb, %_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ko, %bb.co ] ; 2 uses
  %i.le = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 4 ; 2 uses
  %i.lg = load ptr, ptr %i.da, align 8
  %i.lh = icmp ugt ptr %i.lf, %i.lg
  br i1 %i.lh, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  %i.li = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.li, ptr noundef nonnull @.str.108)
          to label %.invoke275 unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.lj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.li) #26
  br label %.body

bb.cv:                                            ; preds = %_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  %i.lk = getelementptr inbounds i8, ptr %i.ld, i64 -8
  %i.ll = load i32, ptr %i.le, align 1
  store ptr %i.lf, ptr %i.f, align 8
  store i32 %i.ll, ptr %i.lk, align 4
  %i.lm = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 4 ; 2 uses
  %i.lo = load ptr, ptr %i.da, align 8
  %i.lp = icmp ugt ptr %i.ln, %i.lo
  br i1 %i.lp, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.lq = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.lq, ptr noundef nonnull @.str.108)
          to label %.invoke275 unwind label %bb.cx

.invoke275:                                       ; preds = %bb.cw, %bb.ct
  %i.lr = phi ptr [ %i.li, %bb.ct ], [ %i.lq, %bb.cw ]
  invoke void @__cxa_throw(ptr nonnull %i.lr, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %.cont276 unwind label %bb.cz

.cont276:                                         ; preds = %.invoke275
  unreachable

bb.cx:                                            ; preds = %bb.cw
  %i.ls = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.lq) #26
  br label %.body

bb.cy:                                            ; preds = %bb.cv
  %i.lt = load i32, ptr %i.lm, align 1
  store ptr %i.ln, ptr %i.f, align 8
  %i.lu = getelementptr inbounds i8, ptr %i.ld, i64 -4
  store i32 %i.lt, ptr %i.lu, align 4
  %i.lv = add nuw i64 %.073202, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.lv, %i.jf
  br i1 %exitcond.not, label %._crit_edge205, label %.lr.ph204, !llvm.loop !190

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.cq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cz:                                            ; preds = %.invoke275
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge205
  %i.lx = load ptr, ptr %i.jh, align 8, !noalias !191 ; 2 uses
  %.neg = mul nsw i64 %i.jf, -8
  %i.ly = getelementptr inbounds i8, ptr %i.lx, i64 %.neg ; 2 uses
  %storemerge4.i.i = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.01.0.i = phi ptr [ %i.ma, %.lr.ph.i.i ], [ %i.lx, %.lr.ph.i.i.preheader ]
  %.sroa.0.0.i = phi ptr [ %storemerge.i.i, %.lr.ph.i.i ], [ %storemerge4.i.i, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.lz = phi ptr [ %.sroa.0.0.i, %.lr.ph.i.i ], [ %i.ly, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ma = getelementptr inbounds i8, ptr %.sroa.01.0.i, i64 -8 ; 4 uses
  %i.mb = load i64, ptr %i.ma, align 4
  %i.mc = load i64, ptr %i.lz, align 4
  store i64 %i.mc, ptr %i.ma, align 4
  store i64 %i.mb, ptr %i.lz, align 4
  %storemerge.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %i.md = icmp ult ptr %storemerge.i.i, %i.ma
  br i1 %i.md, label %.lr.ph.i.i, label %_ZSt7reverseISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN6Assimp3COB11VertexIndexESt6vectorIS5_SaIS5_EEEEEEvT_SC_.exit, !llvm.loop !194

_ZSt7reverseISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN6Assimp3COB11VertexIndexESt6vectorIS5_SaIS5_EEEEEEvT_SC_.exit: ; preds = %.lr.ph.i.i, %bb.cn, %.thread265, %._crit_edge205
  %i.me = add nuw i64 %.083206, 1                 ; 2 uses
  %exitcond211.not = icmp eq i64 %i.me, %i.gk
  br i1 %exitcond211.not, label %._crit_edge208, label %bb.bm, !llvm.loop !195

bb.da:                                            ; preds = %._crit_edge208
  %i.mf = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 4 ; 2 uses
  %i.mh = load ptr, ptr %i.da, align 8
  %i.mi = icmp ugt ptr %i.mg, %i.mh
  br i1 %i.mi, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.mj = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.mj, ptr noundef nonnull @.str.108)
          to label %.invoke271 unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.mk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.mj) #26
  br label %.body

bb.dd:                                            ; preds = %bb.da
  %i.ml = load i32, ptr %i.mf, align 1
  store ptr %i.mg, ptr %i.f, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.cu, i64 288
  store i32 %i.ml, ptr %i.mm, align 8
  %.pre214 = load i32, ptr %i.a, align 8
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %._crit_edge208
  %i.mn = phi i32 [ %.pre214, %bb.dd ], [ %i.hs, %._crit_edge208 ]
  %i.mo = and i32 %i.mn, -2
  %or.cond = icmp eq i32 %i.mo, 6
  br i1 %or.cond, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.mp = load ptr, ptr %i.f, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 4 ; 2 uses
  %i.mr = load ptr, ptr %i.da, align 8
  %i.ms = icmp ugt ptr %i.mq, %i.mr
  br i1 %i.ms, label %bb.dg, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI4Ev.exit170

bb.dg:                                            ; preds = %bb.df
  %i.mt = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.mt, ptr noundef nonnull @.str.108)
          to label %.invoke271 unwind label %bb.dh

.invoke271:                                       ; preds = %bb.ay, %bb.dg, %bb.db
  %i.mu = phi ptr [ %i.mj, %bb.db ], [ %i.mt, %bb.dg ], [ %i.fp, %bb.ay ]
  invoke void @__cxa_throw(ptr nonnull %i.mu, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %.cont272 unwind label %bb.bl

.cont272:                                         ; preds = %.invoke271
  unreachable

bb.dh:                                            ; preds = %bb.dg
  %i.mv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.mt) #26
  br label %.body

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI4Ev.exit170: ; preds = %bb.df
  store ptr %i.mq, ptr %i.f, align 8
  br label %bb.di

bb.di:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI4Ev.exit170, %bb.de
  call void @_ZN6Assimp11chunk_guardD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.b
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit190, %.loopexit.split-lp191, %.loopexit185, %.loopexit.split-lp186, %bb.cu, %bb.cx, %bb.cz, %bb.ce, %bb.cm, %bb.bp, %bb.az, %bb.bl, %bb.dh, %bb.dc, %bb.bb, %bb.be, %bb.bg, %bb.an, %bb.av, %bb.at, %bb.aq, %bb.ab, %bb.ah, %bb.al, %bb.bz, %.body171
  %.pn95.pn = phi { ptr, i32 } [ %.pn, %.body171 ], [ %i.eb, %bb.ah ], [ %i.fb, %bb.at ], [ %lpad.loopexit.split-lp193, %.loopexit.split-lp191 ], [ %i.ge, %bb.be ], [ %.pn90.pn, %bb.bz ], [ %i.mv, %bb.dh ], [ %i.ia, %bb.bp ], [ %i.ls, %bb.cx ], [ %i.kg, %bb.cm ], [ %i.de, %bb.ab ], [ %i.ef, %bb.al ], [ %i.el, %bb.an ], [ %i.es, %bb.aq ], [ %i.ff, %bb.av ], [ %i.fw, %bb.bb ], [ %i.gi, %bb.bg ], [ %i.fq, %bb.az ], [ %i.mk, %bb.dc ], [ %i.hu, %bb.bl ], [ %i.lw, %bb.cz ], [ %i.jd, %bb.ce ], [ %lpad.loopexit.split-lp188, %.loopexit.split-lp186 ], [ %i.lj, %bb.cu ], [ %lpad.loopexit187, %.loopexit185 ], [ %lpad.loopexit192, %.loopexit190 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6Assimp11chunk_guardD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn95.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11COBImporter15ReadBitM_BinaryERNS_3COB5SceneERNS_12StreamReaderILb0ELb0EEERKNS1_9ChunkInfoE(ptr nonnull readnone align 8 captures(none) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::chunk_guard", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp ugt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6Assimp11COBImporter23UnsupportedChunk_BinaryERNS_12StreamReaderILb0ELb0EEERKNS_3COB9ChunkInfoEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull @.str.87)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %3, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
end_hunk_0
begin_hunk_1_@_ZN6Assimp6Logger13formatMessageIJRA37_KcERPS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA37_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(37) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(37) %3) #26
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(37) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !312
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !312
  store i8 0, ptr %i.c, align 8, !alias.scope !312
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !312 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !312 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !312 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !312 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !312
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #28
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #28
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #26
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #26
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERKjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = load i32, ptr %3, align 4
  %i.b = zext i32 %i.a to i64
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %2, i64 noundef %i.b) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.d, ptr %0, align 8, !alias.scope !325
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !alias.scope !325
  store i8 0, ptr %i.d, align 8, !alias.scope !325
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !325 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noalias !325 ; 2 uses
  %i.j = icmp ugt ptr %i.g, %i.i
  %.08.i.i.i.i.i = select i1 %i.j, ptr %i.g, ptr %i.i ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !noalias !325 ; 2 uses
  %i.m = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.l, i64 noundef %i.o)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %0, align 8, !alias.scope !325 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.d, align 8, !alias.scope !325
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #28
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.w = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.w, ptr %4, align 8
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.y = getelementptr i8, ptr %i.w, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %4, i64 %i.z
  store ptr %i.x, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.ag = load i64, ptr %i.ae, align 8
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #28
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ab, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #26
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.aj) #26
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #26
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp3COB8MaterialESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775752
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6Assimp3COB8MaterialESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #27
  unreachable

_ZNKSt6vectorIN6Assimp3COB8MaterialESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 152                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %2 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 60680079189834051)
  %3 = select i1 %2, i64 60680079189834051, i64 %i.j ; 4 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6Assimp3COB8MaterialESaIS2_EE12_M_check_lenEmPKc.exit
  %i.m = mul nuw nsw i64 %3, 152
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #29
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt6vectorIN6Assimp3COB8MaterialESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %_ZNKSt6vectorIN6Assimp3COB8MaterialESaIS2_EE12_M_check_lenEmPKc.exit ] ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store <4 x i32> <i32 0, i32 0, i32 0, i32 -1>, ptr %i.q, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp3COB8MaterialE, i64 16), ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  store ptr %i.s, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i64 0, ptr %i.t, align 8
  store i8 0, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.u, i8 0, i64 28, i1 false)
  store float 1.000000e+00, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store i32 -1, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.x, i8 0, i64 60, i1 false)
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.o, %bb.d ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %bb.d ] ; 2 uses
  invoke void @_ZN6Assimp3COB8MaterialC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(152) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(152) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.e

_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 152 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 152 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !326

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.ab) #26 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.o, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i.i ], [ %i.o, %bb.e ] ; 3 uses
  %i.ad = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(152) %.05.i.i.i.i.i.i.i) #26, !inline_history !327
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 152 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.af, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !29

_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.e
  invoke void @__cxa_rethrow() #27
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit.i.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN6Assimp3COB8MaterialES2_EvT_S4_RSaIT0_E.exit.thread unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #30
  unreachable

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.o, %bb.d ], [ %i.z, %_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 4 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 152 ; 3 uses
  %.not14.i.i.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i27, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit41, label %.lr.ph.i.i.i.i.i28

.lr.ph.i.i.i.i.i28:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i36
  %.016.i.i.i.i.i29.idx = phi i64 [ %.016.i.i.i.i.i29.add, %_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i36 ], [ 152, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i30 = phi ptr [ %i.aj, %_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i36 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.016.i.i.i.i.i29.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i29.idx ; 2 uses
  invoke void @_ZN6Assimp3COB8MaterialC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(152) %.016.i.i.i.i.i29.ptr, ptr noundef nonnull align 8 dereferenceable(152) %.01215.i.i.i.i.i30)
          to label %_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i36 unwind label %bb.i

_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i28
  %i.aj = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i30, i64 152 ; 2 uses
  %.016.i.i.i.i.i29.add = add nuw nsw i64 %.016.i.i.i.i.i29.idx, 152 ; 2 uses
  %.not.i.i.i.i.i37 = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i.i.i37, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit41.loopexit, label %.lr.ph.i.i.i.i.i28, !llvm.loop !326

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i28
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  %i.am = tail call ptr @__cxa_begin_catch(ptr %i.al) #26 ; 0 uses
  %.not4.i.i.i.i.i.i.i31 = icmp eq i64 %.016.i.i.i.i.i29.idx, 152
  br i1 %.not4.i.i.i.i.i.i.i31, label %_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit.i.i.i.i.i35, label %.lr.ph.i.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i.i32:                           ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i.i32
  %.05.i.i.i.i.i.i.i33 = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i32 ], [ %.ptr, %bb.i ] ; 3 uses
  %i.an = load ptr, ptr %.05.i.i.i.i.i.i.i33, align 8
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(152) %.05.i.i.i.i.i.i.i33) #26, !inline_history !327
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i33, i64 152 ; 2 uses
  %.not.i.i.i.i.i.i.i34 = icmp eq ptr %i.ap, %.016.i.i.i.i.i29.ptr
  br i1 %.not.i.i.i.i.i.i.i34, label %_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit.i.i.i.i.i35, label %.lr.ph.i.i.i.i.i.i.i32, !llvm.loop !29

_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit.i.i.i.i.i35: ; preds = %.lr.ph.i.i.i.i.i.i.i32, %bb.i
  invoke void @__cxa_rethrow() #27
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit.i.i.i.i.i35
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #30
  unreachable

bb.l:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit.i.i.i.i.i35
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit41.loopexit: ; preds = %_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i36
  %.ptr58.le = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i29.add
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit41

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit41: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit41.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i38 = phi ptr [ %.ptr, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %.ptr58.le, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit41.loopexit ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit41, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit41 ] ; 3 uses
  %i.at = load ptr, ptr %.05.i.i, align 8
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(152) %.05.i.i) #26, !inline_history !328
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 152 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !29

_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit41
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i42 = icmp eq ptr %i.c, null
  br i1 %.not.i42, label %_ZNSt12_Vector_baseIN6Assimp3COB8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.az) #28
  br label %_ZNSt12_Vector_baseIN6Assimp3COB8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp3COB8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit, %bb.m
  store ptr %i.o, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i.i.i38, ptr %i.a, align 8
  %i.ba = getelementptr inbounds nuw [152 x i8], ptr %i.o, i64 %3
  store ptr %i.ba, ptr %i.aw, align 8
  ret void

_ZSt8_DestroyIPN6Assimp3COB8MaterialES2_EvT_S4_RSaIT0_E.exit.thread: ; preds = %bb.f
  %i.bb = extractvalue { ptr, i32 } %i.ag, 0
  %i.bc = tail call ptr @__cxa_begin_catch(ptr %i.bb) #26 ; 0 uses
  %i.bd = load ptr, ptr %i.p, align 8
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(152) %i.p) #26, !inline_history !329
  br label %bb.p

bb.n:                                             ; preds = %bb.j
  %i.bf = extractvalue { ptr, i32 } %i.aq, 0
  %i.bg = tail call ptr @__cxa_begin_catch(ptr %i.bf) #26 ; 0 uses
  %.not4.i.i43 = icmp eq ptr %i.o, %.ptr
  br i1 %.not4.i.i43, label %_ZSt8_DestroyIPN6Assimp3COB8MaterialES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i44

.lr.ph.i.i44:                                     ; preds = %bb.n, %.lr.ph.i.i44
  %.05.i.i45 = phi ptr [ %i.bj, %.lr.ph.i.i44 ], [ %i.o, %bb.n ] ; 4 uses
  %i.bh = load ptr, ptr %.05.i.i45, align 8
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(152) %.05.i.i45) #26, !inline_history !328
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i45, i64 152
  %.not.i.i46 = icmp eq ptr %.05.i.i45, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i46, label %_ZSt8_DestroyIPN6Assimp3COB8MaterialES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i44, !llvm.loop !29

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIN6Assimp3COB8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit49
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

_ZSt8_DestroyIPN6Assimp3COB8MaterialES2_EvT_S4_RSaIT0_E.exit: ; preds = %.lr.ph.i.i44, %bb.n
  %.not.i48 = icmp eq ptr %i.o, null
  br i1 %.not.i48, label %_ZNSt12_Vector_baseIN6Assimp3COB8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit49, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3COB8MaterialES2_EvT_S4_RSaIT0_E.exit.thread, %_ZSt8_DestroyIPN6Assimp3COB8MaterialES2_EvT_S4_RSaIT0_E.exit
  %i.bl = mul nuw nsw i64 %3, 152
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.bl) #28
  br label %_ZNSt12_Vector_baseIN6Assimp3COB8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit49

_ZNSt12_Vector_baseIN6Assimp3COB8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit49: ; preds = %bb.p, %_ZSt8_DestroyIPN6Assimp3COB8MaterialES2_EvT_S4_RSaIT0_E.exit
  invoke void @__cxa_rethrow() #27
          to label %bb.s unwind label %bb.o

bb.q:                                             ; preds = %bb.o
  resume { ptr, i32 } %i.bk

bb.r:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  tail call void @__clang_call_terminate(ptr %i.bn) #30
  unreachable

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIN6Assimp3COB8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit49
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp3COB8MaterialC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp3COB9ChunkInfoE, i64 16), ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp3COB8MaterialE, i64 16), ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8
  %i.g = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.i, ptr %i.a, align 8
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.d, align 8
  %i.l = load i64, ptr %i.a, align 8
  store i64 %i.l, ptr %i.f, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1
  store i8 %i.n, ptr %i.m, align 1
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.o = load i64, ptr %i.a, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.o, ptr %i.p, align 8
  %i.q = load ptr, ptr %i.d, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load float, ptr %i.t, align 8
  store float %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.x = load float, ptr %i.w, align 4
  store float %i.x, ptr %i.v, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aa = load float, ptr %i.z, align 8
  store float %i.aa, ptr %i.y, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ab, ptr noundef nonnull align 4 dereferenceable(36) %i.ac, i64 36, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.af = load ptr, ptr %i.ae, align 8
  store ptr %i.af, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  store ptr %i.ai, ptr %i.ag, align 8
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.ak = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = load i32, ptr %i.aj, align 4
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.aj, align 4
  br label %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.an = atomicrmw volatile add ptr %i.aj, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit

_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8
  store ptr %i.aq, ptr %i.ao, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  store ptr %i.at, ptr %i.ar, align 8
  %.not.i.i.i9 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i9, label %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit11, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  %i.av = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i10 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load i32, ptr %i.au, align 4
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.au, align 4
  br label %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit11

bb.j:                                             ; preds = %bb.h
  %i.ay = atomicrmw volatile add ptr %i.au, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit11

_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit11: ; preds = %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit, %bb.i, %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bb = load ptr, ptr %i.ba, align 8
  store ptr %i.bb, ptr %i.az, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.be = load ptr, ptr %i.bd, align 8            ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8
  %.not.i.i.i12 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i12, label %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit14, label %bb.k

bb.k:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit11
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bg = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i13 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i13, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = load i32, ptr %i.bf, align 4
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bf, align 4
  br label %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit14

bb.m:                                             ; preds = %bb.k
  %i.bj = atomicrmw volatile add ptr %i.bf, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit14

_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit14: ; preds = %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit11, %bb.l, %bb.m
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRKjERA61_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(61) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(61) %3) #26
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(61) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJERKjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %5, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt15_Sp_counted_ptrIPN6Assimp3COB5GroupELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #28, !inline_history !249
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN6Assimp3COB4NodeD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = icmp ult ptr %i.n, %i.p
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIPKN6Assimp3COB4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.r = load ptr, ptr %.06.i.i.i.i, align 8
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 512) #28, !inline_history !249
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.t = icmp ult ptr %.06.i.i.i.i, %i.o
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIPKN6Assimp3COB4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i, !llvm.loop !250

_ZNSt11_Deque_baseIPKN6Assimp3COB4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.j, align 8
  br label %_ZNSt11_Deque_baseIPKN6Assimp3COB4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i

_ZNSt11_Deque_baseIPKN6Assimp3COB4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIPKN6Assimp3COB4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i, %bb.c
  %i.u = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIPKN6Assimp3COB4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i ], [ %i.k, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.w = load i64, ptr %i.v, align 8
  %i.x = shl i64 %i.w, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #28, !inline_history !249
  br label %_ZN6Assimp3COB4NodeD2Ev.exit

_ZN6Assimp3COB4NodeD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt11_Deque_baseIPKN6Assimp3COB4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 216) #28
  br label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp3COB4NodeD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN6Assimp3COB5GroupELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN6Assimp3COB5GroupELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN6Assimp3COB4MeshELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN6Assimp3COB4MeshELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6Assimp3COB4MeshD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %i.b) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 344) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN6Assimp3COB4MeshELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN6Assimp3COB4MeshELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 12                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 768614336404564651
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 768614336404564650, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 12                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.128) #27
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 768614336404564650) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 12
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #29 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, i64 12, i1 false), !alias.scope !343
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 12
  %.not.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !347

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.z = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #28
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %1
  store ptr %i.aa, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ab, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6Assimp3COB4FaceESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #27
  unreachable

_ZNKSt6vectorIN6Assimp3COB4FaceESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %2 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %3 = select i1 %2, i64 288230376151711743, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = shl nuw nsw i64 %3, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #29 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN6Assimp3COB4FaceESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.n, %_ZNKSt6vectorIN6Assimp3COB4FaceESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6Assimp3COB4FaceESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.p = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !351, !noalias !348
  store i64 %i.p, ptr %.012.i.i.i, align 8, !alias.scope !348, !noalias !351
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.s = load <2 x ptr>, ptr %i.r, align 8, !alias.scope !351, !noalias !348
  store <2 x ptr> %i.s, ptr %i.q, align 8, !alias.scope !348, !noalias !351
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !351, !noalias !348
  store ptr %i.v, ptr %i.t, align 8, !alias.scope !348, !noalias !351
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false), !alias.scope !351, !noalias !348
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !88

_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN6Assimp3COB4FaceESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZNKSt6vectorIN6Assimp3COB4FaceESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.x, %.lr.ph.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i16
  %.012.i.i.i17 = phi ptr [ %i.ah, %.lr.ph.i.i.i16 ], [ %i.y, %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  %.0911.i.i.i18 = phi ptr [ %i.ag, %.lr.ph.i.i.i16 ], [ %1, %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.z = load i64, ptr %.0911.i.i.i18, align 8, !alias.scope !356, !noalias !353
  store i64 %i.z, ptr %.012.i.i.i17, align 8, !alias.scope !353, !noalias !356
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8, !alias.scope !356, !noalias !353
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !alias.scope !353, !noalias !356
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !356, !noalias !353
  store ptr %i.af, ptr %i.ad, align 8, !alias.scope !353, !noalias !356
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false), !alias.scope !356, !noalias !353
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 32 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21, label %.lr.ph.i.i.i16, !llvm.loop !88

_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21: ; preds = %.lr.ph.i.i.i16, %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i20 = phi ptr [ %i.y, %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ah, %.lr.ph.i.i.i16 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i22 = icmp eq ptr %i.c, null
  br i1 %.not.i22, label %_ZNSt12_Vector_baseIN6Assimp3COB4FaceESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #28
  br label %_ZNSt12_Vector_baseIN6Assimp3COB4FaceESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp3COB4FaceESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21, %bb.c
  store ptr %i.n, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i20, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %3
  store ptr %i.am, ptr %i.ai, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN6Assimp3COB11VertexIndexEmS2_ET_S4_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.t = add i64 %1, 2305843009213693950
  %i.u = and i64 %i.t, 2305843009213693951        ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.u, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.d
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.y ; 2 uses
  %i.z = load i64, ptr %i.b, align 4
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 4
  store <2 x i64> %broadcast.splat, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !358

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt27__uninitialized_default_n_aIPN6Assimp3COB11VertexIndexEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.p, %bb.d ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ac = load i64, ptr %i.b, align 4
  store i64 %i.ac, ptr %.06.i.i.i.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN6Assimp3COB11VertexIndexEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !359

_ZSt27__uninitialized_default_n_aIPN6Assimp3COB11VertexIndexEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %middle.block ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.i.i.i, ptr %i.a, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.ae = icmp ult i64 %i.n, %1
  br i1 %i.ae, label %bb.f, label %_ZNKSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.128) #27
  unreachable

_ZNKSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.af = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.af, i64 1152921504606846975) ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #29 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.f ; 5 uses
  store i64 0, ptr %i.aj, align 4
  %i.ak = add nsw i64 %1, -1                      ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZSt27__uninitialized_default_n_aIPN6Assimp3COB11VertexIndexEmS2_ET_S4_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE12_M_check_lenEmPKc.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %.idx.i.i.i.i.i30 = shl nuw nsw i64 %i.ak, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i.i.i.i30
  %i.ao = add i64 %1, 2305843009213693950
  %i.ap = and i64 %i.ao, 2305843009213693951      ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check45 = icmp samesign ult i64 %i.ap, 3
  br i1 %min.iters.check45, label %.lr.ph.i.i.i.i.i.i.i31.preheader, label %vector.ph46

vector.ph46:                                      ; preds = %bb.g
  %n.vec48 = and i64 %i.aq, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec48, 3
  %i.as = getelementptr i8, ptr %i.am, i64 %i.ar
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph46
  %index50 = phi i64 [ 0, %vector.ph46 ], [ %index.next54, %vector.body49 ] ; 2 uses
  %i.at = shl i64 %index50, 3
  %next.gep51 = getelementptr i8, ptr %i.am, i64 %i.at ; 2 uses
  %i.au = load i64, ptr %i.aj, align 4
  %broadcast.splatinsert52 = insertelement <2 x i64> poison, i64 %i.au, i64 0
  %broadcast.splat53 = shufflevector <2 x i64> %broadcast.splatinsert52, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %broadcast.splat53, ptr %next.gep51, align 4
  store <2 x i64> %broadcast.splat53, ptr %i.av, align 4
  %index.next54 = add nuw i64 %index50, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next54, %n.vec48
  br i1 %i.aw, label %middle.block55, label %vector.body49, !llvm.loop !360

middle.block55:                                   ; preds = %vector.body49
  %cmp.n56 = icmp eq i64 %i.aq, %n.vec48
  br i1 %cmp.n56, label %_ZSt27__uninitialized_default_n_aIPN6Assimp3COB11VertexIndexEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31.preheader

.lr.ph.i.i.i.i.i.i.i31.preheader:                 ; preds = %bb.g, %middle.block55
  %.06.i.i.i.i.i.i.i32.ph = phi ptr [ %i.am, %bb.g ], [ %i.as, %middle.block55 ]
  br label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31.preheader, %.lr.ph.i.i.i.i.i.i.i31
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i31 ], [ %.06.i.i.i.i.i.i.i32.ph, %.lr.ph.i.i.i.i.i.i.i31.preheader ] ; 2 uses
  %i.ax = load i64, ptr %i.aj, align 4
  store i64 %i.ax, ptr %.06.i.i.i.i.i.i.i32, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %i.ay, %i.an
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN6Assimp3COB11VertexIndexEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !361

_ZSt27__uninitialized_default_n_aIPN6Assimp3COB11VertexIndexEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31, %middle.block55, %_ZNKSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE12_M_check_lenEmPKc.exit
  %i.az = icmp sgt i64 %i.f, 0
  br i1 %i.az, label %bb.h, label %_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp3COB11VertexIndexEmS2_ET_S4_T0_RSaIT1_E.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp3COB11VertexIndexEmS2_ET_S4_T0_RSaIT1_E.exit35, %bb.h
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN6Assimp3COB11VertexIndexESaIS2_EE13_M_deallocateEPS2_m.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.ba = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ba) #28
  br label %_ZNSt12_Vector_baseIN6Assimp3COB11VertexIndexESaIS2_EE13_M_deallocateEPS2_m.exit38

_ZNSt12_Vector_baseIN6Assimp3COB11VertexIndexESaIS2_EE13_M_deallocateEPS2_m.exit38: ; preds = %_ZNSt6vectorIN6Assimp3COB11VertexIndexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.i
  store ptr %i.ai, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %1
  store ptr %i.bb, ptr %i.a, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.bc, ptr %i.h, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp3COB11VertexIndexEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN6Assimp3COB11VertexIndexESaIS2_EE13_M_deallocateEPS2_m.exit38, %bb.a
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN6Assimp3COB7TextureESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN6Assimp3COB7TextureESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_2
