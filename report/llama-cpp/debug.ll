Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/debug?download=true
inline.NumInlined: 4025
inline.NumDeleted: 1557
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_Z20common_debug_cb_evalP11ggml_tensorbPv:bb.a
  %i.gt = icmp sgt i32 %i.gs, -1
  br i1 %i.gt, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gu = call noundef ptr @_Z15common_log_mainv()
  call void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.gu, i32 noundef 0, ptr noundef nonnull @.str.16)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gv = load i64, ptr %i.cb, align 8, !tbaa !91
  %i.gw = add nsw i64 %i.gv, -3
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.aq, %.lr.ph109.i
  %.1.i = phi i64 [ %i.gw, %bb.at ], [ 3, %bb.aq ], [ %.0107.i, %.lr.ph109.i ] ; 3 uses
  %i.gx = load i64, ptr %i.cl, align 8, !tbaa !91
  %i.gy = mul i64 %i.gx, %.068119.i
  %i.gz = load i64, ptr %i.cm, align 8, !tbaa !91
  %i.ha = mul i64 %i.gz, %.167.i
  %i.hb = add i64 %i.ha, %i.gy
  %i.hc = load i64, ptr %i.cn, align 8, !tbaa !91
  %i.hd = mul i64 %i.hc, %.165.i
  %i.he = add i64 %i.hb, %i.hd
  %i.hf = load i64, ptr %i.cc, align 8, !tbaa !91
  %i.hg = mul i64 %i.hf, %.1.i
  %i.hh = add i64 %i.he, %i.hg                    ; 7 uses
  switch i32 %.fr, label %bb.bc [
    i32 1, label %bb.av
    i32 0, label %bb.aw
    i32 27, label %bb.ax
    i32 26, label %bb.ay
    i32 25, label %bb.az
    i32 24, label %bb.ba
    i32 30, label %bb.bb
  ]

bb.av:                                            ; preds = %bb.au
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.hh
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !92
  %i.hk = call float @ggml_fp16_to_fp32(i16 noundef zeroext %i.hj)
  br label %_ZL27common_ggml_get_float_valuePKh9ggml_typePKmmmmm.exit81.i

bb.aw:                                            ; preds = %bb.au
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.hh
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !521
  br label %_ZL27common_ggml_get_float_valuePKh9ggml_typePKmmmmm.exit81.i

bb.ax:                                            ; preds = %bb.au
  %i.hn = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.hh
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !91
  %i.hp = sitofp i64 %i.ho to float
  br label %_ZL27common_ggml_get_float_valuePKh9ggml_typePKmmmmm.exit81.i

bb.ay:                                            ; preds = %bb.au
  %i.hq = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.hh
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !93
  %i.hs = sitofp i32 %i.hr to float
  br label %_ZL27common_ggml_get_float_valuePKh9ggml_typePKmmmmm.exit81.i

bb.az:                                            ; preds = %bb.au
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.hh
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !92
  %i.hv = sitofp i16 %i.hu to float
  br label %_ZL27common_ggml_get_float_valuePKh9ggml_typePKmmmmm.exit81.i

bb.ba:                                            ; preds = %bb.au
  %i.hw = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.hh
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !78
  %i.hy = sitofp i8 %i.hx to float
  br label %_ZL27common_ggml_get_float_valuePKh9ggml_typePKmmmmm.exit81.i

bb.bb:                                            ; preds = %bb.au
  %i.hz = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.hh
  %.sroa.0.0.copyload.i79.i = load i16, ptr %i.hz, align 2, !tbaa !92
  %i.ia = call float @ggml_bf16_to_fp32(i16 %.sroa.0.0.copyload.i79.i)
  br label %_ZL27common_ggml_get_float_valuePKh9ggml_typePKmmmmm.exit81.i

bb.bc:                                            ; preds = %bb.au
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 72, ptr noundef nonnull @.str.23) #32
  unreachable

_ZL27common_ggml_get_float_valuePKh9ggml_typePKmmmmm.exit81.i: ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av
  %.0.i80.i = phi float [ %i.hk, %bb.av ], [ %i.hm, %bb.aw ], [ %i.hp, %bb.ax ], [ %i.hs, %bb.ay ], [ %i.hv, %bb.az ], [ %i.hy, %bb.ba ], [ %i.ia, %bb.bb ]
  %i.ib = call noundef i32 @_Z30common_log_get_verbosity_tholdv()
  %i.ic = icmp sgt i32 %i.ib, -1
  br i1 %i.ic, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZL27common_ggml_get_float_valuePKh9ggml_typePKmmmmm.exit81.i
  %i.id = call noundef ptr @_Z15common_log_mainv()
  %i.ie = fpext float %.0.i80.i to double
  call void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.id, i32 noundef 0, ptr noundef nonnull @.str.17, double noundef %i.ie)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZL27common_ggml_get_float_valuePKh9ggml_typePKmmmmm.exit81.i
  %i.if = load i64, ptr %i.cb, align 8, !tbaa !91
  %i.ig = add nsw i64 %i.if, -1
  %i.ih = icmp slt i64 %.1.i, %i.ig
  br i1 %i.ih, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.ii = call noundef i32 @_Z30common_log_get_verbosity_tholdv()
  %i.ij = icmp sgt i32 %i.ii, -1
  br i1 %i.ij, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ik = call noundef ptr @_Z15common_log_mainv()
  call void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.ik, i32 noundef 0, ptr noundef nonnull @.str.6)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %i.il = add nsw i64 %.1.i, 1                    ; 2 uses
  %i.im = load i64, ptr %i.cb, align 8, !tbaa !91 ; 2 uses
  %i.in = icmp slt i64 %i.il, %i.im
  br i1 %i.in, label %.lr.ph109.i, label %._crit_edge110.i, !llvm.loop !510

bb.bi:                                            ; preds = %._crit_edge110.i
  %i.io = call noundef ptr @_Z15common_log_mainv()
  call void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.io, i32 noundef 0, ptr noundef nonnull @.str.18)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %._crit_edge110.i
  %i.ip = add nsw i64 %.165.i, 1                  ; 2 uses
  %i.iq = load i64, ptr %i.ck, align 8, !tbaa !91 ; 2 uses
  %i.ir = icmp slt i64 %i.ip, %i.iq
  br i1 %i.ir, label %.lr.ph113.i, label %._crit_edge114.i, !llvm.loop !511

bb.bk:                                            ; preds = %._crit_edge114.i
  %i.is = call noundef ptr @_Z15common_log_mainv()
  call void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.is, i32 noundef 0, ptr noundef nonnull @.str.19)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %._crit_edge114.i
  %i.it = add nsw i64 %.167.i, 1                  ; 2 uses
  %i.iu = load i64, ptr %i.cj, align 8, !tbaa !91 ; 2 uses
  %i.iv = icmp slt i64 %i.it, %i.iu
  br i1 %i.iv, label %.lr.ph117.i, label %._crit_edge118.i, !llvm.loop !512

bb.bm:                                            ; preds = %._crit_edge118.i
  %i.iw = call noundef ptr @_Z15common_log_mainv()
  call void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.iw, i32 noundef 0, ptr noundef nonnull @.str.20)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %._crit_edge118.i
  %i.ix = call noundef i32 @_Z30common_log_get_verbosity_tholdv()
  %i.iy = icmp sgt i32 %i.ix, -1
  br i1 %i.iy, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.iz = call noundef ptr @_Z15common_log_mainv()
  call void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.iz, i32 noundef 0, ptr noundef nonnull @.str.21, double noundef %i.ez)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.ja = add nuw nsw i64 %.068119.i, 1           ; 2 uses
  %i.jb = load i64, ptr %i.cg, align 8, !tbaa !91
  %i.jc = icmp slt i64 %i.ja, %i.jb
  br i1 %i.jc, label %bb.z, label %._crit_edge121.i, !llvm.loop !513

bb.bq:                                            ; preds = %._crit_edge121.i
  %i.jd = call noundef i32 @_Z30common_log_get_verbosity_tholdv()
  %i.je = icmp sgt i32 %i.jd, -1
  br i1 %i.je, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.jf = call noundef ptr @_Z15common_log_mainv()
  call void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.jf, i32 noundef 0, ptr noundef nonnull @.str.22)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  call void @exit(i32 noundef 0) #33
  unreachable

_ZL25common_debug_print_tensorPh9ggml_typePKlPKmlb.exit: ; preds = %._crit_edge121.i, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.bt

bb.bt:                                            ; preds = %bb.a, %_ZL25common_debug_print_tensorPh9ggml_typePKlPKmlb.exit
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL21common_ggml_ne_stringB5cxx11PK11ggml_tensor(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !76
  store i8 0, ptr %i.a, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.g = load i64, ptr %i.f, align 8, !tbaa !91   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %i.h = call i64 @llvm.abs.i64(i64 %i.g, i1 false) ; 5 uses
  %i.i = icmp ult i64 %i.h, 10
  br i1 %i.i, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.h
  %.029.i.i = phi i32 [ %i.q, %bb.h ], [ 1, %bb.b ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.p, %bb.h ], [ %i.h, %bb.b ] ; 5 uses
  %i.j = icmp ult i64 %.02328.i.i, 100
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.k = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.l = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.f:                                             ; preds = %bb.d
  %i.n = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.h:                                             ; preds = %bb.f
  %i.p = udiv i64 %.02328.i.i, 10000
  %i.q = add i32 %.029.i.i, 4                     ; 2 uses
  %i.r = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.r, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !525

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %bb.b
  %.022.i.i = phi i32 [ %i.o, %bb.g ], [ %i.k, %bb.c ], [ %i.m, %bb.e ], [ 1, %bb.b ], [ %i.q, %bb.h ] ; 2 uses
  %.lobit.i = lshr i64 %i.g, 63                   ; 2 uses
  %i.s = trunc nuw nsw i64 %.lobit.i to i32
  %i.t = add i32 %.022.i.i, %i.s
  %i.u = zext i32 %i.t to i64
  store ptr %i.d, ptr %2, align 8, !tbaa !77, !alias.scope !528
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.u, i8 noundef signext 45)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.v = load ptr, ptr %2, align 8, !tbaa !75, !alias.scope !528
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.lobit.i ; 4 uses
  %i.x = icmp ugt i64 %i.h, 99
  br i1 %i.x, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.noexc
  %i.y = add i32 %.022.i.i, -1
  br label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %.lr.ph.i13.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.ab, %.lr.ph.i13.i ], [ %i.h, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.al, %.lr.ph.i13.i ], [ %i.y, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.z = urem i64 %.020.i.i, 100
  %i.aa = shl nuw nsw i64 %i.z, 1
  %i.ab = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.aa ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !78, !noalias !528
  %i.af = zext i32 %.01819.i.i to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.af
  store i8 %i.ae, ptr %i.ag, align 1, !tbaa !78
  %i.ah = load i8, ptr %i.ac, align 2, !tbaa !78, !noalias !528
  %i.ai = add i32 %.01819.i.i, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aj
  store i8 %i.ah, ptr %i.ak, align 1, !tbaa !78
  %i.al = add i32 %.01819.i.i, -2
  %i.am = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.am, label %.lr.ph.i13.i, label %._crit_edge.i.i, !llvm.loop !526

._crit_edge.i.i:                                  ; preds = %.lr.ph.i13.i, %.noexc
  %.0.lcssa.i.i = phi i64 [ %i.h, %.noexc ], [ %i.ab, %.lr.ph.i13.i ] ; 3 uses
  %i.an = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ao = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ap = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !78, !noalias !528
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !78
  %i.at = load i8, ptr %i.ap, align 2, !tbaa !78, !noalias !528
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.au = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.av = or disjoint i8 %i.au, 48
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge.i.i = phi i8 [ %i.av, %bb.j ], [ %i.at, %bb.i ]
  store i8 %storemerge.i.i, ptr %i.w, align 1, !tbaa !78
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !76  ; 2 uses
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !76
  %i.ay = sub i64 4611686018427387903, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.aw
  br i1 %i.az, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #32
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.k
  %i.ba = load ptr, ptr %2, align 8, !tbaa !75
  %i.bb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ba, i64 noundef %i.aw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bc = load ptr, ptr %2, align 8, !tbaa !75    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.d
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.be = load i64, ptr %i.d, align 8, !tbaa !78
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not = icmp eq i64 %indvars.iv, 3
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !76
  %i.bh = and i64 %i.bg, -2
  %i.bi = icmp eq i64 %i.bh, 4611686018427387902
  br i1 %i.bi, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #32
          to label %.noexc15 unwind label %.loopexit.split-lp24

.noexc15:                                         ; preds = %bb.n
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.m
  %i.bj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.6, i64 noundef 2)
          to label %bb.b unwind label %.loopexit23, !llvm.loop !527 ; 0 uses

bb.o:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.bl = load ptr, ptr %2, align 8, !tbaa !75    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.d
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.p
  %i.bn = load i64, ptr %i.d, align 8, !tbaa !78
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.o ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %lpad.phi, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.q

.loopexit23:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %lpad.loopexit25 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp24:                             ; preds = %bb.n
  %lpad.loopexit.split-lp26 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit23, %.loopexit.split-lp24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %.pn11 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %lpad.loopexit25, %.loopexit23 ], [ %lpad.loopexit.split-lp26, %.loopexit.split-lp24 ]
  %i.bp = load ptr, ptr %0, align 8, !tbaa !75    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.a
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.q
  %i.br = load i64, ptr %i.a, align 8, !tbaa !78
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  resume { ptr, i32 } %.pn11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

declare noundef i32 @_Z30common_log_get_verbosity_tholdv() local_unnamed_addr #6

declare void @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

declare noundef ptr @_Z15common_log_mainv() local_unnamed_addr #6

declare ptr @ggml_type_name(i32 noundef) local_unnamed_addr #6

declare ptr @ggml_op_desc(ptr noundef) local_unnamed_addr #6

declare zeroext i1 @ggml_backend_buffer_is_host(ptr noundef) local_unnamed_addr #6

declare i64 @ggml_nbytes(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !529  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !39     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28.i = icmp ult i64 %i.l, %i.h
  br i1 %.not28.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !78
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = add nsw i64 %i.h, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.b, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i.i, ptr %i.a, align 8, !tbaa !529
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %i.h
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.192) #32
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.u = add nuw i64 %.sroa.speculated.i.i, %i.f
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807) ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #29 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  store i8 0, ptr %i.x, align 1, !tbaa !78
  %i.y = add nsw i64 %i.h, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %.not35.i = icmp eq ptr %i.b, %i.c
  br i1 %.not35.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.h, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i
  %.not.i33.i = icmp eq ptr %i.c, null
  br i1 %.not.i33.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %i.ab = sub i64 %i.k, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #31
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i: ; preds = %bb.i, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !529
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !40
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %1, %i.f
  br i1 %i.ae, label %bb.k, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.af
  br i1 %.not.i4, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i:          ; preds = %bb.k
  store ptr %i.af, ptr %i.a, align 8, !tbaa !529
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit:   ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, %bb.j
  ret void
}

declare void @ggml_backend_tensor_get(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare zeroext i1 @ggml_is_quantized(i32 noundef) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @ggml_abort(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #15

declare float @ggml_fp16_to_fp32(i16 noundef zeroext) local_unnamed_addr #6

declare float @ggml_bf16_to_fp32(i16) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1111basic_regexIcNS0_12regex_traitsIcEEEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !95     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1111basic_regexIcNS0_12regex_traitsIcEEEES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1111basic_regexIcNS0_12regex_traitsIcEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.v, %_ZSt8_DestroyINSt7__cxx1111basic_regexIcNS0_12regex_traitsIcEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !98   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyINSt7__cxx1111basic_regexIcNS0_12regex_traitsIcEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !100
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !101
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #30, !inline_history !530
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #30, !inline_history !530
  br label %_ZSt8_DestroyINSt7__cxx1111basic_regexIcNS0_12regex_traitsIcEEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e
end_hunk_0
