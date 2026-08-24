Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_hbond?download=true
inline.NumInlined: 2166
inline.NumDeleted: 889
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 52
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_Z9gmx_hbondiPPc:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %34, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %34, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  store i32 27, ptr %i.bf, align 8, !tbaa !100
  %i.bg = getelementptr inbounds nuw i8, ptr %34, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %34, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  store i64 2, ptr %i.bh, align 16, !tbaa !109
  %i.bi = getelementptr inbounds nuw i8, ptr %34, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %34, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  store i32 23, ptr %i.bj, align 16, !tbaa !100
  %i.bk = getelementptr inbounds nuw i8, ptr %34, i64 120
  %i.bl = getelementptr inbounds nuw i8, ptr %34, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  store i64 10, ptr %i.bl, align 8, !tbaa !109
  %i.bm = getelementptr inbounds nuw i8, ptr %34, i64 144
  %i.bn = getelementptr inbounds nuw i8, ptr %34, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  store i32 21, ptr %i.bn, align 8, !tbaa !100
  %i.bo = getelementptr inbounds nuw i8, ptr %34, i64 176
  store ptr @.str.106, ptr %i.bo, align 16, !tbaa !107
  %i.bp = getelementptr inbounds nuw i8, ptr %34, i64 184
  store ptr @.str.107, ptr %i.bp, align 8, !tbaa !108
  %i.bq = getelementptr inbounds nuw i8, ptr %34, i64 192
  store i64 4, ptr %i.bq, align 16, !tbaa !109
  %i.br = getelementptr inbounds nuw i8, ptr %34, i64 200
  %i.bs = getelementptr inbounds nuw i8, ptr %34, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i8 0, i64 24, i1 false)
  store i32 20, ptr %i.bs, align 16, !tbaa !100
  %i.bt = getelementptr inbounds nuw i8, ptr %34, i64 232
  store ptr @.str.108, ptr %i.bt, align 8, !tbaa !107
  %i.bu = getelementptr inbounds nuw i8, ptr %34, i64 240
  store ptr @.str.109, ptr %i.bu, align 16, !tbaa !108
  %i.bv = getelementptr inbounds nuw i8, ptr %34, i64 248
  store i64 12, ptr %i.bv, align 8, !tbaa !109
  %i.bw = getelementptr inbounds nuw i8, ptr %34, i64 256
  %i.bx = getelementptr inbounds nuw i8, ptr %34, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false)
  store i32 21, ptr %i.bx, align 8, !tbaa !100
  %i.by = getelementptr inbounds nuw i8, ptr %34, i64 288
  store ptr @.str.110, ptr %i.by, align 16, !tbaa !107
  %i.bz = getelementptr inbounds nuw i8, ptr %34, i64 296
  store ptr @.str.111, ptr %i.bz, align 8, !tbaa !108
  %i.ca = getelementptr inbounds nuw i8, ptr %34, i64 304
  store i64 12, ptr %i.ca, align 16, !tbaa !109
  %i.cb = getelementptr inbounds nuw i8, ptr %34, i64 312
  %i.cc = getelementptr inbounds nuw i8, ptr %34, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i8 0, i64 24, i1 false)
  store i32 21, ptr %i.cc, align 16, !tbaa !100
  %i.cd = getelementptr inbounds nuw i8, ptr %34, i64 344
  store ptr @.str.112, ptr %i.cd, align 8, !tbaa !107
  %i.ce = getelementptr inbounds nuw i8, ptr %34, i64 352
  store ptr @.str.113, ptr %i.ce, align 16, !tbaa !108
  %i.cf = getelementptr inbounds nuw i8, ptr %34, i64 360
  store i64 12, ptr %i.cf, align 8, !tbaa !109
  %i.cg = getelementptr inbounds nuw i8, ptr %34, i64 368
  %i.ch = getelementptr inbounds nuw i8, ptr %34, i64 392
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.cg, i8 0, i64 24, i1 false)
  store i32 21, ptr %i.ch, align 8, !tbaa !100
  %i.ci = getelementptr inbounds nuw i8, ptr %34, i64 400
  store ptr @.str.114, ptr %i.ci, align 16, !tbaa !107
  %i.cj = getelementptr inbounds nuw i8, ptr %34, i64 408
  store ptr @.str.115, ptr %i.cj, align 8, !tbaa !108
  %i.ck = getelementptr inbounds nuw i8, ptr %34, i64 416
  store i64 12, ptr %i.ck, align 16, !tbaa !109
  %i.cl = getelementptr inbounds nuw i8, ptr %34, i64 424
  %i.cm = getelementptr inbounds nuw i8, ptr %34, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i8 0, i64 24, i1 false)
  store i32 21, ptr %i.cm, align 16, !tbaa !100
  %i.cn = getelementptr inbounds nuw i8, ptr %34, i64 456
  store ptr @.str.116, ptr %i.cn, align 8, !tbaa !107
  %i.co = getelementptr inbounds nuw i8, ptr %34, i64 464
  store ptr @.str.117, ptr %i.co, align 16, !tbaa !108
  %i.cp = getelementptr inbounds nuw i8, ptr %34, i64 472
  store i64 12, ptr %i.cp, align 8, !tbaa !109
  %i.cq = getelementptr inbounds nuw i8, ptr %34, i64 480
  %i.cr = getelementptr inbounds nuw i8, ptr %34, i64 504
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.cq, i8 0, i64 24, i1 false)
  store i32 23, ptr %i.cr, align 8, !tbaa !100
  %i.cs = getelementptr inbounds nuw i8, ptr %34, i64 512
  store ptr @.str.118, ptr %i.cs, align 16, !tbaa !107
  %i.ct = getelementptr inbounds nuw i8, ptr %34, i64 520
  store ptr @.str.109, ptr %i.ct, align 8, !tbaa !108
  %i.cu = getelementptr inbounds nuw i8, ptr %34, i64 528
  store i64 12, ptr %i.cu, align 16, !tbaa !109
  %i.cv = getelementptr inbounds nuw i8, ptr %34, i64 536
  %i.cw = getelementptr inbounds nuw i8, ptr %34, i64 560
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i8 0, i64 24, i1 false)
  store i32 41, ptr %i.cw, align 16, !tbaa !100
  %i.cx = getelementptr inbounds nuw i8, ptr %34, i64 568
  store ptr @.str.119, ptr %i.cx, align 8, !tbaa !107
  %i.cy = getelementptr inbounds nuw i8, ptr %34, i64 576
  store ptr @.str.120, ptr %i.cy, align 16, !tbaa !108
  %i.cz = getelementptr inbounds nuw i8, ptr %34, i64 584
  store i64 12, ptr %i.cz, align 8, !tbaa !109
  %i.da = getelementptr inbounds nuw i8, ptr %34, i64 592
  %i.db = getelementptr inbounds nuw i8, ptr %34, i64 616
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.da, i8 0, i64 24, i1 false)
  store i32 21, ptr %i.db, align 8, !tbaa !100
  %i.dc = getelementptr inbounds nuw i8, ptr %34, i64 624
  store ptr @.str.121, ptr %i.dc, align 16, !tbaa !107
  %i.dd = getelementptr inbounds nuw i8, ptr %34, i64 632
  store ptr @.str.122, ptr %i.dd, align 8, !tbaa !108
  %i.de = getelementptr inbounds nuw i8, ptr %34, i64 640
  store i64 12, ptr %i.de, align 16, !tbaa !109
  %i.df = getelementptr inbounds nuw i8, ptr %34, i64 648
  %i.dg = getelementptr inbounds nuw i8, ptr %34, i64 672
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i8 0, i64 24, i1 false)
  store i32 21, ptr %i.dg, align 16, !tbaa !100
  %i.dh = getelementptr inbounds nuw i8, ptr %34, i64 680
  store ptr @.str.123, ptr %i.dh, align 8, !tbaa !107
  %i.di = getelementptr inbounds nuw i8, ptr %34, i64 688
  store ptr @.str.124, ptr %i.di, align 16, !tbaa !108
  %i.dj = getelementptr inbounds nuw i8, ptr %34, i64 696
  store i64 12, ptr %i.dj, align 8, !tbaa !109
  %i.dk = getelementptr inbounds nuw i8, ptr %34, i64 704
  %i.dl = getelementptr inbounds nuw i8, ptr %34, i64 728
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.dk, i8 0, i64 24, i1 false)
  store i32 21, ptr %i.dl, align 8, !tbaa !100
  %i.dm = getelementptr inbounds nuw i8, ptr %34, i64 736
  store ptr @.str.125, ptr %i.dm, align 16, !tbaa !107
  %i.dn = getelementptr inbounds nuw i8, ptr %34, i64 744
  store ptr @.str.126, ptr %i.dn, align 8, !tbaa !108
  %i.do = getelementptr inbounds nuw i8, ptr %34, i64 752
  store i64 12, ptr %i.do, align 16, !tbaa !109
  %i.dp = getelementptr inbounds nuw i8, ptr %34, i64 760
  %i.dq = getelementptr inbounds nuw i8, ptr %34, i64 784
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i8 0, i64 24, i1 false)
  store i32 21, ptr %i.dq, align 16, !tbaa !100
  %i.dr = getelementptr inbounds nuw i8, ptr %34, i64 792
  store ptr @.str.127, ptr %i.dr, align 8, !tbaa !107
  %i.ds = getelementptr inbounds nuw i8, ptr %34, i64 800
  store ptr @.str.128, ptr %i.ds, align 16, !tbaa !108
  %i.dt = getelementptr inbounds nuw i8, ptr %34, i64 808
  store i64 12, ptr %i.dt, align 8, !tbaa !109
  %i.du = getelementptr inbounds nuw i8, ptr %34, i64 816
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.du, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #24
  store i8 1, ptr %i.s, align 1, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #24
  store i32 0, ptr %i.v, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #24
  store ptr null, ptr %i.ai, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #24
  store ptr null, ptr %i.aj, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #24
  store ptr null, ptr %i.an, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #24
  store ptr null, ptr %i.ao, align 8, !tbaa !113
  store i32 16, ptr %i.t, align 4, !tbaa !56
  %i.dv = invoke noundef ptr @_Z13add_acf_pargsPiP7t_pargs(ptr noundef nonnull %i.t, ptr noundef nonnull %33)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.dw = load i32, ptr %i.t, align 4, !tbaa !56
  %i.dx = invoke noundef zeroext i1 @_Z17parse_common_argsPiPPcmiP8t_filenmiP7t_pargsiPPKciS8_PP16gmx_output_env_t(ptr noundef nonnull %i.p, ptr noundef %1, i64 noundef 49344, i32 noundef 15, ptr noundef nonnull %34, i32 noundef %i.dw, ptr noundef %i.dv, i32 noundef 50, ptr noundef nonnull %i.q, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.al)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.dx, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.134, i32 noundef 2560, ptr noundef %i.dv)
          to label %_ZL14gmx_sfree_implI7t_pargsEvPKcS2_iPT_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.aj, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.n, %bb.b, %bb.a
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.vj

bb.f:                                             ; preds = %bb.c
  %i.dz = load ptr, ptr @stdout, align 8, !tbaa !111
  %i.ea = call i64 @fwrite(ptr nonnull @.str.135, i64 84, i64 1, ptr %i.dz) ; 0 uses
  %i.eb = load i8, ptr @_ZZ9gmx_hbondiPPcE6bMerge, align 1, !tbaa !110, !range !54, !noundef !55
  %i.ec = trunc nuw i8 %i.eb to i1                ; 2 uses
  %.not = xor i1 %i.ec, true
  %i.ed = load i8, ptr @_ZZ9gmx_hbondiPPcE3bDA, align 1, !range !54 ; 2 uses
  %i.ee = trunc nuw i8 %i.ed to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.ee
  br i1 %or.cond, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %38, ptr noundef nonnull align 1 dereferenceable(65) @.str.134, i8 noundef zeroext 2)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %38, i32 noundef 2570, ptr noundef nonnull @.str.136) #31
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %38) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.eg, %bb.k ], [ %i.ef, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  br label %bb.vj

bb.m:                                             ; preds = %bb.f
  br i1 %i.ec, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.eh = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.114, i32 noundef 15, ptr noundef nonnull %34)
          to label %bb.o unwind label %bb.e

bb.o:                                             ; preds = %bb.n
  br i1 %i.eh, label %bb.p, label %._crit_edge1340

._crit_edge1340:                                  ; preds = %bb.o
  %.pre = load i8, ptr @_ZZ9gmx_hbondiPPcE3bDA, align 1, !range !54
  br label %bb.v

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %39, ptr noundef nonnull align 1 dereferenceable(65) @.str.134, i8 noundef zeroext 2)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %39, i32 noundef 2576, ptr noundef nonnull @.str.137) #31
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %39) #24
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn398 = phi { ptr, i32 } [ %i.ej, %bb.t ], [ %i.ei, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  br label %bb.vj

bb.v:                                             ; preds = %._crit_edge1340, %bb.m
  %87 = phi i8 [ %.pre, %._crit_edge1340 ], [ %i.ed, %bb.m ]
  %i.ek = load float, ptr @_ZZ9gmx_hbondiPPcE4acut, align 4, !tbaa !63
  %i.el = fpext float %i.ek to double
  %i.em = fmul double %i.el, f0x3F91DF46A2529D39
  %i.en = call double @cos(double noundef %i.em) #24
  %i.eo = fptrunc double %i.en to float
  store float %i.eo, ptr %i.ab, align 4, !tbaa !63
  %i.ep = load i8, ptr @_ZZ9gmx_hbondiPPcE8bContact, align 1, !tbaa !110, !range !54, !noundef !55
  %i.eq = trunc nuw i8 %i.ep to i1
  %.not15 = xor i1 %i.eq, true
  %i.er = trunc nuw i8 %87 to i1
  %or.cond17 = select i1 %.not15, i1 true, i1 %i.er
  br i1 %or.cond17, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %40, ptr noundef nonnull align 1 dereferenceable(65) @.str.134, i8 noundef zeroext 2)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %40, i32 noundef 2585, ptr noundef nonnull @.str.138) #31
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %40) #24
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn308 = phi { ptr, i32 } [ %i.et, %bb.aa ], [ %i.es, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  br label %bb.vj

bb.ac:                                            ; preds = %bb.v
  %i.eu = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.110, i32 noundef 15, ptr noundef nonnull %34)
          to label %bb.ad unwind label %bb.e

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.eu, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ev = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.125, i32 noundef 15, ptr noundef nonnull %34)
          to label %bb.af unwind label %bb.e

bb.af:                                            ; preds = %bb.ae
  br i1 %i.ev, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ew = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.118, i32 noundef 15, ptr noundef nonnull %34)
          to label %bb.ah unwind label %bb.e

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.ew, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ex = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.119, i32 noundef 15, ptr noundef nonnull %34)
          to label %bb.aj unwind label %bb.e

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.af, %bb.ad
  %i.ey = phi i1 [ true, %bb.ah ], [ true, %bb.af ], [ true, %bb.ad ], [ %i.ex, %bb.ai ] ; 3 uses
  %i.ez = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.127, i32 noundef 15, ptr noundef nonnull %34)
          to label %bb.ak unwind label %bb.e

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.ez, label %._crit_edge.i.i, label %bb.aw

._crit_edge.i.i:                                  ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #24
  %i.fa = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 4 uses
  store ptr %i.fa, ptr %41, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.fa, ptr noundef nonnull align 1 dereferenceable(5) @.str.139, i64 5, i1 false)
  %i.fb = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i64 5, ptr %i.fb, align 8, !tbaa !18
  %i.fc = getelementptr inbounds nuw i8, ptr %41, i64 21
  store i8 0, ptr %i.fc, align 1, !tbaa !17
  %i.fd = getelementptr inbounds nuw i8, ptr %41, i64 32 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %41, i64 48 ; 4 uses
  store ptr %i.fe, ptr %i.fd, align 8, !tbaa !9
  store i32 1112023089, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %41, i64 40
  store i64 4, ptr %i.ff, align 8, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %41, i64 52
  store i8 0, ptr %i.fg, align 4, !tbaa !17
  %i.fh = getelementptr inbounds nuw i8, ptr %41, i64 64 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %41, i64 80 ; 4 uses
  store ptr %i.fi, ptr %i.fh, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.fi, ptr noundef nonnull align 1 dereferenceable(5) @.str.141, i64 5, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %41, i64 72
  store i64 5, ptr %i.fj, align 8, !tbaa !18
  %i.fk = getelementptr inbounds nuw i8, ptr %41, i64 85
  store i8 0, ptr %i.fk, align 1, !tbaa !17
  %i.fl = getelementptr inbounds nuw i8, ptr %41, i64 96 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %41, i64 112 ; 4 uses
  store ptr %i.fm, ptr %i.fl, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.fm, ptr noundef nonnull align 1 dereferenceable(5) @.str.142, i64 5, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %41, i64 104
  store i64 5, ptr %i.fn, align 8, !tbaa !18
  %i.fo = getelementptr inbounds nuw i8, ptr %41, i64 117
  store i8 0, ptr %i.fo, align 1, !tbaa !17
  %i.fp = getelementptr inbounds nuw i8, ptr %41, i64 128 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %41, i64 144 ; 4 uses
  store ptr %i.fq, ptr %i.fp, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.fq, ptr noundef nonnull align 1 dereferenceable(5) @.str.143, i64 5, i1 false)
  %i.fr = getelementptr inbounds nuw i8, ptr %41, i64 136
  store i64 5, ptr %i.fr, align 8, !tbaa !18
  %i.fs = getelementptr inbounds nuw i8, ptr %41, i64 149
  store i8 0, ptr %i.fs, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #24
  %i.ft = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.127, i32 noundef 15, ptr noundef nonnull %34)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %._crit_edge.i.i
  store ptr %i.ft, ptr %i.ap, align 8, !tbaa !115
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %42, ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i8 noundef zeroext 2)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #24
  %i.fu = load ptr, ptr %i.al, align 8, !tbaa !116
  invoke void @_Z26output_env_get_xvgr_tlabelB5cxx11PK16gmx_output_env_t(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %43, ptr noundef %i.fu)
          to label %._crit_edge.i.i418 unwind label %bb.ar

._crit_edge.i.i418:                               ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #24
  %i.fv = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 6 uses
  store ptr %i.fv, ptr %44, align 8, !tbaa !9
  store i8 78, ptr %i.fv, align 8, !tbaa !17
  %i.fw = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 1, ptr %i.fw, align 8, !tbaa !18
  %i.fx = getelementptr inbounds nuw i8, ptr %44, i64 17
  store i8 0, ptr %i.fx, align 1, !tbaa !17
  %i.fy = load ptr, ptr %i.al, align 8, !tbaa !116
  %i.fz = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %42, ptr noundef nonnull @.str.144, ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef %i.fy)
          to label %bb.an unwind label %bb.as

bb.an:                                            ; preds = %._crit_edge.i.i418
  store ptr %i.fz, ptr %i.ai, align 8, !tbaa !111
  %i.ga = load ptr, ptr %44, align 8, !tbaa !15   ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.fv
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.an
  %i.gc = load i64, ptr %i.fv, align 8, !tbaa !17
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #24
  %i.ge = load ptr, ptr %43, align 8, !tbaa !15   ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !17
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #24
  %i.gj = getelementptr inbounds nuw i8, ptr %42, i64 32 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !118 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.gj, ptr noundef nonnull %i.gk) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424
  %i.gl = load ptr, ptr %42, align 8, !tbaa !15   ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !17
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gp) #32
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  %i.gq = load ptr, ptr %i.ai, align 8, !tbaa !111
  %i.gr = getelementptr inbounds nuw i8, ptr %41, i64 160
  %i.gs = load ptr, ptr %i.al, align 8, !tbaa !116
  invoke void @_Z10xvgrLegendP8_IO_FILEN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPK16gmx_output_env_t(ptr noundef %i.gq, ptr nonnull %41, ptr nonnull %i.gr, ptr noundef %i.gs)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.gt = load ptr, ptr %i.fp, align 8, !tbaa !15 ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.fq
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i425

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i425: ; preds = %bb.ap
  %i.gv = load i64, ptr %i.fq, align 8, !tbaa !17
  %i.gw = add i64 %i.gv, 1
end_hunk_0
