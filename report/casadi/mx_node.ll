Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/mx_node?download=true
inline.NumInlined: 9612
inline.NumDeleted: 1756
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 160
loop-unroll.NumUnrolled: 217
begin_hunk_0_@_ZNK6casadi21SetNonzerosSliceParamILb0EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

bb.ab:                                            ; preds = %.noexc140
  %i.it = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iu = load ptr, ptr %17, align 8, !tbaa !36   ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.cn
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %bb.ab
  %i.iw = load i64, ptr %i.cn, align 8, !tbaa !38
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.ix) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.iy = load ptr, ptr %16, align 8, !tbaa !36   ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.ch
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  %i.ja = load i64, ptr %i.ch, align 8, !tbaa !38
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220, %bb.aa
  %.pn61.pn = phi { ptr, i32 } [ %i.is, %bb.aa ], [ %i.it, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ], [ %i.it, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.jc = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.jd = icmp eq ptr %i.jc, %i.ce
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222
  %i.je = load i64, ptr %i.ce, align 8, !tbaa !38
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %bb.am

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231

bb.ad:                                            ; preds = %.noexc161
  %i.jh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ji = load ptr, ptr %20, align 8, !tbaa !36   ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.dl
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %bb.ad
  %i.jk = load i64, ptr %i.dl, align 8, !tbaa !38
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  %i.jm = load ptr, ptr %19, align 8, !tbaa !36   ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.df
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228
  %i.jo = load i64, ptr %i.df, align 8, !tbaa !38
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229, %bb.ac
  %.pn65.pn = phi { ptr, i32 } [ %i.jg, %bb.ac ], [ %i.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229 ], [ %i.jh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  %i.jq = load ptr, ptr %18, align 8, !tbaa !36   ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.dc
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231
  %i.js = load i64, ptr %i.dc, align 8, !tbaa !38
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.jt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  br label %bb.am

bb.ae:                                            ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.af:                                            ; preds = %bb.j
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

bb.ag:                                            ; preds = %bb.l, %bb.k
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ah:                                            ; preds = %bb.m
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237

bb.ai:                                            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.jy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jz = load ptr, ptr %23, align 8, !tbaa !36   ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.kb = icmp eq ptr %i.jz, %i.ka
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %bb.ai
  %i.kc = load i64, ptr %i.ka, align 8, !tbaa !38
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235, %bb.ah
  %.pn69 = phi { ptr, i32 } [ %i.jx, %bb.ah ], [ %i.jy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235 ], [ %i.jy, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, %bb.ag
  %.pn69.pn = phi { ptr, i32 } [ %.pn69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237 ], [ %i.jw, %bb.ag ] ; 2 uses
  %i.ke = load ptr, ptr %22, align 8, !tbaa !36   ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.kg = icmp eq ptr %i.ke, %i.kf
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238: ; preds = %bb.aj
  %i.kh = load i64, ptr %i.kf, align 8, !tbaa !38
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.ki) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238, %bb.af
  %.pn69.pn.pn = phi { ptr, i32 } [ %i.jv, %bb.af ], [ %.pn69.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238 ], [ %.pn69.pn, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, %bb.ae
  %.pn69.pn.pn.pn = phi { ptr, i32 } [ %.pn69.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240 ], [ %i.ju, %bb.ae ]
  %i.kj = load ptr, ptr %21, align 8, !tbaa !36   ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.kl = icmp eq ptr %i.kj, %i.kk
  br i1 %i.kl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241: ; preds = %bb.ak
  %i.km = load i64, ptr %i.kk, align 8, !tbaa !38
  %i.kn = add i64 %i.km, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.kn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  br label %bb.am

bb.al:                                            ; preds = %bb.v, %bb.u, %bb.t, %_ZNK6casadi6MXNode3depEx.exit186
  %i.ko = landingpad { ptr, i32 }
          cleanup
  %i.kp = load ptr, ptr %24, align 8, !tbaa !36   ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244: ; preds = %bb.al
  %i.ks = load i64, ptr %i.kq, align 8, !tbaa !38
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.kt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198
  %.pn74 = phi { ptr, i32 } [ %i.ko, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246 ], [ %.pn69.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243 ], [ %.pn65.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234 ], [ %.pn61.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225 ], [ %i.if, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216 ], [ %i.hs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207 ], [ %i.hf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198 ]
  resume { ptr, i32 } %.pn74
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi21SetNonzerosSliceParamILb0EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !785
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !785
  %i.f = load ptr, ptr %2, align 8, !tbaa !785    ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.n, 2
  br i1 %.not.i.i.i, label %_ZNK6casadi6MXNode3depEx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 2, i64 noundef %i.n) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.q = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 2 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i30.not = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.i30.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit31

bb.c:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit31:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %i.u = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) ; 3 uses
  %.not = icmp eq ptr %i.a, %i.f
  br i1 %.not, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit31
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i32.not = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i.i32.not, label %bb.e, label %_ZNK6casadi6MXNode3depEx.exit33

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit33:                  ; preds = %bb.d
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.y = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) ; 3 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %bb.g, !prof !304

bb.f:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit33
  %.idx = shl nsw i64 %i.y, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.f, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.g:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit33
  %i.aa = icmp eq i64 %i.y, 1
  br i1 %i.aa, label %bb.h, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.ab, ptr %i.f, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %bb.h, %bb.g, %bb.f, %_ZNK6casadi6MXNode3depEx.exit31
  %i.ac = icmp sgt i64 %i.q, 0
  br i1 %i.ac, label %.lr.ph39, label %._crit_edge40.split

.lr.ph39:                                         ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1968 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph39.split, label %._crit_edge40.split

.lr.ph39.split:                                   ; preds = %.lr.ph39
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !1969 ; 4 uses
  %5 = add nsw i64 %i.ae, -1                      ; 2 uses
  %6 = udiv i64 %5, %i.ah                         ; 2 uses
  %7 = add i64 %6, 1                              ; 2 uses
  %8 = icmp ugt i64 %i.ah, %5
  %unroll_iter = and i64 %7, -2
  %9 = and i64 %6, 1
  %lcmp.mod.not.not = icmp eq i64 %9, 0
  %lcmp.mod52 = trunc i64 %7 to i1
  br label %.lr.ph

._crit_edge40.split:                              ; preds = %._crit_edge, %.lr.ph39, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph39.split, %._crit_edge
  %.02438 = phi i64 [ 0, %.lr.ph39.split ], [ %i.al, %._crit_edge ]
  %.02537 = phi ptr [ %i.e, %.lr.ph39.split ], [ %i.ak, %._crit_edge ] ; 2 uses
  %.02636 = phi ptr [ %i.c, %.lr.ph39.split ], [ %.lcssa, %._crit_edge ] ; 2 uses
  %i.ai = load double, ptr %.02537, align 8, !tbaa !560
  %i.aj = fptosi double %i.ai to i64              ; 3 uses
  br i1 %8, label %.epil.preheader, label %bb.i

._crit_edge.unr-lcssa:                            ; preds = %bb.k
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.035.epil.init = phi i64 [ 0, %.lr.ph ], [ %26, %._crit_edge.unr-lcssa ]
  %.134.epil.init = phi ptr [ %.02636, %.lr.ph ], [ %i.ar, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod52)
  %10 = add nsw i64 %.035.epil.init, %i.aj        ; 3 uses
  %11 = icmp sgt i64 %10, -1
  %12 = icmp slt i64 %10, %i.u
  %or.cond.epil = and i1 %11, %12
  br i1 %or.cond.epil, label %13, label %._crit_edge.epilog-lcssa

13:                                               ; preds = %.epil.preheader
  %14 = load double, ptr %.134.epil.init, align 8, !tbaa !560
  %15 = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %10
  store double %14, ptr %15, align 8, !tbaa !560
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %13, %.epil.preheader
  %16 = getelementptr inbounds nuw i8, ptr %.134.epil.init, i64 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  %.lcssa = phi ptr [ %i.ar, %._crit_edge.unr-lcssa ], [ %16, %._crit_edge.epilog-lcssa ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.02537, i64 8
  %i.al = add nuw nsw i64 %.02438, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %i.q
  br i1 %exitcond.not, label %._crit_edge40.split, label %.lr.ph, !llvm.loop !1970

bb.i:                                             ; preds = %.lr.ph, %bb.k
  %.035 = phi i64 [ %26, %bb.k ], [ 0, %.lr.ph ]  ; 2 uses
  %.134 = phi ptr [ %i.ar, %bb.k ], [ %.02636, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ %i.as, %bb.k ], [ 0, %.lr.ph ]
  %i.am = add nsw i64 %.035, %i.aj                ; 3 uses
  %i.an = icmp sgt i64 %i.am, -1
  %i.ao = icmp slt i64 %i.am, %i.u
  %or.cond = and i1 %i.an, %i.ao
  br i1 %or.cond, label %17, label %20

17:                                               ; preds = %bb.i
  %18 = load double, ptr %.134, align 8, !tbaa !560
  %19 = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.am
  store double %18, ptr %19, align 8, !tbaa !560
  br label %20

20:                                               ; preds = %17, %bb.i
  %21 = add nsw i64 %i.ah, %.035                  ; 2 uses
  %22 = add nsw i64 %21, %i.aj                    ; 3 uses
  %23 = icmp sgt i64 %22, -1
  %24 = icmp slt i64 %22, %i.u
  %or.cond.1 = and i1 %23, %24
  br i1 %or.cond.1, label %bb.j, label %bb.k

bb.j:                                             ; preds = %20
  %25 = getelementptr inbounds nuw i8, ptr %.134, i64 8
  %i.ap = load double, ptr %25, align 8, !tbaa !560
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %22
  store double %i.ap, ptr %i.aq, align 8, !tbaa !560
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %20
  %i.ar = getelementptr inbounds nuw i8, ptr %.134, i64 16 ; 3 uses
  %26 = add nsw i64 %i.ah, %21                    ; 2 uses
  %i.as = add i64 %niter, 2                       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %i.as, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.unr-lcssa, label %bb.i, !llvm.loop !1971
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi21SetNonzerosSliceParamILb0EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %4 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %5 = alloca %"class.casadi::MX", align 8        ; 8 uses
  %6 = alloca %"class.casadi::MX", align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK6casadi6MXNode3depEx.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !26
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @_ZN6casadi2MX7projectERKS0_RKNS_8SparsityEb(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.g = load ptr, ptr %1, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %.not.i.i.i12 = icmp ugt i64 %i.n, 1
  br i1 %.not.i.i.i12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.n) #35
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6casadi2MX7projectERKS0_RKNS_8SparsityEb(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i1 noundef zeroext false)
          to label %_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit unwind label %bb.h

_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.q = load ptr, ptr %1, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !84
  store ptr %i.s, ptr %5, align 8, !tbaa !84
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN6casadi2MXC2ERKS0_.exit unwind label %bb.i

_ZN6casadi2MXC2ERKS0_.exit:                       ; preds = %_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.t = invoke noundef ptr @_ZN6casadi2MXptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.j       ; 2 uses

bb.f:                                             ; preds = %_ZN6casadi2MXC2ERKS0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 728
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %2, align 8, !tbaa !26
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.k ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %bb.g
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.h:                                             ; preds = %bb.e, %bb.c, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.i:                                             ; preds = %_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %bb.f, %_ZN6casadi2MXC2ERKS0_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.ab, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.m ], [ %i.aa, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi21SetNonzerosSliceParamILb0EE10ad_forwardERKSt6vectorIS2_INS_2MXESaIS3_EESaIS5_EERS7_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %4 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %5 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.h, 2
  br i1 %.not.i.i.i, label %_ZNK6casadi6MXNode3depEx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 2, i64 noundef %i.h) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !604
  %i.l = load ptr, ptr %2, align 8, !tbaa !607
  %.not = icmp eq ptr %i.k, %i.l
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN6casadi2MXaSERKS0_.exit29, %_ZNK6casadi6MXNode3depEx.exit
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN6casadi2MXaSERKS0_.exit29
  %.01834 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %_ZN6casadi2MXaSERKS0_.exit29 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i22.not = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i22.not, label %bb.d, label %_ZNK6casadi6MXNode3depEx.exit23

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit23:                  ; preds = %bb.c
  %i.p = load ptr, ptr %1, align 8, !tbaa !607
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.01834
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  call void @_ZN6casadi2MX7projectERKS0_RKNS_8SparsityEb(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.s, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.t = load ptr, ptr %1, align 8, !tbaa !607
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.01834
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3                 ; 2 uses
  %.not.i.i.i24 = icmp ugt i64 %i.ac, 1
  br i1 %.not.i.i.i24, label %bb.f, label %bb.e

end_hunk_0
begin_hunk_1_@_ZNK6casadi21SetNonzerosSliceParamILb1EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

bb.ab:                                            ; preds = %.noexc140
  %i.it = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iu = load ptr, ptr %17, align 8, !tbaa !36   ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.cn
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %bb.ab
  %i.iw = load i64, ptr %i.cn, align 8, !tbaa !38
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.ix) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.iy = load ptr, ptr %16, align 8, !tbaa !36   ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.ch
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  %i.ja = load i64, ptr %i.ch, align 8, !tbaa !38
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220, %bb.aa
  %.pn61.pn = phi { ptr, i32 } [ %i.is, %bb.aa ], [ %i.it, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ], [ %i.it, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.jc = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.jd = icmp eq ptr %i.jc, %i.ce
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222
  %i.je = load i64, ptr %i.ce, align 8, !tbaa !38
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %bb.am

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231

bb.ad:                                            ; preds = %.noexc161
  %i.jh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ji = load ptr, ptr %20, align 8, !tbaa !36   ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.dl
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %bb.ad
  %i.jk = load i64, ptr %i.dl, align 8, !tbaa !38
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  %i.jm = load ptr, ptr %19, align 8, !tbaa !36   ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.df
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228
  %i.jo = load i64, ptr %i.df, align 8, !tbaa !38
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229, %bb.ac
  %.pn65.pn = phi { ptr, i32 } [ %i.jg, %bb.ac ], [ %i.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229 ], [ %i.jh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  %i.jq = load ptr, ptr %18, align 8, !tbaa !36   ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.dc
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231
  %i.js = load i64, ptr %i.dc, align 8, !tbaa !38
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.jt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  br label %bb.am

bb.ae:                                            ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.af:                                            ; preds = %bb.j
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

bb.ag:                                            ; preds = %bb.l, %bb.k
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ah:                                            ; preds = %bb.m
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237

bb.ai:                                            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.jy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jz = load ptr, ptr %23, align 8, !tbaa !36   ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.kb = icmp eq ptr %i.jz, %i.ka
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %bb.ai
  %i.kc = load i64, ptr %i.ka, align 8, !tbaa !38
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235, %bb.ah
  %.pn69 = phi { ptr, i32 } [ %i.jx, %bb.ah ], [ %i.jy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235 ], [ %i.jy, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, %bb.ag
  %.pn69.pn = phi { ptr, i32 } [ %.pn69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237 ], [ %i.jw, %bb.ag ] ; 2 uses
  %i.ke = load ptr, ptr %22, align 8, !tbaa !36   ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.kg = icmp eq ptr %i.ke, %i.kf
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238: ; preds = %bb.aj
  %i.kh = load i64, ptr %i.kf, align 8, !tbaa !38
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.ki) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238, %bb.af
  %.pn69.pn.pn = phi { ptr, i32 } [ %i.jv, %bb.af ], [ %.pn69.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238 ], [ %.pn69.pn, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, %bb.ae
  %.pn69.pn.pn.pn = phi { ptr, i32 } [ %.pn69.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240 ], [ %i.ju, %bb.ae ]
  %i.kj = load ptr, ptr %21, align 8, !tbaa !36   ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.kl = icmp eq ptr %i.kj, %i.kk
  br i1 %i.kl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241: ; preds = %bb.ak
  %i.km = load i64, ptr %i.kk, align 8, !tbaa !38
  %i.kn = add i64 %i.km, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.kn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  br label %bb.am

bb.al:                                            ; preds = %bb.v, %bb.u, %bb.t, %_ZNK6casadi6MXNode3depEx.exit186
  %i.ko = landingpad { ptr, i32 }
          cleanup
  %i.kp = load ptr, ptr %24, align 8, !tbaa !36   ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244: ; preds = %bb.al
  %i.ks = load i64, ptr %i.kq, align 8, !tbaa !38
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.kt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198
  %.pn74 = phi { ptr, i32 } [ %i.ko, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246 ], [ %.pn69.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243 ], [ %.pn65.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234 ], [ %.pn61.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225 ], [ %i.if, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216 ], [ %i.hs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207 ], [ %i.hf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198 ]
  resume { ptr, i32 } %.pn74
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi21SetNonzerosSliceParamILb1EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !785
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !785
  %i.f = load ptr, ptr %2, align 8, !tbaa !785    ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.n, 2
  br i1 %.not.i.i.i, label %_ZNK6casadi6MXNode3depEx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 2, i64 noundef %i.n) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.q = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 2 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i30.not = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.i30.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit31

bb.c:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit31:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %i.u = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) ; 3 uses
  %.not = icmp eq ptr %i.a, %i.f
  br i1 %.not, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit31
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i32.not = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i.i32.not, label %bb.e, label %_ZNK6casadi6MXNode3depEx.exit33

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit33:                  ; preds = %bb.d
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.y = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) ; 3 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %bb.g, !prof !304

bb.f:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit33
  %.idx = shl nsw i64 %i.y, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.f, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.g:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit33
  %i.aa = icmp eq i64 %i.y, 1
  br i1 %i.aa, label %bb.h, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.ab, ptr %i.f, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %bb.h, %bb.g, %bb.f, %_ZNK6casadi6MXNode3depEx.exit31
  %i.ac = icmp sgt i64 %i.q, 0
  br i1 %i.ac, label %.lr.ph39, label %._crit_edge40.split

.lr.ph39:                                         ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !2028 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph39.split, label %._crit_edge40.split

.lr.ph39.split:                                   ; preds = %.lr.ph39
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !2029 ; 4 uses
  %5 = add nsw i64 %i.ae, -1                      ; 2 uses
  %6 = udiv i64 %5, %i.ah                         ; 2 uses
  %7 = add i64 %6, 1                              ; 2 uses
  %8 = icmp ugt i64 %i.ah, %5
  %unroll_iter = and i64 %7, -2
  %9 = and i64 %6, 1
  %lcmp.mod.not.not = icmp eq i64 %9, 0
  %lcmp.mod52 = trunc i64 %7 to i1
  br label %.lr.ph

._crit_edge40.split:                              ; preds = %._crit_edge, %.lr.ph39, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph39.split, %._crit_edge
  %.02438 = phi i64 [ 0, %.lr.ph39.split ], [ %i.al, %._crit_edge ]
  %.02537 = phi ptr [ %i.e, %.lr.ph39.split ], [ %i.ak, %._crit_edge ] ; 2 uses
  %.02636 = phi ptr [ %i.c, %.lr.ph39.split ], [ %.lcssa, %._crit_edge ] ; 2 uses
  %i.ai = load double, ptr %.02537, align 8, !tbaa !560
  %i.aj = fptosi double %i.ai to i64              ; 3 uses
  br i1 %8, label %.epil.preheader, label %bb.i

._crit_edge.unr-lcssa:                            ; preds = %bb.k
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.035.epil.init = phi i64 [ 0, %.lr.ph ], [ %30, %._crit_edge.unr-lcssa ]
  %.134.epil.init = phi ptr [ %.02636, %.lr.ph ], [ %i.at, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod52)
  %10 = add nsw i64 %.035.epil.init, %i.aj        ; 3 uses
  %11 = icmp sgt i64 %10, -1
  %12 = icmp slt i64 %10, %i.u
  %or.cond.epil = and i1 %11, %12
  br i1 %or.cond.epil, label %13, label %._crit_edge.epilog-lcssa

13:                                               ; preds = %.epil.preheader
  %14 = load double, ptr %.134.epil.init, align 8, !tbaa !560
  %15 = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %10 ; 2 uses
  %16 = load double, ptr %15, align 8, !tbaa !560
  %17 = fadd double %14, %16
  store double %17, ptr %15, align 8, !tbaa !560
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %13, %.epil.preheader
  %18 = getelementptr inbounds nuw i8, ptr %.134.epil.init, i64 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  %.lcssa = phi ptr [ %i.at, %._crit_edge.unr-lcssa ], [ %18, %._crit_edge.epilog-lcssa ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.02537, i64 8
  %i.al = add nuw nsw i64 %.02438, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %i.q
  br i1 %exitcond.not, label %._crit_edge40.split, label %.lr.ph, !llvm.loop !2030

bb.i:                                             ; preds = %.lr.ph, %bb.k
  %.035 = phi i64 [ %30, %bb.k ], [ 0, %.lr.ph ]  ; 2 uses
  %.134 = phi ptr [ %i.at, %bb.k ], [ %.02636, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ %i.au, %bb.k ], [ 0, %.lr.ph ]
  %i.am = add nsw i64 %.035, %i.aj                ; 3 uses
  %i.an = icmp sgt i64 %i.am, -1
  %i.ao = icmp slt i64 %i.am, %i.u
  %or.cond = and i1 %i.an, %i.ao
  br i1 %or.cond, label %19, label %24

19:                                               ; preds = %bb.i
  %20 = load double, ptr %.134, align 8, !tbaa !560
  %21 = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.am ; 2 uses
  %22 = load double, ptr %21, align 8, !tbaa !560
  %23 = fadd double %20, %22
  store double %23, ptr %21, align 8, !tbaa !560
  br label %24

24:                                               ; preds = %19, %bb.i
  %25 = add nsw i64 %i.ah, %.035                  ; 2 uses
  %26 = add nsw i64 %25, %i.aj                    ; 3 uses
  %27 = icmp sgt i64 %26, -1
  %28 = icmp slt i64 %26, %i.u
  %or.cond.1 = and i1 %27, %28
  br i1 %or.cond.1, label %bb.j, label %bb.k

bb.j:                                             ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %.134, i64 8
  %i.ap = load double, ptr %29, align 8, !tbaa !560
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %26 ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !560
  %i.as = fadd double %i.ap, %i.ar
  store double %i.as, ptr %i.aq, align 8, !tbaa !560
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %24
  %i.at = getelementptr inbounds nuw i8, ptr %.134, i64 16 ; 3 uses
  %30 = add nsw i64 %i.ah, %25                    ; 2 uses
  %i.au = add i64 %niter, 2                       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %i.au, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.unr-lcssa, label %bb.i, !llvm.loop !2031
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi21SetNonzerosSliceParamILb1EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %4 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %5 = alloca %"class.casadi::MX", align 8        ; 8 uses
  %6 = alloca %"class.casadi::MX", align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK6casadi6MXNode3depEx.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !26
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @_ZN6casadi2MX7projectERKS0_RKNS_8SparsityEb(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.g = load ptr, ptr %1, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %.not.i.i.i12 = icmp ugt i64 %i.n, 1
  br i1 %.not.i.i.i12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.n) #35
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6casadi2MX7projectERKS0_RKNS_8SparsityEb(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i1 noundef zeroext false)
          to label %_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit unwind label %bb.h

_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.q = load ptr, ptr %1, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !84
  store ptr %i.s, ptr %5, align 8, !tbaa !84
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN6casadi2MXC2ERKS0_.exit unwind label %bb.i

_ZN6casadi2MXC2ERKS0_.exit:                       ; preds = %_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.t = invoke noundef ptr @_ZN6casadi2MXptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.j       ; 2 uses

bb.f:                                             ; preds = %_ZN6casadi2MXC2ERKS0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 760
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %2, align 8, !tbaa !26
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.k ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %bb.g
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.h:                                             ; preds = %bb.e, %bb.c, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.i:                                             ; preds = %_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %bb.f, %_ZN6casadi2MXC2ERKS0_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.ab, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.m ], [ %i.aa, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi21SetNonzerosSliceParamILb1EE10ad_forwardERKSt6vectorIS2_INS_2MXESaIS3_EESaIS5_EERS7_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %4 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %5 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.h, 2
  br i1 %.not.i.i.i, label %_ZNK6casadi6MXNode3depEx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 2, i64 noundef %i.h) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !604
  %i.l = load ptr, ptr %2, align 8, !tbaa !607
  %.not = icmp eq ptr %i.k, %i.l
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN6casadi2MXaSERKS0_.exit29, %_ZNK6casadi6MXNode3depEx.exit
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN6casadi2MXaSERKS0_.exit29
  %.01834 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %_ZN6casadi2MXaSERKS0_.exit29 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i22.not = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i22.not, label %bb.d, label %_ZNK6casadi6MXNode3depEx.exit23

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit23:                  ; preds = %bb.c
  %i.p = load ptr, ptr %1, align 8, !tbaa !607
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.01834
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  call void @_ZN6casadi2MX7projectERKS0_RKNS_8SparsityEb(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.s, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.t = load ptr, ptr %1, align 8, !tbaa !607
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.01834
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3                 ; 2 uses
  %.not.i.i.i24 = icmp ugt i64 %i.ac, 1
  br i1 %.not.i.i.i24, label %bb.f, label %bb.e

end_hunk_1
