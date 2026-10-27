Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/fmu3?download=true
inline.NumInlined: 2155
inline.NumDeleted: 615
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6casadi4Fmu34initEPKNS_18DaeBuilderInternalE:bb.a
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %bb.v, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i
  %i.ij = load ptr, ptr %i.j, align 8, !tbaa !70  ; 4 uses
  %i.ik = load ptr, ptr %i.bd, align 8, !tbaa !61
  %.not.i = icmp eq ptr %i.ij, %i.ik
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  store i32 %i.hi, ptr %i.ij, align 4, !tbaa !84
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  store ptr %i.il, ptr %i.j, align 8, !tbaa !70
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.ab:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %i.im = load ptr, ptr %i.h, align 8, !tbaa !60  ; 4 uses
  %i.in = ptrtoint ptr %i.ij to i64
  %i.io = ptrtoint ptr %i.im to i64               ; 2 uses
  %i.ip = sub i64 %i.in, %i.io                    ; 5 uses
  %i.iq = icmp eq i64 %i.ip, 9223372036854775804
  br i1 %i.iq, label %bb.ac, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #24
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.ir = ashr exact i64 %i.ip, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ir, i64 1)
  %i.is = add nsw i64 %.sroa.speculated.i.i.i, %i.ir ; 2 uses
  %i.it = icmp ult i64 %i.is, %i.ir
  %i.iu = call i64 @llvm.umin.i64(i64 %i.is, i64 2305843009213693951)
  %i.iv = select i1 %i.it, i64 2305843009213693951, i64 %i.iu ; 3 uses
  %.not.i.i.i168 = icmp ne i64 %i.iv, 0
  call void @llvm.assume(i1 %.not.i.i.i168)
  %i.iw = shl nuw nsw i64 %i.iv, 2
  %i.ix = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iw) #22 ; 4 uses
  %i.iy = getelementptr inbounds i8, ptr %i.ix, i64 %i.ip ; 2 uses
  store i32 %i.hi, ptr %i.iy, align 4, !tbaa !84
  %i.iz = icmp sgt i64 %i.ip, 0
  br i1 %i.iz, label %bb.ad, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.ad:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ix, ptr align 4 %i.im, i64 %i.ip, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.ad, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %.not.i17.i.i = icmp eq ptr %i.im, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.jb = load ptr, ptr %i.bd, align 8, !tbaa !61
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = sub i64 %i.jc, %i.io
  call void @_ZdlPvm(ptr noundef nonnull %i.im, i64 noundef %i.jd) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.ae, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.ix, ptr %i.h, align 8, !tbaa !60
  store ptr %i.ja, ptr %i.j, align 8, !tbaa !70
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %i.iv
  store ptr %i.je, ptr %i.bd, align 8, !tbaa !61
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.af:                                            ; preds = %bb.t, %bb.t
  %i.jf = getelementptr inbounds nuw i8, ptr %i.eu, i64 288
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !82
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !83
  %i.ji = fptosi double %i.jh to i32              ; 2 uses
  %i.jj = load ptr, ptr %i.ad, align 8, !tbaa !25 ; 4 uses
  %i.jk = load ptr, ptr %i.ba, align 8, !tbaa !66
  %.not.i.i169 = icmp eq ptr %i.jj, %i.jk
  br i1 %.not.i.i169, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 %i.ji, ptr %i.jj, align 4, !tbaa !84
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  store ptr %i.jl, ptr %i.ad, align 8, !tbaa !25
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.ah:                                            ; preds = %bb.af
  %i.jm = load ptr, ptr %i.ab, align 8, !tbaa !26 ; 4 uses
  %i.jn = ptrtoint ptr %i.jj to i64
  %i.jo = ptrtoint ptr %i.jm to i64               ; 2 uses
  %i.jp = sub i64 %i.jn, %i.jo                    ; 5 uses
  %i.jq = icmp eq i64 %i.jp, 9223372036854775804
  br i1 %i.jq, label %bb.ai, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #24
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ah
  %i.jr = ashr exact i64 %i.jp, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i170 = call i64 @llvm.umax.i64(i64 %i.jr, i64 1)
  %i.js = add nsw i64 %.sroa.speculated.i.i.i.i170, %i.jr ; 2 uses
  %i.jt = icmp ult i64 %i.js, %i.jr
  %i.ju = call i64 @llvm.umin.i64(i64 %i.js, i64 2305843009213693951)
  %i.jv = select i1 %i.jt, i64 2305843009213693951, i64 %i.ju ; 3 uses
  %.not.i.i.i.i171 = icmp ne i64 %i.jv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i171)
  %i.jw = shl nuw nsw i64 %i.jv, 2
  %i.jx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jw) #22 ; 4 uses
  %i.jy = getelementptr inbounds i8, ptr %i.jx, i64 %i.jp ; 2 uses
  store i32 %i.ji, ptr %i.jy, align 4, !tbaa !84
  %i.jz = icmp sgt i64 %i.jp, 0
  br i1 %i.jz, label %bb.aj, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.aj:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jx, ptr align 4 %i.jm, i64 %i.jp, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.aj, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  %.not.i17.i.i.i172 = icmp eq ptr %i.jm, null
  br i1 %.not.i17.i.i.i172, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.kb = load ptr, ptr %i.ba, align 8, !tbaa !66
  %i.kc = ptrtoint ptr %i.kb to i64
  %i.kd = sub i64 %i.kc, %i.jo
  call void @_ZdlPvm(ptr noundef nonnull %i.jm, i64 noundef %i.kd) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.ak, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.jx, ptr %i.ab, align 8, !tbaa !26
  store ptr %i.ka, ptr %i.ad, align 8, !tbaa !25
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.jv
  store ptr %i.ke, ptr %i.ba, align 8, !tbaa !66
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.ag, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.kf = load ptr, ptr %i.n, align 8, !tbaa !70  ; 4 uses
  %i.kg = load ptr, ptr %i.bb, align 8, !tbaa !61
  %.not.i173 = icmp eq ptr %i.kf, %i.kg
  br i1 %.not.i173, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  store i32 %i.hi, ptr %i.kf, align 4, !tbaa !84
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  store ptr %i.kh, ptr %i.n, align 8, !tbaa !70
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.ki = load ptr, ptr %i.l, align 8, !tbaa !60  ; 4 uses
  %i.kj = ptrtoint ptr %i.kf to i64
  %i.kk = ptrtoint ptr %i.ki to i64               ; 2 uses
  %i.kl = sub i64 %i.kj, %i.kk                    ; 5 uses
  %i.km = icmp eq i64 %i.kl, 9223372036854775804
  br i1 %i.km, label %bb.an, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i174

bb.an:                                            ; preds = %bb.am
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #24
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i174: ; preds = %bb.am
  %i.kn = ashr exact i64 %i.kl, 2                 ; 3 uses
  %.sroa.speculated.i.i.i175 = call i64 @llvm.umax.i64(i64 %i.kn, i64 1)
  %i.ko = add nsw i64 %.sroa.speculated.i.i.i175, %i.kn ; 2 uses
  %i.kp = icmp ult i64 %i.ko, %i.kn
  %i.kq = call i64 @llvm.umin.i64(i64 %i.ko, i64 2305843009213693951)
  %i.kr = select i1 %i.kp, i64 2305843009213693951, i64 %i.kq ; 3 uses
  %.not.i.i.i176 = icmp ne i64 %i.kr, 0
  call void @llvm.assume(i1 %.not.i.i.i176)
  %i.ks = shl nuw nsw i64 %i.kr, 2
  %i.kt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ks) #22 ; 4 uses
  %i.ku = getelementptr inbounds i8, ptr %i.kt, i64 %i.kl ; 2 uses
  store i32 %i.hi, ptr %i.ku, align 4, !tbaa !84
  %i.kv = icmp sgt i64 %i.kl, 0
  br i1 %i.kv, label %bb.ao, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i177

bb.ao:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i174
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kt, ptr align 4 %i.ki, i64 %i.kl, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i177

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i177: ; preds = %bb.ao, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i174
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  %.not.i17.i.i178 = icmp eq ptr %i.ki, null
  br i1 %.not.i17.i.i178, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i179, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i177
  %i.kx = load ptr, ptr %i.bb, align 8, !tbaa !61
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = sub i64 %i.ky, %i.kk
  call void @_ZdlPvm(ptr noundef nonnull %i.ki, i64 noundef %i.kz) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i179

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i179: ; preds = %bb.ap, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i177
  store ptr %i.kt, ptr %i.l, align 8, !tbaa !60
  store ptr %i.kw, ptr %i.n, align 8, !tbaa !70
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.kr
  store ptr %i.la, ptr %i.bb, align 8, !tbaa !61
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.aq:                                            ; preds = %bb.t
  %i.lb = getelementptr inbounds nuw i8, ptr %i.eu, i64 288
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !82
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !83
  %i.le = fcmp une double %i.ld, 0.000000e+00     ; 2 uses
  %i.lf = load ptr, ptr %i.ah, align 8, !tbaa !29 ; 7 uses
  %i.lg = load ptr, ptr %i.ay, align 8, !tbaa !65
  %.not.i181 = icmp eq ptr %i.lf, %i.lg
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i181, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lh = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.lh, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !30
  %i.li = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.li, label %bb.as, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !30
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  store ptr %i.lj, ptr %i.ah, align 8, !tbaa !29
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.as, %bb.ar
  %i.lk = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.ll = shl nuw i64 1, %i.lk                    ; 2 uses
  br i1 %i.le, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.lm = load i64, ptr %i.lf, align 8, !tbaa !85
  %i.ln = or i64 %i.lm, %i.ll
  store i64 %i.ln, ptr %i.lf, align 8, !tbaa !85
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.au:                                            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.lo = xor i64 %i.ll, -1
  %i.lp = load i64, ptr %i.lf, align 8, !tbaa !85
  %i.lq = and i64 %i.lp, %i.lo
  store i64 %i.lq, ptr %i.lf, align 8, !tbaa !85
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.av:                                            ; preds = %bb.aq
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr %i.lf, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.le)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.at, %bb.au, %bb.av
  %i.lr = load ptr, ptr %i.r, align 8, !tbaa !70  ; 4 uses
  %i.ls = load ptr, ptr %i.az, align 8, !tbaa !61
  %.not.i183 = icmp eq ptr %i.lr, %i.ls
  br i1 %.not.i183, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  store i32 %i.hi, ptr %i.lr, align 4, !tbaa !84
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  store ptr %i.lt, ptr %i.r, align 8, !tbaa !70
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.ax:                                            ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.lu = load ptr, ptr %i.p, align 8, !tbaa !60  ; 4 uses
  %i.lv = ptrtoint ptr %i.lr to i64
  %i.lw = ptrtoint ptr %i.lu to i64               ; 2 uses
  %i.lx = sub i64 %i.lv, %i.lw                    ; 5 uses
  %i.ly = icmp eq i64 %i.lx, 9223372036854775804
  br i1 %i.ly, label %bb.ay, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i184

bb.ay:                                            ; preds = %bb.ax
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #24
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i184: ; preds = %bb.ax
  %i.lz = ashr exact i64 %i.lx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i185 = call i64 @llvm.umax.i64(i64 %i.lz, i64 1)
  %i.ma = add nsw i64 %.sroa.speculated.i.i.i185, %i.lz ; 2 uses
  %i.mb = icmp ult i64 %i.ma, %i.lz
  %i.mc = call i64 @llvm.umin.i64(i64 %i.ma, i64 2305843009213693951)
  %i.md = select i1 %i.mb, i64 2305843009213693951, i64 %i.mc ; 3 uses
  %.not.i.i.i186 = icmp ne i64 %i.md, 0
  call void @llvm.assume(i1 %.not.i.i.i186)
  %i.me = shl nuw nsw i64 %i.md, 2
  %i.mf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.me) #22 ; 4 uses
  %i.mg = getelementptr inbounds i8, ptr %i.mf, i64 %i.lx ; 2 uses
  store i32 %i.hi, ptr %i.mg, align 4, !tbaa !84
  %i.mh = icmp sgt i64 %i.lx, 0
  br i1 %i.mh, label %bb.az, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i187

bb.az:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i184
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mf, ptr align 4 %i.lu, i64 %i.lx, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i187

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i187: ; preds = %bb.az, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i184
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  %.not.i17.i.i188 = icmp eq ptr %i.lu, null
  br i1 %.not.i17.i.i188, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i189, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i187
  %i.mj = load ptr, ptr %i.az, align 8, !tbaa !61
  %i.mk = ptrtoint ptr %i.mj to i64
  %i.ml = sub i64 %i.mk, %i.lw
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef %i.ml) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i189

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i189: ; preds = %bb.ba, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i187
  store ptr %i.mf, ptr %i.p, align 8, !tbaa !60
  store ptr %i.mi, ptr %i.r, align 8, !tbaa !70
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.md
  store ptr %i.mm, ptr %i.az, align 8, !tbaa !61
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.bb:                                            ; preds = %bb.t
  %i.mn = getelementptr inbounds nuw i8, ptr %i.eu, i64 312 ; 2 uses
  %i.mo = load ptr, ptr %i.ak, align 8, !tbaa !17 ; 8 uses
  %i.mp = load ptr, ptr %i.aw, align 8, !tbaa !62
  %.not.i191 = icmp eq ptr %i.mo, %i.mp
  br i1 %.not.i191, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 16 ; 3 uses
  store ptr %i.mq, ptr %i.mo, align 8, !tbaa !68
  %i.mr = load ptr, ptr %i.mn, align 8, !tbaa !35 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.eu, i64 320
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !69 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store i64 %i.mt, ptr %i.g, align 8, !tbaa !85
  %i.mu = icmp ugt i64 %i.mt, 15
  br i1 %i.mu, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.bc
  %i.mv = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.mo, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) ; 2 uses
  store ptr %i.mv, ptr %i.mo, align 8, !tbaa !35
  %i.mw = load i64, ptr %i.g, align 8, !tbaa !85
  store i64 %i.mw, ptr %i.mq, align 8, !tbaa !36
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.bc
  %i.mx = phi ptr [ %i.mv, %.noexc.i.i ], [ %i.mq, %bb.bc ] ; 2 uses
  switch i64 %i.mt, label %bb.be [
    i64 1, label %bb.bd
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.bd:                                            ; preds = %._crit_edge.i.i.i
  %i.my = load i8, ptr %i.mr, align 1, !tbaa !36
  store i8 %i.my, ptr %i.mx, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.be:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mx, ptr align 1 %i.mr, i64 %i.mt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.be, %bb.bd, %._crit_edge.i.i.i
  %i.mz = load i64, ptr %i.g, align 8, !tbaa !85  ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  store i64 %i.mz, ptr %i.na, align 8, !tbaa !69
  %i.nb = load ptr, ptr %i.mo, align 8, !tbaa !35
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.mz
  store i8 0, ptr %i.nc, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  %i.nd = load ptr, ptr %i.ak, align 8, !tbaa !17
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 32
  store ptr %i.ne, ptr %i.ak, align 8, !tbaa !17
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.bf:                                            ; preds = %bb.bb
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr %i.mo, ptr noundef nonnull align 8 dereferenceable(32) %i.mn)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.bf
  %i.nf = load ptr, ptr %i.v, align 8, !tbaa !70  ; 4 uses
  %i.ng = load ptr, ptr %i.ax, align 8, !tbaa !61
  %.not.i192 = icmp eq ptr %i.nf, %i.ng
  br i1 %.not.i192, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  store i32 %i.hi, ptr %i.nf, align 4, !tbaa !84
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  store ptr %i.nh, ptr %i.v, align 8, !tbaa !70
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.bh:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.ni = load ptr, ptr %i.t, align 8, !tbaa !60  ; 4 uses
  %i.nj = ptrtoint ptr %i.nf to i64
  %i.nk = ptrtoint ptr %i.ni to i64               ; 2 uses
  %i.nl = sub i64 %i.nj, %i.nk                    ; 5 uses
  %i.nm = icmp eq i64 %i.nl, 9223372036854775804
  br i1 %i.nm, label %bb.bi, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i193

bb.bi:                                            ; preds = %bb.bh
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #24
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i193: ; preds = %bb.bh
  %i.nn = ashr exact i64 %i.nl, 2                 ; 3 uses
  %.sroa.speculated.i.i.i194 = call i64 @llvm.umax.i64(i64 %i.nn, i64 1)
  %i.no = add nsw i64 %.sroa.speculated.i.i.i194, %i.nn ; 2 uses
  %i.np = icmp ult i64 %i.no, %i.nn
  %i.nq = call i64 @llvm.umin.i64(i64 %i.no, i64 2305843009213693951)
  %i.nr = select i1 %i.np, i64 2305843009213693951, i64 %i.nq ; 3 uses
  %.not.i.i.i195 = icmp ne i64 %i.nr, 0
  call void @llvm.assume(i1 %.not.i.i.i195)
  %i.ns = shl nuw nsw i64 %i.nr, 2
  %i.nt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ns) #22 ; 4 uses
  %i.nu = getelementptr inbounds i8, ptr %i.nt, i64 %i.nl ; 2 uses
  store i32 %i.hi, ptr %i.nu, align 4, !tbaa !84
  %i.nv = icmp sgt i64 %i.nl, 0
  br i1 %i.nv, label %bb.bj, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i196

bb.bj:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i193
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nt, ptr align 4 %i.ni, i64 %i.nl, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i196

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i196: ; preds = %bb.bj, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i193
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 4
  %.not.i17.i.i197 = icmp eq ptr %i.ni, null
  br i1 %.not.i17.i.i197, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i198, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i196
  %i.nx = load ptr, ptr %i.ax, align 8, !tbaa !61
  %i.ny = ptrtoint ptr %i.nx to i64
  %i.nz = sub i64 %i.ny, %i.nk
  call void @_ZdlPvm(ptr noundef nonnull %i.ni, i64 noundef %i.nz) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i198

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i198: ; preds = %bb.bk, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i196
  store ptr %i.nt, ptr %i.t, align 8, !tbaa !60
  store ptr %i.nw, ptr %i.v, align 8, !tbaa !70
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %i.nr
  store ptr %i.oa, ptr %i.ax, align 8, !tbaa !61
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.bl:                                            ; preds = %bb.t
  %i.ob = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uerrEv()
  %i.oc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi14message_prefixERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ob) ; 2 uses
  %i.od = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oc, ptr noundef nonnull @.str.7, i64 noundef 10) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.oe = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !35, !noalias !254
  %i.og = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !69, !noalias !254 ; 3 uses
  store ptr %i.be, ptr %14, align 8, !tbaa !68, !alias.scope !255
  store i64 0, ptr %i.bf, align 8, !tbaa !69, !alias.scope !255
  store i8 0, ptr %i.be, align 8, !tbaa !36, !alias.scope !255
  %i.oi = add i64 %i.oh, 9
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.oi)
end_hunk_0
