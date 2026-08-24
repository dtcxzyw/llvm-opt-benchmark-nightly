Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormatIridasItx?download=true
inline.NumInlined: 840
inline.NumDeleted: 355
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  br i1 %i.jg, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.15) #25
          to label %.noexc160 unwind label %bb.av

.noexc160:                                        ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.jh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.je) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i64 %i.jh, ptr %i.e, align 8, !tbaa !37
  %i.ji = icmp ugt i64 %i.jh, 15
  br i1 %i.ji, label %.noexc.i159, label %._crit_edge.i.i158

.noexc.i159:                                      ; preds = %bb.ao
  %i.jj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc161 unwind label %bb.av ; 2 uses

.noexc161:                                        ; preds = %.noexc.i159
  store ptr %i.jj, ptr %16, align 8, !tbaa !27
  %i.jk = load i64, ptr %i.e, align 8, !tbaa !37
  store i64 %i.jk, ptr %i.jf, align 8, !tbaa !17
  br label %._crit_edge.i.i158

._crit_edge.i.i158:                               ; preds = %.noexc161, %bb.ao
  %i.jl = phi ptr [ %i.jj, %.noexc161 ], [ %i.jf, %bb.ao ] ; 2 uses
  switch i64 %i.jh, label %bb.aq [
    i64 1, label %bb.ap
    i64 0, label %bb.ar
  ]

bb.ap:                                            ; preds = %._crit_edge.i.i158
  %i.jm = load i8, ptr %i.je, align 1, !tbaa !17
  store i8 %i.jm, ptr %i.jl, align 1, !tbaa !17
  br label %bb.ar

bb.aq:                                            ; preds = %._crit_edge.i.i158
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jl, ptr nonnull align 1 %i.je, i64 %i.jh, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %._crit_edge.i.i158
  %i.jn = load i64, ptr %i.e, align 8, !tbaa !37  ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.jn, ptr %i.jo, align 8, !tbaa !14
  %i.jp = load ptr, ptr %16, align 8, !tbaa !27
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jn
  store i8 0, ptr %i.jq, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.am, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.unreachable324 unwind label %bb.aw

.unreachable324:                                  ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

bb.at:                                            ; preds = %.noexc149
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.ak
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

bb.av:                                            ; preds = %.noexc.i159, %bb.an
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

bb.aw:                                            ; preds = %bb.ar
  %i.jv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jw = load ptr, ptr %16, align 8, !tbaa !27   ; 2 uses
  %i.jx = icmp eq ptr %i.jw, %i.jf
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.aw
  %i.jy = load i64, ptr %i.jf, align 8, !tbaa !17
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.jz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175, %bb.av
  %.pn78 = phi { ptr, i32 } [ %i.ju, %bb.av ], [ %i.jv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175 ], [ %i.jv, %bb.aw ] ; 2 uses
  %i.ka = load ptr, ptr %17, align 8, !tbaa !27   ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.is
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177
  %i.kc = load i64, ptr %i.is, align 8, !tbaa !17
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.kd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178, %bb.au
  %.pn78.pn = phi { ptr, i32 } [ %i.jt, %bb.au ], [ %.pn78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178 ], [ %.pn78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ] ; 2 uses
  %i.ke = load ptr, ptr %18, align 8, !tbaa !27   ; 2 uses
  %i.kf = icmp eq ptr %i.ke, %i.id
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180
  %i.kg = load i64, ptr %i.id, align 8, !tbaa !17
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.kh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181, %bb.at
  %.pn78.pn.pn = phi { ptr, i32 } [ %i.js, %bb.at ], [ %.pn78.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181 ], [ %.pn78.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180 ] ; 2 uses
  %i.ki = load ptr, ptr %19, align 8, !tbaa !27   ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.hs
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
  %i.kk = load i64, ptr %i.hs, align 8, !tbaa !17
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.kl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184, %bb.as
  %.pn78.pn.pn.pn = phi { ptr, i32 } [ %i.jr, %bb.as ], [ %.pn78.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184 ], [ %.pn78.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.ba

bb.ax:                                            ; preds = %bb.ah
  %i.km = mul nuw nsw i32 %i.hq, 3
  %i.kn = mul nuw nsw i32 %i.km, %i.hq
  %i.ko = mul nuw nsw i32 %i.kn, %i.hq
  %i.kp = zext nneg i32 %i.ko to i64              ; 3 uses
  %i.kq = load ptr, ptr %i.ak, align 8, !tbaa !72
  %i.kr = ptrtoint ptr %i.kq to i64
  %i.ks = ptrtoint ptr %.ph to i64                ; 2 uses
  %i.kt = sub i64 %i.kr, %i.ks                    ; 2 uses
  %i.ku = ashr exact i64 %i.kt, 2
  %i.kv = icmp ult i64 %i.ku, %i.kp
  br i1 %i.kv, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %bb.ax
  %i.kw = ptrtoint ptr %.ph718 to i64
  %i.kx = sub i64 %i.kw, %i.ks                    ; 3 uses
  %i.ky = shl nuw nsw i64 %i.kp, 2
  %i.kz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ky) #22
          to label %.noexc188 unwind label %.loopexit327 ; 5 uses

.noexc188:                                        ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.la = icmp sgt i64 %i.kx, 0
  br i1 %i.la, label %bb.ay, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

bb.ay:                                            ; preds = %.noexc188
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kz, ptr align 4 %.ph, i64 %i.kx, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i: ; preds = %bb.ay, %.noexc188
  %.not.i8.i = icmp eq ptr %.ph, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.ph, i64 noundef %i.kt) #24
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i: ; preds = %bb.az, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  store ptr %i.kz, ptr %5, align 8, !tbaa !75
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.kx ; 2 uses
  store ptr %i.lb, ptr %i.aj, align 8, !tbaa !76
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.kp
  store ptr %i.lc, ptr %i.ak, align 8, !tbaa !72
  br label %_ZNSt6vectorIfSaIfEE7reserveEm.exit

_ZNSt6vectorIfSaIfEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i, %bb.ax
  %i.ld = phi ptr [ %i.kz, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i ], [ %.ph, %bb.ax ]
  %i.le = phi ptr [ %i.lb, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i ], [ %.ph718, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  br label %.outer.outer.outer, !llvm.loop !38

bb.ba:                                            ; preds = %.loopexit327, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %.pn83 = phi { ptr, i32 } [ %.pn76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ], [ %.pn78.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186 ], [ %lpad.loopexit329, %.loopexit327 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  br label %bb.cq

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  br i1 %.024.ph, label %bb.bc, label %.outer, !llvm.loop !38

bb.bc:                                            ; preds = %bb.bb
  %i.lf = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_519StringVecToFloatVecERSt6vectorIfSaIfEERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.bd unwind label %.loopexit.split-lp333

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.lf, label %bb.be, label %.noexc.i190

bb.be:                                            ; preds = %bb.bd
  %i.lg = load ptr, ptr %i.ai, align 8, !tbaa !76
  %i.lh = load ptr, ptr %8, align 8, !tbaa !75    ; 5 uses
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = sub i64 %i.li, %i.lj
  %.not70 = icmp eq i64 %i.lk, 12
  br i1 %.not70, label %bb.bh, label %.noexc.i190

.noexc.i190:                                      ; preds = %bb.be, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.ll = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  store ptr %i.ll, ptr %20, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 34, ptr %i.d, align 8, !tbaa !37
  %i.lm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc191 unwind label %bb.bf ; 3 uses

.noexc191:                                        ; preds = %.noexc.i190
  store ptr %i.lm, ptr %20, align 8, !tbaa !27
  %i.ln = load i64, ptr %i.d, align 8, !tbaa !37  ; 3 uses
  store i64 %i.ln, ptr %i.ll, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.lm, ptr noundef nonnull align 1 dereferenceable(34) @.str.8, i64 34, i1 false)
  %i.lo = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.ln, ptr %i.lo, align 8, !tbaa !14
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.ln
  store i8 0, ptr %i.lp, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.am, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.unreachable321 unwind label %bb.bg

.unreachable321:                                  ; preds = %.noexc191
  unreachable

bb.bf:                                            ; preds = %.noexc.i190
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

bb.bg:                                            ; preds = %.noexc191
  %i.lr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ls = load ptr, ptr %20, align 8, !tbaa !27   ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.ll
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %bb.bg
  %i.lu = load i64, ptr %i.ll, align 8, !tbaa !17
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196, %bb.bf
  %.pn71 = phi { ptr, i32 } [ %i.lq, %bb.bf ], [ %i.lr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196 ], [ %i.lr, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.cq

bb.bh:                                            ; preds = %bb.be
  %i.lw = ptrtoint ptr %.ph718 to i64
  %i.lx = ptrtoint ptr %.ph717 to i64
  %i.ly = sub i64 %i.lw, %i.lx                    ; 5 uses
  %i.lz = icmp ugt i64 %i.ly, 25760268
  br i1 %i.lz, label %.noexc.i200, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.bh
  %i.ma = load ptr, ptr %i.ak, align 8, !tbaa !72 ; 2 uses
  %.not.i = icmp eq ptr %.ph718, %i.ma
  br i1 %.not.i, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i, label %bb.bk

.noexc.i200:                                      ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.mb = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  store ptr %i.mb, ptr %21, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 24, ptr %i.c, align 8, !tbaa !37
  %i.mc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc201 unwind label %bb.bi ; 2 uses

.noexc201:                                        ; preds = %.noexc.i200
  store ptr %i.mc, ptr %21, align 8, !tbaa !27
  %i.md = load i64, ptr %i.c, align 8, !tbaa !37  ; 3 uses
  store i64 %i.md, ptr %i.mb, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.mc, ptr noundef nonnull align 1 dereferenceable(24) @.str.9, i64 24, i1 false)
  %i.me = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.md, ptr %i.me, align 8, !tbaa !14
  %i.mf = load ptr, ptr %21, align 8, !tbaa !27
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.md
  store i8 0, ptr %i.mg, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.am, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.unreachable322 unwind label %bb.bj

.unreachable322:                                  ; preds = %.noexc201
  unreachable

bb.bi:                                            ; preds = %.noexc.i200
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

bb.bj:                                            ; preds = %.noexc201
  %i.mi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mj = load ptr, ptr %21, align 8, !tbaa !27   ; 2 uses
  %i.mk = icmp eq ptr %i.mj, %i.mb
  br i1 %i.mk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %bb.bj
  %i.ml = load i64, ptr %i.mb, align 8, !tbaa !17
  %i.mm = add i64 %i.ml, 1
  call void @_ZdlPvm(ptr noundef %i.mj, i64 noundef %i.mm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206, %bb.bi
  %.pn73 = phi { ptr, i32 } [ %i.mh, %bb.bi ], [ %i.mi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206 ], [ %i.mi, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %bb.cq

bb.bk:                                            ; preds = %.preheader.preheader
  %i.mn = load float, ptr %i.lh, align 4, !tbaa !77
  store float %i.mn, ptr %.ph718, align 4, !tbaa !77
  %i.mo = getelementptr inbounds nuw i8, ptr %.ph718, i64 4 ; 2 uses
  store ptr %i.mo, ptr %i.aj, align 8, !tbaa !76
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.bl:                                            ; preds = %bb.bt, %bb.bp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.noexc210 unwind label %.loopexit.split-lp

.noexc210:                                        ; preds = %bb.bl
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %.preheader.preheader
  %i.mp = lshr exact i64 %i.ly, 2                 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.mp, i64 1)
  %i.mq = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.mp ; 2 uses
  %i.mr = shl nuw nsw i64 %i.mq, 2
  %i.ms = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mr) #22
          to label %.noexc211 unwind label %.loopexit326 ; 6 uses

.noexc211:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.ly ; 2 uses
  %i.mu = load float, ptr %i.lh, align 4, !tbaa !77
  store float %i.mu, ptr %i.mt, align 4, !tbaa !77
  %.not544 = icmp eq ptr %.ph718, %.ph717
  br i1 %.not544, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i, label %bb.bm

bb.bm:                                            ; preds = %.noexc211
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ms, ptr align 4 %.ph717, i64 %i.ly, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.bm, %.noexc211
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %.ph717, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.ph717, i64 noundef %i.ly) #24
  %.pre439.pre = load ptr, ptr %8, align 8, !tbaa !75
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.bn, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  %.pre439 = phi ptr [ %.pre439.pre, %bb.bn ], [ %i.lh, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i ]
  store ptr %i.ms, ptr %5, align 8, !tbaa !75
  store ptr %i.mv, ptr %i.aj, align 8, !tbaa !76
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.mq ; 2 uses
  store ptr %i.mw, ptr %i.ak, align 8, !tbaa !72
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.bk
  %i.mx = phi ptr [ %i.ms, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.ph, %bb.bk ]
  %i.my = phi ptr [ %i.mw, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.ma, %bb.bk ] ; 3 uses
  %i.mz = phi ptr [ %i.mv, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.mo, %bb.bk ] ; 3 uses
  %i.na = phi ptr [ %.pre439, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.lh, %bb.bk ] ; 3 uses
  %i.nb = phi ptr [ %i.ms, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.ph717, %bb.bk ] ; 5 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 4 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.mz, %i.my
  br i1 %.not.i.1, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !77
  store float %i.nd, ptr %i.mz, align 4, !tbaa !77
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mz, i64 4 ; 2 uses
  store ptr %i.ne, ptr %i.aj, align 8, !tbaa !76
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.1

bb.bp:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.nf = ptrtoint ptr %i.my to i64
  %i.ng = ptrtoint ptr %i.nb to i64
  %i.nh = sub i64 %i.nf, %i.ng                    ; 6 uses
  %i.ni = icmp eq i64 %i.nh, 9223372036854775804
  br i1 %i.ni, label %bb.bl, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.1

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.1: ; preds = %bb.bp
  %i.nj = ashr exact i64 %i.nh, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.1 = call i64 @llvm.umax.i64(i64 %i.nj, i64 1)
  %i.nk = add nsw i64 %.sroa.speculated.i.i.i.1, %i.nj ; 2 uses
  %i.nl = icmp ult i64 %i.nk, %i.nj
  %i.nm = call i64 @llvm.umin.i64(i64 %i.nk, i64 2305843009213693951)
  %i.nn = select i1 %i.nl, i64 2305843009213693951, i64 %i.nm ; 3 uses
  %.not.i.i.i209.1 = icmp ne i64 %i.nn, 0
  call void @llvm.assume(i1 %.not.i.i.i209.1)
  %i.no = shl nuw nsw i64 %i.nn, 2
  %i.np = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.no) #22
          to label %.noexc211.1 unwind label %.loopexit326 ; 6 uses

.noexc211.1:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.1
  %i.nq = getelementptr inbounds i8, ptr %i.np, i64 %i.nh ; 2 uses
  %i.nr = load float, ptr %i.nc, align 4, !tbaa !77
  store float %i.nr, ptr %i.nq, align 4, !tbaa !77
  %i.ns = icmp sgt i64 %i.nh, 0
  br i1 %i.ns, label %bb.bq, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.1

bb.bq:                                            ; preds = %.noexc211.1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.np, ptr align 4 %i.nb, i64 %i.nh, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.1

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.1: ; preds = %bb.bq, %.noexc211.1
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 4 ; 2 uses
  %.not.i17.i.i.1 = icmp eq ptr %i.nb, null
  br i1 %.not.i17.i.i.1, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.1, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.1
  call void @_ZdlPvm(ptr noundef nonnull %i.nb, i64 noundef %i.nh) #24
  %.pre440.pre = load ptr, ptr %8, align 8, !tbaa !75
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.1

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.1: ; preds = %bb.br, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.1
  %.pre440 = phi ptr [ %.pre440.pre, %bb.br ], [ %i.na, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.1 ]
  store ptr %i.np, ptr %5, align 8, !tbaa !75
  store ptr %i.nt, ptr %i.aj, align 8, !tbaa !76
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %i.nn ; 2 uses
  store ptr %i.nu, ptr %i.ak, align 8, !tbaa !72
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.1

_ZNSt6vectorIfSaIfEE9push_backERKf.exit.1:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.1, %bb.bo
  %i.nv = phi ptr [ %i.np, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.1 ], [ %i.mx, %bb.bo ]
  %i.nw = phi ptr [ %i.nu, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.1 ], [ %i.my, %bb.bo ] ; 2 uses
  %i.nx = phi ptr [ %i.nt, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.1 ], [ %i.ne, %bb.bo ] ; 3 uses
  %i.ny = phi ptr [ %.pre440, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.1 ], [ %i.na, %bb.bo ]
  %i.nz = phi ptr [ %i.np, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.1 ], [ %i.nb, %bb.bo ] ; 5 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 8 ; 2 uses
  %.not.i.2 = icmp eq ptr %i.nx, %i.nw
  br i1 %.not.i.2, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.1
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !77
  store float %i.ob, ptr %i.nx, align 4, !tbaa !77
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nx, i64 4 ; 2 uses
  store ptr %i.oc, ptr %i.aj, align 8, !tbaa !76
  br label %.outer.outer.backedge

bb.bt:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.1
  %i.od = ptrtoint ptr %i.nw to i64
  %i.oe = ptrtoint ptr %i.nz to i64
  %i.of = sub i64 %i.od, %i.oe                    ; 6 uses
  %i.og = icmp eq i64 %i.of, 9223372036854775804
  br i1 %i.og, label %bb.bl, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.2

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.2: ; preds = %bb.bt
  %i.oh = ashr exact i64 %i.of, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.2 = call i64 @llvm.umax.i64(i64 %i.oh, i64 1)
  %i.oi = add nsw i64 %.sroa.speculated.i.i.i.2, %i.oh ; 2 uses
  %i.oj = icmp ult i64 %i.oi, %i.oh
  %i.ok = call i64 @llvm.umin.i64(i64 %i.oi, i64 2305843009213693951)
  %i.ol = select i1 %i.oj, i64 2305843009213693951, i64 %i.ok ; 3 uses
  %.not.i.i.i209.2 = icmp ne i64 %i.ol, 0
  call void @llvm.assume(i1 %.not.i.i.i209.2)
  %i.om = shl nuw nsw i64 %i.ol, 2
  %i.on = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.om) #22
          to label %.noexc211.2 unwind label %.loopexit326 ; 6 uses

.noexc211.2:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.2
  %i.oo = getelementptr inbounds i8, ptr %i.on, i64 %i.of ; 2 uses
  %i.op = load float, ptr %i.oa, align 4, !tbaa !77
  store float %i.op, ptr %i.oo, align 4, !tbaa !77
  %i.oq = icmp sgt i64 %i.of, 0
  br i1 %i.oq, label %bb.bu, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.2

bb.bu:                                            ; preds = %.noexc211.2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.on, ptr align 4 %i.nz, i64 %i.of, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.2

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.2: ; preds = %bb.bu, %.noexc211.2
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 4 ; 2 uses
  %.not.i17.i.i.2 = icmp eq ptr %i.nz, null
  br i1 %.not.i17.i.i.2, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.2, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.2
  call void @_ZdlPvm(ptr noundef nonnull %i.nz, i64 noundef %i.of) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.2

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.2: ; preds = %bb.bv, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.2
  store ptr %i.on, ptr %5, align 8, !tbaa !75
  store ptr %i.or, ptr %i.aj, align 8, !tbaa !76
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.ol
  store ptr %i.os, ptr %i.ak, align 8, !tbaa !72
  br label %.outer.outer.backedge

.outer.outer.backedge:                            ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.2, %bb.bs
  %.ph.be = phi ptr [ %i.nv, %bb.bs ], [ %i.on, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.2 ]
  %.ph717.be = phi ptr [ %i.nz, %bb.bs ], [ %i.on, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.2 ]
  %.ph718.be = phi ptr [ %i.oc, %bb.bs ], [ %i.or, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.2 ]
  br label %.outer.outer, !llvm.loop !38

.loopexit326:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.2, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.1, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

.loopexit.split-lp:                               ; preds = %bb.bl
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.bw:                                            ; preds = %bb.f
  %i.ot = load ptr, ptr %8, align 8, !tbaa !75    ; 3 uses
  %.not.i.i.i212 = icmp eq ptr %i.ot, null
  br i1 %.not.i.i.i212, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ou = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !72
  %i.ow = ptrtoint ptr %i.ov to i64
  %i.ox = ptrtoint ptr %i.ot to i64
  %i.oy = sub i64 %i.ow, %i.ox
  call void @_ZdlPvm(ptr noundef nonnull %i.ot, i64 noundef %i.oy) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.oz = load ptr, ptr %7, align 16, !tbaa !49   ; 3 uses
  %i.pa = load ptr, ptr %i.aa, align 8, !tbaa !52 ; 2 uses
  %.not4.i.i.i213 = icmp eq ptr %i.oz, %i.pa
  br i1 %.not4.i.i.i213, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i221, label %.lr.ph.i.i.i214

.lr.ph.i.i.i214:                                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i217
  %.05.i.i.i215 = phi ptr [ %i.pg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i217 ], [ %i.oz, %_ZNSt6vectorIfSaIfEED2Ev.exit ] ; 3 uses
  %i.pb = load ptr, ptr %.05.i.i.i215, align 8, !tbaa !27 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.05.i.i.i215, i64 16 ; 2 uses
  %i.pd = icmp eq ptr %i.pb, %i.pc
  br i1 %i.pd, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i217, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i216: ; preds = %.lr.ph.i.i.i214
  %i.pe = load i64, ptr %i.pc, align 8, !tbaa !17
  %i.pf = add i64 %i.pe, 1
  call void @_ZdlPvm(ptr noundef %i.pb, i64 noundef %i.pf) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i217

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i217: ; preds = %.lr.ph.i.i.i214, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i216
  %i.pg = getelementptr inbounds nuw i8, ptr %.05.i.i.i215, i64 32 ; 2 uses
  %.not.i.i.i218 = icmp eq ptr %i.pg, %i.pa
  br i1 %.not.i.i.i218, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i219, label %.lr.ph.i.i.i214, !llvm.loop !55

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i219: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i217
  %.pr.i220 = load ptr, ptr %7, align 16, !tbaa !49
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i221

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i221: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i219, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.ph = phi ptr [ %.pr.i220, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i219 ], [ %i.oz, %_ZNSt6vectorIfSaIfEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i222 = icmp eq ptr %i.ph, null
  br i1 %.not.i.i1.i222, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit224, label %bb.by

bb.by:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i221
  %i.pi = load ptr, ptr %i.ab, align 16, !tbaa !53
  %i.pj = ptrtoint ptr %i.pi to i64
  %i.pk = ptrtoint ptr %i.ph to i64
  %i.pl = sub i64 %i.pj, %i.pk
  call void @_ZdlPvm(ptr noundef nonnull %i.ph, i64 noundef %i.pl) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit224

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit224: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i221, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.pm = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.pn = icmp eq ptr %i.pm, %i.s
  br i1 %i.pn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit224
  %i.po = load i64, ptr %i.s, align 8, !tbaa !17
  %i.pp = add i64 %i.po, 1
  call void @_ZdlPvm(ptr noundef %i.pm, i64 noundef %i.pp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit224, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.pq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.bz unwind label %bb.cs     ; 7 uses

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE, i64 16), ptr %i.pq, align 8, !tbaa !8
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pr, i8 0, i64 16, i1 false)
  %i.ps = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.ce unwind label %bb.ca     ; 6 uses

bb.ca:                                            ; preds = %bb.bz
  %i.pt = landingpad { ptr, i32 }
          catch ptr null
  %i.pu = extractvalue { ptr, i32 } %i.pt, 0
  %i.pv = call ptr @__cxa_begin_catch(ptr %i.pu) #23 ; 0 uses
  %i.pw = load ptr, ptr %i.pq, align 8, !tbaa !8
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %i.py = load ptr, ptr %i.px, align 8
  call void %i.py(ptr noundef nonnull align 8 dereferenceable(24) %i.pq) #23, !inline_history !79
  invoke void @__cxa_rethrow() #25
          to label %bb.cd unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.pz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.qa = landingpad { ptr, i32 }
          catch ptr null
  %i.qb = extractvalue { ptr, i32 } %i.qa, 0
  call void @__clang_call_terminate(ptr %i.qb) #26
  unreachable

bb.cd:                                            ; preds = %bb.ca
  unreachable

bb.ce:                                            ; preds = %bb.bz
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  store i32 1, ptr %i.qc, align 8, !tbaa !80
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ps, i64 12
  store i32 1, ptr %i.qd, align 4, !tbaa !82
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ps, align 8, !tbaa !8
  %i.qe = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  store ptr %i.pq, ptr %i.qe, align 8, !tbaa !83
  br i1 %.024.ph, label %bb.cf, label %.noexc.i279

end_hunk_0
