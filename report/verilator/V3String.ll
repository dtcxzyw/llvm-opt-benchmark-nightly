Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3String?download=true
inline.NumInlined: 1592
inline.NumDeleted: 384
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN11VHashSha2568selfTestEv:._crit_edge.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263
  %i.jt = load i64, ptr %i.do, align 8, !tbaa !16
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.ju) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264, %bb.r
  %.pn48.pn = phi { ptr, i32 } [ %i.jk, %bb.r ], [ %.pn48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264 ], [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  %i.jv = load ptr, ptr %13, align 8, !tbaa !24   ; 2 uses
  %i.jw = icmp eq ptr %i.jv, %i.dl
  br i1 %i.jw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266
  %i.jx = load i64, ptr %i.dl, align 8, !tbaa !16
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jy) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  %i.jz = load ptr, ptr %12, align 8, !tbaa !24   ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.dg
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269
  %i.kb = load i64, ptr %i.dg, align 8, !tbaa !16
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270, %bb.q
  %.pn48.pn.pn.pn = phi { ptr, i32 } [ %i.jj, %bb.q ], [ %.pn48.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270 ], [ %.pn48.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %bb.ac

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

bb.v:                                             ; preds = %.noexc171
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278

bb.w:                                             ; preds = %.noexc179
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

bb.x:                                             ; preds = %.noexc183
  %i.kg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kh = load ptr, ptr %19, align 8, !tbaa !24   ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.fa
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %bb.x
  %i.kj = load i64, ptr %i.fa, align 8, !tbaa !16
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kk) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273, %bb.w
  %.pn53 = phi { ptr, i32 } [ %i.kf, %bb.w ], [ %i.kg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273 ], [ %i.kg, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33
  %i.kl = load ptr, ptr %18, align 8, !tbaa !24   ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.ev
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275
  %i.kn = load i64, ptr %i.ev, align 8, !tbaa !16
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.ko) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276, %bb.v
  %.pn53.pn = phi { ptr, i32 } [ %i.ke, %bb.v ], [ %.pn53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276 ], [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33
  %i.kp = load ptr, ptr %17, align 8, !tbaa !24   ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.et
  br i1 %i.kq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278
  %i.kr = load i64, ptr %i.et, align 8, !tbaa !16
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.ks) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  %i.kt = load ptr, ptr %16, align 8, !tbaa !24   ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.eo
  br i1 %i.ku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281
  %i.kv = load i64, ptr %i.eo, align 8, !tbaa !16
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282, %bb.u
  %.pn53.pn.pn.pn = phi { ptr, i32 } [ %i.kd, %bb.u ], [ %.pn53.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282 ], [ %.pn53.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  br label %bb.ac

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293

bb.z:                                             ; preds = %.noexc203
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290

bb.aa:                                            ; preds = %.noexc207
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287

bb.ab:                                            ; preds = %.noexc211
  %i.la = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lb = load ptr, ptr %23, align 8, !tbaa !24   ; 2 uses
  %i.lc = icmp eq ptr %i.lb, %i.gi
  br i1 %i.lc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285: ; preds = %bb.ab
  %i.ld = load i64, ptr %i.gi, align 8, !tbaa !16
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.le) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285, %bb.aa
  %.pn58 = phi { ptr, i32 } [ %i.kz, %bb.aa ], [ %i.la, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285 ], [ %i.la, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #33
  %i.lf = load ptr, ptr %22, align 8, !tbaa !24   ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.gd
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287
  %i.lh = load i64, ptr %i.gd, align 8, !tbaa !16
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.li) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288, %bb.z
  %.pn58.pn = phi { ptr, i32 } [ %i.ky, %bb.z ], [ %.pn58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288 ], [ %.pn58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #33
  %i.lj = load ptr, ptr %21, align 8, !tbaa !24   ; 2 uses
  %i.lk = icmp eq ptr %i.lj, %i.fy
  br i1 %i.lk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290
  %i.ll = load i64, ptr %i.fy, align 8, !tbaa !16
  %i.lm = add i64 %i.ll, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.lm) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291, %bb.y
  %.pn58.pn.pn = phi { ptr, i32 } [ %i.kx, %bb.y ], [ %.pn58.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291 ], [ %.pn58.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #33
  %i.ln = load ptr, ptr %20, align 8, !tbaa !24   ; 2 uses
  %i.lo = icmp eq ptr %i.ln, %i.fv
  br i1 %i.lo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293
  %i.lp = load i64, ptr %i.fv, align 8, !tbaa !16
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
  %.pn58.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn58.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296 ], [ %.pn53.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284 ], [ %.pn48.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272 ], [ %.pn43.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260 ], [ %.pn38.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236 ]
  resume { ptr, i32 } %.pn58.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5VName6dehashERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 12 uses
  store i64 0, ptr %i.g, align 8, !tbaa !28
  store i8 0, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !28
  %.not177 = icmp eq i64 %i.i, 0
  br i1 %.not177, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.a
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %7, ptr %0, align 8, !tbaa !29
  br label %.sink.split

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %bb.d

._crit_edge.a:                                    ; preds = %bb.ar, %bb.av
  %.pre = load i64, ptr %i.g, align 8, !tbaa !28
  %.pre.fr = freeze i64 %.pre
  %8 = icmp eq i64 %.pre.fr, 0                    ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %9, ptr %0, align 8, !tbaa !29
  %spec.select = select i1 %8, ptr %1, ptr %2
  %spec.select220 = select i1 %8, ptr %i.h, ptr %i.g
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge.a, %.thread
  %.in = phi ptr [ %spec.select, %._crit_edge.a ], [ %1, %.thread ]
  %10 = phi ptr [ %9, %._crit_edge.a ], [ %7, %.thread ] ; 2 uses
  %11 = phi ptr [ %spec.select220, %._crit_edge.a ], [ %i.h, %.thread ]
  %i.r = load ptr, ptr %.in, align 8, !tbaa !24   ; 2 uses
  %12 = load i64, ptr %11, align 8, !tbaa !28     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store i64 %12, ptr %i.e, align 8, !tbaa !30
  %i.s = icmp ugt i64 %12, 15
  br i1 %i.s, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.sink.split
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc unwind label %bb.ax    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.t, ptr %0, align 8, !tbaa !24
  %i.u = load i64, ptr %i.e, align 8, !tbaa !30
  store i64 %i.u, ptr %10, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %.sink.split
  %i.v = phi ptr [ %i.t, %.noexc ], [ %10, %.sink.split ] ; 2 uses
  switch i64 %12, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.aw
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.w = load i8, ptr %i.r, align 1, !tbaa !16
  store i8 %i.w, ptr %i.v, align 1, !tbaa !16
  br label %bb.aw

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.r, i64 %12, i1 false)
  br label %bb.aw

bb.d:                                             ; preds = %.lr.ph, %bb.av
  %.0176 = phi i64 [ 0, %.lr.ph ], [ %i.fo, %bb.av ] ; 5 uses
  %i.x = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.36, i64 noundef %.0176, i64 noundef 7) #33 ; 3 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %.0176 ; 6 uses
  %i.aa = icmp eq i64 %i.x, -1                    ; 2 uses
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.pn114 = phi i64 [ %i.ab, %bb.e ], [ %i.x, %bb.d ] ; 2 uses
  %storemerge = getelementptr inbounds i8, ptr %i.y, i64 %.pn114 ; 3 uses
  %i.ac = invoke ptr @_ZSt8__searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_NS0_5__ops19_Iter_equal_to_iterEET_SD_SD_T0_SE_T1_(ptr %i.z, ptr %storemerge, ptr noundef nonnull @.str.39, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.39, i64 6))
          to label %_ZSt6searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_ET_SB_SB_T0_SC_.exit unwind label %.loopexit ; 4 uses

_ZSt6searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_ET_SB_SB_T0_SC_.exit: ; preds = %bb.f
  %.not115 = icmp eq ptr %i.ac, %storemerge
  br i1 %.not115, label %bb.aj, label %bb.g

bb.g:                                             ; preds = %_ZSt6searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_ET_SB_SB_T0_SC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store ptr %i.j, ptr %3, align 8, !tbaa !29
  store i64 0, ptr %i.k, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.ad = ptrtoint ptr %storemerge to i64
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  store i64 %i.af, ptr %i.d, align 8, !tbaa !30
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i50, label %._crit_edge.i.i49

.noexc.i50:                                       ; preds = %bb.g
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc51 unwind label %bb.p   ; 2 uses

.noexc51:                                         ; preds = %.noexc.i50
  store ptr %i.ah, ptr %3, align 8, !tbaa !24
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !30
  store i64 %i.ai, ptr %i.j, align 8, !tbaa !16
  br label %._crit_edge.i.i49

._crit_edge.i.i49:                                ; preds = %.noexc51, %bb.g
  %i.aj = phi ptr [ %i.ah, %.noexc51 ], [ %i.j, %bb.g ] ; 2 uses
  switch i64 %i.af, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i49
  %i.ak = load i8, ptr %i.ac, align 1, !tbaa !16
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !16
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i49
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.ac, i64 %i.af, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i49
  %i.al = load i64, ptr %i.d, align 8, !tbaa !30  ; 2 uses
  store i64 %i.al, ptr %i.k, align 8, !tbaa !28
  %i.am = load ptr, ptr %3, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store i8 0, ptr %i.an, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5VName11s_dehashMapB5cxx11E, i64 16), align 8, !tbaa !9 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not10.i.i.i, label %select.unfold, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j
  %i.ap = load i64, ptr %i.k, align 8, !tbaa !28  ; 4 uses
  %i.aq = load ptr, ptr %3, align 8               ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN5VName11s_dehashMapB5cxx11E, i64 8), %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !28 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.as) ; 2 uses
  %i.at = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.at, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !24
  %i.aw = call i32 @memcmp(ptr noundef %i.av, ptr noundef %i.aq, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.k
  %i.ax = sub i64 %i.as, %i.ap
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ax, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.aw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ay = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.ay, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.ay, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.k, !llvm.loop !107

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.az = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5VName11s_dehashMapB5cxx11E, i64 8)
  br i1 %i.az, label %select.unfold, label %bb.l

bb.l:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !28 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bb, i64 %i.ap) ; 2 uses
  %i.bc = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.bc, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bf = call i32 @memcmp(ptr noundef %i.aq, ptr noundef %i.be, i64 noundef %.sroa.speculated.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.l
  %i.bg = sub i64 %i.ap, %i.bb
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bg, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.bf, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.bh = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.bh, label %select.unfold, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit

select.unfold:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %bb.j, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.bi = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.5, i32 noundef 657)
          to label %bb.m unwind label %.loopexit.split-lp122 ; 0 uses

bb.m:                                             ; preds = %select.unfold
  %i.bj = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.n unwind label %.loopexit.split-lp122 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.37, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp122 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.n
  %i.bl = load ptr, ptr %3, align 8, !tbaa !24
  %i.bm = load i64, ptr %i.k, align 8, !tbaa !28
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef %i.bl, i64 noundef %i.bm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp122 ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull @.str.38, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55 unwind label %.loopexit.split-lp122 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.bn) #34
          to label %bb.o unwind label %.loopexit.split-lp122

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55
  unreachable

.loopexit:                                        ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit.split-lp:                               ; preds = %bb.au
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.p:                                             ; preds = %.noexc.i50
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

.loopexit121:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i66
  %lpad.loopexit123 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp122:                            ; preds = %select.unfold, %bb.m, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55, %bb.n, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.af
  %lpad.loopexit.split-lp124 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %.not = icmp ne i64 %.0176, 0
  %i.bq = load i64, ptr %i.g, align 8
  %i.br = icmp eq i64 %i.bq, 0
  %or.cond = select i1 %.not, i1 %i.br, i1 false
end_hunk_0
begin_hunk_1_@_ZN5VName6dehashERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.dp = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 72
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !28 ; 2 uses
  %i.dr = load i64, ptr %i.g, align 8, !tbaa !28
  %i.ds = sub i64 4611686018427387903, %i.dr
  %i.dt = icmp ult i64 %i.ds, %i.dq
  br i1 %i.dt, label %bb.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i66

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #34
          to label %.noexc67 unwind label %.loopexit.split-lp122

.noexc67:                                         ; preds = %bb.af
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.du = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !24
  %i.dw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.dv, i64 noundef %i.dq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit69 unwind label %.loopexit121 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i66
  %i.dx = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.j
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit69
  %i.dz = load i64, ptr %i.j, align 8, !tbaa !16
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.ar

bb.ag:                                            ; preds = %.noexc.i58
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

.loopexit116:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit118 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp117:                            ; preds = %bb.ae
  %lpad.loopexit.split-lp119 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp117, %.loopexit116
  %lpad.phi120 = phi { ptr, i32 } [ %lpad.loopexit118, %.loopexit116 ], [ %lpad.loopexit.split-lp119, %.loopexit.split-lp117 ] ; 2 uses
  %i.ec = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.n
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.ah
  %i.ee = load i64, ptr %i.n, align 8, !tbaa !16
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %bb.ag
  %.pn39 = phi { ptr, i32 } [ %i.eb, %bb.ag ], [ %lpad.phi120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %lpad.phi120, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit121, %.loopexit.split-lp122, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %.pn42.pn = phi { ptr, i32 } [ %i.cu, %bb.z ], [ %.pn39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %lpad.loopexit123, %.loopexit121 ], [ %lpad.loopexit.split-lp124, %.loopexit.split-lp122 ] ; 2 uses
  %i.eg = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.j
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.ai
  %i.ei = load i64, ptr %i.j, align 8, !tbaa !16
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %bb.p
  %.pn42.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.p ], [ %.pn42.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %.pn42.pn, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.ay

bb.aj:                                            ; preds = %_ZSt6searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_ET_SB_SB_T0_SC_.exit
  %i.ek = load i64, ptr %i.g, align 8, !tbaa !28
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %bb.ar, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store ptr %i.p, ptr %6, align 8, !tbaa !29
  store i64 0, ptr %i.q, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %gepdiff = sub nsw i64 %.pn114, %.0176          ; 4 uses
  store i64 %gepdiff, ptr %i.a, align 8, !tbaa !30
  %i.em = icmp ugt i64 %gepdiff, 15
  br i1 %i.em, label %.noexc.i80, label %._crit_edge.i.i79

.noexc.i80:                                       ; preds = %bb.ak
  %i.en = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc81 unwind label %bb.ap  ; 2 uses

.noexc81:                                         ; preds = %.noexc.i80
  store ptr %i.en, ptr %6, align 8, !tbaa !24
  %i.eo = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.eo, ptr %i.p, align 8, !tbaa !16
  br label %._crit_edge.i.i79

._crit_edge.i.i79:                                ; preds = %.noexc81, %bb.ak
  %i.ep = phi ptr [ %i.en, %.noexc81 ], [ %i.p, %bb.ak ] ; 2 uses
  switch i64 %gepdiff, label %bb.am [
    i64 1, label %bb.al
    i64 0, label %bb.an
  ]

bb.al:                                            ; preds = %._crit_edge.i.i79
  %i.eq = load i8, ptr %i.z, align 1, !tbaa !16
  store i8 %i.eq, ptr %i.ep, align 1, !tbaa !16
  br label %bb.an

bb.am:                                            ; preds = %._crit_edge.i.i79
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ep, ptr align 1 %i.z, i64 %gepdiff, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %._crit_edge.i.i79
  %i.er = load i64, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  store i64 %i.er, ptr %i.q, align 8, !tbaa !28
  %i.es = load ptr, ptr %6, align 8, !tbaa !24
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.er
  store i8 0, ptr %i.et, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.eu = load i64, ptr %i.q, align 8, !tbaa !28  ; 2 uses
  %i.ev = load i64, ptr %i.g, align 8, !tbaa !28
  %i.ew = sub i64 4611686018427387903, %i.ev
  %i.ex = icmp ult i64 %i.ew, %i.eu
  br i1 %i.ex, label %bb.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i83

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #34
          to label %.noexc84 unwind label %.loopexit.split-lp127

.noexc84:                                         ; preds = %bb.ao
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i83: ; preds = %bb.an
  %i.ey = load ptr, ptr %6, align 8, !tbaa !24
  %i.ez = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.ey, i64 noundef %i.eu)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit86 unwind label %.loopexit126 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i83
  %i.fa = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.p
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit86
  %i.fc = load i64, ptr %i.p, align 8, !tbaa !16
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.ar

bb.ap:                                            ; preds = %.noexc.i80
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

.loopexit126:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i83
  %lpad.loopexit128 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp127:                            ; preds = %bb.ao
  %lpad.loopexit.split-lp129 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit.split-lp127, %.loopexit126
  %lpad.phi130 = phi { ptr, i32 } [ %lpad.loopexit128, %.loopexit126 ], [ %lpad.loopexit.split-lp129, %.loopexit.split-lp127 ] ; 2 uses
  %i.ff = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.p
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.aq
  %i.fh = load i64, ptr %i.p, align 8, !tbaa !16
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.fe, %bb.ap ], [ %lpad.phi130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %lpad.phi130, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.ay

bb.ar:                                            ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  br i1 %i.aa, label %._crit_edge.a, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fj = load i64, ptr %i.g, align 8, !tbaa !28  ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fl = add i64 %i.fj, -4611686018427387897
  %i.fm = icmp ult i64 %i.fl, 7
  br i1 %i.fm, label %bb.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.au:                                            ; preds = %bb.at
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #34
          to label %.noexc93 unwind label %.loopexit.split-lp

.noexc93:                                         ; preds = %bb.au
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.at
  %i.fn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.36, i64 noundef 7)
          to label %bb.av unwind label %.loopexit ; 0 uses

bb.av:                                            ; preds = %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.fo = add i64 %i.x, 7                         ; 2 uses
  %i.fp = load i64, ptr %i.h, align 8, !tbaa !28
  %i.fq = icmp ult i64 %i.fo, %i.fp
  br i1 %i.fq, label %bb.d, label %._crit_edge.a, !llvm.loop !111

bb.aw:                                            ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.fr = load i64, ptr %i.e, align 8, !tbaa !30  ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fr, ptr %i.fs, align 8, !tbaa !28
  %i.ft = load ptr, ptr %0, align 8, !tbaa !24
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fr
  store i8 0, ptr %i.fu, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  %i.fv = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.f
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.aw
  %i.fx = load i64, ptr %i.f, align 8, !tbaa !16
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.ax:                                            ; preds = %.noexc.i
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %bb.ax
  %.pn42.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fz, %bb.ax ], [ %.pn42.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ga = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.f
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %bb.ay
  %i.gc = load i64, ptr %i.f, align 8, !tbaa !16
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn42.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5VName10hashedNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %2 = alloca %class.VHashSha256, align 16        ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !28   ; 3 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread91

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !28
  store i8 0, ptr %i.i, align 8, !tbaa !16
  br label %bb.au

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread91: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !28   ; 5 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread92, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread91
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !29
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !24   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store i64 %i.m, ptr %i.e, align 8, !tbaa !30
  %i.q = icmp ugt i64 %i.m, 15
  br i1 %i.q, label %.noexc.i29, label %._crit_edge.i.i28

.noexc.i29:                                       ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !24
  %i.s = load i64, ptr %i.e, align 8, !tbaa !30
  store i64 %i.s, ptr %i.o, align 8, !tbaa !16
  br label %._crit_edge.i.i28

._crit_edge.i.i28:                                ; preds = %.noexc.i29, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.t = phi ptr [ %i.r, %.noexc.i29 ], [ %i.o, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 2 uses
  %cond = icmp eq i64 %i.m, 1
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i28
  %i.u = load i8, ptr %i.p, align 1, !tbaa !16
  store i8 %i.u, ptr %i.t, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i28
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.p, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %bb.b, %bb.c
  %i.v = load i64, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !28
  %i.x = load ptr, ptr %0, align 8, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %bb.au

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread92: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread91
  %i.z = load i64, ptr @_ZN5VName11s_maxLengthE, align 8, !tbaa !30
  %i.aa = add i64 %i.z, -1
  %or.cond.not = icmp ult i64 %i.aa, %i.g
  br i1 %or.cond.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread92
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !29
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !24  ; 2 uses
  %i.ad = load i64, ptr %i.l, align 8, !tbaa !28  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i64 %i.ad, ptr %i.d, align 8, !tbaa !30
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %.noexc.i31, label %._crit_edge.i.i30

.noexc.i31:                                       ; preds = %bb.d
  %i.af = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !24
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !30
  store i64 %i.ag, ptr %i.ab, align 8, !tbaa !16
  br label %._crit_edge.i.i30

._crit_edge.i.i30:                                ; preds = %.noexc.i31, %bb.d
  %i.ah = phi ptr [ %i.af, %.noexc.i31 ], [ %i.ab, %bb.d ] ; 2 uses
  switch i64 %i.ad, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit32
  ]

bb.e:                                             ; preds = %._crit_edge.i.i30
  %i.ai = load i8, ptr %i.ac, align 1, !tbaa !16
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit32

bb.f:                                             ; preds = %._crit_edge.i.i30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.ac, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit32: ; preds = %._crit_edge.i.i30, %bb.e, %bb.f
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !30  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !28
  %i.al = load ptr, ptr %0, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %bb.au

bb.g:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread92
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 8 uses
  store ptr %i.ao, ptr %i.an, align 16, !tbaa !29
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.ap, align 8, !tbaa !28
  store i8 0, ptr %i.ao, align 16, !tbaa !16
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 0, ptr %i.aq, align 16, !tbaa !95
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i8 0, ptr %i.ar, align 8, !tbaa !91
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %2, align 16, !tbaa !99
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.as, align 16, !tbaa !99
  %i.at = load ptr, ptr %1, align 8, !tbaa !24
  invoke void @_ZN11VHashSha2566insertEPKvm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %i.at, i64 noundef %i.g)
          to label %_ZN11VHashSha256C2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %i.an, align 16, !tbaa !24 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ao
  br i1 %i.aw, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

end_hunk_1
