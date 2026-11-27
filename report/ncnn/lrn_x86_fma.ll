Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lrn_x86_fma?download=true
inline.NumInlined: 35
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK4ncnn11LRN_x86_fma15forward_inplaceERNS_3MatERKNS_6OptionE:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  store i64 0, ptr %i.y, align 16, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %3, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.v, i8 0, i64 28, i1 false)
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !57
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i64 noundef %i.q, ptr noundef %i.aa)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %3, align 16, !tbaa !19
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZNK4ncnn3Mat5emptyEv.exit74.thread, label %_ZNK4ncnn3Mat5emptyEv.exit74

_ZNK4ncnn3Mat5emptyEv.exit74:                     ; preds = %bb.b
  %i.ad = load i64, ptr %i.y, align 16, !tbaa !17
  %i.ae = load i32, ptr %i.x, align 8, !tbaa !55
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %i.ad, %i.af
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_ZNK4ncnn3Mat5emptyEv.exit74.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.d:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit74
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !58
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.ak)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn11LRN_x86_fma15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull %1, ptr nonnull %3, ptr nonnull %i.b)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.am = load i32, ptr %i.al, align 8, !tbaa !59
  switch i32 %i.am, label %_ZNK4ncnn3Mat5emptyEv.exit74.thread [
    i32 0, label %bb.e
    i32 1, label %bb.u
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store i64 0, ptr %i.aq, align 8, !tbaa !17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ao, i8 0, i64 28, i1 false)
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !15
  %i.as = load ptr, ptr %i.z, align 8, !tbaa !57
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.ar, i64 noundef %i.q, ptr noundef %i.as)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = load ptr, ptr %4, align 8, !tbaa !19    ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit73

_ZNK4ncnn3Mat5emptyEv.exit73:                     ; preds = %bb.f
  %i.av = load i64, ptr %i.aq, align 8, !tbaa !17 ; 2 uses
  %i.aw = load i32, ptr %i.ap, align 8, !tbaa !55 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = mul i64 %i.av, %i.ax
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %.critedge, label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %i.an, align 8, !tbaa !60 ; 2 uses
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit81, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = atomicrmw add ptr %i.bb, i32 -1 acq_rel, align 4
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %bb.i, label %_ZN4ncnn3MatD2Ev.exit81

bb.i:                                             ; preds = %bb.h
  %i.be = load ptr, ptr %i.ao, align 8, !tbaa !61 ; 3 uses
  %.not3.i = icmp eq ptr %i.be, null
  %i.bf = load ptr, ptr %4, align 8, !tbaa !19    ; 3 uses
  br i1 %.not3.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !63
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef %i.bf)
          to label %_ZN4ncnn3MatD2Ev.exit81 unwind label %bb.m, !inline_history !49

bb.k:                                             ; preds = %bb.i
  %.not.i123 = icmp eq ptr %i.bf, null
  br i1 %.not.i123, label %_ZN4ncnn3MatD2Ev.exit81, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.bf) #6
  br label %_ZN4ncnn3MatD2Ev.exit81

bb.m:                                             ; preds = %bb.j
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #19
  unreachable

_ZN4ncnn3MatD2Ev.exit81:                          ; preds = %bb.h, %bb.g, %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.bi

bb.n:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit73
  %i.bl = trunc i64 %i.av to i32
  %i.bm = mul i32 %i.aw, %i.bl                    ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.preheader, label %_ZN4ncnn3Mat4fillEf.exit

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.bo = zext nneg i32 %i.bm to i64
  %i.bp = shl nuw nsw i64 %i.bo, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.at, i8 0, i64 %i.bp, i1 false), !tbaa !35
  br label %_ZN4ncnn3Mat4fillEf.exit

_ZN4ncnn3Mat4fillEf.exit:                         ; preds = %.lr.ph.preheader, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.br = load float, ptr %i.bq, align 8, !tbaa !64
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !36
  %i.bu = sitofp fast i32 %i.bt to float
  %i.bv = fdiv fast float %i.br, %i.bu
  store float %i.bv, ptr %i.c, align 4, !tbaa !35
  %i.bw = load i32, ptr %i.aj, align 4, !tbaa !58
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.bw)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZNK4ncnn11LRN_x86_fma15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.1, ptr nonnull %i.a, ptr nonnull %0, ptr nonnull %3, ptr nonnull %4, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  %i.bx = load ptr, ptr %i.an, align 8, !tbaa !60 ; 2 uses
  %.not.i82 = icmp eq ptr %i.bx, null
  br i1 %.not.i82, label %_ZN4ncnn3MatD2Ev.exit80, label %bb.o

bb.o:                                             ; preds = %_ZN4ncnn3Mat4fillEf.exit
  %i.by = atomicrmw add ptr %i.bx, i32 -1 acq_rel, align 4
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %bb.p, label %_ZN4ncnn3MatD2Ev.exit80

bb.p:                                             ; preds = %bb.o
  %i.ca = load ptr, ptr %i.ao, align 8, !tbaa !61 ; 3 uses
  %.not3.i83 = icmp eq ptr %i.ca, null
  %i.cb = load ptr, ptr %4, align 8, !tbaa !19    ; 3 uses
  br i1 %.not3.i83, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !63
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  invoke void %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef %i.cb)
          to label %_ZN4ncnn3MatD2Ev.exit80 unwind label %bb.t, !inline_history !49

bb.r:                                             ; preds = %bb.p
  %.not.i121 = icmp eq ptr %i.cb, null
  br i1 %.not.i121, label %_ZN4ncnn3MatD2Ev.exit80, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.cb) #6
  br label %_ZN4ncnn3MatD2Ev.exit80

bb.t:                                             ; preds = %bb.q
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #19
  unreachable

_ZN4ncnn3MatD2Ev.exit80:                          ; preds = %bb.o, %_ZN4ncnn3Mat4fillEf.exit, %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %_ZNK4ncnn3Mat5emptyEv.exit74.thread

bb.u:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 %i.k, ptr %i.d, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i32 %i.m, ptr %i.e, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ci = load ptr, ptr %i.s, align 8, !tbaa !60  ; 2 uses
  %i.cj = load <2 x ptr>, ptr %3, align 16, !tbaa !65
  store <2 x ptr> %i.cj, ptr %5, align 16, !tbaa !65
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cl = load i64, ptr %i.t, align 16, !tbaa !16
  store i64 %i.cl, ptr %i.ck, align 16, !tbaa !16
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cn = load i32, ptr %i.u, align 8, !tbaa !66
  store i32 %i.cn, ptr %i.cm, align 8, !tbaa !66
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.cp = load ptr, ptr %i.v, align 16, !tbaa !61
  store ptr %i.cp, ptr %i.co, align 16, !tbaa !61
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.cs = load <4 x i32>, ptr %i.w, align 8, !tbaa !15 ; 2 uses
  %7 = shufflevector <4 x i32> %i.cs, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %8 = freeze <2 x i32> %7
  %9 = zext <2 x i32> %8 to <2 x i64>
  %10 = shufflevector <4 x i32> %i.cs, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %11 = freeze <2 x i32> %10
  %12 = zext <2 x i32> %11 to <2 x i64>
  %13 = shl nuw <2 x i64> %12, splat (i64 32)
  %14 = or disjoint <2 x i64> %13, %9
  store <2 x i64> %14, ptr %i.cq, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.cu = load i32, ptr %i.x, align 8, !tbaa !55
  store i32 %i.cu, ptr %i.ct, align 8, !tbaa !55
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.cw = load i64, ptr %i.y, align 16, !tbaa !17
  store i64 %i.cw, ptr %i.cv, align 16, !tbaa !17
  %.not.i125 = icmp eq ptr %i.ci, null
  br i1 %.not.i125, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = atomicrmw add ptr %i.ci, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.v, %bb.u
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 3 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !36 ; 4 uses
  %i.da = icmp sgt i32 %i.cz, 1
  br i1 %i.da, label %bb.w, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.w:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.db = lshr i32 %i.cz, 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !tbaa.struct !69
  %i.dc = load ptr, ptr %i.z, align 8, !tbaa !57
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !70
  %i.de = xor i32 %i.db, -1
  %i.df = add nsw i32 %i.cz, %i.de                ; 2 uses
  invoke void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %i.db, i32 noundef %i.df, i32 noundef %i.db, i32 noundef %i.df, i32 noundef 0, float noundef nofpclass(nan inf) 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dg = load ptr, ptr %5, align 16, !tbaa !19
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.x
  %i.di = load i64, ptr %i.cv, align 16, !tbaa !17
  %i.dj = load i32, ptr %i.ct, align 8, !tbaa !55
  %i.dk = sext i32 %i.dj to i64
  %i.dl = mul i64 %i.di, %i.dk
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.y

bb.y:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.dn = load i32, ptr %i.cr, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  %.pre = load i32, ptr %i.cy, align 4, !tbaa !36
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.z:                                             ; preds = %bb.w
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %bb.ap

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZN4ncnn3Mat6addrefEv.exit, %bb.y
  %i.dp = phi i32 [ %.pre, %bb.y ], [ %i.cz, %_ZN4ncnn3Mat6addrefEv.exit ] ; 3 uses
  %.161 = phi i32 [ %i.dn, %bb.y ], [ %i.k, %_ZN4ncnn3Mat6addrefEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.dq = mul nsw i32 %i.dp, %i.dp                ; 3 uses
  store i32 %i.dq, ptr %i.f, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ds = load float, ptr %i.dr, align 8, !tbaa !64
  %i.dt = uitofp ninf nsz nneg i32 %i.dq to float
  %i.du = fdiv fast float %i.ds, %i.dt
  store float %i.du, ptr %i.g, align 4, !tbaa !35
  %i.dv = zext nneg i32 %i.dq to i64              ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.dw = shl nuw nsw i64 %i.dv, 2
  %i.dx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #20
          to label %.noexc127 unwind label %bb.ai ; 5 uses

.noexc127:                                        ; preds = %bb.aa
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dv ; 2 uses
  store i32 0, ptr %i.dx, align 4, !tbaa !15
  %i.dz = add nsw i64 %i.dv, -1                   ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc127
  %i.eb = getelementptr i8, ptr %i.dx, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.dz, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.eb, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !15
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc127, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.9.0 = phi ptr [ %i.dy, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.dy, %.noexc127 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.0128.0 = phi ptr [ %i.dx, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.dx, %.noexc127 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  store ptr %.sroa.0128.0, ptr %i.h, align 8, !tbaa !38
  %i.ec = load i32, ptr %i.cy, align 4, !tbaa !36 ; 7 uses
  %i.ed = sub i32 %.161, %i.ec
  %i.ee = icmp sgt i32 %i.ec, 0
  br i1 %i.ee, label %.preheader.preheader, label %.critedge72

.preheader.preheader:                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.ef = zext nneg i32 %i.ec to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.ec, 4
  %min.iters.check174 = icmp ult i32 %i.ec, 32
  %i.eg = and i64 %i.ef, 28
  %n.vec = and i64 %i.ef, 2147483616              ; 5 uses
  %i.eh = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.ef
  %min.epilog.iters.check = icmp eq i64 %i.eg, 0
  %n.vec175 = and i64 %i.ef, 2147483644           ; 4 uses
  %i.ei = trunc nuw nsw i64 %n.vec175 to i32
  %cmp.n183 = icmp eq i64 %n.vec175, %i.ef
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.048136 = phi i32 [ %i.fk, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.049135 = phi i32 [ %i.fj, %._crit_edge ], [ 0, %.preheader.preheader ] ; 5 uses
  %.050134 = phi i32 [ %i.ek, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.ej = sext i32 %.050134 to i64                ; 5 uses
  %i.ek = add i32 %i.ec, %.050134                 ; 2 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check174, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.el = add nsw i64 %n.vec, %i.ej
  %i.em = add i32 %.049135, %i.eh                 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.049135, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %invariant.gep = getelementptr [4 x i8], ptr %.sroa.0128.0, i64 %i.ej
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nsw <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add nsw <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add nsw <8 x i32> %vec.ind, splat (i32 24)
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.ep = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <8 x i32> %vec.ind, ptr %gep, align 4, !tbaa !15
  store <8 x i32> %step.add, ptr %i.en, align 4, !tbaa !15
  store <8 x i32> %step.add.2, ptr %i.eo, align 4, !tbaa !15
  store <8 x i32> %step.add.3, ptr %i.ep, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nsw <8 x i32> %vec.ind, splat (i32 32)
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !42

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.em, %vec.epilog.iter.check ], [ %.049135, %vector.main.loop.iter.check ]
  %i.er = add nsw i64 %n.vec175, %i.ej
  %i.es = add i32 %.049135, %i.ei                 ; 2 uses
  %broadcast.splatinsert176 = insertelement <4 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat177 = shufflevector <4 x i32> %broadcast.splatinsert176, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction178 = add nsw <4 x i32> %broadcast.splat177, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep188 = getelementptr [4 x i8], ptr %.sroa.0128.0, i64 %i.ej
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index179 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next181, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind180 = phi <4 x i32> [ %induction178, %vec.epilog.ph ], [ %vec.ind.next182, %vec.epilog.vector.body ] ; 2 uses
  %gep189 = getelementptr [4 x i8], ptr %invariant.gep188, i64 %index179
  store <4 x i32> %vec.ind180, ptr %gep189, align 4, !tbaa !15
  %index.next181 = add nuw i64 %index179, 4       ; 2 uses
  %vec.ind.next182 = add nsw <4 x i32> %vec.ind180, splat (i32 4)
  %i.et = icmp eq i64 %index.next181, %n.vec175
  br i1 %i.et, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !51

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n183, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.ej, %iter.check ], [ %i.el, %vec.epilog.iter.check ], [ %i.er, %vec.epilog.middle.block ]
  %.1131.ph = phi i32 [ %.049135, %iter.check ], [ %i.em, %vec.epilog.iter.check ], [ %i.es, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.critedge72:                                      ; preds = %._crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.eu = load i32, ptr %i.aj, align 4, !tbaa !58
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.eu)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZNK4ncnn11LRN_x86_fma15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.2, ptr nonnull %i.a, ptr nonnull %1, ptr nonnull %5, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %i.f, ptr nonnull %i.h, ptr nonnull %0, ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  %.not.i.i.i = icmp eq ptr %.sroa.0128.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %.critedge72
  %i.ev = ptrtoint ptr %.sroa.9.0 to i64
  %i.ew = ptrtoint ptr %.sroa.0128.0 to i64
  %i.ex = sub i64 %i.ev, %i.ew
end_hunk_0
