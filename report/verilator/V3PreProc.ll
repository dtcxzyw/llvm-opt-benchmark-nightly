Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3PreProc?download=true
inline.NumInlined: 6861
inline.NumDeleted: 1064
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12V3PreProcImp8openFileEP8FileLineP9VInFilterRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.kg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.kg, ptr %12, align 8, !tbaa !140
  %i.kh = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.kh, align 8, !tbaa !141
  store i8 0, ptr %i.kg, align 8, !tbaa !45
  invoke void @_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.iq, ptr noundef nonnull align 8 dereferenceable(112) %i.ke, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit172
  %i.ki = load ptr, ptr %12, align 8, !tbaa !90   ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.kg
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %bb.bt
  %i.kk = load i64, ptr %i.kg, align 8, !tbaa !45
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.kl) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #44
  %i.km = load ptr, ptr %11, align 8, !tbaa !90   ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ko = icmp eq ptr %i.km, %i.kn
  br i1 %i.ko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  %i.kp = load i64, ptr %i.kn, align 8, !tbaa !45
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kq) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #44
  br label %bb.by

.loopexit.split-lp223.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.at, %bb.bh, %._crit_edge.thread, %bb.an, %bb.br, %_ZN8V3PreLex12curFilelinepEv.exit.i, %bb.aw, %bb.au, %bb.ah, %bb.aj, %_ZN8V3PreLex11scanNewFileEP8FileLine.exit, %bb.ag, %bb.t, %bb.q, %bb.d, %bb.b, %bb.bl, %_ZN8FileLineC2EPS_.exit, %bb.bi
  %lpad.loopexit.split-lp369 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

bb.bv:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit170, %bb.bs
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit172
  %i.kt = landingpad { ptr, i32 }
          cleanup
  %i.ku = load ptr, ptr %12, align 8, !tbaa !90   ; 2 uses
  %i.kv = icmp eq ptr %i.ku, %i.kg
  br i1 %i.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183: ; preds = %bb.bw
  %i.kw = load i64, ptr %i.kg, align 8, !tbaa !45
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.kx) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #44
  br label %bb.bx

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, %bb.bv
  %.pn93.pn = phi { ptr, i32 } [ %i.kt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185 ], [ %i.ks, %bb.bv ] ; 2 uses
  %i.ky = load ptr, ptr %11, align 8, !tbaa !90   ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.la = icmp eq ptr %i.ky, %i.kz
  br i1 %i.la, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %bb.bx
  %i.lb = load i64, ptr %i.kz, align 8, !tbaa !45
  %i.lc = add i64 %i.lb, 1
  call void @_ZdlPvm(ptr noundef %i.ky, i64 noundef %i.lc) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186, %bb.bu
  %.pn93.pn.pn = phi { ptr, i32 } [ %i.kr, %bb.bu ], [ %.pn93.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186 ], [ %.pn93.pn, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #44
  br label %.body

bb.by:                                            ; preds = %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %i.ld = load ptr, ptr %4, align 8, !tbaa !313   ; 2 uses
  %.not8.i.i = icmp eq ptr %i.ld, %4
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.le, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.ld, %bb.by ] ; 4 uses
  %i.le = load ptr, ptr %.09.i.i, align 8, !tbaa !313 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !90 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32 ; 2 uses
  %i.li = icmp eq ptr %i.lg, %i.lh
  br i1 %i.li, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i189: ; preds = %.lr.ph.i.i
  %i.lj = load i64, ptr %i.lh, align 8, !tbaa !45
  %i.lk = add i64 %i.lj, 1
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lk) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i189
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 48) #45
  %.not.i.i190 = icmp eq ptr %i.le, %4
  br i1 %.not.i.i190, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !5

_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %bb.bz

bb.bz:                                            ; preds = %bb.a, %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  ret void

.body:                                            ; preds = %.loopexit.split-lp223.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.i, %bb.bq, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, %bb.am, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, %.body128, %.body105
  %.pn102.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body105 ], [ %.pn88.pn.pn, %.body128 ], [ %i.jy, %bb.bq ], [ %lpad.loopexit.split-lp355, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ], [ %i.ez, %bb.am ], [ %i.s, %bb.i ], [ %i.db, %bb.y ], [ %i.fr, %bb.ar ], [ %.pn93.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188 ], [ %lpad.loopexit.split-lp369, %.loopexit.split-lp223.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  resume { ptr, i32 } %.pn102.pn
}

declare noundef zeroext i1 @_ZN9VInFilter13readWholefileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_4listIS5_SaIS5_EEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12V3PreProcImp14addLineCommentEi(ptr noundef nonnull align 8 dereferenceable(1032) %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 944), align 8, !tbaa !138, !range !88, !noundef !89
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 947), align 1, !range !88
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 %i.d, i1 false
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !278  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54, !noalias !1274 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55, !noalias !1274
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZN8V3PreLex12curFilelinepEv.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56, !noalias !1274
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 512
  br label %_ZN8V3PreLex12curFilelinepEv.exit

_ZN8V3PreLex12curFilelinepEv.exit:                ; preds = %bb.b, %bb.c
  %i.r = phi ptr [ %i.q, %bb.c ], [ %i.i, %bb.b ]
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70
  call void @_ZNK8FileLine17lineDirectiveStrgB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i32 noundef %1)
  invoke void @_ZN12V3PreProcImp21insertUnreadbackAtBolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN8V3PreLex12curFilelinepEv.exit
  %i.v = load ptr, ptr %2, align 8, !tbaa !90     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.w, align 8, !tbaa !45
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  br label %bb.f

bb.e:                                             ; preds = %_ZN8V3PreLex12curFilelinepEv.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %2, align 8, !tbaa !90    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.e
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !45
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  resume { ptr, i32 } %i.aa

bb.f:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8FileLineC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN8FileLine15defaultFileLineEvE1s acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN8FileLine15defaultFileLineEv.exit, !prof !139

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8FileLine15defaultFileLineEvE1s) #44
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN8FileLine15defaultFileLineEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN8FileLineC2Ev(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN8FileLine15defaultFileLineEvE1s)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN8FileLineD1Ev, ptr nonnull @_ZZN8FileLine15defaultFileLineEvE1s, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8FileLine15defaultFileLineEvE1s) #44
  br label %_ZN8FileLine15defaultFileLineEv.exit

common.resume:                                    ; preds = %bb.i, %bb.e
  %_ZGVZN8FileLine9singletonEvE1s.sink = phi ptr [ @_ZGVZN8FileLine9singletonEvE1s, %bb.i ], [ @_ZGVZN8FileLine15defaultFileLineEvE1s, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.i ], [ %i.e, %bb.e ]
  tail call void @__cxa_guard_abort(ptr nonnull %_ZGVZN8FileLine9singletonEvE1s.sink) #44
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN8FileLine15defaultFileLineEv.exit:             ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load i16, ptr @_ZZN8FileLine15defaultFileLineEvE1s, align 8, !tbaa !162
  store i16 %i.f, ptr %0, align 8, !tbaa !162
  %i.g = load atomic i8, ptr @_ZGVZN8FileLine9singletonEvE1s acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.f, label %_ZN8FileLine9singletonEv.exit, !prof !139

bb.f:                                             ; preds = %_ZN8FileLine15defaultFileLineEv.exit
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #44
  %.not.i2 = icmp eq i32 %i.i, 0
  br i1 %.not.i2, label %_ZN8FileLine9singletonEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN17FileLineSingletonC2Ev(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = tail call i32 @__cxa_atexit(ptr nonnull @_ZN17FileLineSingletonD2Ev, ptr nonnull @_ZZN8FileLine9singletonEvE1s, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #44
  br label %_ZN8FileLine9singletonEv.exit

bb.i:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN8FileLine9singletonEv.exit:                    ; preds = %_ZN8FileLine15defaultFileLineEv.exit, %bb.f, %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = tail call noundef zeroext i16 @_ZN17FileLineSingleton12nameToNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s, ptr noundef nonnull align 8 dereferenceable(32) %1)
  store i16 %i.m, ptr %i.l, align 2, !tbaa !214
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.o, align 8, !tbaa !314
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !94
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = and i64 %i.r, -72057589759737856
  store i64 %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 0, ptr %i.t, align 8, !tbaa !95
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  ret void
}

declare void @_ZN8FileLine10newContentEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare void @_ZN12VFileContent8pushTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_ZN9V3Options17getStdPackagePathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8) local_unnamed_addr #5

declare void @_ZN9V3Control16contentsPushTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_ZNK8FileLine8warnMoreB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48)) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !313    ; 2 uses
  %.not8.i = icmp eq ptr %i.a, %0
  br i1 %.not8.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.09.i = phi ptr [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.b = load ptr, ptr %.09.i, align 8, !tbaa !313 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !45
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i, i64 noundef 48) #45
  %.not.i = icmp eq ptr %i.b, %0
  br i1 %.not.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit, label %.lr.ph.i, !llvm.loop !5

_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12V3PreProcImp21insertUnreadbackAtBolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !141  ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread12

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 1, ptr %i.e, align 8, !tbaa !261
  br label %bb.d

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread12: ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.g = getelementptr i8, ptr %i.f, i64 %i.c
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !45
  %.not = icmp eq i8 %i.i, 10
  br i1 %.not, label %bb.d, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !140
  store i8 10, ptr %i.j, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1, ptr %i.k, align 8, !tbaa !141
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 0, ptr %i.l, align 1, !tbaa !45
  %i.m = icmp eq i64 %i.c, 4611686018427387903
  br i1 %i.m, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i

bb.b:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.512) #42
          to label %.noexc5 unwind label %bb.c

.noexc5:                                          ; preds = %bb.b
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %._crit_edge.i.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull %i.j, i64 noundef 1)
          to label %_ZN12V3PreProcImp16insertUnreadbackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

_ZN12V3PreProcImp16insertUnreadbackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.o = load ptr, ptr %2, align 8, !tbaa !90     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.j
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN12V3PreProcImp16insertUnreadbackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.q = load i64, ptr %i.j, align 8, !tbaa !45
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN12V3PreProcImp16insertUnreadbackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  %.pre = load i64, ptr %i.b, align 8, !tbaa !141
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %2, align 8, !tbaa !90     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.j
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.c
  %i.v = load i64, ptr %i.j, align 8, !tbaa !45
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
end_hunk_0
begin_hunk_1_@_ZN12V3PreProcImp13getFinalTokenERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %bb.af
  %.pn60.pn = phi { ptr, i32 } [ %.pn60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.ef, %bb.af ], [ %.pn57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %.pn55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #44
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ae
  %.pn60.pn.pn = phi { ptr, i32 } [ %.pn60.pn, %bb.ao ], [ %i.ee, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %bb.ar

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %bb.u
  %i.fk = load ptr, ptr %3, align 8, !tbaa !90    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.aq
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !45
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap, %bb.ad
  %.pn60.pn.pn.pn = phi { ptr, i32 } [ %.pn60.pn.pn, %bb.ap ], [ %i.ed, %bb.ad ]
  %i.fp = load ptr, ptr %3, align 8, !tbaa !90    ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.ar
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !45
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br label %common.resume

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %bb.s
  %i.fu = load ptr, ptr %i.bn, align 8, !tbaa !267
  %i.fv = load ptr, ptr %i.bd, align 8, !tbaa !278
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 104
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !177
  %i.fy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8FileLine8filenameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.fx)
  %i.fz = load atomic i8, ptr @_ZGVZN8FileLine9singletonEvE1s acquire, align 8
  %i.ga = icmp eq i8 %i.fz, 0
  br i1 %i.ga, label %bb.at, label %_ZN8FileLine8filenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, !prof !139

bb.at:                                            ; preds = %bb.as
  %i.gb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #44
  %.not.i.i = icmp eq i32 %i.gb, 0
  br i1 %.not.i.i, label %_ZN8FileLine8filenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN17FileLineSingletonC2Ev(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gc = call i32 @__cxa_atexit(ptr nonnull @_ZN17FileLineSingletonD2Ev, ptr nonnull @_ZZN8FileLine9singletonEvE1s, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #44
  br label %_ZN8FileLine8filenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %bb.aw
  %common.resume.op = phi { ptr, i32 } [ %i.gd, %bb.aw ], [ %.pn60.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ]
  resume { ptr, i32 } %common.resume.op

bb.aw:                                            ; preds = %bb.au
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #44
  br label %common.resume

_ZN8FileLine8filenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.as, %bb.at, %bb.av
  %i.ge = call noundef zeroext i16 @_ZN17FileLineSingleton12nameToNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s, ptr noundef nonnull align 8 dereferenceable(32) %i.fy)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fu, i64 2
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !214
  %i.gg = load ptr, ptr %i.bn, align 8, !tbaa !267 ; 3 uses
  %i.gh = load ptr, ptr %i.bd, align 8, !tbaa !278
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 104
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !177 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 12
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !94
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gn = load i16, ptr %i.gm, align 8, !tbaa !95
  %i.go = zext i16 %i.gn to i32
  %i.gp = add nsw i32 %i.gl, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !94
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  store i16 0, ptr %i.gr, align 8, !tbaa !95
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8
  %i.gu = and i64 %i.gt, -72057589759737856
  %i.gv = or disjoint i64 %i.gu, 4294967297
  store i64 %i.gv, ptr %i.gs, align 8
  %or.cond3 = icmp ult i32 %i.bv, 21
  br i1 %or.cond3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %_ZN8FileLine8filenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #44
  %i.gw = load ptr, ptr %i.bn, align 8, !tbaa !267
  call void @_ZNK8FileLine17lineDirectiveStrgB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %i.gw, i32 noundef 0)
  %i.gx = load ptr, ptr %1, align 8, !tbaa !90    ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gz = icmp eq ptr %i.gx, %i.gy
  %i.ha = load ptr, ptr %9, align 8, !tbaa !90    ; 5 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.hc = icmp eq ptr %i.ha, %i.hb                ; 2 uses
  br i1 %i.gz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ax
  br i1 %i.hc, label %bb.ay, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ax
  br i1 %i.hc, label %bb.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.hd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !141 ; 3 uses
  %i.hf = icmp ult i64 %i.he, 16
  call void @llvm.assume(i1 %i.hf)
  switch i64 %i.he, label %bb.ba [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay
  %i.hg = load i8, ptr %i.ha, align 1, !tbaa !45
  store i8 %i.hg, ptr %i.gx, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gx, ptr align 1 %i.ha, i64 %i.he, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ba, %bb.az, %bb.ay
  %i.hh = load i64, ptr %i.hd, align 8, !tbaa !141 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.hh, ptr %i.hi, align 8, !tbaa !141
  %i.hj = load ptr, ptr %1, align 8, !tbaa !90
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hh
  store i8 0, ptr %i.hk, align 1, !tbaa !45
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !90
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ha, ptr %1, align 8, !tbaa !90
  %i.hm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hn = load <2 x i64>, ptr %i.hm, align 8, !tbaa !45
  store <2 x i64> %i.hn, ptr %i.hl, align 8, !tbaa !45
  br label %bb.bc

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ho = load i64, ptr %i.gy, align 8, !tbaa !45
  store ptr %i.ha, ptr %1, align 8, !tbaa !90
  %i.hp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hr = load <2 x i64>, ptr %i.hp, align 8, !tbaa !45
  store <2 x i64> %i.hr, ptr %i.hq, align 8, !tbaa !45
  %.not.i113 = icmp eq ptr %i.gx, null
  br i1 %.not.i113, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.gx, ptr %9, align 8, !tbaa !90
  store i64 %i.ho, ptr %i.hb, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.hb, ptr %9, align 8, !tbaa !90
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.bb, %bb.bc
  %i.hs = phi ptr [ %i.gx, %bb.bb ], [ %i.hb, %bb.bc ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ht = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.ht, align 8, !tbaa !141
  store i8 0, ptr %i.hs, align 1, !tbaa !45
  %i.hu = load ptr, ptr %9, align 8, !tbaa !90    ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.hw = icmp eq ptr %i.hu, %i.hv
  br i1 %i.hw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.hx = load i64, ptr %i.hv, align 8, !tbaa !45
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hy) #45
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #44
  br label %bb.bj

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread122, %bb.r, %_ZN8FileLine8filenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.o
  %i.hz = load ptr, ptr %1, align 8, !tbaa !90    ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !141 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ib
  %.not125126 = icmp samesign eq i64 %i.ib, 0
  br i1 %.not125126, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 320
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph, %bb.bi
  %.sroa.0117.0127 = phi ptr [ %i.hz, %.lr.ph ], [ %i.iy, %bb.bi ] ; 2 uses
  %i.ie = load i8, ptr %.sroa.0117.0127, align 1, !tbaa !45
  %i.if = icmp eq i8 %i.ie, 10
  br i1 %i.if, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  store i8 1, ptr %i.aq, align 8, !tbaa !266
  %i.ig = load ptr, ptr %i.id, align 8, !tbaa !267 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24 ; 2 uses
  %i.ii = load i16, ptr %i.ih, align 8, !tbaa !95 ; 2 uses
  %i.ij = icmp eq i16 %i.ii, -1
  br i1 %i.ij, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 12 ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !94
  %i.im = add nsw i32 %i.il, 65536
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !94
  br label %_ZN8FileLine9linenoIncEv.exit

bb.bg:                                            ; preds = %bb.be
  %i.in = add nuw i16 %i.ii, 1
  br label %_ZN8FileLine9linenoIncEv.exit

_ZN8FileLine9linenoIncEv.exit:                    ; preds = %bb.bf, %bb.bg
  %storemerge.i = phi i16 [ %i.in, %bb.bg ], [ 0, %bb.bf ]
  store i16 %storemerge.i, ptr %i.ih, align 8, !tbaa !95
  %i.io = getelementptr inbounds nuw i8, ptr %i.ig, i64 16 ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8
  %i.iq = and i64 %i.ip, -72057589742960641
  %i.ir = or disjoint i64 %i.iq, 4294967296
  store i64 %i.ir, ptr %i.io, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ig, i64 4 ; 2 uses
  %i.it = load i32, ptr %i.is, align 4            ; 2 uses
  %i.iu = and i32 %i.it, -2
  %i.iv = add i32 %i.iu, 2
  %i.iw = and i32 %i.it, 1
  %i.ix = or disjoint i32 %i.iv, %i.iw
  store i32 %i.ix, ptr %i.is, align 4
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  store i8 0, ptr %i.aq, align 8, !tbaa !266
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZN8FileLine9linenoIncEv.exit
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0117.0127, i64 1 ; 2 uses
  %.not125 = icmp eq ptr %i.iy, %i.ic
  br i1 %.not125, label %.loopexit, label %bb.bd

.loopexit:                                        ; preds = %bb.bi, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.n
  store i8 0, ptr %i.c, align 1, !tbaa !264
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i115, %.loopexit
  %.152 = phi i32 [ %i.p, %.loopexit ], [ 264, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i115 ]
  ret i32 %.152
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12V3PreProcImp7getlineB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1032) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !278  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54, !noalias !1525 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55, !noalias !1525
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.b, label %_ZNK12V3PreProcImp5isEofEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56, !noalias !1525
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 512
  br label %_ZNK12V3PreProcImp5isEofEv.exit

_ZNK12V3PreProcImp5isEofEv.exit:                  ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %i.m, %bb.b ], [ %i.e, %bb.a ]
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.r = load i8, ptr %i.q, align 8, !tbaa !198, !range !88, !noundef !89
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %._crit_edge.i.i, label %.preheader

.preheader:                                       ; preds = %_ZNK12V3PreProcImp5isEofEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 968 ; 9 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !90   ; 2 uses
  %i.v = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.u, i32 noundef 10) #46 ; 2 uses
  %.not198 = icmp eq ptr %i.v, null
  br i1 %.not198, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1000 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1008 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 2 uses
  br label %bb.c

._crit_edge.i.i:                                  ; preds = %_ZNK12V3PreProcImp5isEofEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !140
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.al, align 8, !tbaa !141
  store i8 0, ptr %i.ak, align 8, !tbaa !45
  br label %bb.br

bb.c:                                             ; preds = %.lr.ph, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread151
  store i64 0, ptr %i.x, align 8, !tbaa !141
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !90
  store i8 0, ptr %i.am, align 1, !tbaa !45
  %i.an = call noundef i32 @_ZN12V3PreProcImp13getFinalTokenERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1032) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.w) ; 2 uses
  %i.ao = call noundef i32 @_ZN9V3PreProc5debugEv()
  %i.ap = icmp sgt i32 %i.ao, 4
  br i1 %i.ap, label %bb.d, label %bb.ad

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  call void @_ZN8V3PreLex12cleanDbgStrgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !278
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 104
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !177
  invoke void @_ZNK8FileLine12asciiLineColB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %i.as)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.at = invoke noundef i32 @_ZN9V3PreProc5debugEv()
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.au = icmp sgt i32 %i.at, -1
  br i1 %i.au, label %bb.g, label %bb.ab, !prof !200

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.64, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.65, i32 noundef 1779)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aw = load ptr, ptr %5, align 8, !tbaa !90
  %i.ax = load i64, ptr %i.y, align 8, !tbaa !141
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.aw, i64 noundef %i.ax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.s

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.i
  %i.az = load ptr, ptr %3, align 8, !tbaa !90
  %i.ba = load i64, ptr %i.z, align 8, !tbaa !141
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.az, i64 noundef %i.ba)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit59 unwind label %bb.s ; 2 uses

end_hunk_1
