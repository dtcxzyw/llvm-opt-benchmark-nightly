Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/crop?download=true
inline.NumInlined: 212
inline.NumDeleted: 78
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN4ncnn4Crop10load_paramERKNS_9ParamDictE:bb.a
  %i.im = load <2 x i64>, ptr %i.il, align 8, !tbaa !17
  store <2 x i64> %i.im, ptr %i.ik, align 8, !tbaa !17
  br label %bb.bx

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i154: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i153
  %i.in = load i64, ptr %i.hx, align 8, !tbaa !17
  store ptr %i.hz, ptr %i.hv, align 8, !tbaa !11
  %i.io = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.iq = load <2 x i64>, ptr %i.io, align 8, !tbaa !17
  store <2 x i64> %i.iq, ptr %i.ip, align 8, !tbaa !17
  %.not.i155 = icmp eq ptr %i.hw, null
  br i1 %.not.i155, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i154
  store ptr %i.hw, ptr %10, align 8, !tbaa !11
  store i64 %i.in, ptr %i.ia, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit160

bb.bx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i154, %.thread.i159
  store ptr %i.ia, ptr %10, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i156, %bb.bw, %bb.bx
  %i.ir = phi ptr [ %.pre.i157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i156 ], [ %i.hw, %bb.bw ], [ %i.ia, %bb.bx ]
  %i.is = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.is, align 8, !tbaa !57
  store i8 0, ptr %i.ir, align 1, !tbaa !17
  %i.it = load ptr, ptr %10, align 8, !tbaa !11   ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit160
  %i.iw = load i64, ptr %i.iu, align 8, !tbaa !17
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.ix) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  %i.iy = load ptr, ptr %11, align 8, !tbaa !11   ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.ht
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %i.ja = load i64, ptr %i.ht, align 8, !tbaa !17
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.jc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.jc, ptr %13, align 8, !tbaa !56
  %i.jd = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.jd, align 8, !tbaa !57
  store i8 0, ptr %i.jc, align 8, !tbaa !17
  invoke void @_ZNK4ncnn9ParamDict3getEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 21, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.by unwind label %bb.ec

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 5 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !11 ; 6 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.jh = icmp eq ptr %i.jf, %i.jg
  %i.ji = load ptr, ptr %12, align 8, !tbaa !11   ; 5 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.jk = icmp eq ptr %i.ji, %i.jj                ; 2 uses
  br i1 %i.jh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i176: ; preds = %bb.by
  br i1 %i.jk, label %bb.bz, label %.thread.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i171: ; preds = %bb.by
  br i1 %i.jk, label %bb.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i172

bb.bz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i176
  %i.jl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !57 ; 3 uses
  %i.jn = icmp ult i64 %i.jm, 16
  call void @llvm.assume(i1 %i.jn)
  switch i64 %i.jm, label %bb.cb [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i174
    i64 1, label %bb.ca
  ]

bb.ca:                                            ; preds = %bb.bz
  %i.jo = load i8, ptr %i.ji, align 1, !tbaa !17
  store i8 %i.jo, ptr %i.jf, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i174

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jf, ptr align 1 %i.ji, i64 %i.jm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i174: ; preds = %bb.cb, %bb.ca, %bb.bz
  %i.jp = load i64, ptr %i.jl, align 8, !tbaa !57 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %i.jp, ptr %i.jq, align 8, !tbaa !57
  %i.jr = load ptr, ptr %i.je, align 8, !tbaa !11
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.jp
  store i8 0, ptr %i.js, align 1, !tbaa !17
  %.pre.i175 = load ptr, ptr %12, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit178

.thread.i177:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i176
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr %i.ji, ptr %i.je, align 8, !tbaa !11
  %i.ju = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.jv = load <2 x i64>, ptr %i.ju, align 8, !tbaa !17
  store <2 x i64> %i.jv, ptr %i.jt, align 8, !tbaa !17
  br label %bb.cd

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i172: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i171
  %i.jw = load i64, ptr %i.jg, align 8, !tbaa !17
  store ptr %i.ji, ptr %i.je, align 8, !tbaa !11
  %i.jx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.jz = load <2 x i64>, ptr %i.jx, align 8, !tbaa !17
  store <2 x i64> %i.jz, ptr %i.jy, align 8, !tbaa !17
  %.not.i173 = icmp eq ptr %i.jf, null
  br i1 %.not.i173, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i172
  store ptr %i.jf, ptr %12, align 8, !tbaa !11
  store i64 %i.jw, ptr %i.jj, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit178

bb.cd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i172, %.thread.i177
  store ptr %i.jj, ptr %12, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i174, %bb.cc, %bb.cd
  %i.ka = phi ptr [ %.pre.i175, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i174 ], [ %i.jf, %bb.cc ], [ %i.jj, %bb.cd ]
  %i.kb = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.kb, align 8, !tbaa !57
  store i8 0, ptr %i.ka, align 1, !tbaa !17
  %i.kc = load ptr, ptr %12, align 8, !tbaa !11   ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ke = icmp eq ptr %i.kc, %i.kd
  br i1 %i.ke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit178
  %i.kf = load i64, ptr %i.kd, align 8, !tbaa !17
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit178, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  %i.kh = load ptr, ptr %13, align 8, !tbaa !11   ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.jc
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
  %i.kj = load i64, ptr %i.jc, align 8, !tbaa !17
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kk) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.kl = load ptr, ptr %i.ab, align 8, !tbaa !23
  %i.km = icmp eq ptr %i.kl, null
  br i1 %i.km, label %_ZNK4ncnn3Mat5emptyEv.exit143.thread, label %_ZNK4ncnn3Mat5emptyEv.exit143

_ZNK4ncnn3Mat5emptyEv.exit143:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
  %i.kn = load i64, ptr %i.at, align 8, !tbaa !25
  %i.ko = load i32, ptr %i.as, align 8, !tbaa !55
  %i.kp = sext i32 %i.ko to i64
  %i.kq = mul i64 %i.kn, %i.kp
  %i.kr = icmp eq i64 %i.kq, 0
  br i1 %i.kr, label %_ZNK4ncnn3Mat5emptyEv.exit143.thread, label %bb.ce

bb.ce:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit143
  %i.ks = load ptr, ptr %i.cf, align 8, !tbaa !23
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %_ZNK4ncnn3Mat5emptyEv.exit143.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ku = load i64, ptr %i.cx, align 8, !tbaa !25
  %i.kv = load i32, ptr %i.cw, align 8, !tbaa !55
  %i.kw = sext i32 %i.kv to i64
  %i.kx = mul i64 %i.ku, %i.kw
  %i.ky = icmp ne i64 %i.kx, 0
  br label %_ZNK4ncnn3Mat5emptyEv.exit143.thread

_ZNK4ncnn3Mat5emptyEv.exit143.thread:             ; preds = %bb.cf, %bb.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, %_ZNK4ncnn3Mat5emptyEv.exit143
  %i.kz = phi i1 [ false, %_ZNK4ncnn3Mat5emptyEv.exit143 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184 ], [ false, %bb.ce ], [ %i.ky, %bb.cf ] ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !57
  %i.lc = icmp eq i64 %i.lb, 0                    ; 2 uses
  br i1 %i.lc, label %bb.ed, label %bb.cg

bb.cg:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit143.thread
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !57
  %14 = icmp eq i64 %i.le, 0
  br i1 %14, label %bb.ed, label %15

15:                                               ; preds = %bb.cg
  br label %bb.ed

bb.ch:                                            ; preds = %bb.a
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.ci:                                            ; preds = %bb.g
  %i.lg = landingpad { ptr, i32 }
          cleanup
  %i.lh = load ptr, ptr %i.ac, align 8, !tbaa !18 ; 2 uses
  %.not.i80 = icmp eq ptr %i.lh, null
  br i1 %.not.i80, label %_ZN4ncnn3MatD2Ev.exit53, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.li = atomicrmw add ptr %i.lh, i32 -1 acq_rel, align 4
  %i.lj = icmp eq i32 %i.li, 1
  br i1 %i.lj, label %bb.ck, label %_ZN4ncnn3MatD2Ev.exit53

bb.ck:                                            ; preds = %bb.cj
  %i.lk = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ll = load ptr, ptr %i.lk, align 16, !tbaa !22 ; 3 uses
  %.not3.i81 = icmp eq ptr %i.ll, null
  %i.lm = load ptr, ptr %2, align 16, !tbaa !23   ; 3 uses
  br i1 %.not3.i81, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ln = load ptr, ptr %i.ll, align 8, !tbaa !9
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 24
  %i.lp = load ptr, ptr %i.lo, align 8
  invoke void %i.lp(ptr noundef nonnull align 8 dereferenceable(8) %i.ll, ptr noundef %i.lm)
          to label %_ZN4ncnn3MatD2Ev.exit53 unwind label %bb.co, !inline_history !24

bb.cm:                                            ; preds = %bb.ck
  %.not.i113 = icmp eq ptr %i.lm, null
  br i1 %.not.i113, label %_ZN4ncnn3MatD2Ev.exit53, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @free(ptr noundef nonnull %i.lm) #12
  br label %_ZN4ncnn3MatD2Ev.exit53

bb.co:                                            ; preds = %bb.cl
  %i.lq = landingpad { ptr, i32 }
          catch ptr null
  %i.lr = extractvalue { ptr, i32 } %i.lq, 0
  call void @__clang_call_terminate(ptr %i.lr) #21
  unreachable

_ZN4ncnn3MatD2Ev.exit53:                          ; preds = %bb.cj, %bb.ci, %bb.cl, %bb.cm, %bb.cn
  %i.ls = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.lt = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 0, ptr %i.lt, align 16, !tbaa !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ls, i8 0, i64 20, i1 false)
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit53, %bb.ch
  %.pn = phi { ptr, i32 } [ %i.lg, %_ZN4ncnn3MatD2Ev.exit53 ], [ %i.lf, %bb.ch ]
  %i.lu = load ptr, ptr %i.y, align 8, !tbaa !18  ; 2 uses
  %.not.i84 = icmp eq ptr %i.lu, null
  br i1 %.not.i84, label %_ZN4ncnn3MatD2Ev.exit52, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lv = atomicrmw add ptr %i.lu, i32 -1 acq_rel, align 4
  %i.lw = icmp eq i32 %i.lv, 1
  br i1 %i.lw, label %bb.cr, label %_ZN4ncnn3MatD2Ev.exit52

bb.cr:                                            ; preds = %bb.cq
  %i.lx = load ptr, ptr %i.z, align 8, !tbaa !22  ; 3 uses
  %.not3.i85 = icmp eq ptr %i.lx, null
  %i.ly = load ptr, ptr %3, align 8, !tbaa !23    ; 3 uses
  br i1 %.not3.i85, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lz = load ptr, ptr %i.lx, align 8, !tbaa !9
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8
  invoke void %i.mb(ptr noundef nonnull align 8 dereferenceable(8) %i.lx, ptr noundef %i.ly)
          to label %_ZN4ncnn3MatD2Ev.exit52 unwind label %bb.cv, !inline_history !24

bb.ct:                                            ; preds = %bb.cr
  %.not.i111 = icmp eq ptr %i.ly, null
  br i1 %.not.i111, label %_ZN4ncnn3MatD2Ev.exit52, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @free(ptr noundef nonnull %i.ly) #12
  br label %_ZN4ncnn3MatD2Ev.exit52

bb.cv:                                            ; preds = %bb.cs
  %i.mc = landingpad { ptr, i32 }
          catch ptr null
  %i.md = extractvalue { ptr, i32 } %i.mc, 0
  call void @__clang_call_terminate(ptr %i.md) #21
  unreachable

_ZN4ncnn3MatD2Ev.exit52:                          ; preds = %bb.cq, %bb.cp, %bb.cs, %bb.ct, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.es

bb.cw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit58
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.cx:                                            ; preds = %bb.ab
  %i.mf = landingpad { ptr, i32 }
          cleanup
  %i.mg = load ptr, ptr %i.cg, align 8, !tbaa !18 ; 2 uses
  %.not.i88 = icmp eq ptr %i.mg, null
  br i1 %.not.i88, label %_ZN4ncnn3MatD2Ev.exit51, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mh = atomicrmw add ptr %i.mg, i32 -1 acq_rel, align 4
  %i.mi = icmp eq i32 %i.mh, 1
  br i1 %i.mi, label %bb.cz, label %_ZN4ncnn3MatD2Ev.exit51

bb.cz:                                            ; preds = %bb.cy
  %i.mj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.mk = load ptr, ptr %i.mj, align 16, !tbaa !22 ; 3 uses
  %.not3.i89 = icmp eq ptr %i.mk, null
  %i.ml = load ptr, ptr %4, align 16, !tbaa !23   ; 3 uses
  br i1 %.not3.i89, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.mm = load ptr, ptr %i.mk, align 8, !tbaa !9
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  %i.mo = load ptr, ptr %i.mn, align 8
  invoke void %i.mo(ptr noundef nonnull align 8 dereferenceable(8) %i.mk, ptr noundef %i.ml)
          to label %_ZN4ncnn3MatD2Ev.exit51 unwind label %bb.dd, !inline_history !24

bb.db:                                            ; preds = %bb.cz
  %.not.i109 = icmp eq ptr %i.ml, null
  br i1 %.not.i109, label %_ZN4ncnn3MatD2Ev.exit51, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @free(ptr noundef nonnull %i.ml) #12
  br label %_ZN4ncnn3MatD2Ev.exit51

bb.dd:                                            ; preds = %bb.da
  %i.mp = landingpad { ptr, i32 }
          catch ptr null
  %i.mq = extractvalue { ptr, i32 } %i.mp, 0
  call void @__clang_call_terminate(ptr %i.mq) #21
  unreachable

_ZN4ncnn3MatD2Ev.exit51:                          ; preds = %bb.cy, %bb.cx, %bb.da, %bb.db, %bb.dc
  %i.mr = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ms = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 0, ptr %i.ms, align 16, !tbaa !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.mr, i8 0, i64 20, i1 false)
  br label %bb.de

bb.de:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit51, %bb.cw
  %.pn38 = phi { ptr, i32 } [ %i.mf, %_ZN4ncnn3MatD2Ev.exit51 ], [ %i.me, %bb.cw ]
  %i.mt = load ptr, ptr %i.cc, align 8, !tbaa !18 ; 2 uses
  %.not.i92 = icmp eq ptr %i.mt, null
  br i1 %.not.i92, label %_ZN4ncnn3MatD2Ev.exit50, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.mu = atomicrmw add ptr %i.mt, i32 -1 acq_rel, align 4
  %i.mv = icmp eq i32 %i.mu, 1
  br i1 %i.mv, label %bb.dg, label %_ZN4ncnn3MatD2Ev.exit50

bb.dg:                                            ; preds = %bb.df
  %i.mw = load ptr, ptr %i.cd, align 8, !tbaa !22 ; 3 uses
  %.not3.i93 = icmp eq ptr %i.mw, null
  %i.mx = load ptr, ptr %5, align 8, !tbaa !23    ; 3 uses
  br i1 %.not3.i93, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.my = load ptr, ptr %i.mw, align 8, !tbaa !9
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  %i.na = load ptr, ptr %i.mz, align 8
  invoke void %i.na(ptr noundef nonnull align 8 dereferenceable(8) %i.mw, ptr noundef %i.mx)
          to label %_ZN4ncnn3MatD2Ev.exit50 unwind label %bb.dk, !inline_history !24

bb.di:                                            ; preds = %bb.dg
  %.not.i107 = icmp eq ptr %i.mx, null
  br i1 %.not.i107, label %_ZN4ncnn3MatD2Ev.exit50, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @free(ptr noundef nonnull %i.mx) #12
  br label %_ZN4ncnn3MatD2Ev.exit50

bb.dk:                                            ; preds = %bb.dh
  %i.nb = landingpad { ptr, i32 }
          catch ptr null
  %i.nc = extractvalue { ptr, i32 } %i.nb, 0
  call void @__clang_call_terminate(ptr %i.nc) #21
  unreachable

_ZN4ncnn3MatD2Ev.exit50:                          ; preds = %bb.df, %bb.de, %bb.dh, %bb.di, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.es

bb.dl:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit56
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.dm:                                            ; preds = %bb.aw
  %i.ne = landingpad { ptr, i32 }
          cleanup
  %i.nf = load ptr, ptr %i.ek, align 8, !tbaa !18 ; 2 uses
  %.not.i96 = icmp eq ptr %i.nf, null
  br i1 %.not.i96, label %_ZN4ncnn3MatD2Ev.exit49, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ng = atomicrmw add ptr %i.nf, i32 -1 acq_rel, align 4
  %i.nh = icmp eq i32 %i.ng, 1
  br i1 %i.nh, label %bb.do, label %_ZN4ncnn3MatD2Ev.exit49

bb.do:                                            ; preds = %bb.dn
  %i.ni = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.nj = load ptr, ptr %i.ni, align 16, !tbaa !22 ; 3 uses
  %.not3.i97 = icmp eq ptr %i.nj, null
  %i.nk = load ptr, ptr %6, align 16, !tbaa !23   ; 3 uses
  br i1 %.not3.i97, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.nl = load ptr, ptr %i.nj, align 8, !tbaa !9
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 24
  %i.nn = load ptr, ptr %i.nm, align 8
  invoke void %i.nn(ptr noundef nonnull align 8 dereferenceable(8) %i.nj, ptr noundef %i.nk)
          to label %_ZN4ncnn3MatD2Ev.exit49 unwind label %bb.ds, !inline_history !24

bb.dq:                                            ; preds = %bb.do
  %.not.i105 = icmp eq ptr %i.nk, null
  br i1 %.not.i105, label %_ZN4ncnn3MatD2Ev.exit49, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @free(ptr noundef nonnull %i.nk) #12
  br label %_ZN4ncnn3MatD2Ev.exit49

bb.ds:                                            ; preds = %bb.dp
  %i.no = landingpad { ptr, i32 }
          catch ptr null
  %i.np = extractvalue { ptr, i32 } %i.no, 0
  call void @__clang_call_terminate(ptr %i.np) #21
  unreachable

_ZN4ncnn3MatD2Ev.exit49:                          ; preds = %bb.dn, %bb.dm, %bb.dp, %bb.dq, %bb.dr
  %i.nq = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.nr = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 0, ptr %i.nr, align 16, !tbaa !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.nq, i8 0, i64 20, i1 false)
  br label %bb.dt

bb.dt:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit49, %bb.dl
  %.pn40 = phi { ptr, i32 } [ %i.ne, %_ZN4ncnn3MatD2Ev.exit49 ], [ %i.nd, %bb.dl ]
  %i.ns = load ptr, ptr %i.eg, align 8, !tbaa !18 ; 2 uses
  %.not.i100 = icmp eq ptr %i.ns, null
  br i1 %.not.i100, label %_ZN4ncnn3MatD2Ev.exit, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.nt = atomicrmw add ptr %i.ns, i32 -1 acq_rel, align 4
  %i.nu = icmp eq i32 %i.nt, 1
  br i1 %i.nu, label %bb.dv, label %_ZN4ncnn3MatD2Ev.exit

bb.dv:                                            ; preds = %bb.du
  %i.nv = load ptr, ptr %i.eh, align 8, !tbaa !22 ; 3 uses
  %.not3.i101 = icmp eq ptr %i.nv, null
  %i.nw = load ptr, ptr %7, align 8, !tbaa !23    ; 3 uses
  br i1 %.not3.i101, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.nx = load ptr, ptr %i.nv, align 8, !tbaa !9
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 24
  %i.nz = load ptr, ptr %i.ny, align 8
  invoke void %i.nz(ptr noundef nonnull align 8 dereferenceable(8) %i.nv, ptr noundef %i.nw)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.dz, !inline_history !24

bb.dx:                                            ; preds = %bb.dv
  %.not.i104 = icmp eq ptr %i.nw, null
  br i1 %.not.i104, label %_ZN4ncnn3MatD2Ev.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @free(ptr noundef nonnull %i.nw) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.dz:                                            ; preds = %bb.dw
  %i.oa = landingpad { ptr, i32 }
          catch ptr null
  %i.ob = extractvalue { ptr, i32 } %i.oa, 0
  call void @__clang_call_terminate(ptr %i.ob) #21
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.du, %bb.dt, %bb.dw, %bb.dx, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.es

bb.ea:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit54
  %i.oc = landingpad { ptr, i32 }
          cleanup
  %i.od = load ptr, ptr %9, align 8, !tbaa !11    ; 2 uses
  %i.oe = icmp eq ptr %i.od, %i.gk
  br i1 %i.oe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185: ; preds = %bb.ea
  %i.of = load i64, ptr %i.gk, align 8, !tbaa !17
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.od, i64 noundef %i.og) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187: ; preds = %bb.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.es

bb.eb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.oh = landingpad { ptr, i32 }
          cleanup
  %i.oi = load ptr, ptr %11, align 8, !tbaa !11   ; 2 uses
  %i.oj = icmp eq ptr %i.oi, %i.ht
  br i1 %i.oj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %bb.eb
  %i.ok = load i64, ptr %i.ht, align 8, !tbaa !17
  %i.ol = add i64 %i.ok, 1
  call void @_ZdlPvm(ptr noundef %i.oi, i64 noundef %i.ol) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %bb.es

bb.ec:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  %i.om = landingpad { ptr, i32 }
          cleanup
  %i.on = load ptr, ptr %13, align 8, !tbaa !11   ; 2 uses
  %i.oo = icmp eq ptr %i.on, %i.jc
  br i1 %i.oo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %bb.ec
  %i.op = load i64, ptr %i.jc, align 8, !tbaa !17
  %i.oq = add i64 %i.op, 1
  call void @_ZdlPvm(ptr noundef %i.on, i64 noundef %i.oq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  br label %bb.es

bb.ed:                                            ; preds = %15, %bb.cg, %_ZNK4ncnn3Mat5emptyEv.exit143.thread
  %.0 = phi i1 [ %i.kz, %_ZNK4ncnn3Mat5emptyEv.exit143.thread ], [ %i.kz, %bb.cg ], [ true, %15 ]
  %i.or = load i32, ptr %i.j, align 8, !tbaa !42
  %i.os = icmp eq i32 %i.or, 0
  br i1 %i.os, label %bb.ee, label %bb.em

bb.ee:                                            ; preds = %bb.ed
  %i.ot = load i32, ptr %i.l, align 4, !tbaa !43
  %i.ou = icmp eq i32 %i.ot, 0
  br i1 %i.ou, label %bb.ef, label %bb.em

bb.ef:                                            ; preds = %bb.ee
  %i.ov = load i32, ptr %i.n, align 8, !tbaa !44
  %i.ow = icmp eq i32 %i.ov, 0
  br i1 %i.ow, label %bb.eg, label %bb.em

bb.eg:                                            ; preds = %bb.ef
  %i.ox = load i32, ptr %i.p, align 4, !tbaa !45
  %i.oy = icmp eq i32 %i.ox, 0
  br i1 %i.oy, label %bb.eh, label %bb.em

bb.eh:                                            ; preds = %bb.eg
  %i.oz = load i32, ptr %i.r, align 8, !tbaa !46
  %i.pa = icmp eq i32 %i.oz, 0
  br i1 %i.pa, label %bb.ei, label %bb.em

bb.ei:                                            ; preds = %bb.eh
  %i.pb = load i32, ptr %i.t, align 4, !tbaa !47
  %i.pc = icmp eq i32 %i.pb, 0
  br i1 %i.pc, label %bb.ej, label %bb.em

bb.ej:                                            ; preds = %bb.ei
  %i.pd = load i32, ptr %i.v, align 8, !tbaa !48
  %i.pe = icmp eq i32 %i.pd, 0
  br i1 %i.pe, label %bb.ek, label %bb.em

bb.ek:                                            ; preds = %bb.ej
  %i.pf = load i32, ptr %i.x, align 4, !tbaa !49
  %i.pg = icmp ne i32 %i.pf, 0
  %or.cond = or i1 %.0, %i.pg
  br i1 %or.cond, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ph, align 8, !tbaa !58
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed
  br i1 %i.lc, label %bb.en, label %bb.ep

bb.en:                                            ; preds = %bb.em
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !57
  %i.pk = icmp eq i64 %i.pj, 0
  br i1 %i.pk, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !57
  %i.pn = icmp eq i64 %i.pm, 0
  br i1 %i.pn, label %bb.er, label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en, %bb.em
  %i.po = call noundef i32 @_ZN4ncnn22count_expression_blobsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.gm)
  %i.pp = call noundef i32 @_ZN4ncnn22count_expression_blobsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.hv)
  %i.pq = call noundef i32 @_ZN4ncnn22count_expression_blobsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.je)
  %i.pr = icmp sgt i32 %i.po, 1
  %i.ps = icmp sgt i32 %i.pp, 1
  %or.cond3 = or i1 %i.pr, %i.ps
  %i.pt = icmp sgt i32 %i.pq, 1
  %or.cond5 = or i1 %or.cond3, %i.pt
  br i1 %or.cond5, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.pu, align 8, !tbaa !58
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep, %bb.eo
  ret i32 0

bb.es:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit50, %_ZN4ncnn3MatD2Ev.exit52
  %.pn46.pn = phi { ptr, i32 } [ %i.om, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ], [ %i.oh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ], [ %i.oc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187 ], [ %.pn40, %_ZN4ncnn3MatD2Ev.exit ], [ %.pn38, %_ZN4ncnn3MatD2Ev.exit50 ], [ %.pn, %_ZN4ncnn3MatD2Ev.exit52 ]
  resume { ptr, i32 } %.pn46.pn
}

declare noundef i32 @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK4ncnn4Crop7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 20 uses
  %i.c = alloca i32, align 4                      ; 15 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 11 uses
  %i.f = alloca i32, align 4                      ; 17 uses
  %i.g = alloca i32, align 4                      ; 14 uses
  %i.h = alloca i32, align 4                      ; 9 uses
  %i.i = alloca i32, align 4                      ; 12 uses
  %4 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %5 = alloca %"class.ncnn::Mat", align 16        ; 17 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %7 = alloca %"class.ncnn::Mat", align 16        ; 17 uses
  %i.j = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !59     ; 62 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 44 ; 40 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !60   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !61   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 5 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !55   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 7 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !63   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 10 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !52
  store i64 %i.x, ptr %i.a, align 8, !tbaa !64
  %i.y = load ptr, ptr %2, align 8, !tbaa !59     ; 110 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 -1, ptr %i.e, align 4, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 -1, ptr %i.f, align 4, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 -1, ptr %i.g, align 4, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  store i32 -1, ptr %i.h, align 4, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !57
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !57
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = call noundef i32 @_ZNK4ncnn4Crop14eval_crop_exprERKSt6vectorINS_3MatESaIS2_EERiS7_S7_S7_S7_S7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i) ; 0 uses
  br label %_ZN4ncnn3MatD2Ev.exit131

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !26 ; 5 uses
  %i.ai = icmp eq i32 %i.ah, -233
  br i1 %i.ai, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  switch i32 %i.v, label %.thread [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.l, align 8, !tbaa !23  ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !54
  store i32 %i.ak, ptr %i.b, align 4, !tbaa !54
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !23  ; 4 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !54
  store i32 %i.am, ptr %i.b, align 4, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !54
  store i32 %i.ao, ptr %i.c, align 4, !tbaa !54
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !54
  store i32 %i.aq, ptr %i.f, align 4, !tbaa !54
  br label %.sink.split.i

bb.h:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !23  ; 6 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !54
  store i32 %i.as, ptr %i.b, align 4, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !54
  store i32 %i.au, ptr %i.c, align 4, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !54
  store i32 %i.aw, ptr %i.e, align 4, !tbaa !54
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !54
  store i32 %i.ay, ptr %i.f, align 4, !tbaa !54
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !54
  store i32 %i.ba, ptr %i.g, align 4, !tbaa !54
  br label %.sink.split.i
end_hunk_0
