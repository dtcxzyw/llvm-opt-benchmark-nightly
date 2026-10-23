Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ssl_test?download=true
inline.NumInlined: 32411
inline.NumDeleted: 5042
loop-unroll.NumCompletelyUnrolled: 61
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEv:bb.a
bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn138 = phi { ptr, i32 } [ %i.hn, %bb.cs ], [ %i.hm, %bb.cr ] ; 2 uses
  %i.ho = load ptr, ptr %31, align 8, !tbaa !1102 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.hq = icmp eq ptr %i.ho, %i.hp
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324: ; preds = %bb.ct
  %i.hr = load i64, ptr %i.hp, align 8, !tbaa !1106
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hs) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324, %bb.cq
  %.pn138.pn = phi { ptr, i32 } [ %i.hl, %bb.cq ], [ %.pn138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324 ], [ %.pn138, %bb.ct ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #45
  %i.ht = load ptr, ptr %29, align 8, !tbaa !1567 ; 3 uses
  %.not.i.i327 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i327, label %_ZN7testing7MessageD2Ev.exit329, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i328

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i328: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !195
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(128) %i.ht) #45, !call_target !1574, !inline_history !41
  br label %_ZN7testing7MessageD2Ev.exit329

_ZN7testing7MessageD2Ev.exit329:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i328, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, %bb.cp
  %.pn138.pn.pn = phi { ptr, i32 } [ %i.hk, %bb.cp ], [ %.pn138.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326 ], [ %.pn138.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i328 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #45
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #45
  br label %bb.dv

bb.cu:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #45
  invoke void @SSL_CTX_set_verify(ptr noundef nonnull %i.dx, i32 noundef 3, ptr noundef null)
          to label %bb.cv unwind label %bb.dw

bb.cv:                                            ; preds = %bb.cu
  %i.hx = invoke ptr @SSL_CTX_get0_param(ptr noundef nonnull %i.dx)
          to label %bb.cw unwind label %bb.dw

bb.cw:                                            ; preds = %bb.cv
  %i.hy = invoke i32 @X509_VERIFY_PARAM_set_flags(ptr noundef %i.hx, i64 noundef 2097152)
          to label %._crit_edge.i.i unwind label %bb.dw ; 0 uses

._crit_edge.i.i:                                  ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #45
  store ptr %i.g, ptr %33, align 8, !tbaa !12411
  %i.hz = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %33, i64 24 ; 2 uses
  store ptr %i.ia, ptr %i.hz, align 8, !tbaa !1103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ia, ptr noundef nonnull align 1 dereferenceable(12) @.str.1514, i64 12, i1 false)
  %i.ib = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  store i64 12, ptr %i.ib, align 8, !tbaa !1104
  %i.ic = getelementptr inbounds nuw i8, ptr %33, i64 36
  store i8 0, ptr %i.ic, align 4, !tbaa !1106
  %i.id = getelementptr inbounds nuw i8, ptr %33, i64 40 ; 2 uses
  store i32 0, ptr %i.id, align 8, !tbaa !12412
  %i.ie = getelementptr inbounds nuw i8, ptr %33, i64 44
  store i8 1, ptr %i.ie, align 4, !tbaa !12413
  %i.if = getelementptr inbounds nuw i8, ptr %33, i64 48 ; 2 uses
  store ptr %i.g, ptr %i.if, align 8, !tbaa !12411
  %i.ig = getelementptr inbounds nuw i8, ptr %33, i64 56 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %33, i64 72 ; 2 uses
  store ptr %i.ih, ptr %i.ig, align 8, !tbaa !1103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ih, ptr noundef nonnull align 1 dereferenceable(12) @.str.1515, i64 12, i1 false)
  %i.ii = getelementptr inbounds nuw i8, ptr %33, i64 64 ; 2 uses
  store i64 12, ptr %i.ii, align 8, !tbaa !1104
  %i.ij = getelementptr inbounds nuw i8, ptr %33, i64 84
  store i8 0, ptr %i.ij, align 4, !tbaa !1106
  %i.ik = getelementptr inbounds nuw i8, ptr %33, i64 88 ; 2 uses
  store i32 0, ptr %i.ik, align 8, !tbaa !12412
  %i.il = getelementptr inbounds nuw i8, ptr %33, i64 92
  store i8 1, ptr %i.il, align 4, !tbaa !12413
  %i.im = getelementptr inbounds nuw i8, ptr %33, i64 96 ; 2 uses
  store ptr %i.g, ptr %i.im, align 8, !tbaa !12411
  %i.in = getelementptr inbounds nuw i8, ptr %33, i64 104 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %33, i64 120 ; 2 uses
  store ptr %i.io, ptr %i.in, align 8, !tbaa !1103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.io, ptr noundef nonnull align 1 dereferenceable(12) @.str.1516, i64 12, i1 false)
  %i.ip = getelementptr inbounds nuw i8, ptr %33, i64 112 ; 2 uses
  store i64 12, ptr %i.ip, align 8, !tbaa !1104
  %i.iq = getelementptr inbounds nuw i8, ptr %33, i64 132
  store i8 0, ptr %i.iq, align 4, !tbaa !1106
  %i.ir = getelementptr inbounds nuw i8, ptr %33, i64 136 ; 2 uses
  store i32 0, ptr %i.ir, align 8, !tbaa !12412
  %i.is = getelementptr inbounds nuw i8, ptr %33, i64 140
  store i8 0, ptr %i.is, align 4, !tbaa !12413
  %i.it = getelementptr inbounds nuw i8, ptr %33, i64 144 ; 2 uses
  store ptr %i.au, ptr %i.it, align 8, !tbaa !12411
  %i.iu = getelementptr inbounds nuw i8, ptr %33, i64 152 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %33, i64 168 ; 2 uses
  store ptr %i.iv, ptr %i.iu, align 8, !tbaa !1103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.iv, ptr noundef nonnull align 1 dereferenceable(12) @.str.1516, i64 12, i1 false)
  %i.iw = getelementptr inbounds nuw i8, ptr %33, i64 160 ; 2 uses
  store i64 12, ptr %i.iw, align 8, !tbaa !1104
  %i.ix = getelementptr inbounds nuw i8, ptr %33, i64 180
  store i8 0, ptr %i.ix, align 4, !tbaa !1106
  %i.iy = getelementptr inbounds nuw i8, ptr %33, i64 184 ; 2 uses
  store i32 0, ptr %i.iy, align 8, !tbaa !12412
  %i.iz = getelementptr inbounds nuw i8, ptr %33, i64 188
  store i8 1, ptr %i.iz, align 4, !tbaa !12413
  %i.ja = getelementptr inbounds nuw i8, ptr %33, i64 192 ; 2 uses
  store ptr %i.au, ptr %i.ja, align 8, !tbaa !12411
  %i.jb = getelementptr inbounds nuw i8, ptr %33, i64 200 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %33, i64 216 ; 2 uses
  store ptr %i.jc, ptr %i.jb, align 8, !tbaa !1103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.jc, ptr noundef nonnull align 1 dereferenceable(12) @.str.1516, i64 12, i1 false)
  %i.jd = getelementptr inbounds nuw i8, ptr %33, i64 208 ; 2 uses
  store i64 12, ptr %i.jd, align 8, !tbaa !1104
  %i.je = getelementptr inbounds nuw i8, ptr %33, i64 228
  store i8 0, ptr %i.je, align 4, !tbaa !1106
  %i.jf = getelementptr inbounds nuw i8, ptr %33, i64 232 ; 2 uses
  store i32 32, ptr %i.jf, align 8, !tbaa !12412
  %i.jg = getelementptr inbounds nuw i8, ptr %33, i64 236
  store i8 0, ptr %i.jg, align 4, !tbaa !12413
  %i.jh = getelementptr inbounds nuw i8, ptr %33, i64 240 ; 3 uses
  store ptr %i.g, ptr %i.jh, align 8, !tbaa !12411
  %i.ji = getelementptr inbounds nuw i8, ptr %33, i64 248 ; 5 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %33, i64 264 ; 2 uses
  store ptr %i.jj, ptr %i.ji, align 8, !tbaa !1103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #45
  store i64 16, ptr %i.c, align 8, !tbaa !1105
  %i.jk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ji, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc354 unwind label %bb.dx ; 2 uses

.noexc354:                                        ; preds = %._crit_edge.i.i
  store ptr %i.jk, ptr %i.ji, align 8, !tbaa !1102
  %i.jl = load i64, ptr %i.c, align 8, !tbaa !1105 ; 3 uses
  store i64 %i.jl, ptr %i.jj, align 8, !tbaa !1106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jk, ptr noundef nonnull align 1 dereferenceable(16) @.str.1517, i64 16, i1 false)
  %i.jm = getelementptr inbounds nuw i8, ptr %33, i64 256 ; 2 uses
  store i64 %i.jl, ptr %i.jm, align 8, !tbaa !1104
  %i.jn = load ptr, ptr %i.ji, align 8, !tbaa !1102
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jl
  store i8 0, ptr %i.jo, align 1, !tbaa !1106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #45
  %i.jp = getelementptr inbounds nuw i8, ptr %33, i64 280 ; 2 uses
  store i32 0, ptr %i.jp, align 8, !tbaa !12412
  %i.jq = getelementptr inbounds nuw i8, ptr %33, i64 284
  store i8 0, ptr %i.jq, align 4, !tbaa !12413
  %i.jr = getelementptr inbounds nuw i8, ptr %33, i64 288 ; 3 uses
  store ptr %i.g, ptr %i.jr, align 8, !tbaa !12411
  %i.js = getelementptr inbounds nuw i8, ptr %33, i64 296 ; 5 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %33, i64 312 ; 2 uses
  store ptr %i.jt, ptr %i.js, align 8, !tbaa !1103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  store i64 16, ptr %i.b, align 8, !tbaa !1105
  %i.ju = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.js, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc358 unwind label %bb.dy ; 2 uses

.noexc358:                                        ; preds = %.noexc354
  store ptr %i.ju, ptr %i.js, align 8, !tbaa !1102
  %i.jv = load i64, ptr %i.b, align 8, !tbaa !1105 ; 3 uses
  store i64 %i.jv, ptr %i.jt, align 8, !tbaa !1106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ju, ptr noundef nonnull align 1 dereferenceable(16) @.str.1518, i64 16, i1 false)
  %i.jw = getelementptr inbounds nuw i8, ptr %33, i64 304 ; 2 uses
  store i64 %i.jv, ptr %i.jw, align 8, !tbaa !1104
  %i.jx = load ptr, ptr %i.js, align 8, !tbaa !1102
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jv
  store i8 0, ptr %i.jy, align 1, !tbaa !1106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  %i.jz = getelementptr inbounds nuw i8, ptr %33, i64 328 ; 2 uses
  store i32 0, ptr %i.jz, align 8, !tbaa !12412
  %i.ka = getelementptr inbounds nuw i8, ptr %33, i64 332
  store i8 1, ptr %i.ka, align 4, !tbaa !12413
  %i.kb = getelementptr inbounds nuw i8, ptr %33, i64 336 ; 2 uses
  store ptr %i.g, ptr %i.kb, align 8, !tbaa !12411
  %i.kc = getelementptr inbounds nuw i8, ptr %33, i64 344 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %33, i64 360 ; 2 uses
  store ptr %i.kd, ptr %i.kc, align 8, !tbaa !1103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.kd, ptr noundef nonnull align 1 dereferenceable(15) @.str.1519, i64 15, i1 false)
  %i.ke = getelementptr inbounds nuw i8, ptr %33, i64 352 ; 2 uses
  store i64 15, ptr %i.ke, align 8, !tbaa !1104
  %i.kf = getelementptr inbounds nuw i8, ptr %33, i64 375
  store i8 0, ptr %i.kf, align 1, !tbaa !1106
  %i.kg = getelementptr inbounds nuw i8, ptr %33, i64 376 ; 2 uses
  store i32 0, ptr %i.kg, align 8, !tbaa !12412
  %i.kh = getelementptr inbounds nuw i8, ptr %33, i64 380
  store i8 0, ptr %i.kh, align 4, !tbaa !12413
  %i.ki = getelementptr inbounds nuw i8, ptr %33, i64 384 ; 2 uses
  store ptr %i.g, ptr %i.ki, align 8, !tbaa !12411
  %i.kj = getelementptr inbounds nuw i8, ptr %33, i64 392 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %33, i64 408 ; 2 uses
  store ptr %i.kk, ptr %i.kj, align 8, !tbaa !1103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.kk, ptr noundef nonnull align 1 dereferenceable(7) @.str.1520, i64 7, i1 false)
  %i.kl = getelementptr inbounds nuw i8, ptr %33, i64 400 ; 2 uses
  store i64 7, ptr %i.kl, align 8, !tbaa !1104
  %i.km = getelementptr inbounds nuw i8, ptr %33, i64 415
  store i8 0, ptr %i.km, align 1, !tbaa !1106
  %i.kn = getelementptr inbounds nuw i8, ptr %33, i64 424 ; 2 uses
  store i32 0, ptr %i.kn, align 8, !tbaa !12412
  %i.ko = getelementptr inbounds nuw i8, ptr %33, i64 428
  store i8 0, ptr %i.ko, align 4, !tbaa !12413
  %i.kp = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 0, ptr %i.kp, align 8
  %i.kq = invoke noalias noundef nonnull dereferenceable(432) ptr @_Znwm(i64 noundef 432) #44
          to label %.noexc7.i unwind label %.body.i.thread ; 70 uses

.noexc7.i:                                        ; preds = %.noexc358
  store ptr %i.kq, ptr %32, align 8, !tbaa !2630
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 432 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr %i.kr, ptr %i.ks, align 8, !tbaa !2631
  %i.kt = load ptr, ptr %33, align 8, !tbaa !12411
  store ptr %i.kt, ptr %i.kq, align 8, !tbaa !12411
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 8 ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 24 ; 3 uses
  store ptr %i.kv, ptr %i.ku, align 8, !tbaa !1103
  %i.kw = load ptr, ptr %i.hz, align 8, !tbaa !1102 ; 2 uses
  %i.kx = load i64, ptr %i.ib, align 8, !tbaa !1104 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store i64 %i.kx, ptr %i.a, align 8, !tbaa !1105
  %i.ky = icmp ugt i64 %i.kx, 15
  br i1 %i.ky, label %.noexc.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc7.i
  %i.kz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ku, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.dp ; 2 uses

.noexc.i.i.i.i.i.i:                               ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  store ptr %i.kz, ptr %i.ku, align 8, !tbaa !1102
  %i.la = load i64, ptr %i.a, align 8, !tbaa !1105
  store i64 %i.la, ptr %i.kv, align 8, !tbaa !1106
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc.i.i.i.i.i.i, %.noexc7.i
  %i.lb = phi ptr [ %i.kz, %.noexc.i.i.i.i.i.i ], [ %i.kv, %.noexc7.i ] ; 2 uses
  switch i64 %i.kx, label %bb.cy [
    i64 1, label %bb.cx
    i64 0, label %.lr.ph.i.i.i.i.i.1.i
  ]

bb.cx:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.lc = load i8, ptr %i.kw, align 1, !tbaa !1106
  store i8 %i.lc, ptr %i.lb, align 1, !tbaa !1106
  br label %.lr.ph.i.i.i.i.i.1.i

bb.cy:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lb, ptr align 1 %i.kw, i64 %i.kx, i1 false)
  br label %.lr.ph.i.i.i.i.i.1.i

.lr.ph.i.i.i.i.i.1.i:                             ; preds = %bb.cy, %bb.cx, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ld = load i64, ptr %i.a, align 8, !tbaa !1105 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  store i64 %i.ld, ptr %i.le, align 8, !tbaa !1104
  %i.lf = load ptr, ptr %i.ku, align 8, !tbaa !1102
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.ld
  store i8 0, ptr %i.lg, align 1, !tbaa !1106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kq, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.lh, ptr noundef nonnull readonly align 8 dereferenceable(5) %i.id, i64 5, i1 false)
  %i.li = getelementptr inbounds nuw i8, ptr %i.kq, i64 48 ; 2 uses
  %i.lj = load ptr, ptr %i.if, align 8, !tbaa !12411
  store ptr %i.lj, ptr %i.li, align 8, !tbaa !12411
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kq, i64 56 ; 4 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kq, i64 72 ; 3 uses
  store ptr %i.ll, ptr %i.lk, align 8, !tbaa !1103
  %i.lm = load ptr, ptr %i.ig, align 8, !tbaa !1102 ; 2 uses
  %i.ln = load i64, ptr %i.ii, align 8, !tbaa !1104 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store i64 %i.ln, ptr %i.a, align 8, !tbaa !1105
  %i.lo = icmp ugt i64 %i.ln, 15
  br i1 %i.lo, label %.noexc.i.i.i.i.i.i.i.i.1.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.1.i

.noexc.i.i.i.i.i.i.i.i.1.i:                       ; preds = %.lr.ph.i.i.i.i.i.1.i
  %i.lp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.lk, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i.i.i.1.i unwind label %bb.dp ; 2 uses

.noexc.i.i.i.i.i.1.i:                             ; preds = %.noexc.i.i.i.i.i.i.i.i.1.i
  store ptr %i.lp, ptr %i.lk, align 8, !tbaa !1102
  %i.lq = load i64, ptr %i.a, align 8, !tbaa !1105
  store i64 %i.lq, ptr %i.ll, align 8, !tbaa !1106
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.1.i

._crit_edge.i.i.i.i.i.i.i.i.i.1.i:                ; preds = %.noexc.i.i.i.i.i.1.i, %.lr.ph.i.i.i.i.i.1.i
  %i.lr = phi ptr [ %i.lp, %.noexc.i.i.i.i.i.1.i ], [ %i.ll, %.lr.ph.i.i.i.i.i.1.i ] ; 2 uses
  switch i64 %i.ln, label %bb.da [
    i64 1, label %bb.cz
    i64 0, label %.lr.ph.i.i.i.i.i.2.i
  ]

bb.cz:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.1.i
  %i.ls = load i8, ptr %i.lm, align 1, !tbaa !1106
  store i8 %i.ls, ptr %i.lr, align 1, !tbaa !1106
  br label %.lr.ph.i.i.i.i.i.2.i

bb.da:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.1.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lr, ptr align 1 %i.lm, i64 %i.ln, i1 false)
  br label %.lr.ph.i.i.i.i.i.2.i

.lr.ph.i.i.i.i.i.2.i:                             ; preds = %bb.da, %bb.cz, %._crit_edge.i.i.i.i.i.i.i.i.i.1.i
  %i.lt = load i64, ptr %i.a, align 8, !tbaa !1105 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kq, i64 64
  store i64 %i.lt, ptr %i.lu, align 8, !tbaa !1104
  %i.lv = load ptr, ptr %i.lk, align 8, !tbaa !1102
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lt
  store i8 0, ptr %i.lw, align 1, !tbaa !1106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  %i.lx = getelementptr inbounds nuw i8, ptr %i.kq, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.lx, ptr noundef nonnull readonly align 8 dereferenceable(5) %i.ik, i64 5, i1 false)
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kq, i64 96 ; 2 uses
  %i.lz = load ptr, ptr %i.im, align 8, !tbaa !12411
  store ptr %i.lz, ptr %i.ly, align 8, !tbaa !12411
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kq, i64 104 ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kq, i64 120 ; 3 uses
  store ptr %i.mb, ptr %i.ma, align 8, !tbaa !1103
  %i.mc = load ptr, ptr %i.in, align 8, !tbaa !1102 ; 2 uses
  %i.md = load i64, ptr %i.ip, align 8, !tbaa !1104 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store i64 %i.md, ptr %i.a, align 8, !tbaa !1105
  %i.me = icmp ugt i64 %i.md, 15
  br i1 %i.me, label %.noexc.i.i.i.i.i.i.i.i.2.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.2.i

.noexc.i.i.i.i.i.i.i.i.2.i:                       ; preds = %.lr.ph.i.i.i.i.i.2.i
  %i.mf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ma, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i.i.i.2.i unwind label %bb.dp ; 2 uses

.noexc.i.i.i.i.i.2.i:                             ; preds = %.noexc.i.i.i.i.i.i.i.i.2.i
  store ptr %i.mf, ptr %i.ma, align 8, !tbaa !1102
  %i.mg = load i64, ptr %i.a, align 8, !tbaa !1105
  store i64 %i.mg, ptr %i.mb, align 8, !tbaa !1106
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.2.i

._crit_edge.i.i.i.i.i.i.i.i.i.2.i:                ; preds = %.noexc.i.i.i.i.i.2.i, %.lr.ph.i.i.i.i.i.2.i
  %i.mh = phi ptr [ %i.mf, %.noexc.i.i.i.i.i.2.i ], [ %i.mb, %.lr.ph.i.i.i.i.i.2.i ] ; 2 uses
  switch i64 %i.md, label %bb.dc [
    i64 1, label %bb.db
    i64 0, label %.lr.ph.i.i.i.i.i.3.i
  ]

bb.db:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.2.i
  %i.mi = load i8, ptr %i.mc, align 1, !tbaa !1106
  store i8 %i.mi, ptr %i.mh, align 1, !tbaa !1106
  br label %.lr.ph.i.i.i.i.i.3.i

bb.dc:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.2.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mh, ptr align 1 %i.mc, i64 %i.md, i1 false)
  br label %.lr.ph.i.i.i.i.i.3.i

.lr.ph.i.i.i.i.i.3.i:                             ; preds = %bb.dc, %bb.db, %._crit_edge.i.i.i.i.i.i.i.i.i.2.i
  %i.mj = load i64, ptr %i.a, align 8, !tbaa !1105 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.kq, i64 112
  store i64 %i.mj, ptr %i.mk, align 8, !tbaa !1104
  %i.ml = load ptr, ptr %i.ma, align 8, !tbaa !1102
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.mj
  store i8 0, ptr %i.mm, align 1, !tbaa !1106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  %i.mn = getelementptr inbounds nuw i8, ptr %i.kq, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.mn, ptr noundef nonnull readonly align 8 dereferenceable(5) %i.ir, i64 5, i1 false)
  %i.mo = getelementptr inbounds nuw i8, ptr %i.kq, i64 144 ; 2 uses
  %i.mp = load ptr, ptr %i.it, align 8, !tbaa !12411
  store ptr %i.mp, ptr %i.mo, align 8, !tbaa !12411
  %i.mq = getelementptr inbounds nuw i8, ptr %i.kq, i64 152 ; 4 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.kq, i64 168 ; 3 uses
  store ptr %i.mr, ptr %i.mq, align 8, !tbaa !1103
  %i.ms = load ptr, ptr %i.iu, align 8, !tbaa !1102 ; 2 uses
  %i.mt = load i64, ptr %i.iw, align 8, !tbaa !1104 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store i64 %i.mt, ptr %i.a, align 8, !tbaa !1105
  %i.mu = icmp ugt i64 %i.mt, 15
  br i1 %i.mu, label %.noexc.i.i.i.i.i.i.i.i.3.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.3.i

.noexc.i.i.i.i.i.i.i.i.3.i:                       ; preds = %.lr.ph.i.i.i.i.i.3.i
  %i.mv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.mq, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i.i.i.3.i unwind label %bb.dp ; 2 uses

.noexc.i.i.i.i.i.3.i:                             ; preds = %.noexc.i.i.i.i.i.i.i.i.3.i
  store ptr %i.mv, ptr %i.mq, align 8, !tbaa !1102
  %i.mw = load i64, ptr %i.a, align 8, !tbaa !1105
  store i64 %i.mw, ptr %i.mr, align 8, !tbaa !1106
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.3.i

._crit_edge.i.i.i.i.i.i.i.i.i.3.i:                ; preds = %.noexc.i.i.i.i.i.3.i, %.lr.ph.i.i.i.i.i.3.i
  %i.mx = phi ptr [ %i.mv, %.noexc.i.i.i.i.i.3.i ], [ %i.mr, %.lr.ph.i.i.i.i.i.3.i ] ; 2 uses
  switch i64 %i.mt, label %bb.de [
    i64 1, label %bb.dd
    i64 0, label %.lr.ph.i.i.i.i.i.4.i
  ]

bb.dd:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.3.i
  %i.my = load i8, ptr %i.ms, align 1, !tbaa !1106
  store i8 %i.my, ptr %i.mx, align 1, !tbaa !1106
  br label %.lr.ph.i.i.i.i.i.4.i

bb.de:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.3.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mx, ptr align 1 %i.ms, i64 %i.mt, i1 false)
  br label %.lr.ph.i.i.i.i.i.4.i

.lr.ph.i.i.i.i.i.4.i:                             ; preds = %bb.de, %bb.dd, %._crit_edge.i.i.i.i.i.i.i.i.i.3.i
  %i.mz = load i64, ptr %i.a, align 8, !tbaa !1105 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.kq, i64 160
  store i64 %i.mz, ptr %i.na, align 8, !tbaa !1104
  %i.nb = load ptr, ptr %i.mq, align 8, !tbaa !1102
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.mz
  store i8 0, ptr %i.nc, align 1, !tbaa !1106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  %i.nd = getelementptr inbounds nuw i8, ptr %i.kq, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.nd, ptr noundef nonnull readonly align 8 dereferenceable(5) %i.iy, i64 5, i1 false)
  %i.ne = getelementptr inbounds nuw i8, ptr %i.kq, i64 192 ; 2 uses
  %i.nf = load ptr, ptr %i.ja, align 8, !tbaa !12411
  store ptr %i.nf, ptr %i.ne, align 8, !tbaa !12411
  %i.ng = getelementptr inbounds nuw i8, ptr %i.kq, i64 200 ; 4 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.kq, i64 216 ; 3 uses
  store ptr %i.nh, ptr %i.ng, align 8, !tbaa !1103
  %i.ni = load ptr, ptr %i.jb, align 8, !tbaa !1102 ; 2 uses
  %i.nj = load i64, ptr %i.jd, align 8, !tbaa !1104 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
end_hunk_0
begin_hunk_1_@_ZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEv:bb.a

bb.dp:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.8.i, %.noexc.i.i.i.i.i.i.i.i.7.i, %.noexc.i.i.i.i.i.i.i.i.6.i, %.noexc.i.i.i.i.i.i.i.i.5.i, %.noexc.i.i.i.i.i.i.i.i.4.i, %.noexc.i.i.i.i.i.i.i.i.3.i, %.noexc.i.i.i.i.i.i.i.i.2.i, %.noexc.i.i.i.i.i.i.i.i.1.i, %.noexc.i.i.i.i.i.i.i.i.i
  %.016.i.i.i.i.i.lcssa.i = phi ptr [ %i.kq, %.noexc.i.i.i.i.i.i.i.i.i ], [ %i.li, %.noexc.i.i.i.i.i.i.i.i.1.i ], [ %i.ly, %.noexc.i.i.i.i.i.i.i.i.2.i ], [ %i.mo, %.noexc.i.i.i.i.i.i.i.i.3.i ], [ %i.ne, %.noexc.i.i.i.i.i.i.i.i.4.i ], [ %i.nu, %.noexc.i.i.i.i.i.i.i.i.5.i ], [ %i.ok, %.noexc.i.i.i.i.i.i.i.i.6.i ], [ %i.pa, %.noexc.i.i.i.i.i.i.i.i.7.i ], [ %i.pq, %.noexc.i.i.i.i.i.i.i.i.8.i ]
  %i.qb = landingpad { ptr, i32 }
          catch ptr null
  %i.qc = extractvalue { ptr, i32 } %i.qb, 0
  %i.qd = call ptr @__cxa_begin_catch(ptr %i.qc) #45 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvT_S5_(ptr noundef nonnull %i.kq, ptr noundef nonnull %.016.i.i.i.i.i.lcssa.i)
  invoke void @__cxa_rethrow() #47
          to label %bb.ds unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.qe = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dt unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.qf = landingpad { ptr, i32 }
          catch ptr null
  %i.qg = extractvalue { ptr, i32 } %i.qf, 0
  call void @__clang_call_terminate(ptr %i.qg) #46
  unreachable

bb.ds:                                            ; preds = %bb.dp
  unreachable

.body.i.thread:                                   ; preds = %.noexc358
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %.body368

bb.dt:                                            ; preds = %bb.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.kq, i64 noundef 432) #43
  br label %.body368

bb.du:                                            ; preds = %bb.do, %bb.dn, %._crit_edge.i.i.i.i.i.i.i.i.i.8.i
  %i.qi = load i64, ptr %i.a, align 8, !tbaa !1105 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.kq, i64 400
  store i64 %i.qi, ptr %i.qj, align 8, !tbaa !1104
  %i.qk = load ptr, ptr %i.ps, align 8, !tbaa !1102
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.qi
  store i8 0, ptr %i.ql, align 1, !tbaa !1106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  %i.qm = getelementptr inbounds nuw i8, ptr %i.kq, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.qm, ptr noundef nonnull readonly align 8 dereferenceable(5) %i.kn, i64 5, i1 false)
  %i.qn = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %i.kr, ptr %i.qn, align 8, !tbaa !2632
  %i.qo = getelementptr inbounds nuw i8, ptr %33, i64 392
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !1102 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %33, i64 408 ; 2 uses
  %i.qr = icmp eq ptr %i.qp, %i.qq
  br i1 %i.qr, label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.du
  %i.qs = load i64, ptr %i.qq, align 8, !tbaa !1106
  %i.qt = add i64 %i.qs, 1
  call void @_ZdlPvm(ptr noundef %i.qp, i64 noundef %i.qt) #43
  br label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit

_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.qu = getelementptr inbounds nuw i8, ptr %33, i64 344
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !1102 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %33, i64 360 ; 2 uses
  %i.qx = icmp eq ptr %i.qv, %i.qw
  br i1 %i.qx, label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit
  %i.qy = load i64, ptr %i.qw, align 8, !tbaa !1106
  %i.qz = add i64 %i.qy, 1
  call void @_ZdlPvm(ptr noundef %i.qv, i64 noundef %i.qz) #43
  br label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.1

_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.1: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.ra = getelementptr inbounds nuw i8, ptr %33, i64 296
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !1102 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %33, i64 312 ; 2 uses
  %i.rd = icmp eq ptr %i.rb, %i.rc
  br i1 %i.rd, label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.1
  %i.re = load i64, ptr %i.rc, align 8, !tbaa !1106
  %i.rf = add i64 %i.re, 1
  call void @_ZdlPvm(ptr noundef %i.rb, i64 noundef %i.rf) #43
  br label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.2

_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.2: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  %i.rg = getelementptr inbounds nuw i8, ptr %33, i64 248
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !1102 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %33, i64 264 ; 2 uses
  %i.rj = icmp eq ptr %i.rh, %i.ri
  br i1 %i.rj, label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.2
  %i.rk = load i64, ptr %i.ri, align 8, !tbaa !1106
  %i.rl = add i64 %i.rk, 1
  call void @_ZdlPvm(ptr noundef %i.rh, i64 noundef %i.rl) #43
  br label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.3

_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.3: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3
  %i.rm = getelementptr inbounds nuw i8, ptr %33, i64 200
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !1102 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %33, i64 216 ; 2 uses
  %i.rp = icmp eq ptr %i.rn, %i.ro
  br i1 %i.rp, label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.3
  %i.rq = load i64, ptr %i.ro, align 8, !tbaa !1106
  %i.rr = add i64 %i.rq, 1
  call void @_ZdlPvm(ptr noundef %i.rn, i64 noundef %i.rr) #43
  br label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.4

_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.4: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4
  %i.rs = getelementptr inbounds nuw i8, ptr %33, i64 152
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !1102 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %33, i64 168 ; 2 uses
  %i.rv = icmp eq ptr %i.rt, %i.ru
  br i1 %i.rv, label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.4
  %i.rw = load i64, ptr %i.ru, align 8, !tbaa !1106
  %i.rx = add i64 %i.rw, 1
  call void @_ZdlPvm(ptr noundef %i.rt, i64 noundef %i.rx) #43
  br label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.5

_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.5: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5
  %i.ry = getelementptr inbounds nuw i8, ptr %33, i64 104
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !1102 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %33, i64 120 ; 2 uses
  %i.sb = icmp eq ptr %i.rz, %i.sa
  br i1 %i.sb, label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.6: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.5
  %i.sc = load i64, ptr %i.sa, align 8, !tbaa !1106
  %i.sd = add i64 %i.sc, 1
  call void @_ZdlPvm(ptr noundef %i.rz, i64 noundef %i.sd) #43
  br label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.6

_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.6: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.6
  %i.se = getelementptr inbounds nuw i8, ptr %33, i64 56
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !1102 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %33, i64 72 ; 2 uses
  %i.sh = icmp eq ptr %i.sf, %i.sg
  br i1 %i.sh, label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.7: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.6
  %i.si = load i64, ptr %i.sg, align 8, !tbaa !1106
  %i.sj = add i64 %i.si, 1
  call void @_ZdlPvm(ptr noundef %i.sf, i64 noundef %i.sj) #43
  br label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.7

_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.7: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.7
  %i.sk = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !1102 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %33, i64 24 ; 2 uses
  %i.sn = icmp eq ptr %i.sl, %i.sm
  br i1 %i.sn, label %.lr.ph, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.8: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.7
  %i.so = load i64, ptr %i.sm, align 8, !tbaa !1106
  %i.sp = add i64 %i.so, 1
  call void @_ZdlPvm(ptr noundef %i.sl, i64 noundef %i.sp) #43
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit.7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.8
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #45
  %i.sq = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %48, i64 32 ; 4 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %48, i64 24
  %i.sw = getelementptr inbounds nuw i8, ptr %48, i64 48 ; 3 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %48, i64 64 ; 4 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %48, i64 56
  %i.sz = getelementptr inbounds nuw i8, ptr %48, i64 80 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %48, i64 84
  %i.tb = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 2 uses
  br label %bb.dz

bb.dv:                                            ; preds = %_ZN7testing7MessageD2Ev.exit329, %bb.ci
  %.pn138.pn.pn.pn = phi { ptr, i32 } [ %.pn138.pn.pn, %_ZN7testing7MessageD2Ev.exit329 ], [ %i.gt, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #45
  br label %bb.hk

bb.dw:                                            ; preds = %bb.cw, %bb.cv, %bb.cu
  %i.tc = landingpad { ptr, i32 }
          cleanup
  br label %bb.hk

bb.dx:                                            ; preds = %._crit_edge.i.i
  %i.td = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader

bb.dy:                                            ; preds = %.noexc354
  %i.te = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader

.body368:                                         ; preds = %.body.i.thread, %bb.dt
  %eh.lpad-body.i685 = phi { ptr, i32 } [ %i.qh, %.body.i.thread ], [ %i.qe, %bb.dt ] ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %33, i64 392
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !1102 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %33, i64 408 ; 2 uses
  %i.ti = icmp eq ptr %i.tg, %i.th
  br i1 %i.ti, label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370: ; preds = %.body368
  %i.tj = load i64, ptr %i.th, align 8, !tbaa !1106
  %i.tk = add i64 %i.tj, 1
  call void @_ZdlPvm(ptr noundef %i.tg, i64 noundef %i.tk) #43
  br label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372

_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372: ; preds = %.body368, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370
  %i.tl = getelementptr inbounds nuw i8, ptr %33, i64 344
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !1102 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %33, i64 360 ; 2 uses
  %i.to = icmp eq ptr %i.tm, %i.tn
  br i1 %i.to, label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370.1: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372
  %i.tp = load i64, ptr %i.tn, align 8, !tbaa !1106
  %i.tq = add i64 %i.tp, 1
  call void @_ZdlPvm(ptr noundef %i.tm, i64 noundef %i.tq) #43
  br label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.1

_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.1: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370.1
  %i.tr = getelementptr inbounds nuw i8, ptr %33, i64 296
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !1102 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %33, i64 312 ; 2 uses
  %i.tu = icmp eq ptr %i.ts, %i.tt
  br i1 %i.tu, label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370.2: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.1
  %i.tv = load i64, ptr %i.tt, align 8, !tbaa !1106
  %i.tw = add i64 %i.tv, 1
  call void @_ZdlPvm(ptr noundef %i.ts, i64 noundef %i.tw) #43
  br label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.2

_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.2: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370.2
  %i.tx = getelementptr inbounds nuw i8, ptr %33, i64 248
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !1102 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %33, i64 264 ; 2 uses
  %i.ua = icmp eq ptr %i.ty, %i.tz
  br i1 %i.ua, label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370.3: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.2
  %i.ub = load i64, ptr %i.tz, align 8, !tbaa !1106
  %i.uc = add i64 %i.ub, 1
  call void @_ZdlPvm(ptr noundef %i.ty, i64 noundef %i.uc) #43
  br label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.3

_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.3: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370.3
  %i.ud = getelementptr inbounds nuw i8, ptr %33, i64 200
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !1102 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %33, i64 216 ; 2 uses
  %i.ug = icmp eq ptr %i.ue, %i.uf
  br i1 %i.ug, label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370.4: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.3
  %i.uh = load i64, ptr %i.uf, align 8, !tbaa !1106
  %i.ui = add i64 %i.uh, 1
  call void @_ZdlPvm(ptr noundef %i.ue, i64 noundef %i.ui) #43
  br label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.4

_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.4: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370.4
  %i.uj = getelementptr inbounds nuw i8, ptr %33, i64 152
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !1102 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %33, i64 168 ; 2 uses
  %i.um = icmp eq ptr %i.uk, %i.ul
  br i1 %i.um, label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370.5: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.4
  %i.un = load i64, ptr %i.ul, align 8, !tbaa !1106
  %i.uo = add i64 %i.un, 1
  call void @_ZdlPvm(ptr noundef %i.uk, i64 noundef %i.uo) #43
  br label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.5

_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.5: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370.5
  %i.up = getelementptr inbounds nuw i8, ptr %33, i64 104
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !1102 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %33, i64 120 ; 2 uses
  %i.us = icmp eq ptr %i.uq, %i.ur
  br i1 %i.us, label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370.6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370.6: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.5
  %i.ut = load i64, ptr %i.ur, align 8, !tbaa !1106
  %i.uu = add i64 %i.ut, 1
  call void @_ZdlPvm(ptr noundef %i.uq, i64 noundef %i.uu) #43
  br label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.6

_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.6: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370.6
  %i.uv = getelementptr inbounds nuw i8, ptr %33, i64 56
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !1102 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %33, i64 72 ; 2 uses
  %i.uy = icmp eq ptr %i.uw, %i.ux
  br i1 %i.uy, label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370.7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370.7: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.6
  %i.uz = load i64, ptr %i.ux, align 8, !tbaa !1106
  %i.va = add i64 %i.uz, 1
  call void @_ZdlPvm(ptr noundef %i.uw, i64 noundef %i.va) #43
  br label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.7

_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.7: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370.7
  %i.vb = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !1102 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %33, i64 24 ; 2 uses
  %i.ve = icmp eq ptr %i.vc, %i.vd
  br i1 %i.ve, label %.thread490, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370.8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370.8: ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.7
  %i.vf = load i64, ptr %i.vd, align 8, !tbaa !1106
  %i.vg = add i64 %i.vf, 1
  call void @_ZdlPvm(ptr noundef %i.vc, i64 noundef %i.vg) #43
  br label %.thread490

.preheader.preheader:                             ; preds = %bb.dy, %bb.dx
  %.pn143.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.te, %bb.dy ], [ %i.td, %bb.dx ]
  %.742 = phi ptr [ %i.jr, %bb.dy ], [ %i.jh, %bb.dx ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit375
  %i.vh = phi ptr [ %i.vi, %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit375 ], [ %.742, %.preheader.preheader ] ; 3 uses
  %i.vi = getelementptr inbounds i8, ptr %i.vh, i64 -48 ; 2 uses
  %i.vj = getelementptr inbounds i8, ptr %i.vh, i64 -40
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !1102 ; 2 uses
  %i.vl = getelementptr inbounds i8, ptr %i.vh, i64 -24 ; 2 uses
  %i.vm = icmp eq ptr %i.vk, %i.vl
  br i1 %i.vm, label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit375, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i373

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i373: ; preds = %.preheader
  %i.vn = load i64, ptr %i.vl, align 8, !tbaa !1106
  %i.vo = add i64 %i.vn, 1
  call void @_ZdlPvm(ptr noundef %i.vk, i64 noundef %i.vo) #43
  br label %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit375

_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit375: ; preds = %.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i373
  %i.vp = icmp eq ptr %i.vi, %33
  br i1 %i.vp, label %.thread490, label %.preheader

.thread490:                                       ; preds = %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit375, %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370.8
  %.pn143.pn.pn.pn.pn.pn.pn.pn.pn495 = phi { ptr, i32 } [ %eh.lpad-body.i685, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370.8 ], [ %eh.lpad-body.i685, %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit372.7 ], [ %.pn143.pn.pn.pn.pn.pn.pn.pn.pn, %_ZZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvEN8TestCaseD2Ev.exit375 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #45
  br label %bb.hj

bb.dz:                                            ; preds = %.lr.ph, %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit
  %.sroa.0473.0530.idx = phi i64 [ 0, %.lr.ph ], [ %.sroa.0473.0530.add, %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit ] ; 2 uses
  %.sroa.0473.0530.ptr = getelementptr inbounds nuw i8, ptr %i.kq, i64 %.sroa.0473.0530.idx ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #45
  %i.vq = getelementptr inbounds nuw i8, ptr %.sroa.0473.0530.ptr, i64 8 ; 2 uses
  invoke void @_ZN7testing11ScopedTraceC2EPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %34, ptr noundef nonnull @.str.50, i32 noundef 9338, ptr noundef nonnull align 8 dereferenceable(32) %i.vq)
          to label %bb.ea unwind label %bb.ed

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #45
  %i.vr = invoke ptr @TLS_method()
          to label %bb.eb unwind label %bb.ee

bb.eb:                                            ; preds = %bb.ea
  %i.vs = invoke ptr @SSL_CTX_new(ptr noundef %i.vr)
          to label %bb.ec unwind label %bb.ee     ; 7 uses

bb.ec:                                            ; preds = %bb.eb
  store ptr %i.vs, ptr %35, align 8, !tbaa !1555
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #45
  %i.vt = icmp ne ptr %i.vs, null                 ; 2 uses
  %i.vu = zext i1 %i.vt to i8
  store i8 %i.vu, ptr %36, align 8, !tbaa !1564
  store ptr null, ptr %i.sq, align 8, !tbaa !1565
  br i1 %i.vt, label %bb.eq, label %bb.ef

bb.ed:                                            ; preds = %bb.dz
  %i.vv = landingpad { ptr, i32 }
          cleanup
  br label %bb.gw

bb.ee:                                            ; preds = %bb.eb, %bb.ea
  %i.vw = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.ef:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #45
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.eg unwind label %bb.el

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #45
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %39, ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull @.str.534, ptr noundef nonnull @.str.346, ptr noundef nonnull @.str.347)
          to label %bb.eh unwind label %bb.em

bb.eh:                                            ; preds = %bb.eg
  %i.vx = load ptr, ptr %39, align 8, !tbaa !1102
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %38, i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef 9341, ptr noundef %i.vx)
          to label %bb.ei unwind label %bb.en

bb.ei:                                            ; preds = %bb.eh
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.ej unwind label %bb.eo
end_hunk_1
begin_hunk_2_@_ZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEv:bb.a
  br i1 %.not.i.i446, label %_ZN7testing7MessageD2Ev.exit448, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i447

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i447: ; preds = %bb.ge
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !195
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  %i.aag = load ptr, ptr %i.aaf, align 8
  call void %i.aag(ptr noundef nonnull align 8 dereferenceable(128) %i.aad) #45, !call_target !1574, !inline_history !41
  br label %_ZN7testing7MessageD2Ev.exit448

_ZN7testing7MessageD2Ev.exit448:                  ; preds = %bb.ge, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i447
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #45
  br label %.critedge200

bb.gf:                                            ; preds = %bb.ga
  %i.aah = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit451

bb.gg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.aai = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.gh:                                            ; preds = %bb.gd
  %i.aaj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %53) #45
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %.pn167 = phi { ptr, i32 } [ %i.aaj, %bb.gh ], [ %i.aai, %bb.gg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #45
  %i.aak = load ptr, ptr %52, align 8, !tbaa !1567 ; 3 uses
  %.not.i.i449 = icmp eq ptr %i.aak, null
  br i1 %.not.i.i449, label %_ZN7testing7MessageD2Ev.exit451, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.gi
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !195
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 8
  %i.aan = load ptr, ptr %i.aam, align 8
  call void %i.aan(ptr noundef nonnull align 8 dereferenceable(128) %i.aak) #45, !call_target !1574, !inline_history !41
  br label %_ZN7testing7MessageD2Ev.exit451

_ZN7testing7MessageD2Ev.exit451:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, %bb.gi, %bb.gf
  %.pn167.pn = phi { ptr, i32 } [ %i.aah, %bb.gf ], [ %.pn167, %bb.gi ], [ %.pn167, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #45
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %51) #45
  br label %bb.gs

.critedge200:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit448
  %i.aao = load ptr, ptr %i.tb, align 8, !tbaa !1575 ; 4 uses
  %.not.i.i452 = icmp eq ptr %i.aao, null
  br i1 %.not.i.i452, label %_ZN7testing15AssertionResultD2Ev.exit456, label %bb.gj

bb.gj:                                            ; preds = %.critedge200
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !1102 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aao, i64 16 ; 2 uses
  %i.aar = icmp eq ptr %i.aap, %i.aaq
  br i1 %i.aar, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i453

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i453: ; preds = %bb.gj
  %i.aas = load i64, ptr %i.aaq, align 8, !tbaa !1106
  %i.aat = add i64 %i.aas, 1
  call void @_ZdlPvm(ptr noundef %i.aap, i64 noundef %i.aat) #43
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454: ; preds = %bb.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i453
  call void @_ZdlPvm(ptr noundef nonnull %i.aao, i64 noundef 32) #43
  br label %_ZN7testing15AssertionResultD2Ev.exit456

_ZN7testing15AssertionResultD2Ev.exit456:         ; preds = %.critedge200, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #45
  %i.aau = load ptr, ptr %50, align 8, !tbaa !1607 ; 2 uses
  %.not.i457 = icmp eq ptr %i.aau, null
  br i1 %.not.i457, label %_ZNSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.gk

bb.gk:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit456
  invoke void @SSL_free(ptr noundef nonnull %i.aau)
          to label %_ZNSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEED2Ev.exit unwind label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.aav = landingpad { ptr, i32 }
          catch ptr null
  %i.aaw = extractvalue { ptr, i32 } %i.aav, 0
  call void @__clang_call_terminate(ptr %i.aaw) #46
  unreachable

_ZNSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit456, %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #45
  %i.aax = load ptr, ptr %49, align 8, !tbaa !1607 ; 2 uses
  %.not.i458 = icmp eq ptr %i.aax, null
  br i1 %.not.i458, label %_ZNSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEED2Ev.exit459, label %bb.gm

bb.gm:                                            ; preds = %_ZNSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEED2Ev.exit
  invoke void @SSL_free(ptr noundef nonnull %i.aax)
          to label %_ZNSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEED2Ev.exit459 unwind label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.aay = landingpad { ptr, i32 }
          catch ptr null
  %i.aaz = extractvalue { ptr, i32 } %i.aay, 0
  call void @__clang_call_terminate(ptr %i.aaz) #46
  unreachable

_ZNSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEED2Ev.exit459: ; preds = %_ZNSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEED2Ev.exit, %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #45
  %i.aba = load ptr, ptr %i.sw, align 8, !tbaa !1102 ; 2 uses
  %i.abb = icmp eq ptr %i.aba, %i.sx
  br i1 %i.abb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i460

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i460: ; preds = %_ZNSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEED2Ev.exit459
  %i.abc = load i64, ptr %i.sx, align 8, !tbaa !1106
  %i.abd = add i64 %i.abc, 1
  call void @_ZdlPvm(ptr noundef %i.aba, i64 noundef %i.abd) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEED2Ev.exit459, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i460
  %i.abe = load ptr, ptr %i.st, align 8, !tbaa !1102 ; 2 uses
  %i.abf = icmp eq ptr %i.abe, %i.su
  br i1 %i.abf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.abg = load i64, ptr %i.su, align 8, !tbaa !1106
  %i.abh = add i64 %i.abg, 1
  call void @_ZdlPvm(ptr noundef %i.abe, i64 noundef %i.abh) #43
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #45
  invoke void @SSL_CTX_free(ptr noundef nonnull %i.vs)
          to label %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit unwind label %bb.go

bb.go:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i
  %i.abi = landingpad { ptr, i32 }
          catch ptr null
  %i.abj = extractvalue { ptr, i32 } %i.abi, 0
  call void @__clang_call_terminate(ptr %i.abj) #46
  unreachable

_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #45
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %34) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #45
  %.sroa.0473.0530.add = add nuw nsw i64 %.sroa.0473.0530.idx, 48 ; 2 uses
  %.not = icmp eq i64 %.sroa.0473.0530.add, 432
  br i1 %.not, label %.lr.ph.i.i.i, label %bb.dz

bb.gp:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i384, %_ZN7testing7MessageD2Ev.exit381
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #45
  br label %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit464

bb.gq:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit430, %_ZN7testing15AssertionResultD2Ev.exit408
  invoke void @SSL_CTX_free(ptr noundef nonnull %i.vs)
          to label %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit464 unwind label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.abk = landingpad { ptr, i32 }
          catch ptr null
  %i.abl = extractvalue { ptr, i32 } %i.abk, 0
  call void @__clang_call_terminate(ptr %i.abl) #46
  unreachable

_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit464: ; preds = %bb.gp, %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #45
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %34) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #45
  br label %.lr.ph.i.i.i

bb.gs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit451, %bb.fz
  %.pn167.pn.pn = phi { ptr, i32 } [ %.pn167.pn, %_ZN7testing7MessageD2Ev.exit451 ], [ %i.zz, %bb.fz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #45
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.fy
  %.pn167.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn, %bb.gs ], [ %i.zy, %bb.fy ]
  call void @_ZNSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %50) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #45
  call void @_ZNSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %49) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #45
  call fastcc void @_ZN4bssl12_GLOBAL__N_112ClientConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(85) dereferenceable(85) %48) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #45
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.fx, %bb.fg, %_ZN7testing7MessageD2Ev.exit392
  %.pn167.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn, %bb.gt ], [ %.pn162.pn.pn.pn, %bb.fx ], [ %.pn157.pn.pn.pn, %bb.fg ], [ %.pn153.pn.pn, %_ZN7testing7MessageD2Ev.exit392 ]
  call void @_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #45
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.ee
  %.pn167.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn, %bb.gu ], [ %i.vw, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #45
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %34) #45
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.ed
  %.pn167.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn.pn, %bb.gv ], [ %i.vv, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #45
  call fastcc void @_ZNSt6vectorIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseSaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %32) #45
  br label %bb.hj

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit464, %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit
  %54 = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.abm = load ptr, ptr %54, align 8, !tbaa !1102 ; 2 uses
  %55 = getelementptr inbounds nuw i8, ptr %i.kq, i64 24 ; 2 uses
  %i.abn = icmp eq ptr %i.abm, %55
  br i1 %i.abn, label %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.abo = load i64, ptr %55, align 8, !tbaa !1106
  %i.abp = add i64 %i.abo, 1
  call void @_ZdlPvm(ptr noundef %i.abm, i64 noundef %i.abp) #43
  br label %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i

_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.abq = getelementptr inbounds nuw i8, ptr %i.kq, i64 56
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !1102 ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.kq, i64 72 ; 2 uses
  %i.abt = icmp eq ptr %i.abr, %i.abs
  br i1 %i.abt, label %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.1: ; preds = %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i
  %i.abu = load i64, ptr %i.abs, align 8, !tbaa !1106
  %i.abv = add i64 %i.abu, 1
  call void @_ZdlPvm(ptr noundef %i.abr, i64 noundef %i.abv) #43
  br label %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.1

_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.1: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.1, %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i
  %i.abw = getelementptr inbounds nuw i8, ptr %i.kq, i64 104
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !1102 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.kq, i64 120 ; 2 uses
  %i.abz = icmp eq ptr %i.abx, %i.aby
  br i1 %i.abz, label %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.2: ; preds = %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.1
  %i.aca = load i64, ptr %i.aby, align 8, !tbaa !1106
  %i.acb = add i64 %i.aca, 1
  call void @_ZdlPvm(ptr noundef %i.abx, i64 noundef %i.acb) #43
  br label %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.2

_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.2: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.2, %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.1
  %i.acc = getelementptr inbounds nuw i8, ptr %i.kq, i64 152
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !1102 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.kq, i64 168 ; 2 uses
  %i.acf = icmp eq ptr %i.acd, %i.ace
  br i1 %i.acf, label %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.3: ; preds = %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.2
  %i.acg = load i64, ptr %i.ace, align 8, !tbaa !1106
  %i.ach = add i64 %i.acg, 1
  call void @_ZdlPvm(ptr noundef %i.acd, i64 noundef %i.ach) #43
  br label %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.3

_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.3: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.3, %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.2
  %i.aci = getelementptr inbounds nuw i8, ptr %i.kq, i64 200
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !1102 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.kq, i64 216 ; 2 uses
  %i.acl = icmp eq ptr %i.acj, %i.ack
  br i1 %i.acl, label %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.4: ; preds = %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.3
  %i.acm = load i64, ptr %i.ack, align 8, !tbaa !1106
  %i.acn = add i64 %i.acm, 1
  call void @_ZdlPvm(ptr noundef %i.acj, i64 noundef %i.acn) #43
  br label %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.4

_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.4: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.4, %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.3
  %i.aco = getelementptr inbounds nuw i8, ptr %i.kq, i64 248
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !1102 ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.kq, i64 264 ; 2 uses
  %i.acr = icmp eq ptr %i.acp, %i.acq
  br i1 %i.acr, label %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.5: ; preds = %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.4
  %i.acs = load i64, ptr %i.acq, align 8, !tbaa !1106
  %i.act = add i64 %i.acs, 1
  call void @_ZdlPvm(ptr noundef %i.acp, i64 noundef %i.act) #43
  br label %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.5

_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.5: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.5, %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.4
  %i.acu = getelementptr inbounds nuw i8, ptr %i.kq, i64 296
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !1102 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.kq, i64 312 ; 2 uses
  %i.acx = icmp eq ptr %i.acv, %i.acw
  br i1 %i.acx, label %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.6: ; preds = %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.5
  %i.acy = load i64, ptr %i.acw, align 8, !tbaa !1106
  %i.acz = add i64 %i.acy, 1
  call void @_ZdlPvm(ptr noundef %i.acv, i64 noundef %i.acz) #43
  br label %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.6

_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.6: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.6, %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.5
  %i.ada = getelementptr inbounds nuw i8, ptr %i.kq, i64 344
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !1102 ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.kq, i64 360 ; 2 uses
  %i.add = icmp eq ptr %i.adb, %i.adc
  br i1 %i.add, label %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.7: ; preds = %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.6
  %i.ade = load i64, ptr %i.adc, align 8, !tbaa !1106
  %i.adf = add i64 %i.ade, 1
  call void @_ZdlPvm(ptr noundef %i.adb, i64 noundef %i.adf) #43
  br label %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.7

_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.7: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.7, %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.6
  %i.adg = getelementptr inbounds nuw i8, ptr %i.kq, i64 392
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !1102 ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.kq, i64 408 ; 2 uses
  %i.adj = icmp eq ptr %i.adh, %i.adi
  br i1 %i.adj, label %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.8: ; preds = %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.7
  %i.adk = load i64, ptr %i.adi, align 8, !tbaa !1106
  %i.adl = add i64 %i.adk, 1
  call void @_ZdlPvm(ptr noundef %i.adh, i64 noundef %i.adl) #43
  br label %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.8

_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.8: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.8, %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.7
  call void @_ZdlPvm(ptr noundef nonnull %i.kq, i64 noundef 432) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #45
  br label %bb.gx

bb.gx:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit323, %_ZN7testing15AssertionResultD2Ev.exit301, %_ZN7testing15AssertionResultD2Ev.exit279, %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i.i.8
  %i.adm = load ptr, ptr %19, align 8, !tbaa !1555 ; 2 uses
  %.not.i466 = icmp eq ptr %i.adm, null
  br i1 %.not.i466, label %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit467, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  invoke void @SSL_CTX_free(ptr noundef nonnull %i.adm)
          to label %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit467 unwind label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.adn = landingpad { ptr, i32 }
          catch ptr null
  %i.ado = extractvalue { ptr, i32 } %i.adn, 0
  call void @__clang_call_terminate(ptr %i.ado) #46
  unreachable

_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit467: ; preds = %bb.gx, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #45
  br label %bb.ha

bb.ha:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit257, %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit467
  %i.adp = load ptr, ptr %14, align 8, !tbaa !1640 ; 2 uses
  %.not.i468 = icmp eq ptr %i.adp, null
  br i1 %.not.i468, label %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  invoke void @EVP_PKEY_free(ptr noundef nonnull %i.adp)
          to label %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit unwind label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.adq = landingpad { ptr, i32 }
          catch ptr null
  %i.adr = extractvalue { ptr, i32 } %i.adq, 0
  call void @__clang_call_terminate(ptr %i.adr) #46
  unreachable

_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %bb.ha, %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #45
  br label %bb.hd

bb.hd:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit230, %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit
  %i.ads = load ptr, ptr %9, align 8, !tbaa !1617 ; 2 uses
  %.not.i469 = icmp eq ptr %i.ads, null
  br i1 %.not.i469, label %_ZNSt10unique_ptrI7x509_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.he

bb.he:                                            ; preds = %bb.hd
  invoke void @X509_free(ptr noundef nonnull %i.ads)
          to label %_ZNSt10unique_ptrI7x509_stN4bssl8internal7DeleterEED2Ev.exit unwind label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.adt = landingpad { ptr, i32 }
          catch ptr null
  %i.adu = extractvalue { ptr, i32 } %i.adt, 0
  call void @__clang_call_terminate(ptr %i.adu) #46
  unreachable

_ZNSt10unique_ptrI7x509_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %bb.hd, %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #45
  br label %bb.hg

bb.hg:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZNSt10unique_ptrI7x509_stN4bssl8internal7DeleterEED2Ev.exit
  %i.adv = load ptr, ptr %4, align 8, !tbaa !1617 ; 2 uses
  %.not.i470 = icmp eq ptr %i.adv, null
  br i1 %.not.i470, label %_ZNSt10unique_ptrI7x509_stN4bssl8internal7DeleterEED2Ev.exit471, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  invoke void @X509_free(ptr noundef nonnull %i.adv)
          to label %_ZNSt10unique_ptrI7x509_stN4bssl8internal7DeleterEED2Ev.exit471 unwind label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.adw = landingpad { ptr, i32 }
          catch ptr null
  %i.adx = extractvalue { ptr, i32 } %i.adw, 0
  call void @__clang_call_terminate(ptr %i.adx) #46
  unreachable

_ZNSt10unique_ptrI7x509_stN4bssl8internal7DeleterEED2Ev.exit471: ; preds = %bb.hg, %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #45
  ret void

bb.hj:                                            ; preds = %bb.gw, %.thread490
  %.pn167.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn.pn.pn, %bb.gw ], [ %.pn143.pn.pn.pn.pn.pn.pn.pn.pn495, %.thread490 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #45
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.dw, %bb.dv, %bb.ch, %_ZN7testing7MessageD2Ev.exit285
  %.pn167.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn.pn.pn.pn, %bb.hj ], [ %i.tc, %bb.dw ], [ %.pn138.pn.pn.pn, %bb.dv ], [ %.pn133.pn.pn.pn, %bb.ch ], [ %.pn129.pn.pn, %_ZN7testing7MessageD2Ev.exit285 ]
  call void @_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #45
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.bd
  %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn.pn.pn.pn.pn, %bb.hk ], [ %i.eb, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #45
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %_ZN7testing7MessageD2Ev.exit263
  %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.hl ], [ %.pn125.pn.pn, %_ZN7testing7MessageD2Ev.exit263 ]
  call void @_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #45
  br label %.body245

.body245:                                         ; preds = %bb.ao, %bb.ak, %bb.hm
  %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.hm ], [ %i.cr, %bb.ao ], [ %i.ck, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #45
  br label %bb.hn

bb.hn:                                            ; preds = %.body245, %_ZN7testing7MessageD2Ev.exit236
  %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body245 ], [ %.pn121.pn.pn, %_ZN7testing7MessageD2Ev.exit236 ]
  call void @_ZNSt10unique_ptrI7x509_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #45
  br label %.body

.body:                                            ; preds = %bb.w, %bb.s, %bb.hn
  %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.hn ], [ %i.bc, %bb.w ], [ %i.av, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #45
  br label %bb.ho

bb.ho:                                            ; preds = %.body, %_ZN7testing7MessageD2Ev.exit211
  %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit211 ]
  call void @_ZNSt10unique_ptrI7x509_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #45
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseSaIS3_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2630   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2632 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseS3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1102 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !1106
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #43
  br label %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i

_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseS3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !89

_ZSt8_DestroyIPZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseS3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i.i
  %.val.pr = load ptr, ptr %0, align 8, !tbaa !2630
  br label %_ZSt8_DestroyIPZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseS3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseS3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseS3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %.val = phi ptr [ %.val.pr, %_ZSt8_DestroyIPZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseS3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i2, label %_ZNSt12_Vector_baseIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseSaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseS3_EvT_S5_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.k, align 8, !tbaa !2631
  %i.l = ptrtoint ptr %.val1 to i64
  %i.m = ptrtoint ptr %.val to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.n) #43
  br label %_ZNSt12_Vector_baseIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseSaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseSaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseS3_EvT_S5_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZSt8_DestroyIPZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvT_S5_(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEEvT_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i
  %.05.i = phi ptr [ %i.g, %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1102 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.e = load i64, ptr %i.c, align 8, !tbaa !1106
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #43
  br label %_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i

_ZSt8_DestroyIZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 48 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPZN4bssl12_GLOBAL__N_125SSLTest_HostMatching_Test8TestBodyEvE8TestCaseEEvT_S7_.exit, label %.lr.ph.i, !llvm.loop !89
end_hunk_2
