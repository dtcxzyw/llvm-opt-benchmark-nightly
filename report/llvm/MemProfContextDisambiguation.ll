Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MemProfContextDisambiguation?download=true
inline.NumInlined: 24972
inline.NumDeleted: 9896
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 97
loop-unroll.NumUnrolled: 100
begin_hunk_0_@_ZNK12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE11exportToDotENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28, !noalias !3281
  %i.wp = getelementptr inbounds nuw i8, ptr %.val.i80.i.i.i.i, i64 120
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !1064, !noalias !3281
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.wq, null
  %i.wr = load i64, ptr %i.ng, align 8, !tbaa !386, !alias.scope !3280, !noalias !3274 ; 2 uses
  br i1 %.not7.i.i.i.i.i.i, label %bb.cl, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.i.i.i.i.i.i
  %i.ws = add i64 %i.wr, -4611686018427387891
  %i.wt = icmp ult i64 %i.ws, 13
  br i1 %i.wt, label %bb.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit92.i.i.i.i.i.i

bb.cj:                                            ; preds = %bb.ci
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #31, !noalias !3274
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit92.i.i.i.i.i.i: ; preds = %bb.ci
  %i.wu = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.183, i64 noundef 13) #28, !noalias !3274 ; 0 uses
  %i.wv = load i64, ptr %i.ng, align 8, !tbaa !386, !alias.scope !3280, !noalias !3274
  %i.ww = add i64 %i.wv, -4611686018427387877
  %i.wx = icmp ult i64 %i.ww, 27
  br i1 %i.wx, label %bb.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit93.i.i.i.i.i.i

bb.ck:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit92.i.i.i.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #31, !noalias !3274
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit93.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit92.i.i.i.i.i.i
  %i.wy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.184, i64 noundef 27) #28, !noalias !3274 ; 0 uses
  br label %bb.cn

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.i.i.i.i.i.i
  %i.wz = add i64 %i.wr, -4611686018427387889
  %i.xa = icmp ult i64 %i.wz, 15
  br i1 %i.xa, label %bb.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit94.i.i.i.i.i.i

bb.cm:                                            ; preds = %bb.cl
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #31, !noalias !3274
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit94.i.i.i.i.i.i: ; preds = %bb.cl
  %i.xb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.185, i64 noundef 15) #28, !noalias !3274 ; 0 uses
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit94.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit93.i.i.i.i.i.i
  %i.xc = load i32, ptr %i.ln, align 4, !tbaa !646, !noalias !3281 ; 2 uses
  %i.xd = icmp eq i32 %i.xc, 0
  br i1 %i.xd, label %_ZN4llvm14DOTGraphTraitsIPKN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEEEE17getNodeAttributesB5cxx11EPKNS7_11ContextNodeES9_.exit.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.xe = load ptr, ptr %19, align 8, !tbaa !647, !noalias !3281
  %i.xf = zext i32 %i.xc to i64                   ; 2 uses
  %i.xg = add nuw nsw i64 %i.xf, 31
  %i.xh = lshr i64 %i.xg, 5
  %i.xi = add nuw nsw i64 %i.xh, %i.xf
  %i.xj = shl nuw nsw i64 %i.xi, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.xe, i64 noundef %i.xj, i64 noundef 4) #28, !noalias !3274
  br label %_ZN4llvm14DOTGraphTraitsIPKN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEEEE17getNodeAttributesB5cxx11EPKNS7_11ContextNodeES9_.exit.i.i.i.i.i

_ZN4llvm14DOTGraphTraitsIPKN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEEEE17getNodeAttributesB5cxx11EPKNS7_11ContextNodeES9_.exit.i.i.i.i.i: ; preds = %bb.co, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28, !noalias !3281
  %i.xk = load ptr, ptr %i.ha, align 8, !tbaa !633, !noalias !3274
  %i.xl = load ptr, ptr %i.hc, align 8, !tbaa !634, !noalias !3274 ; 2 uses
  %i.xm = ptrtoint ptr %i.xk to i64
  %i.xn = ptrtoint ptr %i.xl to i64
  %i.xo = sub i64 %i.xm, %i.xn
  %i.xp = icmp ult i64 %i.xo, 5
  br i1 %i.xp, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %_ZN4llvm14DOTGraphTraitsIPKN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEEEE17getNodeAttributesB5cxx11EPKNS7_11ContextNodeES9_.exit.i.i.i.i.i
  %i.xq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef nonnull @.str.158, i64 noundef 5) #28, !noalias !3274
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i.i.i.i

bb.cq:                                            ; preds = %_ZN4llvm14DOTGraphTraitsIPKN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEEEE17getNodeAttributesB5cxx11EPKNS7_11ContextNodeES9_.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.xl, ptr noundef nonnull align 1 dereferenceable(5) @.str.158, i64 5, i1 false), !noalias !3274
  %i.xr = load ptr, ptr %i.hc, align 8, !tbaa !634, !noalias !3274
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 5
  store ptr %i.xs, ptr %i.hc, align 8, !tbaa !634, !noalias !3274
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i.i.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i.i.i.i.i:       ; preds = %bb.cq, %bb.cp
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.xq, %bb.cp ], [ %49, %bb.cq ]
  %i.xt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i.i.i.i, ptr noundef nonnull %.val.i80.i.i.i.i) #28, !noalias !3274 ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 24
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !633, !noalias !3274
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xt, i64 32 ; 3 uses
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !634, !noalias !3274 ; 2 uses
  %i.xy = ptrtoint ptr %i.xv to i64
  %i.xz = ptrtoint ptr %i.xx to i64
  %i.ya = sub i64 %i.xy, %i.xz
  %i.yb = icmp ult i64 %i.ya, 8
  br i1 %i.yb, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i.i.i.i
  %i.yc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.xt, ptr noundef nonnull @.str.159, i64 noundef 8) #28, !noalias !3274 ; 0 uses
  br label %bb.ct

bb.cs:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i.i.i.i
  store i64 4424065772627909408, ptr %i.xx, align 1, !noalias !3274
  %i.yd = load ptr, ptr %i.xw, align 8, !tbaa !634, !noalias !3274
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  store ptr %i.ye, ptr %i.xw, align 8, !tbaa !634, !noalias !3274
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.yf = load ptr, ptr %i.ha, align 8, !tbaa !633, !noalias !3274
  %i.yg = load ptr, ptr %i.hc, align 8, !tbaa !634, !noalias !3274 ; 2 uses
  %i.yh = ptrtoint ptr %i.yf to i64
  %i.yi = ptrtoint ptr %i.yg to i64
  %i.yj = sub i64 %i.yh, %i.yi
  %i.yk = icmp ult i64 %i.yj, 7
  br i1 %i.yk, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.yl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef nonnull @.str.161, i64 noundef 7) #28, !noalias !3274 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65.i.i.i.i.i

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.yg, ptr noundef nonnull align 1 dereferenceable(7) @.str.161, i64 7, i1 false), !noalias !3274
  %i.ym = load ptr, ptr %i.hc, align 8, !tbaa !634, !noalias !3274
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 7
  store ptr %i.yn, ptr %i.hc, align 8, !tbaa !634, !noalias !3274
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65.i.i.i.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit65.i.i.i.i.i:     ; preds = %bb.cv, %bb.cu
  %i.yo = load i64, ptr %i.ng, align 8, !tbaa !386, !noalias !3274 ; 2 uses
  %i.yp = icmp eq i64 %i.yo, 0
  br i1 %i.yp, label %_ZN4llvm11raw_ostreamlsEPKc.exit71.i.i.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit65.i.i.i.i.i
  %i.yq = load ptr, ptr %31, align 8, !tbaa !206, !noalias !3274
  %i.yr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef %i.yq, i64 noundef %i.yo) #28, !noalias !3274 ; 3 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 24
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !633, !noalias !3274
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yr, i64 32 ; 3 uses
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !634, !noalias !3274 ; 2 uses
  %i.yw = icmp eq ptr %i.yt, %i.yv
  br i1 %i.yw, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.yx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.yr, ptr noundef nonnull @.str.162, i64 noundef 1) #28, !noalias !3274 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit71.i.i.i.i.i

bb.cy:                                            ; preds = %bb.cw
  store i8 44, ptr %i.yv, align 1, !noalias !3274
  %i.yy = load ptr, ptr %i.yu, align 8, !tbaa !634, !noalias !3274
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 1
  store ptr %i.yz, ptr %i.yu, align 8, !tbaa !634, !noalias !3274
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit71.i.i.i.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit71.i.i.i.i.i:     ; preds = %bb.cy, %bb.cx, %_ZN4llvm11raw_ostreamlsEPKc.exit65.i.i.i.i.i
  %i.za = load ptr, ptr %i.ha, align 8, !tbaa !633, !noalias !3274
  %i.zb = load ptr, ptr %i.hc, align 8, !tbaa !634, !noalias !3274 ; 2 uses
  %i.zc = ptrtoint ptr %i.za to i64
  %i.zd = ptrtoint ptr %i.zb to i64
  %i.ze = sub i64 %i.zc, %i.zd
  %i.zf = icmp ult i64 %i.ze, 6
  br i1 %i.zf, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit71.i.i.i.i.i
  %i.zg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef nonnull @.str.163, i64 noundef 6) #28, !noalias !3274 ; 0 uses
  %.pre.i30.i = load ptr, ptr %i.hc, align 8, !tbaa !634, !noalias !3274
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit74.i.i.i.i.i

bb.da:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit71.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.zb, ptr noundef nonnull align 1 dereferenceable(6) @.str.163, i64 6, i1 false), !noalias !3274
  %i.zh = load ptr, ptr %i.hc, align 8, !tbaa !634, !noalias !3274
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 6 ; 2 uses
  store ptr %i.zi, ptr %i.hc, align 8, !tbaa !634, !noalias !3274
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit74.i.i.i.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit74.i.i.i.i.i:     ; preds = %bb.da, %bb.cz
  %i.zj = phi ptr [ %.pre.i30.i, %bb.cz ], [ %i.zi, %bb.da ] ; 2 uses
  %i.zk = load ptr, ptr %i.ha, align 8, !tbaa !633, !noalias !3274
  %i.zl = ptrtoint ptr %i.zk to i64
  %i.zm = ptrtoint ptr %i.zj to i64
  %i.zn = sub i64 %i.zl, %i.zm
  %i.zo = icmp ult i64 %i.zn, 2
  br i1 %i.zo, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit74.i.i.i.i.i
  %i.zp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef nonnull @.str.167, i64 noundef 2) #28, !noalias !3274 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit85.i.i.i.i.i

bb.dc:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit74.i.i.i.i.i
  store i16 31522, ptr %i.zj, align 1, !noalias !3274
  %i.zq = load ptr, ptr %i.hc, align 8, !tbaa !634, !noalias !3274
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 2
  store ptr %i.zr, ptr %i.hc, align 8, !tbaa !634, !noalias !3274
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit85.i.i.i.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit85.i.i.i.i.i:     ; preds = %bb.dc, %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #28, !noalias !3274
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28, !noalias !3274
  call void @llvm.experimental.noalias.scope.decl(metadata !3310)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !3311
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !3311
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28, !noalias !3311
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !3311
  %i.zs = getelementptr inbounds nuw i8, ptr %.val.i80.i.i.i.i, i64 4
  %i.zt = load i8, ptr %i.zs, align 4, !tbaa !667, !range !212, !noalias !3311, !noundef !213
  %i.zu = trunc nuw i8 %i.zt to i1
  %56 = select i1 %i.zu, ptr @.str.200, ptr @.str.1 ; 2 uses
  %57 = load i8, ptr %56, align 1, !tbaa !207, !noalias !3311
  %.not.i.i.i = icmp eq i8 %57, 0
  store ptr @.str.199, ptr %9, align 8, !noalias !3311
  br i1 %.not.i.i.i, label %_ZN4llvmplERKNS_5TwineES2_.exit66.i.i, label %bb.dd

bb.dd:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit85.i.i.i.i.i
  store ptr %56, ptr %i.op, align 8, !alias.scope !3312, !noalias !3311
  br label %_ZN4llvmplERKNS_5TwineES2_.exit66.i.i

_ZN4llvmplERKNS_5TwineES2_.exit66.i.i:            ; preds = %bb.dd, %_ZN4llvm11raw_ostreamlsEPKc.exit85.i.i.i.i.i
  %.sroa.05.0.i.i25.i.i = phi ptr [ %9, %bb.dd ], [ @.str.199, %_ZN4llvm11raw_ostreamlsEPKc.exit85.i.i.i.i.i ]
  %.014.i.i24.i.i = phi i8 [ 2, %bb.dd ], [ 3, %_ZN4llvm11raw_ostreamlsEPKc.exit85.i.i.i.i.i ]
  %.sink.i.i = phi i8 [ 3, %bb.dd ], [ 1, %_ZN4llvm11raw_ostreamlsEPKc.exit85.i.i.i.i.i ]
  store i8 3, ptr %.sroa.5108.0..sroa_idx.i.i, align 8, !tbaa !1105, !noalias !3311
  store i8 %.sink.i.i, ptr %.sroa.7109.0..sroa_idx.i.i, align 1, !tbaa !1105, !noalias !3311
  %i.zv = getelementptr inbounds nuw i8, ptr %.val.i80.i.i.i.i, i64 40
  %i.zw = load i64, ptr %i.zv, align 8, !tbaa !727, !noalias !3311
  %i.zx = inttoptr i64 %i.zw to ptr
  store ptr %.sroa.05.0.i.i25.i.i, ptr %8, align 8, !alias.scope !3313, !noalias !3311
  store ptr %i.zx, ptr %i.oq, align 8, !alias.scope !3313, !noalias !3311
  store i8 %.014.i.i24.i.i, ptr %i.or, align 8, !tbaa !390, !alias.scope !3313, !noalias !3311
  store i8 11, ptr %i.os, align 1, !tbaa !391, !alias.scope !3313, !noalias !3311
  store ptr %8, ptr %7, align 8, !alias.scope !3314, !noalias !3311
  store ptr @.str.129, ptr %i.ot, align 8, !alias.scope !3314, !noalias !3311
  store i8 2, ptr %i.ou, align 8, !tbaa !390, !alias.scope !3314, !noalias !3311
  store i8 3, ptr %i.ov, align 1, !tbaa !391, !alias.scope !3314, !noalias !3311
  %i.zy = load i32, ptr %.val.i80.i.i.i.i, align 8, !tbaa !719, !noalias !3311
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.zy to i64
  %i.zz = inttoptr i64 %.sroa.0.0.insert.ext.i.i to ptr
  store ptr %7, ptr %6, align 8, !alias.scope !3315, !noalias !3311
  store ptr %i.zz, ptr %i.ow, align 8, !alias.scope !3315, !noalias !3311
  store i8 2, ptr %i.ox, align 8, !tbaa !390, !alias.scope !3315, !noalias !3311
  store i8 9, ptr %i.oy, align 1, !tbaa !391, !alias.scope !3315, !noalias !3311
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 8 dereferenceable(34) %6) #28, !noalias !3274
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !3311
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !3311
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !3311
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !3311
  %i.aaa = load i64, ptr %i.nu, align 8, !tbaa !386, !alias.scope !3310, !noalias !3274
  %i.aab = icmp eq i64 %i.aaa, 4611686018427387903
  br i1 %i.aab, label %bb.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i

bb.de:                                            ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit66.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #31, !noalias !3274
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit66.i.i
  %i.aac = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @.str.112, i64 noundef 1) #28, !noalias !3274 ; 0 uses
  %i.aad = getelementptr i8, ptr %.val.i80.i.i.i.i, i64 8
  %.val17.i.i = load ptr, ptr %i.aad, align 8, !tbaa !668, !noalias !3311 ; 3 uses
  %.not85.i.i = icmp eq ptr %.val17.i.i, null
  br i1 %.not85.i.i, label %bb.di, label %_ZNKSt3mapIPKN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextNodeEPKS4_St4lessISA_ESaISt4pairIKSA_SC_EEE4findERSG_.exit.i.i

_ZNKSt3mapIPKN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextNodeEPKS4_St4lessISA_ESaISt4pairIKSA_SC_EEE4findERSG_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28, !noalias !3311
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !3316
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !3316
  %i.aae = call noundef ptr @_ZNK4llvm11Instruction11getFunctionEv(ptr noundef nonnull align 8 dereferenceable(72) %.val17.i.i) #28, !noalias !3317
  %i.aaf = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aae) #28, !noalias !3317 ; 2 uses
  %i.aag = extractvalue { ptr, i64 } %i.aaf, 0
  %i.aah = extractvalue { ptr, i64 } %i.aaf, 1
  store ptr %i.aag, ptr %5, align 8, !alias.scope !3318, !noalias !3316
  store i64 %i.aah, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !207, !alias.scope !3318, !noalias !3316
  store ptr @.str.203, ptr %i.oz, align 8, !alias.scope !3318, !noalias !3316
  store i8 5, ptr %i.pa, align 8, !tbaa !390, !alias.scope !3318, !noalias !3316
  store i8 3, ptr %i.pb, align 1, !tbaa !391, !alias.scope !3318, !noalias !3316
  %i.aai = getelementptr inbounds i8, ptr %.val17.i.i, i64 -32
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !490, !noalias !3317, !nonnull !213, !noundef !213
  %i.aak = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aaj) #28, !noalias !3317 ; 2 uses
  %i.aal = extractvalue { ptr, i64 } %i.aak, 1
  %i.aam = extractvalue { ptr, i64 } %i.aak, 0
  store ptr %5, ptr %4, align 8, !alias.scope !3319, !noalias !3316
  store ptr %i.aam, ptr %i.pc, align 8, !alias.scope !3319, !noalias !3316
  store i64 %i.aal, ptr %.sroa.2.0..sroa_idx.i.i.i17.i.i.i.i, align 8, !tbaa !207, !alias.scope !3319, !noalias !3316
  store i8 2, ptr %i.pd, align 8, !tbaa !390, !alias.scope !3319, !noalias !3316
  store i8 5, ptr %i.pe, align 1, !tbaa !391, !alias.scope !3319, !noalias !3316
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(34) %4) #28, !noalias !3274
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !3316
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !3316
  %i.aan = load i64, ptr %i.pf, align 8, !tbaa !386, !noalias !3311 ; 2 uses
  %i.aao = load i64, ptr %i.nu, align 8, !tbaa !386, !alias.scope !3310, !noalias !3274
  %i.aap = sub i64 4611686018427387903, %i.aao
  %i.aaq = icmp ult i64 %i.aap, %i.aan
  br i1 %i.aaq, label %bb.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i

bb.df:                                            ; preds = %_ZNKSt3mapIPKN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextNodeEPKS4_St4lessISA_ESaISt4pairIKSA_SC_EEE4findERSG_.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #31, !noalias !3274
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i: ; preds = %_ZNKSt3mapIPKN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextNodeEPKS4_St4lessISA_ESaISt4pairIKSA_SC_EEE4findERSG_.exit.i.i
  %i.aar = load ptr, ptr %10, align 8, !tbaa !206, !noalias !3311
  %i.aas = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef %i.aar, i64 noundef %i.aan) #28, !noalias !3274 ; 0 uses
  %i.aat = load ptr, ptr %10, align 8, !tbaa !206, !noalias !3311 ; 2 uses
  %i.aau = icmp eq ptr %i.aat, %i.pg
  br i1 %i.aau, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i
  %i.aav = load i64, ptr %i.pg, align 8, !tbaa !207, !noalias !3311
  %i.aaw = add i64 %i.aav, 1
  call void @_ZdlPvm(ptr noundef %i.aat, i64 noundef %i.aaw) #29, !noalias !3274
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !3311
  %i.aax = getelementptr inbounds nuw i8, ptr %.val.i80.i.i.i.i, i64 24
  %.val14.i.i = load ptr, ptr %i.aax, align 8, !tbaa !216, !noalias !3311 ; 2 uses
  %i.aay = getelementptr i8, ptr %.val.i80.i.i.i.i, i64 32
  %.val16.i.i = load i32, ptr %i.aay, align 8, !tbaa !230, !noalias !3311 ; 2 uses
  %i.aaz = zext i32 %.val16.i.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.aaz, 4
  %i.aba = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 %.idx.i.i
  %.not86.i.i = icmp eq i32 %.val16.i.i, 0
  br i1 %.not86.i.i, label %_ZN4llvm14DOTGraphTraitsIPKN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEEEE12getNodeLabelB5cxx11EPKNS7_11ContextNodeES9_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i.i
  %.087.i.i = phi ptr [ %i.abx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i.i ], [ %.val14.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ] ; 2 uses
  %i.abb = load i64, ptr %i.nu, align 8, !tbaa !386, !alias.scope !3310, !noalias !3274
  %i.abc = icmp eq i64 %i.abb, 4611686018427387903
  br i1 %i.abc, label %bb.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit67.i.i

bb.dg:                                            ; preds = %.lr.ph.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #31, !noalias !3274
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit67.i.i: ; preds = %.lr.ph.i.i
  %i.abd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @.str.112, i64 noundef 1) #28, !noalias !3274 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28, !noalias !3311
  %.0.val.i.i = load ptr, ptr %.087.i.i, align 8, !tbaa !668, !noalias !3274 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !3320
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !3320
  %i.abe = call noundef ptr @_ZNK4llvm11Instruction11getFunctionEv(ptr noundef nonnull align 8 dereferenceable(72) %.0.val.i.i) #28, !noalias !3321
  %i.abf = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.abe) #28, !noalias !3321 ; 2 uses
  %i.abg = extractvalue { ptr, i64 } %i.abf, 0
  %i.abh = extractvalue { ptr, i64 } %i.abf, 1
  store ptr %i.abg, ptr %3, align 8, !alias.scope !3322, !noalias !3320
  store i64 %i.abh, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i68.i.i, align 8, !tbaa !207, !alias.scope !3322, !noalias !3320
  store ptr @.str.203, ptr %i.ph, align 8, !alias.scope !3322, !noalias !3320
  store i8 5, ptr %i.pi, align 8, !tbaa !390, !alias.scope !3322, !noalias !3320
  store i8 3, ptr %i.pj, align 1, !tbaa !391, !alias.scope !3322, !noalias !3320
  %i.abi = getelementptr inbounds i8, ptr %.0.val.i.i, i64 -32
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !490, !noalias !3321, !nonnull !213, !noundef !213
  %i.abk = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.abj) #28, !noalias !3321 ; 2 uses
  %i.abl = extractvalue { ptr, i64 } %i.abk, 1
  %i.abm = extractvalue { ptr, i64 } %i.abk, 0
  store ptr %3, ptr %2, align 8, !alias.scope !3323, !noalias !3320
  store ptr %i.abm, ptr %i.pk, align 8, !alias.scope !3323, !noalias !3320
  store i64 %i.abl, ptr %.sroa.2.0..sroa_idx.i.i.i17.i.i69.i.i, align 8, !tbaa !207, !alias.scope !3323, !noalias !3320
  store i8 2, ptr %i.pl, align 8, !tbaa !390, !alias.scope !3323, !noalias !3320
  store i8 5, ptr %i.pm, align 1, !tbaa !391, !alias.scope !3323, !noalias !3320
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(34) %2) #28, !noalias !3274
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !3320
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !3320
  %i.abn = load i64, ptr %i.pn, align 8, !tbaa !386, !noalias !3311 ; 2 uses
  %i.abo = load i64, ptr %i.nu, align 8, !tbaa !386, !alias.scope !3310, !noalias !3274
  %i.abp = sub i64 4611686018427387903, %i.abo
  %i.abq = icmp ult i64 %i.abp, %i.abn
  br i1 %i.abq, label %bb.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit70.i.i

bb.dh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit67.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #31, !noalias !3274
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit70.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit67.i.i
  %i.abr = load ptr, ptr %11, align 8, !tbaa !206, !noalias !3311
  %i.abs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef %i.abr, i64 noundef %i.abn) #28, !noalias !3274 ; 0 uses
  %i.abt = load ptr, ptr %11, align 8, !tbaa !206, !noalias !3311 ; 2 uses
  %i.abu = icmp eq ptr %i.abt, %i.po
  br i1 %i.abu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit70.i.i
  %i.abv = load i64, ptr %i.po, align 8, !tbaa !207, !noalias !3311
  %i.abw = add i64 %i.abv, 1
  call void @_ZdlPvm(ptr noundef %i.abt, i64 noundef %i.abw) #29, !noalias !3274
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit70.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28, !noalias !3311
  %i.abx = getelementptr inbounds nuw i8, ptr %.087.i.i, i64 16 ; 2 uses
  %.not.i36.i = icmp eq ptr %i.abx, %i.aba
  br i1 %.not.i36.i, label %_ZN4llvm14DOTGraphTraitsIPKN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEEEE12getNodeLabelB5cxx11EPKNS7_11ContextNodeES9_.exit.i, label %.lr.ph.i.i

bb.di:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i
  %i.aby = load i64, ptr %i.nu, align 8, !tbaa !386, !alias.scope !3310, !noalias !3274
  %i.abz = add i64 %i.aby, -4611686018427387895
  %i.aca = icmp ult i64 %i.abz, 9
  br i1 %i.aca, label %bb.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit74.i.i

bb.dj:                                            ; preds = %bb.di
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #31, !noalias !3274
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit74.i.i: ; preds = %bb.di
  %i.acb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @.str.201, i64 noundef 9) #28, !noalias !3274 ; 0 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %.val.i80.i.i.i.i, i64 5
  %i.acd = load i8, ptr %i.acc, align 1, !tbaa !720, !range !212, !noalias !3311, !noundef !213
  %i.ace = trunc nuw i8 %i.acd to i1
  %i.acf = load i64, ptr %i.nu, align 8, !tbaa !386, !alias.scope !3310, !noalias !3274 ; 2 uses
  br i1 %i.ace, label %bb.dk, label %bb.dm

bb.dk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit74.i.i
  %i.acg = add i64 %i.acf, -4611686018427387892
  %i.ach = icmp ult i64 %i.acg, 12
  br i1 %i.ach, label %bb.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit75.i.i

bb.dl:                                            ; preds = %bb.dk
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #31, !noalias !3274
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit75.i.i: ; preds = %bb.dk
  %i.aci = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @.str.115, i64 noundef 12) #28, !noalias !3274 ; 0 uses
  br label %_ZN4llvm14DOTGraphTraitsIPKN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEEEE12getNodeLabelB5cxx11EPKNS7_11ContextNodeES9_.exit.i

bb.dm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit74.i.i
  %i.acj = add i64 %i.acf, -4611686018427387893
  %i.ack = icmp ult i64 %i.acj, 11
  br i1 %i.ack, label %bb.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit76.i.i

bb.dn:                                            ; preds = %bb.dm
end_hunk_0
begin_hunk_1_@_ZNK12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE11exportToDotENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.wd = getelementptr inbounds nuw i8, ptr %.val.i80.i.i.i.i, i64 120
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !1165, !noalias !4670
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.we, null
  %i.wf = load i64, ptr %i.ng, align 8, !tbaa !386, !alias.scope !4669, !noalias !4663 ; 2 uses
  br i1 %.not7.i.i.i.i.i.i, label %bb.cl, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.i.i.i.i.i.i
  %i.wg = add i64 %i.wf, -4611686018427387891
  %i.wh = icmp ult i64 %i.wg, 13
  br i1 %i.wh, label %bb.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit92.i.i.i.i.i.i

bb.cj:                                            ; preds = %bb.ci
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #31, !noalias !4663
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit92.i.i.i.i.i.i: ; preds = %bb.ci
  %i.wi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.183, i64 noundef 13) #28, !noalias !4663 ; 0 uses
  %i.wj = load i64, ptr %i.ng, align 8, !tbaa !386, !alias.scope !4669, !noalias !4663
  %i.wk = add i64 %i.wj, -4611686018427387877
  %i.wl = icmp ult i64 %i.wk, 27
  br i1 %i.wl, label %bb.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit93.i.i.i.i.i.i

bb.ck:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit92.i.i.i.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #31, !noalias !4663
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit93.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit92.i.i.i.i.i.i
  %i.wm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.184, i64 noundef 27) #28, !noalias !4663 ; 0 uses
  br label %bb.cn

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.i.i.i.i.i.i
  %i.wn = add i64 %i.wf, -4611686018427387889
  %i.wo = icmp ult i64 %i.wn, 15
  br i1 %i.wo, label %bb.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit94.i.i.i.i.i.i

bb.cm:                                            ; preds = %bb.cl
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #31, !noalias !4663
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit94.i.i.i.i.i.i: ; preds = %bb.cl
  %i.wp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.185, i64 noundef 15) #28, !noalias !4663 ; 0 uses
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit94.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit93.i.i.i.i.i.i
  %i.wq = load i32, ptr %i.ln, align 4, !tbaa !646, !noalias !4670 ; 2 uses
  %i.wr = icmp eq i32 %i.wq, 0
  br i1 %i.wr, label %_ZN4llvm14DOTGraphTraitsIPKN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphENS_15FunctionSummaryENS1_9IndexCallEEEE17getNodeAttributesB5cxx11EPKNS6_11ContextNodeES8_.exit.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ws = load ptr, ptr %15, align 8, !tbaa !647, !noalias !4670
  %i.wt = zext i32 %i.wq to i64                   ; 2 uses
  %i.wu = add nuw nsw i64 %i.wt, 31
  %i.wv = lshr i64 %i.wu, 5
  %i.ww = add nuw nsw i64 %i.wv, %i.wt
  %i.wx = shl nuw nsw i64 %i.ww, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ws, i64 noundef %i.wx, i64 noundef 4) #28, !noalias !4663
  br label %_ZN4llvm14DOTGraphTraitsIPKN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphENS_15FunctionSummaryENS1_9IndexCallEEEE17getNodeAttributesB5cxx11EPKNS6_11ContextNodeES8_.exit.i.i.i.i.i

_ZN4llvm14DOTGraphTraitsIPKN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphENS_15FunctionSummaryENS1_9IndexCallEEEE17getNodeAttributesB5cxx11EPKNS6_11ContextNodeES8_.exit.i.i.i.i.i: ; preds = %bb.co, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28, !noalias !4670
  %i.wy = load ptr, ptr %i.ha, align 8, !tbaa !633, !noalias !4663
  %i.wz = load ptr, ptr %i.hc, align 8, !tbaa !634, !noalias !4663 ; 2 uses
  %i.xa = ptrtoint ptr %i.wy to i64
  %i.xb = ptrtoint ptr %i.wz to i64
  %i.xc = sub i64 %i.xa, %i.xb
  %i.xd = icmp ult i64 %i.xc, 5
  br i1 %i.xd, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %_ZN4llvm14DOTGraphTraitsIPKN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphENS_15FunctionSummaryENS1_9IndexCallEEEE17getNodeAttributesB5cxx11EPKNS6_11ContextNodeES8_.exit.i.i.i.i.i
  %i.xe = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %45, ptr noundef nonnull @.str.158, i64 noundef 5) #28, !noalias !4663
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i.i.i.i

bb.cq:                                            ; preds = %_ZN4llvm14DOTGraphTraitsIPKN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphENS_15FunctionSummaryENS1_9IndexCallEEEE17getNodeAttributesB5cxx11EPKNS6_11ContextNodeES8_.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.wz, ptr noundef nonnull align 1 dereferenceable(5) @.str.158, i64 5, i1 false), !noalias !4663
  %i.xf = load ptr, ptr %i.hc, align 8, !tbaa !634, !noalias !4663
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 5
  store ptr %i.xg, ptr %i.hc, align 8, !tbaa !634, !noalias !4663
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i.i.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i.i.i.i.i:       ; preds = %bb.cq, %bb.cp
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.xe, %bb.cp ], [ %45, %bb.cq ]
  %i.xh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i.i.i.i, ptr noundef nonnull %.val.i80.i.i.i.i) #28, !noalias !4663 ; 3 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 24
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !633, !noalias !4663
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xh, i64 32 ; 3 uses
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !634, !noalias !4663 ; 2 uses
  %i.xm = ptrtoint ptr %i.xj to i64
  %i.xn = ptrtoint ptr %i.xl to i64
  %i.xo = sub i64 %i.xm, %i.xn
  %i.xp = icmp ult i64 %i.xo, 8
  br i1 %i.xp, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i.i.i.i
  %i.xq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.xh, ptr noundef nonnull @.str.159, i64 noundef 8) #28, !noalias !4663 ; 0 uses
  br label %bb.ct

bb.cs:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i.i.i.i
  store i64 4424065772627909408, ptr %i.xl, align 1, !noalias !4663
  %i.xr = load ptr, ptr %i.xk, align 8, !tbaa !634, !noalias !4663
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 8
  store ptr %i.xs, ptr %i.xk, align 8, !tbaa !634, !noalias !4663
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.xt = load ptr, ptr %i.ha, align 8, !tbaa !633, !noalias !4663
  %i.xu = load ptr, ptr %i.hc, align 8, !tbaa !634, !noalias !4663 ; 2 uses
  %i.xv = ptrtoint ptr %i.xt to i64
  %i.xw = ptrtoint ptr %i.xu to i64
  %i.xx = sub i64 %i.xv, %i.xw
  %i.xy = icmp ult i64 %i.xx, 7
  br i1 %i.xy, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.xz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %45, ptr noundef nonnull @.str.161, i64 noundef 7) #28, !noalias !4663 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65.i.i.i.i.i

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.xu, ptr noundef nonnull align 1 dereferenceable(7) @.str.161, i64 7, i1 false), !noalias !4663
  %i.ya = load ptr, ptr %i.hc, align 8, !tbaa !634, !noalias !4663
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 7
  store ptr %i.yb, ptr %i.hc, align 8, !tbaa !634, !noalias !4663
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65.i.i.i.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit65.i.i.i.i.i:     ; preds = %bb.cv, %bb.cu
  %i.yc = load i64, ptr %i.ng, align 8, !tbaa !386, !noalias !4663 ; 2 uses
  %i.yd = icmp eq i64 %i.yc, 0
  br i1 %i.yd, label %_ZN4llvm11raw_ostreamlsEPKc.exit71.i.i.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit65.i.i.i.i.i
  %i.ye = load ptr, ptr %27, align 8, !tbaa !206, !noalias !4663
  %i.yf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %45, ptr noundef %i.ye, i64 noundef %i.yc) #28, !noalias !4663 ; 3 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 24
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !633, !noalias !4663
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yf, i64 32 ; 3 uses
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !634, !noalias !4663 ; 2 uses
  %i.yk = icmp eq ptr %i.yh, %i.yj
  br i1 %i.yk, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.yl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.yf, ptr noundef nonnull @.str.162, i64 noundef 1) #28, !noalias !4663 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit71.i.i.i.i.i

bb.cy:                                            ; preds = %bb.cw
  store i8 44, ptr %i.yj, align 1, !noalias !4663
  %i.ym = load ptr, ptr %i.yi, align 8, !tbaa !634, !noalias !4663
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 1
  store ptr %i.yn, ptr %i.yi, align 8, !tbaa !634, !noalias !4663
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit71.i.i.i.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit71.i.i.i.i.i:     ; preds = %bb.cy, %bb.cx, %_ZN4llvm11raw_ostreamlsEPKc.exit65.i.i.i.i.i
  %i.yo = load ptr, ptr %i.ha, align 8, !tbaa !633, !noalias !4663
  %i.yp = load ptr, ptr %i.hc, align 8, !tbaa !634, !noalias !4663 ; 2 uses
  %i.yq = ptrtoint ptr %i.yo to i64
  %i.yr = ptrtoint ptr %i.yp to i64
  %i.ys = sub i64 %i.yq, %i.yr
  %i.yt = icmp ult i64 %i.ys, 6
  br i1 %i.yt, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit71.i.i.i.i.i
  %i.yu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %45, ptr noundef nonnull @.str.163, i64 noundef 6) #28, !noalias !4663 ; 0 uses
  %.pre.i30.i = load ptr, ptr %i.hc, align 8, !tbaa !634, !noalias !4663
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit74.i.i.i.i.i

bb.da:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit71.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.yp, ptr noundef nonnull align 1 dereferenceable(6) @.str.163, i64 6, i1 false), !noalias !4663
  %i.yv = load ptr, ptr %i.hc, align 8, !tbaa !634, !noalias !4663
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 6 ; 2 uses
  store ptr %i.yw, ptr %i.hc, align 8, !tbaa !634, !noalias !4663
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit74.i.i.i.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit74.i.i.i.i.i:     ; preds = %bb.da, %bb.cz
  %i.yx = phi ptr [ %.pre.i30.i, %bb.cz ], [ %i.yw, %bb.da ] ; 2 uses
  %i.yy = load ptr, ptr %i.ha, align 8, !tbaa !633, !noalias !4663
  %i.yz = ptrtoint ptr %i.yy to i64
  %i.za = ptrtoint ptr %i.yx to i64
  %i.zb = sub i64 %i.yz, %i.za
  %i.zc = icmp ult i64 %i.zb, 2
  br i1 %i.zc, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit74.i.i.i.i.i
  %i.zd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %45, ptr noundef nonnull @.str.167, i64 noundef 2) #28, !noalias !4663 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit85.i.i.i.i.i

bb.dc:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit74.i.i.i.i.i
  store i16 31522, ptr %i.yx, align 1, !noalias !4663
  %i.ze = load ptr, ptr %i.hc, align 8, !tbaa !634, !noalias !4663
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 2
  store ptr %i.zf, ptr %i.hc, align 8, !tbaa !634, !noalias !4663
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit85.i.i.i.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit85.i.i.i.i.i:     ; preds = %bb.dc, %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28, !noalias !4663
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #28, !noalias !4663
  %i.zg = load ptr, ptr %i.b, align 8, !tbaa !1167, !noalias !4663 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4699)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !4700
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !4700
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !4700
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !4700
  %i.zh = getelementptr inbounds nuw i8, ptr %.val.i80.i.i.i.i, i64 4
  %i.zi = load i8, ptr %i.zh, align 4, !tbaa !884, !range !212, !noalias !4700, !noundef !213
  %i.zj = trunc nuw i8 %i.zi to i1
  %52 = select i1 %i.zj, ptr @.str.200, ptr @.str.1 ; 2 uses
  %53 = load i8, ptr %52, align 1, !tbaa !207, !noalias !4700
  %.not.i.i.i = icmp eq i8 %53, 0
  store ptr @.str.199, ptr %5, align 8, !noalias !4700
  br i1 %.not.i.i.i, label %_ZN4llvmplERKNS_5TwineES2_.exit67.i.i, label %bb.dd

bb.dd:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit85.i.i.i.i.i
  store ptr %52, ptr %i.op, align 8, !alias.scope !4701, !noalias !4700
  br label %_ZN4llvmplERKNS_5TwineES2_.exit67.i.i

_ZN4llvmplERKNS_5TwineES2_.exit67.i.i:            ; preds = %bb.dd, %_ZN4llvm11raw_ostreamlsEPKc.exit85.i.i.i.i.i
  %.sroa.05.0.i.i26.i.i = phi ptr [ %5, %bb.dd ], [ @.str.199, %_ZN4llvm11raw_ostreamlsEPKc.exit85.i.i.i.i.i ]
  %.014.i.i25.i.i = phi i8 [ 2, %bb.dd ], [ 3, %_ZN4llvm11raw_ostreamlsEPKc.exit85.i.i.i.i.i ]
  %.sink.i.i = phi i8 [ 3, %bb.dd ], [ 1, %_ZN4llvm11raw_ostreamlsEPKc.exit85.i.i.i.i.i ]
  store i8 3, ptr %.sroa.5106.0..sroa_idx.i.i, align 8, !tbaa !1105, !noalias !4700
  store i8 %.sink.i.i, ptr %.sroa.7107.0..sroa_idx.i.i, align 1, !tbaa !1105, !noalias !4700
  %i.zk = getelementptr inbounds nuw i8, ptr %.val.i80.i.i.i.i, i64 40
  %i.zl = load i64, ptr %i.zk, align 8, !tbaa !949, !noalias !4700
  %i.zm = inttoptr i64 %i.zl to ptr
  store ptr %.sroa.05.0.i.i26.i.i, ptr %4, align 8, !alias.scope !4702, !noalias !4700
  store ptr %i.zm, ptr %i.oq, align 8, !alias.scope !4702, !noalias !4700
  store i8 %.014.i.i25.i.i, ptr %i.or, align 8, !tbaa !390, !alias.scope !4702, !noalias !4700
  store i8 11, ptr %i.os, align 1, !tbaa !391, !alias.scope !4702, !noalias !4700
  store ptr %4, ptr %3, align 8, !alias.scope !4703, !noalias !4700
  store ptr @.str.129, ptr %i.ot, align 8, !alias.scope !4703, !noalias !4700
  store i8 2, ptr %i.ou, align 8, !tbaa !390, !alias.scope !4703, !noalias !4700
  store i8 3, ptr %i.ov, align 1, !tbaa !391, !alias.scope !4703, !noalias !4700
  %i.zn = load i32, ptr %.val.i80.i.i.i.i, align 8, !tbaa !943, !noalias !4700
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.zn to i64
  %i.zo = inttoptr i64 %.sroa.0.0.insert.ext.i.i to ptr
  store ptr %3, ptr %2, align 8, !alias.scope !4704, !noalias !4700
  store ptr %i.zo, ptr %i.ow, align 8, !alias.scope !4704, !noalias !4700
  store i8 2, ptr %i.ox, align 8, !tbaa !390, !alias.scope !4704, !noalias !4700
  store i8 9, ptr %i.oy, align 1, !tbaa !391, !alias.scope !4704, !noalias !4700
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull align 8 dereferenceable(34) %2) #28, !noalias !4663
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !4700
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !4700
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !4700
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !4700
  %i.zp = load i64, ptr %i.nu, align 8, !tbaa !386, !alias.scope !4699, !noalias !4663
  %i.zq = icmp eq i64 %i.zp, 4611686018427387903
  br i1 %i.zq, label %bb.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i

bb.de:                                            ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit67.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #31, !noalias !4663
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit67.i.i
  %i.zr = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.112, i64 noundef 1) #28, !noalias !4663 ; 0 uses
  %i.zs = getelementptr i8, ptr %.val.i80.i.i.i.i, i64 8
  %.val18.i.i = load i64, ptr %i.zs, align 8, !noalias !4700 ; 2 uses
  %i.zt = icmp ugt i64 %.val18.i.i, 7
  br i1 %i.zt, label %bb.df, label %bb.dk

bb.df:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zg, i64 56
  %.val.i.i.i35.i = load ptr, ptr %i.zu, align 8, !tbaa !398, !noalias !4700 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zg, i64 48 ; 5 uses
  %.not2.i.i.i.i.i = icmp eq ptr %.val.i.i.i35.i, null
  br i1 %.not2.i.i.i.i.i, label %_ZNKSt3mapIPKN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextNodeEPKS4_St4lessIS9_ESaISt4pairIKS9_SB_EEE4findERSF_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.df, %.lr.ph.i.i.i.i.i
  %.04.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.val.i.i.i35.i, %bb.df ] ; 3 uses
  %.083.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.zv, %bb.df ]
  %i.zw = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i, i64 32
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !854, !noalias !4663
  %i.zy = icmp ult ptr %i.zx, %.val.i80.i.i.i.i   ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.zy, ptr %.083.i.i.i.i.i, ptr %.04.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.zy, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr i8, ptr %.04.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !410, !noalias !4663 ; 2 uses
  %.not.i.i.i.i36.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i36.i, label %_ZNKSt8_Rb_treeIPKN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextNodeESt4pairIKS9_PKS4_ESt10_Select1stISE_ESt4lessIS9_ESaISE_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRSB_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4648

_ZNKSt8_Rb_treeIPKN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextNodeESt4pairIKS9_PKS4_ESt10_Select1stISE_ESt4lessIS9_ESaISE_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRSB_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.zz = icmp eq ptr %.19.i.i.i.i.i, %i.zv
  br i1 %i.zz, label %_ZNKSt3mapIPKN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextNodeEPKS4_St4lessIS9_ESaISt4pairIKS9_SB_EEE4findERSF_.exit.i.i, label %bb.dg

bb.dg:                                            ; preds = %_ZNKSt8_Rb_treeIPKN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextNodeESt4pairIKS9_PKS4_ESt10_Select1stISE_ESt4lessIS9_ESaISE_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRSB_.exit.i.i.i.i
  %i.aaa = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !854, !noalias !4663
  %i.aac = icmp ult ptr %.val.i80.i.i.i.i, %i.aab
  %spec.select.i.i.i.i = select i1 %i.aac, ptr %i.zv, ptr %.19.i.i.i.i.i
  br label %_ZNKSt3mapIPKN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextNodeEPKS4_St4lessIS9_ESaISt4pairIKS9_SB_EEE4findERSF_.exit.i.i

_ZNKSt3mapIPKN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextNodeEPKS4_St4lessIS9_ESaISt4pairIKS9_SB_EEE4findERSF_.exit.i.i: ; preds = %bb.dg, %_ZNKSt8_Rb_treeIPKN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextNodeESt4pairIKS9_PKS4_ESt10_Select1stISE_ESt4lessIS9_ESaISE_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRSB_.exit.i.i.i.i, %bb.df
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.zv, %bb.df ], [ %i.zv, %_ZNKSt8_Rb_treeIPKN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextNodeESt4pairIKS9_PKS4_ESt10_Select1stISE_ESt4lessIS9_ESaISE_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRSB_.exit.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.dg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !4700
  %i.aad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 40 ; 2 uses
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !1172, !noalias !4663
  %i.aaf = getelementptr i8, ptr %.val.i80.i.i.i.i, i64 16
  %.val14.i.i = load i32, ptr %i.aaf, align 8, !tbaa !885, !noalias !4700
  call fastcc void @_ZNK12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE8getLabelB5cxx11EPKS3_S4_j(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull readonly align 8 dereferenceable(316) %i.zg, ptr noundef %i.aae, i64 %.val18.i.i, i32 noundef %.val14.i.i), !noalias !4663
  %i.aag = load i64, ptr %i.oz, align 8, !tbaa !386, !noalias !4700 ; 2 uses
  %i.aah = load i64, ptr %i.nu, align 8, !tbaa !386, !alias.scope !4699, !noalias !4663
  %i.aai = sub i64 4611686018427387903, %i.aah
  %i.aaj = icmp ult i64 %i.aai, %i.aag
  br i1 %i.aaj, label %bb.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i

bb.dh:                                            ; preds = %_ZNKSt3mapIPKN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextNodeEPKS4_St4lessIS9_ESaISt4pairIKS9_SB_EEE4findERSF_.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #31, !noalias !4663
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i: ; preds = %_ZNKSt3mapIPKN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextNodeEPKS4_St4lessIS9_ESaISt4pairIKS9_SB_EEE4findERSF_.exit.i.i
  %i.aak = load ptr, ptr %6, align 8, !tbaa !206, !noalias !4700
  %i.aal = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef %i.aak, i64 noundef %i.aag) #28, !noalias !4663 ; 0 uses
  %i.aam = load ptr, ptr %6, align 8, !tbaa !206, !noalias !4700 ; 2 uses
  %i.aan = icmp eq ptr %i.aam, %i.pa
  br i1 %i.aan, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i
  %i.aao = load i64, ptr %i.pa, align 8, !tbaa !207, !noalias !4700
  %i.aap = add i64 %i.aao, 1
  call void @_ZdlPvm(ptr noundef %i.aam, i64 noundef %i.aap) #29, !noalias !4663
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !4700
  %i.aaq = getelementptr inbounds nuw i8, ptr %.val.i80.i.i.i.i, i64 24
  %.val15.i.i = load ptr, ptr %i.aaq, align 8, !tbaa !216, !noalias !4700 ; 2 uses
  %i.aar = getelementptr i8, ptr %.val.i80.i.i.i.i, i64 32
  %.val17.i.i = load i32, ptr %i.aar, align 8, !tbaa !230, !noalias !4700 ; 2 uses
  %i.aas = zext i32 %.val17.i.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.aas, 4
  %i.aat = getelementptr inbounds nuw i8, ptr %.val15.i.i, i64 %.idx.i.i
  %.not84.i.i = icmp eq i32 %.val17.i.i, 0
  br i1 %.not84.i.i, label %_ZN4llvm14DOTGraphTraitsIPKN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphENS_15FunctionSummaryENS1_9IndexCallEEEE12getNodeLabelB5cxx11EPKNS6_11ContextNodeES8_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i
  %.085.i.i = phi ptr [ %i.abj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i ], [ %.val15.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ] ; 3 uses
  %i.aau = load i64, ptr %i.nu, align 8, !tbaa !386, !alias.scope !4699, !noalias !4663
  %i.aav = icmp eq i64 %i.aau, 4611686018427387903
  br i1 %i.aav, label %bb.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit68.i.i

bb.di:                                            ; preds = %.lr.ph.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #31, !noalias !4663
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit68.i.i: ; preds = %.lr.ph.i.i
  %i.aaw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.112, i64 noundef 1) #28, !noalias !4663 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !4700
  %i.aax = load ptr, ptr %i.aad, align 8, !tbaa !1172, !noalias !4663
  %.0.val.i.i = load i64, ptr %.085.i.i, align 8, !noalias !4663
  %i.aay = getelementptr i8, ptr %.085.i.i, i64 8
  %.0.val13.i.i = load i32, ptr %i.aay, align 8, !tbaa !885, !noalias !4663
  call fastcc void @_ZNK12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE8getLabelB5cxx11EPKS3_S4_j(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull readonly align 8 dereferenceable(316) %i.zg, ptr noundef %i.aax, i64 %.0.val.i.i, i32 noundef %.0.val13.i.i), !noalias !4663
  %i.aaz = load i64, ptr %i.pb, align 8, !tbaa !386, !noalias !4700 ; 2 uses
  %i.aba = load i64, ptr %i.nu, align 8, !tbaa !386, !alias.scope !4699, !noalias !4663
  %i.abb = sub i64 4611686018427387903, %i.aba
  %i.abc = icmp ult i64 %i.abb, %i.aaz
  br i1 %i.abc, label %bb.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit69.i.i

bb.dj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit68.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #31, !noalias !4663
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit69.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit68.i.i
  %i.abd = load ptr, ptr %7, align 8, !tbaa !206, !noalias !4700
  %i.abe = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef %i.abd, i64 noundef %i.aaz) #28, !noalias !4663 ; 0 uses
  %i.abf = load ptr, ptr %7, align 8, !tbaa !206, !noalias !4700 ; 2 uses
  %i.abg = icmp eq ptr %i.abf, %i.pc
  br i1 %i.abg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit69.i.i
  %i.abh = load i64, ptr %i.pc, align 8, !tbaa !207, !noalias !4700
  %i.abi = add i64 %i.abh, 1
  call void @_ZdlPvm(ptr noundef %i.abf, i64 noundef %i.abi) #29, !noalias !4663
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit69.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !4700
  %i.abj = getelementptr inbounds nuw i8, ptr %.085.i.i, i64 16 ; 2 uses
  %.not.i38.i = icmp eq ptr %i.abj, %i.aat
  br i1 %.not.i38.i, label %_ZN4llvm14DOTGraphTraitsIPKN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphENS_15FunctionSummaryENS1_9IndexCallEEEE12getNodeLabelB5cxx11EPKNS6_11ContextNodeES8_.exit.i, label %.lr.ph.i.i

bb.dk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i
  %i.abk = load i64, ptr %i.nu, align 8, !tbaa !386, !alias.scope !4699, !noalias !4663
  %i.abl = add i64 %i.abk, -4611686018427387895
  %i.abm = icmp ult i64 %i.abl, 9
  br i1 %i.abm, label %bb.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit73.i.i

bb.dl:                                            ; preds = %bb.dk
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #31, !noalias !4663
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit73.i.i: ; preds = %bb.dk
  %i.abn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.201, i64 noundef 9) #28, !noalias !4663 ; 0 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %.val.i80.i.i.i.i, i64 5
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !944, !range !212, !noalias !4700, !noundef !213
  %i.abq = trunc nuw i8 %i.abp to i1
  %i.abr = load i64, ptr %i.nu, align 8, !tbaa !386, !alias.scope !4699, !noalias !4663 ; 2 uses
  br i1 %i.abq, label %bb.dm, label %bb.do

bb.dm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit73.i.i
  %i.abs = add i64 %i.abr, -4611686018427387892
  %i.abt = icmp ult i64 %i.abs, 12
  br i1 %i.abt, label %bb.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit74.i.i

bb.dn:                                            ; preds = %bb.dm
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #31, !noalias !4663
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit74.i.i: ; preds = %bb.dm
  %i.abu = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.115, i64 noundef 12) #28, !noalias !4663 ; 0 uses
  br label %_ZN4llvm14DOTGraphTraitsIPKN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphENS_15FunctionSummaryENS1_9IndexCallEEEE12getNodeLabelB5cxx11EPKNS6_11ContextNodeES8_.exit.i

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit73.i.i
  %i.abv = add i64 %i.abr, -4611686018427387893
  %i.abw = icmp ult i64 %i.abv, 11
  br i1 %i.abw, label %bb.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit75.i.i

bb.dp:                                            ; preds = %bb.do
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #31, !noalias !4663
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit75.i.i: ; preds = %bb.do
  %i.abx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.202, i64 noundef 11) #28, !noalias !4663 ; 0 uses
  br label %_ZN4llvm14DOTGraphTraitsIPKN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphENS_15FunctionSummaryENS1_9IndexCallEEEE12getNodeLabelB5cxx11EPKNS6_11ContextNodeES8_.exit.i

end_hunk_1
