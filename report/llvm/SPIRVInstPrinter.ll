Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SPIRVInstPrinter?download=true
inline.NumInlined: 718
inline.NumDeleted: 267
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm16SPIRVInstPrinter9printInstEPKNS_6MCInstEmNS_9StringRefERKNS_15MCSubtargetInfoERNS_11raw_ostreamE:bb.a
  br label %bb.ca

bb.ca:                                            ; preds = %.thread342, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.7, %bb.bx
  %i.iy = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.7 ], [ %.pre241, %bb.bx ], [ 0, %.thread342 ]
  %i.iz = load ptr, ptr %12, align 8, !tbaa !59
  %i.ja = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.iz, i64 noundef %i.iy) #17 ; 0 uses
  %i.jb = load ptr, ptr %12, align 8, !tbaa !59   ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.gc
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.cb:                                            ; preds = %.critedge
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !29 ; 2 uses
  %.not177 = icmp ugt i32 %i.je, %i.y
  br i1 %.not177, label %bb.cc, label %_ZN4llvm16SPIRVInstPrinter25printRemainingVariableOpsEPKNS_6MCInstEjRNS_11raw_ostreamEbb.exit

bb.cc:                                            ; preds = %bb.cb
  %i.jf = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !28 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !23
  %.not.i214 = icmp ult ptr %i.jg, %i.ji
  br i1 %.not.i214, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 noundef zeroext 32) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit216

bb.ce:                                            ; preds = %bb.cc
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 1
  store ptr %i.jk, ptr %i.jf, align 8, !tbaa !28
  store i8 32, ptr %i.jg, align 1, !tbaa !20
  br label %_ZN4llvm11raw_ostreamlsEc.exit216

_ZN4llvm11raw_ostreamlsEc.exit216:                ; preds = %bb.cd, %bb.ce
  %i.jl = add i32 %i.je, -1                       ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jn = zext i32 %i.jl to i64
  %i.jo = load ptr, ptr %i.jm, align 8, !tbaa !30
  %i.jp = getelementptr inbounds nuw [16 x i8], ptr %i.jo, i64 %i.jn
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !20
  %i.js = trunc i64 %i.jr to i32                  ; 2 uses
  %i.jt = icmp eq i32 %i.js, 0
  br i1 %i.jt, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit216
  call void @_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE25EEEvPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull %1, i32 noundef %i.jl, ptr noundef nonnull align 8 dereferenceable(48) %6)
  br label %_ZN4llvm16SPIRVInstPrinter25printRemainingVariableOpsEPKNS_6MCInstEjRNS_11raw_ostreamEbb.exit

bb.cg:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit216
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.ju = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store ptr %i.ju, ptr %14, align 8, !tbaa !116
  %i.jv = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  store i64 0, ptr %i.jv, align 8, !tbaa !63
  store i8 0, ptr %i.ju, align 8, !tbaa !20
  %i.jw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cm
  %i.jx = load ptr, ptr %14, align 8, !tbaa !59
  %i.jy = load i64, ptr %i.jv, align 8, !tbaa !63
  %i.jz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.jx, i64 noundef %i.jy) #17 ; 0 uses
  %i.ka = load ptr, ptr %14, align 8, !tbaa !59   ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.ju
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %bb.ch
  %i.kc = load i64, ptr %i.ju, align 8, !tbaa !20
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.kd) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %_ZN4llvm16SPIRVInstPrinter25printRemainingVariableOpsEPKNS_6MCInstEjRNS_11raw_ostreamEbb.exit

bb.ci:                                            ; preds = %bb.cg, %bb.cm
  %.0234 = phi i32 [ 1, %bb.cg ], [ %i.kn, %bb.cm ] ; 4 uses
  %i.ke = and i32 %.0234, %i.js
  %.not178 = icmp eq i32 %i.ke, 0
  br i1 %.not178, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kf = load i64, ptr %i.jv, align 8, !tbaa !63
  %i.kg = icmp eq i64 %i.kf, 0
  br i1 %i.kg, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32) %14, i8 noundef signext 124) ; 0 uses
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @_ZN4llvm26getSymbolicOperandMnemonicB5cxx11ENS_5SPIRV15OperandCategory15OperandCategoryEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, i32 noundef 25, i32 noundef %.0234) #17
  %i.ki = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.kj = load ptr, ptr %15, align 8, !tbaa !59   ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.jw
  br i1 %i.kk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %bb.cl
  %i.kl = load i64, ptr %i.jw, align 8, !tbaa !20
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.km) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222
  %i.kn = shl nuw nsw i32 %.0234, 1
  %i.ko = icmp samesign ult i32 %.0234, 4097
  br i1 %i.ko, label %bb.ci, label %bb.ch, !llvm.loop !144

bb.cn:                                            ; preds = %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !29 ; 2 uses
  %i.kr = icmp ugt i32 %i.kq, %i.y
  br i1 %i.kr, label %bb.co, label %_ZN4llvm16SPIRVInstPrinter25printRemainingVariableOpsEPKNS_6MCInstEjRNS_11raw_ostreamEbb.exit

bb.co:                                            ; preds = %bb.cn
  %i.ks = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !28 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !23
  %.not.i223 = icmp ult ptr %i.kt, %i.kv
  br i1 %.not.i223, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.kw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 noundef zeroext 32) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit225

bb.cq:                                            ; preds = %bb.co
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 1
  store ptr %i.kx, ptr %i.ks, align 8, !tbaa !28
  store i8 32, ptr %i.kt, align 1, !tbaa !20
  br label %_ZN4llvm11raw_ostreamlsEc.exit225

_ZN4llvm11raw_ostreamlsEc.exit225:                ; preds = %bb.cp, %bb.cq
  %i.ky = add i32 %i.kq, -1
  call void @_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE30EEEvPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull %1, i32 noundef %i.ky, ptr noundef nonnull align 8 dereferenceable(48) %6)
  br label %_ZN4llvm16SPIRVInstPrinter25printRemainingVariableOpsEPKNS_6MCInstEjRNS_11raw_ostreamEbb.exit

bb.cr:                                            ; preds = %.critedge, %.critedge
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !29 ; 2 uses
  %i.lb = icmp ugt i32 %i.la, %i.y
  br i1 %i.lb, label %bb.cs, label %_ZN4llvm16SPIRVInstPrinter25printRemainingVariableOpsEPKNS_6MCInstEjRNS_11raw_ostreamEbb.exit

bb.cs:                                            ; preds = %bb.cr
  %i.lc = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !28 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !23
  %.not.i226 = icmp ult ptr %i.ld, %i.lf
  br i1 %.not.i226, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 noundef zeroext 32) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit228

bb.cu:                                            ; preds = %bb.cs
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 1
  store ptr %i.lh, ptr %i.lc, align 8, !tbaa !28
  store i8 32, ptr %i.ld, align 1, !tbaa !20
  br label %_ZN4llvm11raw_ostreamlsEc.exit228

_ZN4llvm11raw_ostreamlsEc.exit228:                ; preds = %bb.ct, %bb.cu
  %i.li = add i32 %i.la, -1
  call void @_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE27EEEvPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull %1, i32 noundef %i.li, ptr noundef nonnull align 8 dereferenceable(48) %6)
  br label %_ZN4llvm16SPIRVInstPrinter25printRemainingVariableOpsEPKNS_6MCInstEjRNS_11raw_ostreamEbb.exit

bb.cv:                                            ; preds = %.critedge
  call void @_ZN4llvm16SPIRVInstPrinter25printRemainingVariableOpsEPKNS_6MCInstEjRNS_11raw_ostreamEbb(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull %1, i32 noundef %i.y, ptr noundef nonnull align 8 dereferenceable(48) %6, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %_ZN4llvm16SPIRVInstPrinter25printRemainingVariableOpsEPKNS_6MCInstEjRNS_11raw_ostreamEbb.exit

_ZN4llvm16SPIRVInstPrinter25printRemainingVariableOpsEPKNS_6MCInstEjRNS_11raw_ostreamEbb.exit: ; preds = %bb.ax, %_ZN4llvm11raw_ostreamlsEc.exit.us20.i, %bb.ah, %bb.ap, %bb.y, %_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE20EEEvPKNS_6MCInstEjRNS_11raw_ostreamE.exit, %bb.h, %_ZN4llvm11raw_ostreamlsEc.exit228, %bb.cr, %_ZN4llvm11raw_ostreamlsEc.exit225, %bb.cn, %bb.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, %bb.cf, %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bd, %_ZN4llvm11raw_ostreamlsEc.exit189, %bb.ay, %bb.cv, %bb.ai, %_ZN4llvm11raw_ostreamlsEc.exit, %_ZN4llvm11raw_ostreamlsEc.exit186, %bb.r, %bb.s, %bb.t, %bb.k, %bb.e, %bb.g, %bb.f, %bb.c
  call void @_ZN4llvm13MCInstPrinter15printAnnotationERNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr %3, i64 %4) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16SPIRVInstPrinter15printOpDecorateEPKNS_6MCInstERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125, !nonnull !51, !align !58
  %i.c = load i32, ptr %1, align 8, !tbaa !8
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !126
  %i.e = zext i32 %i.c to i64
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i16, ptr %i.h, align 4, !tbaa !134  ; 6 uses
  %i.j = zext i16 %i.i to i32                     ; 14 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !29
  %.not = icmp eq i32 %i.l, %i.j
  br i1 %.not, label %_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE2EEEvPKNS_6MCInstEjRNS_11raw_ostreamE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = add nsw i32 %i.j, -1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.o = zext i32 %i.m to i64
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.o
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !20
  %i.r = trunc i64 %.sroa.3.0.copyload to i32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23
  %.not.i = icmp ult ptr %i.t, %i.v
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 noundef zeroext 32) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store ptr %i.x, ptr %i.s, align 8, !tbaa !28
  store i8 32, ptr %i.t, align 1, !tbaa !20
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.c, %bb.d
  switch i32 %i.r, label %bb.t [
    i32 11, label %bb.e
    i32 27, label %bb.g
    i32 38, label %bb.i
    i32 39, label %bb.k
    i32 40, label %bb.m
    i32 41, label %bb.o
    i32 5635, label %bb.o
    i32 6188, label %bb.p
  ]

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.y = load i32, ptr %i.k, align 8, !tbaa !29
  %i.z = icmp ugt i32 %i.y, %i.j
  br i1 %i.z, label %bb.f, label %_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE2EEEvPKNS_6MCInstEjRNS_11raw_ostreamE.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.aa = zext i16 %i.i to i64
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !20
  %i.af = trunc i64 %i.ae to i32
  call void @_ZN4llvm26getSymbolicOperandMnemonicB5cxx11ENS_5SPIRV15OperandCategory15OperandCategoryEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i32 noundef 2, i32 noundef %i.af) #17
  %i.ag = load ptr, ptr %7, align 8, !tbaa !59
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !63
  %i.aj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.ag, i64 noundef %i.ai) #17 ; 0 uses
  %i.ak = load ptr, ptr %7, align 8, !tbaa !59    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.an = load i64, ptr %i.al, align 8, !tbaa !20
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE2EEEvPKNS_6MCInstEjRNS_11raw_ostreamE.exit

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.ap = load i32, ptr %i.k, align 8, !tbaa !29
  %i.aq = icmp ugt i32 %i.ap, %i.j
  br i1 %i.aq, label %bb.h, label %_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE2EEEvPKNS_6MCInstEjRNS_11raw_ostreamE.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ar = zext i16 %i.i to i64
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !20
  %i.aw = trunc i64 %i.av to i32
  call void @_ZN4llvm26getSymbolicOperandMnemonicB5cxx11ENS_5SPIRV15OperandCategory15OperandCategoryEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i32 noundef 33, i32 noundef %i.aw) #17
  %i.ax = load ptr, ptr %6, align 8, !tbaa !59
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !63
  %i.ba = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.ax, i64 noundef %i.az) #17 ; 0 uses
  %i.bb = load ptr, ptr %6, align 8, !tbaa !59    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !20
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i40: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE2EEEvPKNS_6MCInstEjRNS_11raw_ostreamE.exit

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.bg = load i32, ptr %i.k, align 8, !tbaa !29
  %i.bh = icmp ugt i32 %i.bg, %i.j
  br i1 %i.bh, label %bb.j, label %_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE2EEEvPKNS_6MCInstEjRNS_11raw_ostreamE.exit

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.bi = zext i16 %i.i to i64
  %i.bj = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !20
  %i.bn = trunc i64 %i.bm to i32
  call void @_ZN4llvm26getSymbolicOperandMnemonicB5cxx11ENS_5SPIRV15OperandCategory15OperandCategoryEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i32 noundef 15, i32 noundef %i.bn) #17
  %i.bo = load ptr, ptr %5, align 8, !tbaa !59
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !63
  %i.br = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.bo, i64 noundef %i.bq) #17 ; 0 uses
  %i.bs = load ptr, ptr %5, align 8, !tbaa !59    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42: ; preds = %bb.j
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !20
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i43: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE2EEEvPKNS_6MCInstEjRNS_11raw_ostreamE.exit

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.bx = load i32, ptr %i.k, align 8, !tbaa !29
  %i.by = icmp ugt i32 %i.bx, %i.j
  br i1 %i.by, label %bb.l, label %_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE2EEEvPKNS_6MCInstEjRNS_11raw_ostreamE.exit

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.bz = zext i16 %i.i to i64
  %i.ca = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %i.bz
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !20
  %i.ce = trunc i64 %i.cd to i32
  call void @_ZN4llvm26getSymbolicOperandMnemonicB5cxx11ENS_5SPIRV15OperandCategory15OperandCategoryEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef 13, i32 noundef %i.ce) #17
  %i.cf = load ptr, ptr %4, align 8, !tbaa !59
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !63
  %i.ci = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.cf, i64 noundef %i.ch) #17 ; 0 uses
  %i.cj = load ptr, ptr %4, align 8, !tbaa !59    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45: ; preds = %bb.l
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !20
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i46: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE2EEEvPKNS_6MCInstEjRNS_11raw_ostreamE.exit

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.co = load i32, ptr %i.k, align 8, !tbaa !29
  %i.cp = icmp ugt i32 %i.co, %i.j
  br i1 %i.cp, label %bb.n, label %_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE2EEEvPKNS_6MCInstEjRNS_11raw_ostreamE.exit

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.cq = zext i16 %i.i to i64
  %i.cr = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.cq
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !20
  %i.cv = trunc i64 %i.cu to i32
  call void @_ZN4llvm26getSymbolicOperandMnemonicB5cxx11ENS_5SPIRV15OperandCategory15OperandCategoryEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i32 noundef 12, i32 noundef %i.cv) #17
  %i.cw = load ptr, ptr %3, align 8, !tbaa !59
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !63
  %i.cz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.cw, i64 noundef %i.cy) #17 ; 0 uses
  %i.da = load ptr, ptr %3, align 8, !tbaa !59    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48: ; preds = %bb.n
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !20
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE2EEEvPKNS_6MCInstEjRNS_11raw_ostreamE.exit

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit, %_ZN4llvm11raw_ostreamlsEc.exit
  tail call void @_ZN4llvm16SPIRVInstPrinter14printStringImmEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr nonnull align 8 poison, ptr noundef nonnull %1, i32 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(48) %2)
  br label %_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE2EEEvPKNS_6MCInstEjRNS_11raw_ostreamE.exit

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  tail call void @_ZN4llvm16SPIRVInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull %1, i32 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %i.df = add nuw nsw i32 %i.j, 1                 ; 2 uses
  %i.dg = load i32, ptr %i.k, align 8, !tbaa !29
  %i.dh = icmp ult i32 %i.df, %i.dg
  br i1 %i.dh, label %bb.q, label %_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE2EEEvPKNS_6MCInstEjRNS_11raw_ostreamE.exit

bb.q:                                             ; preds = %bb.p
  %i.di = load ptr, ptr %i.s, align 8, !tbaa !28  ; 3 uses
  %i.dj = load ptr, ptr %i.u, align 8, !tbaa !23
  %.not.i51 = icmp ult ptr %i.di, %i.dj
  br i1 %.not.i51, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dk = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 noundef zeroext 32) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit53

bb.s:                                             ; preds = %bb.q
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  store ptr %i.dl, ptr %i.s, align 8, !tbaa !28
  store i8 32, ptr %i.di, align 1, !tbaa !20
  br label %_ZN4llvm11raw_ostreamlsEc.exit53

_ZN4llvm11raw_ostreamlsEc.exit53:                 ; preds = %bb.r, %bb.s
  tail call void @_ZN4llvm16SPIRVInstPrinter14printStringImmEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr nonnull align 8 poison, ptr noundef nonnull %1, i32 noundef %i.df, ptr noundef nonnull align 8 dereferenceable(48) %2)
  br label %_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE2EEEvPKNS_6MCInstEjRNS_11raw_ostreamE.exit

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.dm = load i32, ptr %i.k, align 8, !tbaa !29  ; 3 uses
  %i.dn = icmp ugt i32 %i.dm, %i.j
  br i1 %i.dn, label %.lr.ph.i, label %_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE2EEEvPKNS_6MCInstEjRNS_11raw_ostreamE.exit

.lr.ph.i:                                         ; preds = %bb.t
  tail call void @_ZN4llvm16SPIRVInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull readonly %1, i32 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %i.do = add nuw nsw i32 %i.j, 1                 ; 2 uses
  %exitcond24.peel.not.i = icmp eq i32 %i.do, %i.dm
  br i1 %exitcond24.peel.not.i, label %_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE2EEEvPKNS_6MCInstEjRNS_11raw_ostreamE.exit, label %.lr.ph.split.split.i

.lr.ph.split.split.i:                             ; preds = %.lr.ph.i, %_ZN4llvm11raw_ostreamlsEc.exit.i
  %.015.i = phi i32 [ %i.dt, %_ZN4llvm11raw_ostreamlsEc.exit.i ], [ %i.do, %.lr.ph.i ] ; 3 uses
  %.not.i54 = icmp eq i32 %.015.i, %i.j
  br i1 %.not.i54, label %_ZN4llvm11raw_ostreamlsEc.exit.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.split.i
  %i.dp = load ptr, ptr %i.s, align 8, !tbaa !28  ; 3 uses
  %i.dq = load ptr, ptr %i.u, align 8, !tbaa !23
  %.not.i.i = icmp ult ptr %i.dp, %i.dq
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dr = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 noundef zeroext 32) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

bb.w:                                             ; preds = %bb.u
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  store ptr %i.ds, ptr %i.s, align 8, !tbaa !28
  store i8 32, ptr %i.dp, align 1, !tbaa !20
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

_ZN4llvm11raw_ostreamlsEc.exit.i:                 ; preds = %bb.w, %bb.v, %.lr.ph.split.split.i
  tail call void @_ZN4llvm16SPIRVInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull readonly %1, i32 noundef %.015.i, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %i.dt = add i32 %.015.i, 1                      ; 2 uses
  %exitcond24.not.i = icmp eq i32 %i.dt, %i.dm
  br i1 %exitcond24.not.i, label %_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE2EEEvPKNS_6MCInstEjRNS_11raw_ostreamE.exit, label %.lr.ph.split.split.i, !llvm.loop !70

_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE2EEEvPKNS_6MCInstEjRNS_11raw_ostreamE.exit: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i, %bb.o, %_ZN4llvm11raw_ostreamlsEc.exit53, %bb.p, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i40, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i43, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i46, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49, %bb.t, %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16SPIRVInstPrinter14printOpExtInstEPKNS_6MCInstERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125, !nonnull !51, !align !58
  %i.c = load i32, ptr %1, align 8, !tbaa !8
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !126
  %i.e = zext i32 %i.c to i64
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i16, ptr %i.h, align 4, !tbaa !134
  %i.j = zext i16 %i.i to i32                     ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !29
  %i.m = icmp eq i32 %i.l, %i.j
  br i1 %i.m, label %_ZN4llvm16SPIRVInstPrinter25printRemainingVariableOpsEPKNS_6MCInstEjRNS_11raw_ostreamEbb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23
  %.not.i = icmp ult ptr %i.o, %i.q
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 noundef zeroext 32) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store ptr %i.s, ptr %i.n, align 8, !tbaa !28
  store i8 32, ptr %i.o, align 1, !tbaa !20
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.c, %bb.d
  %i.t = load i32, ptr %i.k, align 8, !tbaa !29   ; 3 uses
  %i.u = icmp ugt i32 %i.t, %i.j
  br i1 %i.u, label %.lr.ph.i, label %_ZN4llvm16SPIRVInstPrinter25printRemainingVariableOpsEPKNS_6MCInstEjRNS_11raw_ostreamEbb.exit

.lr.ph.i:                                         ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  tail call void @_ZN4llvm16SPIRVInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull readonly %1, i32 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %i.v = add nuw nsw i32 %i.j, 1                  ; 2 uses
  %exitcond24.peel.not.i = icmp eq i32 %i.v, %i.t
  br i1 %exitcond24.peel.not.i, label %_ZN4llvm16SPIRVInstPrinter25printRemainingVariableOpsEPKNS_6MCInstEjRNS_11raw_ostreamEbb.exit, label %.lr.ph.split.split.i

.lr.ph.split.split.i:                             ; preds = %.lr.ph.i, %_ZN4llvm11raw_ostreamlsEc.exit.i
  %.015.i = phi i32 [ %i.aa, %_ZN4llvm11raw_ostreamlsEc.exit.i ], [ %i.v, %.lr.ph.i ] ; 3 uses
  %.not.i9 = icmp eq i32 %.015.i, %i.j
  br i1 %.not.i9, label %_ZN4llvm11raw_ostreamlsEc.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.split.i
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !28   ; 3 uses
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !23
  %.not.i.i = icmp ult ptr %i.w, %i.x
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 noundef zeroext 32) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.z, ptr %i.n, align 8, !tbaa !28
  store i8 32, ptr %i.w, align 1, !tbaa !20
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

_ZN4llvm11raw_ostreamlsEc.exit.i:                 ; preds = %bb.g, %bb.f, %.lr.ph.split.split.i
  tail call void @_ZN4llvm16SPIRVInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull readonly %1, i32 noundef %.015.i, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %i.aa = add i32 %.015.i, 1                      ; 2 uses
  %exitcond24.not.i = icmp eq i32 %i.aa, %i.t
  br i1 %exitcond24.not.i, label %_ZN4llvm16SPIRVInstPrinter25printRemainingVariableOpsEPKNS_6MCInstEjRNS_11raw_ostreamEbb.exit, label %.lr.ph.split.split.i, !llvm.loop !70

_ZN4llvm16SPIRVInstPrinter25printRemainingVariableOpsEPKNS_6MCInstEjRNS_11raw_ostreamEbb.exit: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i, %.lr.ph.i, %_ZN4llvm11raw_ostreamlsEc.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16SPIRVInstPrinter16printUnknownTypeEPKNS_6MCInstERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ult i64 %i.k, 10
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.397, i64 noundef 10) #17
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.h, ptr noundef nonnull align 1 dereferenceable(10) @.str.397, i64 10, i1 false)
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 10
  store ptr %i.o, ptr %i.g, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.m, %bb.b ], [ %2, %bb.c ]
  %i.p = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 noundef %.sroa.3.0.copyload) #17 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28   ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, 2
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.y = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull @.str.398, i64 noundef 2) #17
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i16 8236, ptr %i.t, align 1
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  store ptr %i.aa, ptr %i.s, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17

_ZN4llvm11raw_ostreamlsEPKc.exit17:               ; preds = %bb.d, %bb.e
  %.0.i.i16 = phi ptr [ %i.y, %bb.d ], [ %i.p, %bb.e ]
  %i.ab = zext i32 %i.d to i64
  %i.ac = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i16, i64 noundef %i.ab) #17 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28 ; 2 uses
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = icmp ult i64 %i.aj, 2
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit17
  %i.al = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull @.str.399, i64 noundef 2) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit20

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit17
  store i16 8233, ptr %i.ag, align 1
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !28
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store ptr %i.an, ptr %i.af, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit20

_ZN4llvm11raw_ostreamlsEPKc.exit20:               ; preds = %bb.f, %bb.g
  tail call void @_ZN4llvm16SPIRVInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !28  ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit20
  %i.ar = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.400, i64 noundef 1) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit23

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit20
  store i8 32, ptr %i.ap, align 1
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store ptr %i.at, ptr %i.g, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit23

_ZN4llvm11raw_ostreamlsEPKc.exit23:               ; preds = %bb.h, %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !125, !nonnull !51, !align !58
  %i.aw = load i32, ptr %1, align 8, !tbaa !8
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !126
  %i.ay = zext i32 %i.aw to i64
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [32 x i8], ptr %i.ax, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i16, ptr %i.bb, align 4, !tbaa !134
  %i.bd = zext i16 %i.bc to i32                   ; 5 uses
  %i.be = icmp eq i32 %i.d, %i.bd
  br i1 %i.be, label %_ZN4llvm16SPIRVInstPrinter25printRemainingVariableOpsEPKNS_6MCInstEjRNS_11raw_ostreamEbb.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit23
  %i.bf = load i32, ptr %i.c, align 8, !tbaa !29  ; 3 uses
  %i.bg = icmp ugt i32 %i.bf, %i.bd
  br i1 %i.bg, label %.lr.ph.i, label %_ZN4llvm16SPIRVInstPrinter25printRemainingVariableOpsEPKNS_6MCInstEjRNS_11raw_ostreamEbb.exit

.lr.ph.i:                                         ; preds = %bb.j
  tail call void @_ZN4llvm16SPIRVInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull readonly %1, i32 noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %i.bh = add nuw nsw i32 %i.bd, 1                ; 2 uses
  %exitcond24.peel.not.i = icmp eq i32 %i.bh, %i.bf
  br i1 %exitcond24.peel.not.i, label %_ZN4llvm16SPIRVInstPrinter25printRemainingVariableOpsEPKNS_6MCInstEjRNS_11raw_ostreamEbb.exit, label %.lr.ph.split.split.i

.lr.ph.split.split.i:                             ; preds = %.lr.ph.i, %_ZN4llvm11raw_ostreamlsEc.exit.i
  %.015.i = phi i32 [ %i.bm, %_ZN4llvm11raw_ostreamlsEc.exit.i ], [ %i.bh, %.lr.ph.i ] ; 3 uses
  %.not.i = icmp eq i32 %.015.i, %i.bd
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsEc.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.split.i
  %i.bi = load ptr, ptr %i.g, align 8, !tbaa !28  ; 3 uses
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !23
  %.not.i.i = icmp ult ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 noundef zeroext 32) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

bb.m:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store ptr %i.bl, ptr %i.g, align 8, !tbaa !28
  store i8 32, ptr %i.bi, align 1, !tbaa !20
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

_ZN4llvm11raw_ostreamlsEc.exit.i:                 ; preds = %bb.m, %bb.l, %.lr.ph.split.split.i
  tail call void @_ZN4llvm16SPIRVInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull readonly %1, i32 noundef %.015.i, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %i.bm = add i32 %.015.i, 1                      ; 2 uses
  %exitcond24.not.i = icmp eq i32 %i.bm, %i.bf
  br i1 %exitcond24.not.i, label %_ZN4llvm16SPIRVInstPrinter25printRemainingVariableOpsEPKNS_6MCInstEjRNS_11raw_ostreamEbb.exit, label %.lr.ph.split.split.i, !llvm.loop !70

_ZN4llvm16SPIRVInstPrinter25printRemainingVariableOpsEPKNS_6MCInstEjRNS_11raw_ostreamEbb.exit: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i, %.lr.ph.i, %bb.j, %_ZN4llvm11raw_ostreamlsEPKc.exit23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE27EEEvPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29
  %i.c = icmp ult i32 %2, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = zext i32 %2 to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20
  %i.j = trunc i64 %i.i to i32
  call void @_ZN4llvm26getSymbolicOperandMnemonicB5cxx11ENS_5SPIRV15OperandCategory15OperandCategoryEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef 27, i32 noundef %i.j) #17
  %i.k = load ptr, ptr %4, align 8, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !63
  %i.n = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.k, i64 noundef %i.m) #17 ; 0 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !59     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.r = load i64, ptr %i.p, align 8, !tbaa !20
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE5EEEvPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29
  %i.c = icmp ult i32 %2, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = zext i32 %2 to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20
  %i.j = trunc i64 %i.i to i32
  call void @_ZN4llvm26getSymbolicOperandMnemonicB5cxx11ENS_5SPIRV15OperandCategory15OperandCategoryEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef 5, i32 noundef %i.j) #17
  %i.k = load ptr, ptr %4, align 8, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !63
  %i.n = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.k, i64 noundef %i.m) #17 ; 0 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !59     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.r = load i64, ptr %i.p, align 8, !tbaa !20
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #3 align 2

declare void @_ZN4llvm26getSymbolicOperandMnemonicB5cxx11ENS_5SPIRV15OperandCategory15OperandCategoryEi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE25EEEvPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29
  %i.c = icmp ult i32 %2, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = zext i32 %2 to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20
  %i.j = trunc i64 %i.i to i32
  call void @_ZN4llvm26getSymbolicOperandMnemonicB5cxx11ENS_5SPIRV15OperandCategory15OperandCategoryEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef 25, i32 noundef %i.j) #17
  %i.k = load ptr, ptr %4, align 8, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !63
  %i.n = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.k, i64 noundef %i.m) #17 ; 0 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !59     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.r = load i64, ptr %i.p, align 8, !tbaa !20
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE30EEEvPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29
  %i.c = icmp ult i32 %2, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = zext i32 %2 to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20
  %i.j = trunc i64 %i.i to i32
  call void @_ZN4llvm26getSymbolicOperandMnemonicB5cxx11ENS_5SPIRV15OperandCategory15OperandCategoryEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef 30, i32 noundef %i.j) #17
  %i.k = load ptr, ptr %4, align 8, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !63
  %i.n = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.k, i64 noundef %i.m) #17 ; 0 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !59     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.r = load i64, ptr %i.p, align 8, !tbaa !20
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

declare void @_ZN4llvm13MCInstPrinter15printAnnotationERNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #5

declare void @_ZNK4llvm9MCAsmInfo9printExprERNS_11raw_ostreamERKNS_6MCExprE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext) local_unnamed_addr #5

declare void @_ZN4llvm14getExtInstNameB5cxx11ENS_5SPIRV14InstructionSet14InstructionSetEj(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16SPIRVInstPrinterD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm16SPIRVInstPrinterE, i64 16), ptr %0, align 8, !tbaa !21
end_hunk_0
