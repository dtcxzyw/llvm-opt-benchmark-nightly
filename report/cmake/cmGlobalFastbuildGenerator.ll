Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmGlobalFastbuildGenerator?download=true
inline.NumInlined: 7702
inline.NumDeleted: 2036
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN26cmGlobalFastbuildGenerator10WriteUnityERK18FastbuildUnityNode:._crit_edge.i.i
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.is = load ptr, ptr %16, align 8, !tbaa !40   ; 2 uses
  %i.it = icmp eq ptr %i.is, %i.cw
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207
  %i.iu = load i64, ptr %i.cw, align 8, !tbaa !41
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.ae

bb.x:                                             ; preds = %.noexc.i135
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

bb.y:                                             ; preds = %.noexc136
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i147, %bb.y
  %.pn45 = phi { ptr, i32 } [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i147 ], [ %i.ix, %bb.y ] ; 2 uses
  %i.iy = load ptr, ptr %23, align 8, !tbaa !40   ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.fh
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211: ; preds = %bb.z
  %i.ja = load i64, ptr %i.fh, align 8, !tbaa !41
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.jc = load ptr, ptr %22, align 8, !tbaa !40   ; 2 uses
  %i.jd = icmp eq ptr %i.jc, %i.fe
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213
  %i.je = load i64, ptr %i.fe, align 8, !tbaa !41
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.jg = load ptr, ptr %20, align 8, !tbaa !40   ; 2 uses
  %i.jh = icmp eq ptr %i.jg, %i.ey
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216
  %i.ji = load i64, ptr %i.ey, align 8, !tbaa !41
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217, %bb.x
  %.pn45.pn.pn.pn = phi { ptr, i32 } [ %i.iw, %bb.x ], [ %.pn45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217 ], [ %.pn45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.ae

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %i.jl = load i8, ptr %i.jk, align 8, !tbaa !285, !range !296, !noundef !297
  %i.jm = trunc nuw i8 %i.jl to i1
  br i1 %i.jm, label %.noexc.i221, label %_ZN26cmGlobalFastbuildGenerator6IndentEi.exit250

.noexc.i221:                                      ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  %i.jn = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.jn, ptr %24, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 29, ptr %i.a, align 8, !tbaa !38
  %i.jo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc222 unwind label %bb.ad ; 2 uses

.noexc222:                                        ; preds = %.noexc.i221
  store ptr %i.jo, ptr %24, align 8, !tbaa !40
  %i.jp = load i64, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  store i64 %i.jp, ptr %i.jn, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.jo, ptr noundef nonnull align 1 dereferenceable(29) @.str.133, i64 29, i1 false)
  %i.jq = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %i.jp, ptr %i.jq, align 8, !tbaa !42
  %i.jr = load ptr, ptr %24, align 8, !tbaa !40
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.jp
  store i8 0, ptr %i.js, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  %i.jt = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.jt, ptr %25, align 8, !tbaa !36
  store i32 1702195828, ptr %i.jt, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 4, ptr %i.ju, align 8, !tbaa !42
  %i.jv = getelementptr inbounds nuw i8, ptr %25, i64 20
  store i8 0, ptr %i.jv, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.jw, ptr %2, align 8, !tbaa !36
  store i8 61, ptr %i.jw, align 8, !tbaa !41
  %i.jx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1, ptr %i.jx, align 8, !tbaa !42
  %i.jy = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 0, ptr %i.jy, align 1, !tbaa !41
  invoke void @_ZN26cmGlobalFastbuildGenerator13WriteVariableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_i(ptr noundef nonnull readonly align 8 dereferenceable(2808) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %24, ptr noundef nonnull readonly align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %.noexc222
  %i.jz = load ptr, ptr %2, align 8, !tbaa !40    ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.jw
  br i1 %i.ka, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i231: ; preds = %bb.ab
  %i.kb = load i64, ptr %i.jw, align 8, !tbaa !41
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kc) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i232

bb.ac:                                            ; preds = %.noexc222
  %i.kd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ke = load ptr, ptr %2, align 8, !tbaa !40    ; 2 uses
  %i.kf = icmp eq ptr %i.ke, %i.jw
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i228: ; preds = %bb.ac
  %i.kg = load i64, ptr %i.jw, align 8, !tbaa !41
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.kh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i229: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ki = load ptr, ptr %25, align 8, !tbaa !40   ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.jt
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i232: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i231
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.kk = load ptr, ptr %25, align 8, !tbaa !40   ; 2 uses
  %i.kl = icmp eq ptr %i.kk, %i.jt
  br i1 %i.kl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i232
  %i.km = load i64, ptr %i.jt, align 8, !tbaa !41
  %i.kn = add i64 %i.km, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.kn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  %i.ko = load ptr, ptr %24, align 8, !tbaa !40   ; 2 uses
  %i.kp = icmp eq ptr %i.ko, %i.jn
  br i1 %i.kp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  %i.kq = load i64, ptr %i.jn, align 8, !tbaa !41
  %i.kr = add i64 %i.kq, 1
  call void @_ZdlPvm(ptr noundef %i.ko, i64 noundef %i.kr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %_ZN26cmGlobalFastbuildGenerator6IndentEi.exit250

bb.ad:                                            ; preds = %.noexc.i221
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i229
  %i.kt = load i64, ptr %i.jt, align 8, !tbaa !41
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.ku) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i229, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  %i.kv = load ptr, ptr %24, align 8, !tbaa !40   ; 2 uses
  %i.kw = icmp eq ptr %i.kv, %i.jn
  br i1 %i.kw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244
  %i.kx = load i64, ptr %i.jn, align 8, !tbaa !41
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.ky) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245, %bb.ad
  %.pn50.pn = phi { ptr, i32 } [ %i.ks, %bb.ad ], [ %i.kd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %i.kd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.ae

_ZN26cmGlobalFastbuildGenerator6IndentEi.exit250: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, %bb.aa
  %i.kz = load ptr, ptr %i.w, align 8, !tbaa !117
  %i.la = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kz, ptr noundef nonnull @.str.93, i64 noundef 2) ; 0 uses
  %i.lb = load ptr, ptr %i.w, align 8, !tbaa !117
  %i.lc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lb, ptr noundef nonnull @.str.90, i64 noundef 2) ; 0 uses
  ret void

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
  %.pn50.pn.pn = phi { ptr, i32 } [ %.pn50.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ], [ %.pn45.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %.pn40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ %.pn36.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ], [ %.pn32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ]
  resume { ptr, i32 } %.pn50.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN26cmGlobalFastbuildGenerator15WriteObjectListERK23FastbuildObjectListNodeb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2808) %0, ptr noundef nonnull align 8 dereferenceable(568) %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %24 = alloca %"class.std::vector.51", align 8   ; 10 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %49 = alloca %"class.std::vector.51", align 8   ; 10 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %53 = alloca %"class.std::vector.51", align 8   ; 10 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.i = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.i, ptr %18, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.i, ptr noundef nonnull align 1 dereferenceable(10) @.str.194, i64 10, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 10, ptr %i.j, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %18, i64 26
  store i8 0, ptr %i.k, align 2, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.l = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.l, ptr %20, align 8, !tbaa !36
  store i8 39, ptr %i.l, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 1, ptr %i.m, align 8, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %20, i64 17
  store i8 0, ptr %i.n, align 1, !tbaa !41
  invoke void @_ZN26cmGlobalFastbuildGenerator5QuoteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.a unwind label %bb.e

bb.a:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZN26cmGlobalFastbuildGenerator12WriteCommandERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_i(ptr noundef nonnull align 8 dereferenceable(2808) %0, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %19, i32 noundef 1)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %19, align 8, !tbaa !40    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.r = load i64, ptr %i.p, align 8, !tbaa !41
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = load ptr, ptr %20, align 8, !tbaa !40    ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.l
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = load i64, ptr %i.l, align 8, !tbaa !41
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.x = load ptr, ptr %18, align 8, !tbaa !40    ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.i
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  %i.z = load i64, ptr %i.i, align 8, !tbaa !41
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2376 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !117
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.93, i64 noundef 2) ; 0 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !117
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.82, i64 noundef 2) ; 0 uses
  br i1 %2, label %bb.h, label %.noexc.i139

.noexc.i139:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.ag = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.ag, ptr %21, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  store i64 17, ptr %i.h, align 8, !tbaa !38
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc140 unwind label %bb.g  ; 2 uses

.noexc140:                                        ; preds = %.noexc.i139
  store ptr %i.ah, ptr %21, align 8, !tbaa !40
  %i.ai = load i64, ptr %i.h, align 8, !tbaa !38  ; 3 uses
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ah, ptr noundef nonnull align 1 dereferenceable(17) @.str.129, i64 17, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !42
  %i.ak = load ptr, ptr %21, align 8, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %i.am = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.am, ptr %22, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.am, ptr noundef nonnull align 1 dereferenceable(5) @.str.128, i64 5, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 5, ptr %i.an, align 8, !tbaa !42
  %i.ao = getelementptr inbounds nuw i8, ptr %22, i64 21
  store i8 0, ptr %i.ao, align 1, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.ap, ptr %17, align 8, !tbaa !36
  store i8 61, ptr %i.ap, align 8, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 1, ptr %i.aq, align 8, !tbaa !42
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 17
  store i8 0, ptr %i.ar, align 1, !tbaa !41
  invoke void @_ZN26cmGlobalFastbuildGenerator13WriteVariableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_i(ptr noundef nonnull readonly align 8 dereferenceable(2808) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %21, ptr noundef nonnull readonly align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc140
  %i.as = load ptr, ptr %17, align 8, !tbaa !40   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ap
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.au = load i64, ptr %i.ap, align 8, !tbaa !41
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

end_hunk_0
begin_hunk_1_@_ZN26cmGlobalFastbuildGenerator15WriteObjectListERK23FastbuildObjectListNodeb:._crit_edge.i.i
bb.bp:                                            ; preds = %.noexc584
  %i.zz = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.aaa = icmp eq ptr %i.zz, %i.zw
  br i1 %i.aaa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i594, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i593

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i593: ; preds = %bb.bp
  %i.aab = load i64, ptr %i.zw, align 8, !tbaa !41
  %i.aac = add i64 %i.aab, 1
  call void @_ZdlPvm(ptr noundef %i.zz, i64 noundef %i.aac) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i594

bb.bq:                                            ; preds = %.noexc584
  %i.aad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aae = load ptr, ptr %4, align 8, !tbaa !40   ; 2 uses
  %i.aaf = icmp eq ptr %i.aae, %i.zw
  br i1 %i.aaf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i591, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i590

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i590: ; preds = %bb.bq
  %i.aag = load i64, ptr %i.zw, align 8, !tbaa !41
  %i.aah = add i64 %i.aag, 1
  call void @_ZdlPvm(ptr noundef %i.aae, i64 noundef %i.aah) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i591

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i591: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i590
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.aai = load ptr, ptr %59, align 8, !tbaa !40  ; 2 uses
  %i.aaj = icmp eq ptr %i.aai, %i.zt
  br i1 %i.aaj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i594: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i593
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.aak = load ptr, ptr %59, align 8, !tbaa !40  ; 2 uses
  %i.aal = icmp eq ptr %i.aak, %i.zt
  br i1 %i.aal, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i598

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i598: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i594
  %i.aam = load i64, ptr %i.zt, align 8, !tbaa !41
  %i.aan = add i64 %i.aam, 1
  call void @_ZdlPvm(ptr noundef %i.aak, i64 noundef %i.aan) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i594, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i598
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #26
  %i.aao = load ptr, ptr %58, align 8, !tbaa !40  ; 2 uses
  %i.aap = icmp eq ptr %i.aao, %i.zn
  br i1 %i.aap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600
  %i.aaq = load i64, ptr %i.zn, align 8, !tbaa !41
  %i.aar = add i64 %i.aaq, 1
  call void @_ZdlPvm(ptr noundef %i.aao, i64 noundef %i.aar) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #26
  br label %bb.bs

bb.br:                                            ; preds = %.noexc.i583
  %i.aas = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i591
  %i.aat = load i64, ptr %i.zt, align 8, !tbaa !41
  %i.aau = add i64 %i.aat, 1
  call void @_ZdlPvm(ptr noundef %i.aai, i64 noundef %i.aau) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i591, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #26
  %i.aav = load ptr, ptr %58, align 8, !tbaa !40  ; 2 uses
  %i.aaw = icmp eq ptr %i.aav, %i.zn
  br i1 %i.aaw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606
  %i.aax = load i64, ptr %i.zn, align 8, !tbaa !41
  %i.aay = add i64 %i.aax, 1
  call void @_ZdlPvm(ptr noundef %i.aav, i64 noundef %i.aay) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607, %bb.br
  %.pn121.pn = phi { ptr, i32 } [ %i.aas, %bb.br ], [ %i.aad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607 ], [ %i.aad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #26
  br label %bb.bv

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603, %bb.bo
  %i.aaz = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aba = load i8, ptr %i.aaz, align 8, !tbaa !71, !range !296, !noundef !297
  %i.abb = trunc nuw i8 %i.aba to i1
  br i1 %i.abb, label %._crit_edge.i.i610, label %_ZN26cmGlobalFastbuildGenerator6IndentEi.exit640

._crit_edge.i.i610:                               ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #26
  %i.abc = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 6 uses
  store ptr %i.abc, ptr %60, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.abc, ptr noundef nonnull align 1 dereferenceable(6) @.str.204, i64 6, i1 false)
  %i.abd = getelementptr inbounds nuw i8, ptr %60, i64 8
  store i64 6, ptr %i.abd, align 8, !tbaa !42
  %i.abe = getelementptr inbounds nuw i8, ptr %60, i64 22
  store i8 0, ptr %i.abe, align 2, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #26
  %i.abf = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 6 uses
  store ptr %i.abf, ptr %61, align 8, !tbaa !36
  store i32 1702195828, ptr %i.abf, align 8
  %i.abg = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i64 4, ptr %i.abg, align 8, !tbaa !42
  %i.abh = getelementptr inbounds nuw i8, ptr %61, i64 20
  store i8 0, ptr %i.abh, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.abi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.abi, ptr %3, align 8, !tbaa !36
  store i8 61, ptr %i.abi, align 8, !tbaa !41
  %i.abj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.abj, align 8, !tbaa !42
  %i.abk = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.abk, align 1, !tbaa !41
  invoke void @_ZN26cmGlobalFastbuildGenerator13WriteVariableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_i(ptr noundef nonnull readonly align 8 dereferenceable(2808) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %60, ptr noundef nonnull readonly align 8 dereferenceable(32) %61, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 2)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %._crit_edge.i.i610
  %i.abl = load ptr, ptr %3, align 8, !tbaa !40   ; 2 uses
  %i.abm = icmp eq ptr %i.abl, %i.abi
  br i1 %i.abm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i622, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i621

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i621: ; preds = %bb.bt
  %i.abn = load i64, ptr %i.abi, align 8, !tbaa !41
  %i.abo = add i64 %i.abn, 1
  call void @_ZdlPvm(ptr noundef %i.abl, i64 noundef %i.abo) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i622

bb.bu:                                            ; preds = %._crit_edge.i.i610
  %i.abp = landingpad { ptr, i32 }
          cleanup
  %i.abq = load ptr, ptr %3, align 8, !tbaa !40   ; 2 uses
  %i.abr = icmp eq ptr %i.abq, %i.abi
  br i1 %i.abr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i619, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i618

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i618: ; preds = %bb.bu
  %i.abs = load i64, ptr %i.abi, align 8, !tbaa !41
  %i.abt = add i64 %i.abs, 1
  call void @_ZdlPvm(ptr noundef %i.abq, i64 noundef %i.abt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i619

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i619: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i618
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.abu = load ptr, ptr %61, align 8, !tbaa !40  ; 2 uses
  %i.abv = icmp eq ptr %i.abu, %i.abf
  br i1 %i.abv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit634, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i632

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i622: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i621
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.abw = load ptr, ptr %61, align 8, !tbaa !40  ; 2 uses
  %i.abx = icmp eq ptr %i.abw, %i.abf
  br i1 %i.abx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit628, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i626

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i626: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i622
  %i.aby = load i64, ptr %i.abf, align 8, !tbaa !41
  %i.abz = add i64 %i.aby, 1
  call void @_ZdlPvm(ptr noundef %i.abw, i64 noundef %i.abz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit628

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit628: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i622, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i626
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #26
  %i.aca = load ptr, ptr %60, align 8, !tbaa !40  ; 2 uses
  %i.acb = icmp eq ptr %i.aca, %i.abc
  br i1 %i.acb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit631, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i629

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i629: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit628
  %i.acc = load i64, ptr %i.abc, align 8, !tbaa !41
  %i.acd = add i64 %i.acc, 1
  call void @_ZdlPvm(ptr noundef %i.aca, i64 noundef %i.acd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit631

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit631: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit628, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i629
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #26
  br label %_ZN26cmGlobalFastbuildGenerator6IndentEi.exit640

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i632: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i619
  %i.ace = load i64, ptr %i.abf, align 8, !tbaa !41
  %i.acf = add i64 %i.ace, 1
  call void @_ZdlPvm(ptr noundef %i.abu, i64 noundef %i.acf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit634

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit634: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i619, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i632
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #26
  %i.acg = load ptr, ptr %60, align 8, !tbaa !40  ; 2 uses
  %i.ach = icmp eq ptr %i.acg, %i.abc
  br i1 %i.ach, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i635

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i635: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit634
  %i.aci = load i64, ptr %i.abc, align 8, !tbaa !41
  %i.acj = add i64 %i.aci, 1
  call void @_ZdlPvm(ptr noundef %i.acg, i64 noundef %i.acj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit634, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i635
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #26
  br label %bb.bv

_ZN26cmGlobalFastbuildGenerator6IndentEi.exit640: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit631, %bb.bs
  %i.ack = load ptr, ptr %i.ab, align 8, !tbaa !117
  %i.acl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ack, ptr noundef nonnull @.str.93, i64 noundef 2) ; 0 uses
  %i.acm = load ptr, ptr %i.ab, align 8, !tbaa !117
  %i.acn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.acm, ptr noundef nonnull @.str.90, i64 noundef 2) ; 0 uses
  ret void

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit479, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %.pn124.pn.pn = phi { ptr, i32 } [ %i.abp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637 ], [ %.pn121.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609 ], [ %i.yp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581 ], [ %.pn113.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553 ], [ %.pn108.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503 ], [ %.pn105.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494 ], [ %.pn101.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488 ], [ %.pn97.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit479 ], [ %.pn93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470 ], [ %.pn89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323 ], [ %.pn85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314 ], [ %.pn81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255 ], [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246 ], [ %.pn74.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ], [ %.pn71.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ]
  resume { ptr, i32 } %.pn124.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN26cmGlobalFastbuildGenerator11WriteLinkerERK19FastbuildLinkerNodeb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2808) %0, ptr noundef nonnull align 8 dereferenceable(432) %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %22 = alloca %"class.std::vector.51", align 8   ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %47 = alloca %"class.std::vector.51", align 8   ; 10 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %51 = alloca %"class.std::vector.51", align 8   ; 10 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.i = load i32, ptr %1, align 8, !tbaa !88     ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  %i.k = icmp eq i32 %i.i, 1
  %i.l = select i1 %i.k, ptr @.str.205, ptr @.str.206
  %i.m = select i1 %i.j, ptr @.str.125, ptr %i.l  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  store ptr %i.n, ptr %18, align 8, !tbaa !36
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  store i64 %i.o, ptr %i.h, align 8, !tbaa !38
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.q, ptr %18, align 8, !tbaa !40
  %i.r = load i64, ptr %i.h, align 8, !tbaa !38
  store i64 %i.r, ptr %i.n, align 8, !tbaa !41
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.s = phi ptr [ %i.q, %.noexc ], [ %i.n, %bb.a ] ; 2 uses
  switch i64 %i.o, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %i.m, align 1, !tbaa !41
  store i8 %i.t, ptr %i.s, align 1, !tbaa !41
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.m, i64 %i.o, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.u = load i64, ptr %i.h, align 8, !tbaa !38   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !42
  %i.w = load ptr, ptr %18, align 8, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !42  ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %._crit_edge.i.i195, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !42
  %i.ae = icmp eq i64 %i.aa, %i.ad
  br i1 %i.ae, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !40
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !40
  %bcmp.i.i = call i32 @bcmp(ptr %i.ah, ptr %i.ag, i64 %i.aa)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %._crit_edge.i.i195, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  store ptr %i.ai, ptr %20, align 8, !tbaa !36
  store i8 39, ptr %i.ai, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 1, ptr %i.aj, align 8, !tbaa !42
  %i.ak = getelementptr inbounds nuw i8, ptr %20, i64 17
  store i8 0, ptr %i.ak, align 1, !tbaa !41
  invoke void @_ZN26cmGlobalFastbuildGenerator5QuoteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.f unwind label %.critedge187.thread

._crit_edge.i.i195:                               ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  store ptr %i.al, ptr %19, align 8, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.am, align 8, !tbaa !42
  store i8 0, ptr %i.al, align 8, !tbaa !41
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i195, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %.050 = phi i1 [ false, %._crit_edge.i.i195 ], [ true, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ] ; 2 uses
  invoke void @_ZN26cmGlobalFastbuildGenerator12WriteCommandERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_i(ptr noundef nonnull align 8 dereferenceable(2808) %0, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %19, i32 noundef 1)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %19, align 8, !tbaa !40   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !41
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #27
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  br i1 %.050, label %.critedge183, label %.critedge185

.critedge183:                                     ; preds = %.critedge
  %i.as = load ptr, ptr %20, align 8, !tbaa !40   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %.critedge183
end_hunk_1
begin_hunk_2_@_ZN26cmGlobalFastbuildGenerator11WriteLinkerERK19FastbuildLinkerNodeb:bb.a
          to label %bb.bz unwind label %bb.cf

bb.bz:                                            ; preds = %.noexc680
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.adl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.adl, ptr %3, align 8, !tbaa !36
  store i8 61, ptr %i.adl, align 8, !tbaa !41
  %i.adm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.adm, align 8, !tbaa !42
  %i.adn = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.adn, align 1, !tbaa !41
  invoke void @_ZN26cmGlobalFastbuildGenerator13WriteVariableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_i(ptr noundef nonnull readonly align 8 dereferenceable(2808) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %62, ptr noundef nonnull readonly align 8 dereferenceable(32) %63, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 2)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ado = load ptr, ptr %3, align 8, !tbaa !40   ; 2 uses
  %i.adp = icmp eq ptr %i.ado, %i.adl
  br i1 %i.adp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i690, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i689

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i689: ; preds = %bb.ca
  %i.adq = load i64, ptr %i.adl, align 8, !tbaa !41
  %i.adr = add i64 %i.adq, 1
  call void @_ZdlPvm(ptr noundef %i.ado, i64 noundef %i.adr) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i690

bb.cb:                                            ; preds = %bb.bz
  %i.ads = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adt = load ptr, ptr %3, align 8, !tbaa !40   ; 2 uses
  %i.adu = icmp eq ptr %i.adt, %i.adl
  br i1 %i.adu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i687, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i686

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i686: ; preds = %bb.cb
  %i.adv = load i64, ptr %i.adl, align 8, !tbaa !41
  %i.adw = add i64 %i.adv, 1
  call void @_ZdlPvm(ptr noundef %i.adt, i64 noundef %i.adw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i687

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i687: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i686
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.adx = load ptr, ptr %63, align 8, !tbaa !40  ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  %i.adz = icmp eq ptr %i.adx, %i.ady
  br i1 %i.adz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit720, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i718

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i690: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i689
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.aea = load ptr, ptr %63, align 8, !tbaa !40  ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  %i.aec = icmp eq ptr %i.aea, %i.aeb
  br i1 %i.aec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i694

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i694: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i690
  %i.aed = load i64, ptr %i.aeb, align 8, !tbaa !41
  %i.aee = add i64 %i.aed, 1
  call void @_ZdlPvm(ptr noundef %i.aea, i64 noundef %i.aee) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i690, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i694
  %i.aef = load ptr, ptr %64, align 8, !tbaa !40  ; 2 uses
  %i.aeg = icmp eq ptr %i.aef, %i.adi
  br i1 %i.aeg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i697

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i697: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696
  %i.aeh = load i64, ptr %i.adi, align 8, !tbaa !41
  %i.aei = add i64 %i.aeh, 1
  call void @_ZdlPvm(ptr noundef %i.aef, i64 noundef %i.aei) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i697
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #26
  %i.aej = load ptr, ptr %62, align 8, !tbaa !40  ; 2 uses
  %i.aek = icmp eq ptr %i.aej, %i.adc
  br i1 %i.aek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i700

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i700: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699
  %i.ael = load i64, ptr %i.adc, align 8, !tbaa !41
  %i.aem = add i64 %i.ael, 1
  call void @_ZdlPvm(ptr noundef %i.aej, i64 noundef %i.aem) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i700
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #26
  br label %_ZN26cmGlobalFastbuildGenerator6IndentEi.exit729

bb.cc:                                            ; preds = %.noexc.i632
  %i.aen = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit708

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i703: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i640
  %i.aeo = load i64, ptr %i.aan, align 8, !tbaa !41
  %i.aep = add i64 %i.aeo, 1
  call void @_ZdlPvm(ptr noundef %i.abc, i64 noundef %i.aep) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit705

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit705: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i640, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i703
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #26
  %i.aeq = load ptr, ptr %57, align 8, !tbaa !40  ; 2 uses
  %i.aer = icmp eq ptr %i.aeq, %i.aad
  br i1 %i.aer, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit708, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i706

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i706: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit705
  %i.aes = load i64, ptr %i.aad, align 8, !tbaa !41
  %i.aet = add i64 %i.aes, 1
  call void @_ZdlPvm(ptr noundef %i.aeq, i64 noundef %i.aet) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit708

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit708: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit705, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i706, %bb.cc
  %.pn170.pn = phi { ptr, i32 } [ %i.aen, %bb.cc ], [ %i.aax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i706 ], [ %i.aax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit705 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #26
  br label %bb.cg

bb.cd:                                            ; preds = %._crit_edge.i.i653
  %i.aeu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit711

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i709: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i662
  %i.aev = load i64, ptr %i.acj, align 8, !tbaa !41
  %i.aew = add i64 %i.aev, 1
  call void @_ZdlPvm(ptr noundef %i.aci, i64 noundef %i.aew) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit711

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit711: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i662, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i709, %bb.cd
  %.pn173 = phi { ptr, i32 } [ %i.aeu, %bb.cd ], [ %i.acd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i709 ], [ %i.acd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i662 ]
  %i.aex = load ptr, ptr %61, align 8, !tbaa !40  ; 2 uses
  %i.aey = icmp eq ptr %i.aex, %i.abt
  br i1 %i.aey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i712

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i712: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit711
  %i.aez = load i64, ptr %i.abt, align 8, !tbaa !41
  %i.afa = add i64 %i.aez, 1
  call void @_ZdlPvm(ptr noundef %i.aex, i64 noundef %i.afa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit711, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i712
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #26
  %i.afb = load ptr, ptr %59, align 8, !tbaa !40  ; 2 uses
  %i.afc = icmp eq ptr %i.afb, %i.abq
  br i1 %i.afc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit717, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i715

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i715: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714
  %i.afd = load i64, ptr %i.abq, align 8, !tbaa !41
  %i.afe = add i64 %i.afd, 1
  call void @_ZdlPvm(ptr noundef %i.afb, i64 noundef %i.afe) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit717

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit717: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i715
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #26
  br label %bb.cg

bb.ce:                                            ; preds = %.noexc.i679
  %i.aff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit726

bb.cf:                                            ; preds = %.noexc680
  %i.afg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit720

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i718: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i687
  %i.afh = load i64, ptr %i.ady, align 8, !tbaa !41
  %i.afi = add i64 %i.afh, 1
  call void @_ZdlPvm(ptr noundef %i.adx, i64 noundef %i.afi) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit720

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit720: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i687, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i718, %bb.cf
  %.pn177 = phi { ptr, i32 } [ %i.afg, %bb.cf ], [ %i.ads, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i718 ], [ %i.ads, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i687 ] ; 2 uses
  %i.afj = load ptr, ptr %64, align 8, !tbaa !40  ; 2 uses
  %i.afk = icmp eq ptr %i.afj, %i.adi
  br i1 %i.afk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit723, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i721

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i721: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit720
  %i.afl = load i64, ptr %i.adi, align 8, !tbaa !41
  %i.afm = add i64 %i.afl, 1
  call void @_ZdlPvm(ptr noundef %i.afj, i64 noundef %i.afm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit723

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit723: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit720, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i721
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #26
  %i.afn = load ptr, ptr %62, align 8, !tbaa !40  ; 2 uses
  %i.afo = icmp eq ptr %i.afn, %i.adc
  br i1 %i.afo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit726, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i724

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i724: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit723
  %i.afp = load i64, ptr %i.adc, align 8, !tbaa !41
  %i.afq = add i64 %i.afp, 1
  call void @_ZdlPvm(ptr noundef %i.afn, i64 noundef %i.afq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit726

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit726: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit723, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i724, %bb.ce
  %.pn177.pn.pn = phi { ptr, i32 } [ %i.aff, %bb.ce ], [ %.pn177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i724 ], [ %.pn177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit723 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #26
  br label %bb.cg

_ZN26cmGlobalFastbuildGenerator6IndentEi.exit729: ; preds = %bb.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit677
  %i.afr = load ptr, ptr %i.bb, align 8, !tbaa !117
  %i.afs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.afr, ptr noundef nonnull @.str.93, i64 noundef 2) ; 0 uses
  %i.aft = load ptr, ptr %i.bb, align 8, !tbaa !117
  %i.afu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aft, ptr noundef nonnull @.str.90, i64 noundef 2) ; 0 uses
  ret void

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit726, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit717, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit708, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234
  %.pn177.pn.pn.pn = phi { ptr, i32 } [ %.pn177.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit726 ], [ %.pn173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit717 ], [ %.pn170.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit708 ], [ %.pn166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630 ], [ %.pn161, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596 ], [ %.pn156.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546 ], [ %.pn152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537 ], [ %.pn148.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528 ], [ %.pn144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519 ], [ %i.lx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394 ], [ %.pn136.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366 ], [ %.pn132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354 ], [ %i.gq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345 ], [ %.pn127.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270 ], [ %.pn122.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234 ]
  resume { ptr, i32 } %.pn177.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN26cmGlobalFastbuildGenerator4WrapISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS7_ESaIS7_EEEESt6vectorIS7_SA_ERKT_RKS7_SI_b(ptr dead_on_unwind noalias writable sret(%"class.std::vector.51") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %struct.WrapHelper, align 8         ; 17 uses
  %6 = alloca %struct.WrapHelper, align 8         ; 7 uses
  %i.c = zext i1 %4 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !36
  %i.e = load ptr, ptr %2, align 8, !tbaa !40     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !42   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.g, ptr %i.b, align 8, !tbaa !38
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.i, ptr %5, align 8, !tbaa !40
  %i.j = load i64, ptr %i.b, align 8, !tbaa !38
  store i64 %i.j, ptr %i.d, align 8, !tbaa !41
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !41
  store i8 %i.l, ptr %i.k, align 1, !tbaa !41
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.m = load i64, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !42
  %i.o = load ptr, ptr %5, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 5 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !36
  %i.s = load ptr, ptr %3, align 8, !tbaa !40     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !42   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.u, ptr %i.a, align 8, !tbaa !38
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i15, label %._crit_edge.i.i14

.noexc.i15:                                       ; preds = %bb.d
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc16 unwind label %bb.k   ; 2 uses

.noexc16:                                         ; preds = %.noexc.i15
  store ptr %i.w, ptr %i.q, align 8, !tbaa !40
  %i.x = load i64, ptr %i.a, align 8, !tbaa !38
  store i64 %i.x, ptr %i.r, align 8, !tbaa !41
  br label %._crit_edge.i.i14

._crit_edge.i.i14:                                ; preds = %.noexc16, %bb.d
  %i.y = phi ptr [ %i.w, %.noexc16 ], [ %i.r, %bb.d ] ; 2 uses
  switch i64 %i.u, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i14
  %i.z = load i8, ptr %i.s, align 1, !tbaa !41
  store i8 %i.z, ptr %i.y, align 1, !tbaa !41
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i14, %bb.e, %bb.f
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !42
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i8 %i.c, ptr %i.ae, align 8, !tbaa !446
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !49
  invoke void @_ZN10WrapHelperC2ERKS_(ptr noundef nonnull align 8 dereferenceable(65) %6, ptr noundef nonnull align 8 dereferenceable(65) %5)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = invoke ptr @_ZSt9transformISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEE10WrapHelperET0_T_SF_SE_T1_(ptr %i.ag, ptr nonnull %i.ah, ptr nonnull %0, ptr noundef nonnull align 8 %6)
          to label %bb.i unwind label %bb.m       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !41
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ap = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZN10WrapHelperD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !41
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #27
  br label %_ZN10WrapHelperD2Ev.exit

_ZN10WrapHelperD2Ev.exit:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.au = load ptr, ptr %i.q, align 8, !tbaa !40  ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.r
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18: ; preds = %_ZN10WrapHelperD2Ev.exit
  %i.aw = load i64, ptr %i.r, align 8, !tbaa !41
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19: ; preds = %_ZN10WrapHelperD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
  %i.ay = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.d
  br i1 %i.az, label %_ZN10WrapHelperD2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !41
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #27
  br label %_ZN10WrapHelperD2Ev.exit23

_ZN10WrapHelperD2Ev.exit23:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.j:                                             ; preds = %.noexc.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %.noexc.i15
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.d
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.bg = load i64, ptr %i.d, align 8, !tbaa !41
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %bb.g
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10WrapHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %6) #26
end_hunk_2
begin_hunk_3_@_ZN26cmGlobalFastbuildGenerator21WriteIDEProjectConfigERKSt6vectorI16IDEProjectConfigSaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.ek = load ptr, ptr %11, align 8, !tbaa !40   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.l
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.em = load i64, ptr %i.l, align 8, !tbaa !41
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %.loopexit.split-lp

bb.n:                                             ; preds = %._crit_edge.i.i82
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i91
  %i.ep = load i64, ptr %i.aa, align 8, !tbaa !41
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.eq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119, %bb.n
  %.pn37 = phi { ptr, i32 } [ %i.eo, %bb.n ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i91 ]
  %i.er = load ptr, ptr %16, align 8, !tbaa !40   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.v
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  %i.et = load i64, ptr %i.v, align 8, !tbaa !41
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.ev = load ptr, ptr %14, align 8, !tbaa !40   ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.t
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124
  %i.ex = load i64, ptr %i.t, align 8, !tbaa !41
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %.loopexit.split-lp

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0220.0354, i64 72
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !42
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %bb.t, label %._crit_edge.i.i128

._crit_edge.i.i128:                               ; preds = %bb.o
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0220.0354, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store ptr %i.ab, ptr %17, align 8, !tbaa !36
  store i64 7886488383309048912, ptr %i.ab, align 8
  store i64 8, ptr %i.ac, align 8, !tbaa !42
  store i8 0, ptr %i.ap, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  store ptr %i.ad, ptr %19, align 8, !tbaa !36
  store i8 39, ptr %i.ad, align 8, !tbaa !41
  store i64 1, ptr %i.ae, align 8, !tbaa !42
  store i8 0, ptr %i.aq, align 1, !tbaa !41
  invoke void @_ZN26cmGlobalFastbuildGenerator5QuoteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %._crit_edge.i.i128
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.af, ptr %4, align 8, !tbaa !36
  store i8 61, ptr %i.af, align 8, !tbaa !41
  store i64 1, ptr %i.ag, align 8, !tbaa !42
  store i8 0, ptr %i.ah, align 1, !tbaa !41
  invoke void @_ZN26cmGlobalFastbuildGenerator13WriteVariableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_i(ptr noundef nonnull readonly align 8 dereferenceable(2808) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %17, ptr noundef nonnull readonly align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fd = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.af
  br i1 %i.fe, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139: ; preds = %bb.q
  %i.ff = load i64, ptr %i.af, align 8, !tbaa !41
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i140

bb.r:                                             ; preds = %bb.p
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fi = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.af
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i136: ; preds = %bb.r
  %i.fk = load i64, ptr %i.af, align 8, !tbaa !41
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i137: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.fm = load ptr, ptr %18, align 8, !tbaa !40   ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.ai
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i140: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.fo = load ptr, ptr %18, align 8, !tbaa !40   ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.ai
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i140
  %i.fq = load i64, ptr %i.ai, align 8, !tbaa !41
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  %i.fs = load ptr, ptr %19, align 8, !tbaa !40   ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.ad
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.fu = load i64, ptr %i.ad, align 8, !tbaa !41
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.fw = load ptr, ptr %17, align 8, !tbaa !40   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.ab
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.fy = load i64, ptr %i.ab, align 8, !tbaa !41
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i128
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i137
  %i.gb = load i64, ptr %i.ai, align 8, !tbaa !41
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.gc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153, %bb.s
  %.pn41 = phi { ptr, i32 } [ %i.ga, %bb.s ], [ %i.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153 ], [ %i.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i137 ]
  %i.gd = load ptr, ptr %19, align 8, !tbaa !40   ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.ad
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %i.gf = load i64, ptr %i.ad, align 8, !tbaa !41
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.gh = load ptr, ptr %17, align 8, !tbaa !40   ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.ab
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.gj = load i64, ptr %i.ab, align 8, !tbaa !41
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %.loopexit.split-lp

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %bb.o
  %i.gl = load ptr, ptr %i.k, align 8, !tbaa !117
  %i.gm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gl, ptr noundef nonnull @.str.93, i64 noundef 2)
          to label %.noexc164 unwind label %.loopexit ; 0 uses

.noexc164:                                        ; preds = %bb.t
  %i.gn = load ptr, ptr %i.k, align 8, !tbaa !117
  %i.go = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gn, ptr noundef nonnull @.str.104, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit167 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit167: ; preds = %.noexc164
  %i.gp = load ptr, ptr %i.aj, align 8, !tbaa !119 ; 7 uses
  %i.gq = load ptr, ptr %i.ak, align 8, !tbaa !120
  %.not.i = icmp eq ptr %i.gp, %i.gq
  br i1 %.not.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit167
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 3 uses
  store ptr %i.gr, ptr %i.gp, align 8, !tbaa !36
  %i.gs = load ptr, ptr %9, align 8, !tbaa !40    ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.d
  br i1 %i.gt, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

bb.v:                                             ; preds = %bb.u
  %i.gu = load i64, ptr %i.e, align 8, !tbaa !42  ; 3 uses
  %i.gv = icmp ult i64 %i.gu, 16
  call void @llvm.assume(i1 %i.gv)
  %i.gw = add nuw nsw i64 %i.gu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gr, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.gw, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %bb.u
  store ptr %i.gs, ptr %i.gp, align 8, !tbaa !40
  %i.gx = load i64, ptr %i.d, align 8, !tbaa !41
  store i64 %i.gx, ptr %i.gr, align 8, !tbaa !41
  %.pre = load i64, ptr %i.e, align 8, !tbaa !42
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  %i.gy = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168 ], [ %i.gu, %bb.v ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !42
  store ptr %i.d, ptr %9, align 8, !tbaa !40
  store i64 0, ptr %i.e, align 8, !tbaa !42
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  store ptr %i.ha, ptr %i.aj, align 8, !tbaa !119
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit167
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.gp, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit: ; preds = %bb.w
  %.pre355 = load ptr, ptr %9, align 8, !tbaa !40 ; 2 uses
  %i.hb = icmp eq ptr %.pre355, %i.d
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit
  %i.hc = load i64, ptr %i.d, align 8, !tbaa !41
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %.pre355, i64 noundef %i.hd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0220.0354, i64 192 ; 2 uses
  %.not = icmp eq ptr %i.he, %i.c
  br i1 %.not, label %._crit_edge.i.i, label %bb.b

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %.pn45 = phi { ptr, i32 } [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ %.pn41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ], [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit223, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp224, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.hf = load ptr, ptr %9, align 8, !tbaa !40    ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.d
  br i1 %i.hg, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.loopexit.split-lp, %bb.d
  %.sink = phi ptr [ %i.bi, %bb.d ], [ %i.hf, %.loopexit.split-lp ]
  %.pn45.pn.ph = phi { ptr, i32 } [ %lpad.phi229, %bb.d ], [ %.pn45, %.loopexit.split-lp ]
  %i.hh = load i64, ptr %i.d, align 8, !tbaa !41
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.hi) #27
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.loopexit.split-lp, %bb.d
  %.pn45.pn = phi { ptr, i32 } [ %lpad.phi229, %bb.d ], [ %.pn45, %.loopexit.split-lp ], [ %.pn45.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.ae

bb.x:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.hj, ptr %3, align 8, !tbaa !36
  store i8 61, ptr %i.hj, align 8, !tbaa !41
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.hk, align 8, !tbaa !42
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.hl, align 1, !tbaa !41
  invoke void @_ZN26cmGlobalFastbuildGenerator10WriteArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EES7_i(ptr noundef nonnull readonly align 8 dereferenceable(2808) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hm = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.hj
  br i1 %i.hn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i183: ; preds = %bb.y
  %i.ho = load i64, ptr %i.hj, align 8, !tbaa !41
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i184

bb.z:                                             ; preds = %bb.x
  %i.hq = landingpad { ptr, i32 }
          cleanup
  %i.hr = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.hj
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i180: ; preds = %bb.z
  %i.ht = load i64, ptr %i.hj, align 8, !tbaa !41
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i181: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #26
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i184: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.hv = load ptr, ptr %20, align 8, !tbaa !118  ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !119 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.hv, %i.hx
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i184, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.id, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.hv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i184 ] ; 3 uses
  %i.hy = load ptr, ptr %.05.i.i.i, align 8, !tbaa !40 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ia = icmp eq ptr %i.hy, %i.hz
  br i1 %i.ia, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ib = load i64, ptr %i.hz, align 8, !tbaa !41
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ic) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.id, %i.hx
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %20, align 8, !tbaa !118
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i184
  %i.ie = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.hv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i184 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.if = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !120
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = ptrtoint ptr %i.ie to i64
  %i.ij = sub i64 %i.ih, %i.ii
  call void @_ZdlPvm(ptr noundef nonnull %i.ie, i64 noundef %i.ij) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.aa
  %i.ik = load ptr, ptr %22, align 8, !tbaa !40   ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.au
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.im = load i64, ptr %i.au, align 8, !tbaa !41
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %i.io = load ptr, ptr %21, align 8, !tbaa !40   ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.ar
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189
  %i.iq = load i64, ptr %i.ar, align 8, !tbaa !41
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.ir) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.is = load ptr, ptr %8, align 8, !tbaa !118   ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %8, i64 8
end_hunk_3
