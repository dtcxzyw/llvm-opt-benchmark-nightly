Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapgen_v7?download=true
inline.NumInlined: 452
inline.NumDeleted: 47
begin_hunk_0_@_ZN8MapgenV7C2EP14MapgenV7ParamsP12EmergeParams:bb.a
  tail call void @_ZN11MapgenBasicC2EiP12MapgenParamsP12EmergeParams(ptr noundef nonnull align 8 dereferenceable(474) %0, i32 noundef 0, ptr noundef %1, ptr noundef %2)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV8MapgenV7, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 4 uses
  store i32 %i.l, ptr %i.m, align 4, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 474
  %i.p = load <4 x i16>, ptr %i.n, align 8, !tbaa !48
  store <4 x i16> %i.p, ptr %i.o, align 2, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.s = load <2 x float>, ptr %i.q, align 8, !tbaa !49
  store <2 x float> %i.s, ptr %i.r, align 4, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i16, ptr %i.t, align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 492
  store i16 %i.u, ptr %i.v, align 4, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.x = load float, ptr %i.w, align 4, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 432
  store float %i.x, ptr %i.y, align 8, !tbaa !101
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !56
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 468
  store i16 %i.aa, ptr %i.ab, align 4, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ae = load <4 x i16>, ptr %i.ac, align 2, !tbaa !48
  %i.af = zext <4 x i16> %i.ae to <4 x i32>
  store <4 x i32> %i.af, ptr %i.ad, align 8, !tbaa !102
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !58
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 464
  store float %i.ah, ptr %i.ai, align 8, !tbaa !103
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.al = load <2 x i16>, ptr %i.aj, align 8, !tbaa !48
  %i.am = sitofp nsz <2 x i16> %i.al to <2 x float>
  store <2 x float> %i.am, ptr %i.ak, align 4, !tbaa !49
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.ao = load float, ptr %i.an, align 4, !tbaa !59
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 444
  store float %i.ao, ptr %i.ap, align 4, !tbaa !104
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 470
  %i.as = load <2 x i16>, ptr %i.aq, align 8, !tbaa !48
  store <2 x i16> %i.as, ptr %i.ar, align 2, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 10 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 82 ; 4 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !60
  %i.aw = sext i16 %i.av to i64
  %i.ax = add nsw i64 %i.aw, 2                    ; 2 uses
  %i.ay = icmp ugt i64 %i.ax, 4611686018427387903
  %i.az = shl nsw i64 %i.ax, 2
  %i.ba = select i1 %i.ay, i64 -1, i64 %i.az
  %i.bb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ba) #11
          to label %bb.b unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !61
  %i.bc = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #11
          to label %bb.c unwind label %bb.r       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !62
  %i.bg = load i16, ptr %i.at, align 8, !tbaa !105
  %i.bh = sext i16 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 10 uses
  %i.bj = load i16, ptr %i.bi, align 4, !tbaa !106
  %i.bk = sext i16 %i.bj to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull %i.bd, i32 noundef %i.bf, i32 noundef %i.bh, i32 noundef %i.bk, i32 noundef 1)
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !63
  %i.bl = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #11
          to label %bb.e unwind label %bb.r       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.bn = load i32, ptr %i.be, align 8, !tbaa !62
  %i.bo = load i16, ptr %i.at, align 8, !tbaa !105
  %i.bp = sext i16 %i.bo to i32
  %i.bq = load i16, ptr %i.bi, align 4, !tbaa !106
  %i.br = sext i16 %i.bq to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.bl, ptr noundef nonnull %i.bm, i32 noundef %i.bn, i32 noundef %i.bp, i32 noundef %i.br, i32 noundef 1)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %bb.e
  store ptr %i.bl, ptr %i.c, align 8, !tbaa !64
  %i.bs = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #11
          to label %bb.g unwind label %bb.r       ; 3 uses

bb.g:                                             ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.bu = load i32, ptr %i.be, align 8, !tbaa !62
  %i.bv = load i16, ptr %i.at, align 8, !tbaa !105
  %i.bw = sext i16 %i.bv to i32
  %i.bx = load i16, ptr %i.bi, align 4, !tbaa !106
  %i.by = sext i16 %i.bx to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.bs, ptr noundef nonnull %i.bt, i32 noundef %i.bu, i32 noundef %i.bw, i32 noundef %i.by, i32 noundef 1)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %bb.g
  store ptr %i.bs, ptr %i.d, align 8, !tbaa !65
  %i.bz = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #11
          to label %bb.i unwind label %bb.r       ; 3 uses

bb.i:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.cb = load i32, ptr %i.be, align 8, !tbaa !62
  %i.cc = load i16, ptr %i.at, align 8, !tbaa !105
  %i.cd = sext i16 %i.cc to i32
  %i.ce = load i16, ptr %i.bi, align 4, !tbaa !106
  %i.cf = sext i16 %i.ce to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.bz, ptr noundef nonnull %i.ca, i32 noundef %i.cb, i32 noundef %i.cd, i32 noundef %i.cf, i32 noundef 1)
          to label %bb.j unwind label %bb.v

bb.j:                                             ; preds = %bb.i
  store ptr %i.bz, ptr %i.e, align 8, !tbaa !66
  %i.cg = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #11
          to label %bb.k unwind label %bb.r       ; 3 uses

bb.k:                                             ; preds = %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.ci = load i32, ptr %i.be, align 8, !tbaa !62
  %i.cj = load i16, ptr %i.at, align 8, !tbaa !105
  %i.ck = sext i16 %i.cj to i32
  %i.cl = load i16, ptr %i.bi, align 4, !tbaa !106
  %i.cm = sext i16 %i.cl to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.cg, ptr noundef nonnull %i.ch, i32 noundef %i.ci, i32 noundef %i.ck, i32 noundef %i.cm, i32 noundef 1)
          to label %bb.l unwind label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.cg, ptr %i.cn, align 8, !tbaa !67
  %i.co = load i32, ptr %i.m, align 4, !tbaa !47  ; 2 uses
  %i.cp = and i32 %i.co, 1
  %.not = icmp eq i32 %i.cp, 0
  br i1 %.not, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cq = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #11
          to label %bb.n unwind label %bb.r       ; 3 uses

bb.n:                                             ; preds = %bb.m
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 308
  %i.cs = load i32, ptr %i.be, align 8, !tbaa !62
  %i.ct = load i16, ptr %i.at, align 8, !tbaa !105
  %i.cu = sext i16 %i.ct to i32
  %i.cv = load i16, ptr %i.bi, align 4, !tbaa !106
  %i.cw = sext i16 %i.cv to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.cq, ptr noundef nonnull %i.cr, i32 noundef %i.cs, i32 noundef %i.cu, i32 noundef %i.cw, i32 noundef 1)
          to label %bb.o unwind label %bb.x

bb.o:                                             ; preds = %bb.n
  store ptr %i.cq, ptr %i.f, align 8, !tbaa !68
  %i.cx = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #11
          to label %bb.p unwind label %bb.r       ; 3 uses

bb.p:                                             ; preds = %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.cz = load i32, ptr %i.be, align 8, !tbaa !62
  %i.da = load i16, ptr %i.at, align 8, !tbaa !105
  %i.db = sext i16 %i.da to i32
  %i.dc = load i16, ptr %i.au, align 2, !tbaa !60
  %i.dd = sext i16 %i.dc to i32
  %i.de = add nsw i32 %i.dd, 2
  %i.df = load i16, ptr %i.bi, align 4, !tbaa !106
  %i.dg = sext i16 %i.df to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.cx, ptr noundef nonnull %i.cy, i32 noundef %i.cz, i32 noundef %i.db, i32 noundef %i.de, i32 noundef %i.dg)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %bb.p
  store ptr %i.cx, ptr %i.h, align 8, !tbaa !69
  %.pre = load i32, ptr %i.m, align 4, !tbaa !47
  br label %bb.z

bb.r:                                             ; preds = %bb.ai, %bb.ac, %bb.aa, %bb.o, %bb.m, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b, %bb.a
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.s:                                             ; preds = %bb.c
  %i.di = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 88) #12
  br label %bb.an

bb.t:                                             ; preds = %bb.e
  %i.dj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 88) #12
  br label %bb.an

bb.u:                                             ; preds = %bb.g
  %i.dk = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef 88) #12
  br label %bb.an

bb.v:                                             ; preds = %bb.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef 88) #12
  br label %bb.an

bb.w:                                             ; preds = %bb.k
  %i.dm = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef 88) #12
  br label %bb.an

bb.x:                                             ; preds = %bb.n
  %i.dn = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef 88) #12
  br label %bb.an

bb.y:                                             ; preds = %bb.p
  %i.do = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef 88) #12
  br label %bb.an

bb.z:                                             ; preds = %bb.q, %bb.l
  %i.dp = phi i32 [ %.pre, %bb.q ], [ %i.co, %bb.l ] ; 2 uses
  %i.dq = and i32 %i.dp, 2
  %.not39 = icmp eq i32 %i.dq, 0
  br i1 %.not39, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dr = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #11
          to label %bb.ab unwind label %bb.r      ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 348
  %i.dt = load i32, ptr %i.be, align 8, !tbaa !62
  %i.du = load i16, ptr %i.at, align 8, !tbaa !105
  %i.dv = sext i16 %i.du to i32
  %i.dw = load i16, ptr %i.bi, align 4, !tbaa !106
  %i.dx = sext i16 %i.dw to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.dr, ptr noundef nonnull %i.ds, i32 noundef %i.dt, i32 noundef %i.dv, i32 noundef %i.dx, i32 noundef 1)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.dr, ptr %i.g, align 8, !tbaa !70
  %i.dy = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #11
          to label %bb.ad unwind label %bb.r      ; 3 uses

bb.ad:                                            ; preds = %bb.ac
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 428
  %i.ea = load i32, ptr %i.be, align 8, !tbaa !62
  %i.eb = load i16, ptr %i.at, align 8, !tbaa !105
  %i.ec = sext i16 %i.eb to i32
  %i.ed = load i16, ptr %i.au, align 2, !tbaa !60
  %i.ee = sext i16 %i.ed to i32
  %i.ef = add nsw i32 %i.ee, 2
  %i.eg = load i16, ptr %i.bi, align 4, !tbaa !106
  %i.eh = sext i16 %i.eg to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.dy, ptr noundef nonnull %i.dz, i32 noundef %i.ea, i32 noundef %i.ec, i32 noundef %i.ef, i32 noundef %i.eh)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.dy, ptr %i.i, align 8, !tbaa !71
  %.pre42 = load i32, ptr %i.m, align 4, !tbaa !47
  br label %bb.ah

bb.af:                                            ; preds = %bb.ab
  %i.ei = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef 88) #12
  br label %bb.an

bb.ag:                                            ; preds = %bb.ad
  %i.ej = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef 88) #12
  br label %bb.an

bb.ah:                                            ; preds = %bb.ae, %bb.z
  %i.ek = phi i32 [ %.pre42, %bb.ae ], [ %i.dp, %bb.z ]
  %i.el = and i32 %i.ek, 4
  %.not40 = icmp eq i32 %i.el, 0
  br i1 %.not40, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.em = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #11
          to label %bb.aj unwind label %bb.r      ; 3 uses

bb.aj:                                            ; preds = %bb.ai
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 468
  %i.eo = load i32, ptr %i.be, align 8, !tbaa !62
  %i.ep = load i16, ptr %i.at, align 8, !tbaa !105
  %i.eq = sext i16 %i.ep to i32
  %i.er = load i16, ptr %i.au, align 2, !tbaa !60
  %i.es = sext i16 %i.er to i32
  %i.et = add nsw i32 %i.es, 2
  %i.eu = load i16, ptr %i.bi, align 4, !tbaa !106
  %i.ev = sext i16 %i.eu to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.em, ptr noundef nonnull %i.en, i32 noundef %i.eo, i32 noundef %i.eq, i32 noundef %i.et, i32 noundef %i.ev)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.em, ptr %i.j, align 8, !tbaa !72
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.ew = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef 88) #12
  br label %bb.an

bb.am:                                            ; preds = %bb.ak, %bb.ah
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 548
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ey, ptr noundef nonnull align 4 dereferenceable(40) %i.ex, i64 40, i1 false), !tbaa.struct !107
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 588
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fa, ptr noundef nonnull align 4 dereferenceable(40) %i.ez, i64 40, i1 false), !tbaa.struct !107
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 508
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fc, ptr noundef nonnull align 4 dereferenceable(40) %i.fb, i64 40, i1 false), !tbaa.struct !107
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 628
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fe, ptr noundef nonnull align 4 dereferenceable(40) %i.fd, i64 40, i1 false), !tbaa.struct !107
  ret void

bb.an:                                            ; preds = %bb.al, %bb.ag, %bb.af, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ew, %bb.al ], [ %i.dh, %bb.r ], [ %i.ej, %bb.ag ], [ %i.ei, %bb.af ], [ %i.do, %bb.y ], [ %i.dn, %bb.x ], [ %i.dm, %bb.w ], [ %i.dl, %bb.v ], [ %i.dk, %bb.u ], [ %i.dj, %bb.t ], [ %i.di, %bb.s ]
  tail call void @_ZN11MapgenBasicD2Ev(ptr noundef nonnull align 8 dead_on_return(474) dereferenceable(474) %0) #13
  resume { ptr, i32 } %.pn
}

declare void @_ZN11MapgenBasicC2EiP12MapgenParamsP12EmergeParams(ptr noundef nonnull align 8 dereferenceable(474), i32 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @_ZN11MapgenBasicD2Ev(ptr noundef nonnull align 8 dead_on_return(474) dereferenceable(474)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8MapgenV7D2Ev(ptr noundef nonnull align 8 dead_on_return(576) dereferenceable(576) initializes((0, 8)) %0) unnamed_addr #6 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV8MapgenV7, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.b) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.e) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 88) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65   ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.h) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 88) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !66   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.k) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 88) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !67   ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.n) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 88) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !47
  %i.r = and i32 %i.q, 1
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !68   ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.t) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 88) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !69   ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.w) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 88) #12
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.k
  %i.y = load i32, ptr %i.p, align 4, !tbaa !47
  %i.z = and i32 %i.y, 2
  %.not11 = icmp eq i32 %i.z, 0
  br i1 %.not11, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !70 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.ab) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 88) #12
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !71 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.ae) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 88) #12
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.p
  %i.ag = load i32, ptr %i.p, align 4, !tbaa !47
  %i.ah = and i32 %i.ag, 4
  %.not12 = icmp eq i32 %i.ah, 0
  br i1 %.not12, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !72 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.aj) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 88) #12
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !61 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_ZdaPv(ptr noundef nonnull %i.am) #12
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  tail call void @_ZN11MapgenBasicD2Ev(ptr noundef nonnull align 8 dead_on_return(474) dereferenceable(474) %0) #13
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88)) unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8MapgenV7D0Ev(ptr noundef nonnull align 8 dereferenceable(576) initializes((0, 8)) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN8MapgenV7D2Ev(ptr noundef nonnull align 8 dead_on_return(576) dereferenceable(576) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 576) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN14MapgenV7ParamsC2Ev(ptr nofree noundef nonnull writeonly align 8 dereferenceable(668) initializes((0, 18), (24, 44), (48, 74), (76, 90), (92, 134), (136, 174), (176, 214), (216, 254), (256, 294), (296, 334), (336, 374), (376, 414), (416, 454), (456, 494), (496, 534), (536, 574), (576, 614), (616, 654), (656, 668)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !108
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 5, ptr %i.b, align 4, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 5, ptr %i.c, align 2, !tbaa !74
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 5, ptr %i.d, align 8, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.e, align 8, !tbaa !109
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_0
