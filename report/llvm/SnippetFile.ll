Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SnippetFile?download=true
inline.NumInlined: 1316
inline.NumDeleted: 818
begin_hunk_0_@_ZN4llvm8exegesis12_GLOBAL__N_121BenchmarkCodeStreamer13HandleCommentENS_5SMLocENS_9StringRefE:bb.a
_ZN4llvm11raw_ostreamlsEPKc.exit82:               ; preds = %bb.s, %bb.t
  %i.ee = phi ptr [ %.pre238, %bb.s ], [ %i.ed, %bb.t ] ; 3 uses
  %.0.i.i81 = phi ptr [ %i.ea, %bb.s ], [ %.0.i78, %bb.t ] ; 5 uses
  %.sroa.038.0.copyload = load ptr, ptr %10, align 8, !tbaa !22 ; 2 uses
  %.sroa.239.0.copyload = load i64, ptr %i.d, align 8, !tbaa !144 ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i.i81, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !147
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i.i81, i64 32 ; 2 uses
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.ee to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = icmp ugt i64 %.sroa.239.0.copyload, %i.ek
  br i1 %i.el, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit82
  %i.em = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i81, ptr noundef %.sroa.038.0.copyload, i64 noundef %.sroa.239.0.copyload) #18 ; 2 uses
  %.phi.trans.insert239 = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %.pre240 = load ptr, ptr %.phi.trans.insert239, align 8, !tbaa !135
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit85

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit82
  %.not.i83 = icmp eq i64 %.sroa.239.0.copyload, 0
  br i1 %.not.i83, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit85, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ee, ptr align 1 %.sroa.038.0.copyload, i64 %.sroa.239.0.copyload, i1 false)
  %i.en = load ptr, ptr %i.eh, align 8, !tbaa !135
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %.sroa.239.0.copyload ; 2 uses
  store ptr %i.eo, ptr %i.eh, align 8, !tbaa !135
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit85

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit85:    ; preds = %bb.u, %bb.v, %bb.w
  %i.ep = phi ptr [ %.pre240, %bb.u ], [ %i.eo, %bb.w ], [ %i.ee, %bb.v ] ; 2 uses
  %.0.i84 = phi ptr [ %i.em, %bb.u ], [ %.0.i.i81, %bb.w ], [ %.0.i.i81, %bb.v ] ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i84, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !147
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.ep to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = icmp ult i64 %i.eu, 2
  br i1 %i.ev, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit85
  %i.ew = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i84, ptr noundef nonnull @.str.17, i64 noundef 2) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit88

bb.y:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit85
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.i84, i64 32 ; 2 uses
  store i16 2599, ptr %i.ep, align 1
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !135
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  store ptr %i.ez, ptr %i.ex, align 8, !tbaa !135
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit88

_ZN4llvm11raw_ostreamlsEPKc.exit88:               ; preds = %bb.x, %bb.y
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !105
  %i.fc = add i32 %i.fb, 1
  store i32 %i.fc, ptr %i.fa, align 8, !tbaa !105
  br label %_ZNSt6vectorIN4llvm8exegesis13RegisterValueESaIS2_EE9push_backEOS2_.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.l
  %i.fd = load ptr, ptr %12, align 8, !tbaa !139  ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 24 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !142
  %i.fh = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, ptr nonnull @.str.10, i64 6, i64 noundef 0) #18
  %.sroa.speculated.i.i89 = call i64 @llvm.umin.i64(i64 %i.fh, i64 %i.fg)
  %i.fi = load i64, ptr %i.ff, align 8, !tbaa !142 ; 2 uses
  %.sroa.speculated4.i.i.i.i90 = call i64 @llvm.umin.i64(i64 %i.fi, i64 %.sroa.speculated.i.i89) ; 2 uses
  %i.fj = load ptr, ptr %i.fe, align 8, !tbaa !143
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %.sroa.speculated4.i.i.i.i90
  %i.fl = sub i64 %i.fi, %.sroa.speculated4.i.i.i.i90 ; 2 uses
  store ptr %i.fk, ptr %7, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.fl, ptr %i.fm, align 8
  %i.fn = call noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr nonnull @.str.10, i64 6, i64 noundef -1) #18
  %i.fo = add i64 %i.fn, 1
  %i.fp = call i64 @llvm.usub.sat.i64(i64 %i.fl, i64 %i.fo)
  %i.fq = load i64, ptr %i.fm, align 8, !tbaa !142 ; 2 uses
  %i.fr = sub i64 %i.fq, %i.fp
  %i.fs = load ptr, ptr %7, align 8, !tbaa !143
  %.sroa.speculated.i.i.i.i91 = call i64 @llvm.umin.i64(i64 %i.fq, i64 %i.fr) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %.tr57 = trunc i64 %.sroa.speculated.i.i.i.i91 to i32
  %i.ft = shl i32 %.tr57, 2
  call void @_ZN4llvm5APIntC1EjNS_9StringRefEh(ptr noundef nonnull align 8 dereferenceable(12) %13, i32 noundef %i.ft, ptr %i.fs, i64 %.sroa.speculated.i.i.i.i91, i8 noundef zeroext 16) #18
  %i.fu = load i64, ptr %13, align 8              ; 2 uses
  store i64 %i.fu, ptr %i.an, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !146 ; 2 uses
  store i32 %i.fw, ptr %i.ao, align 8, !tbaa !146
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !104 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 32 ; 3 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !148 ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !149
  %.not.i.i94 = icmp eq ptr %i.ga, %i.gc
  br i1 %.not.i.i94, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  store i32 %i.cu, ptr %i.ga, align 8, !tbaa !13
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store i32 %i.fw, ptr %i.ge, align 8, !tbaa !146
  store i64 %i.fu, ptr %i.gd, align 8
  store i32 0, ptr %i.ao, align 8, !tbaa !146
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !148
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  store ptr %i.gg, ptr %i.fz, align 8, !tbaa !148
  br label %_ZNSt6vectorIN4llvm8exegesis13RegisterValueESaIS2_EE9push_backEOS2_.exit

bb.aa:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  call void @_ZNSt6vectorIN4llvm8exegesis13RegisterValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.gh, ptr %i.ga, ptr noundef nonnull align 8 dereferenceable(24) %11)
  br label %_ZNSt6vectorIN4llvm8exegesis13RegisterValueESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4llvm8exegesis13RegisterValueESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.aa, %bb.z, %_ZN4llvm11raw_ostreamlsEPKc.exit88, %_ZN4llvm11raw_ostreamlsEPKc.exit68
  %i.gi = load ptr, ptr %12, align 8, !tbaa !139  ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.ap
  br i1 %i.gj, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN4llvm8exegesis13RegisterValueESaIS2_EE9push_backEOS2_.exit
  call void @free(ptr noundef %i.gi) #18
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZNSt6vectorIN4llvm8exegesis13RegisterValueESaIS2_EE9push_backEOS2_.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.gk = load i32, ptr %i.ao, align 8, !tbaa !146
  %i.gl = icmp ugt i32 %i.gk, 64
  br i1 %i.gl, label %bb.ac, label %_ZN4llvm8exegesis13RegisterValueD2Ev.exit

bb.ac:                                            ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit
  %i.gm = load ptr, ptr %i.an, align 8, !tbaa !12 ; 2 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %_ZN4llvm8exegesis13RegisterValueD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdaPv(ptr noundef nonnull %i.gm) #20
  br label %_ZN4llvm8exegesis13RegisterValueD2Ev.exit

_ZN4llvm8exegesis13RegisterValueD2Ev.exit:        ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE9push_backERKS1_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit.i97:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i62
  %i.go = load i32, ptr %i.z, align 1
  %i.gp = xor i32 %i.go, 1163282764
  %i.gq = getelementptr i8, ptr %i.z, i64 4
  %i.gr = load i16, ptr %i.gq, align 1
  %i.gs = zext i16 %i.gr to i32
  %i.gt = xor i32 %i.gs, 20041
  %i.gu = or i32 %i.gp, %i.gt
  %i.gv = icmp ne i32 %i.gu, 0
  %i.gw = zext i1 %i.gv to i32
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.ae, label %bb.ax

bb.ae:                                            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i97
  %i.gy = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.gz = add i64 %.sroa.speculated.i.i.i.i, -20  ; 2 uses
  store ptr %i.gy, ptr %10, align 8, !tbaa !22
  store i64 %i.gz, ptr %i.d, align 8, !tbaa !144
  %i.ha = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr nonnull @.str.10, i64 6, i64 noundef 0) #18
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.ha, i64 %i.gz) ; 2 uses
  %i.hb = load i64, ptr %i.d, align 8, !tbaa !142 ; 3 uses
  %.sroa.speculated4.i.i.i = call i64 @llvm.umin.i64(i64 %i.hb, i64 %.sroa.speculated.i) ; 2 uses
  %i.hc = load ptr, ptr %10, align 8, !tbaa !143
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %.sroa.speculated4.i.i.i ; 3 uses
  %i.he = sub i64 %i.hb, %.sroa.speculated4.i.i.i ; 5 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.val58 = load ptr, ptr %i.hf, align 8, !tbaa !602
  %i.hg = call fastcc i32 @_ZNK4llvm8exegesis12_GLOBAL__N_121BenchmarkCodeStreamer18findRegisterByNameENS_9StringRefE(ptr %.val58, ptr %i.hd, i64 %i.he) ; 3 uses
  %.not54 = icmp eq i32 %i.hg, 0
  br i1 %.not54, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !104 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 144 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 152 ; 3 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !150 ; 6 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 160 ; 3 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !129
  %.not.i101 = icmp eq ptr %i.hl, %i.hn
  br i1 %.not.i101, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 %i.hg, ptr %i.hl, align 4, !tbaa !13
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  store ptr %i.ho, ptr %i.hk, align 8, !tbaa !150
  br label %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE9push_backERKS1_.exit

bb.ah:                                            ; preds = %bb.af
  %i.hp = load ptr, ptr %i.hj, align 8, !tbaa !134 ; 7 uses
  %i.hq = ptrtoint ptr %i.hl to i64               ; 2 uses
  %i.hr = ptrtoint ptr %i.hp to i64               ; 3 uses
  %i.hs = sub i64 %i.hq, %i.hr                    ; 3 uses
  %i.ht = icmp eq i64 %i.hs, 9223372036854775804
  br i1 %i.ht, label %bb.ai, label %_ZNKSt6vectorIN4llvm10MCRegisterESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #21
  unreachable

_ZNKSt6vectorIN4llvm10MCRegisterESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ah
  %i.hu = ashr exact i64 %i.hs, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.hu, i64 1)
  %i.hv = add nsw i64 %.sroa.speculated.i.i.i, %i.hu ; 2 uses
  %i.hw = icmp ult i64 %i.hv, %i.hu
  %i.hx = call i64 @llvm.umin.i64(i64 %i.hv, i64 2305843009213693951)
  %i.hy = select i1 %i.hw, i64 2305843009213693951, i64 %i.hx ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.hy, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.hz = shl nuw nsw i64 %i.hy, 2
  %i.ia = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hz) #19 ; 7 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hs
  store i32 %i.hg, ptr %i.ib, align 4, !tbaa !13
  %.not10.i.i.i.i.i = icmp eq ptr %i.hp, %i.hl
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN4llvm10MCRegisterESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ic = add i64 %i.hq, -4
  %i.id = sub i64 %i.ic, %i.hr                    ; 2 uses
  %i.ie = lshr i64 %i.id, 2
  %i.if = add nuw nsw i64 %i.ie, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.id, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader303, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.if, 9223372036854775800     ; 3 uses
  %i.ig = shl i64 %n.vec, 2                       ; 2 uses
  %i.ih = getelementptr i8, ptr %i.ia, i64 %i.ig  ; 2 uses
  %i.ii = getelementptr i8, ptr %i.hp, i64 %i.ig
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ij = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ia, i64 %i.ij ; 2 uses
  %next.gep299 = getelementptr i8, ptr %i.hp, i64 %i.ij ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !603)
  call void @llvm.experimental.noalias.scope.decl(metadata !604)
  %i.ik = getelementptr i8, ptr %next.gep299, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep299, align 4, !tbaa !13, !alias.scope !604, !noalias !603
  %wide.load300 = load <4 x i32>, ptr %i.ik, align 4, !tbaa !13, !alias.scope !604, !noalias !603
  %i.il = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !13, !alias.scope !603, !noalias !604
  store <4 x i32> %wide.load300, ptr %i.il, align 4, !tbaa !13, !alias.scope !603, !noalias !604
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.im = icmp eq i64 %index.next, %n.vec
  br i1 %i.im, label %middle.block, label %vector.body, !llvm.loop !598

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.if, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader303

.lr.ph.i.i.i.i.i.preheader303:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ia, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ih, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.hp, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ii, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader303, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ip, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader303 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.io, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader303 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !603)
  call void @llvm.experimental.noalias.scope.decl(metadata !604)
  %i.in = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !13, !alias.scope !604, !noalias !603
  store i32 %i.in, ptr %.012.i.i.i.i.i, align 4, !tbaa !13, !alias.scope !603, !noalias !604
  %i.io = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.io, %i.hl
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !599

_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN4llvm10MCRegisterESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ia, %_ZNKSt6vectorIN4llvm10MCRegisterESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ih, %middle.block ], [ %i.ip, %.lr.ph.i.i.i.i.i ]
  %i.iq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.hp, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.ir = load ptr, ptr %i.hm, align 8, !tbaa !129
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = sub i64 %i.is, %i.hr
  call void @_ZdlPvm(ptr noundef nonnull %i.hp, i64 noundef %i.it) #20
  br label %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.aj, %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ia, ptr %i.hj, align 8, !tbaa !134
  store ptr %i.iq, ptr %i.hk, align 8, !tbaa !150
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.hy
  store ptr %i.iu, ptr %i.hm, align 8, !tbaa !129
  br label %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE9push_backERKS1_.exit

bb.ak:                                            ; preds = %bb.ae
  %i.iv = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #18 ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !147
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 32 ; 3 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !135 ; 2 uses
  %i.ja = ptrtoint ptr %i.ix to i64
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = sub i64 %i.ja, %i.jb
  %i.jd = icmp ult i64 %i.jc, 18
  br i1 %i.jd, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.je = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.iv, ptr noundef nonnull @.str.15, i64 noundef 18) #18 ; 2 uses
  %.phi.trans.insert241 = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  %.pre242 = load ptr, ptr %.phi.trans.insert241, align 8, !tbaa !135
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit104

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.iz, ptr noundef nonnull align 1 dereferenceable(18) @.str.15, i64 18, i1 false)
  %i.jf = load ptr, ptr %i.iy, align 8, !tbaa !135
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 18 ; 2 uses
  store ptr %i.jg, ptr %i.iy, align 8, !tbaa !135
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit104

_ZN4llvm11raw_ostreamlsEPKc.exit104:              ; preds = %bb.al, %bb.am
  %i.jh = phi ptr [ %.pre242, %bb.al ], [ %i.jg, %bb.am ] ; 3 uses
  %.0.i.i103 = phi ptr [ %i.je, %bb.al ], [ %i.iv, %bb.am ] ; 5 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.0.i.i103, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !147
  %i.jk = getelementptr inbounds nuw i8, ptr %.0.i.i103, i64 32 ; 2 uses
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = ptrtoint ptr %i.jh to i64
  %i.jn = sub i64 %i.jl, %i.jm
  %i.jo = icmp ugt i64 %i.he, %i.jn
  br i1 %i.jo, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit104
  %i.jp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i103, ptr noundef %i.hd, i64 noundef %i.he) #18 ; 2 uses
  %.phi.trans.insert243 = getelementptr inbounds nuw i8, ptr %i.jp, i64 32
  %.pre244 = load ptr, ptr %.phi.trans.insert243, align 8, !tbaa !135
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit107

bb.ao:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit104
  %.not.i105.not = icmp ugt i64 %i.hb, %.sroa.speculated.i
  br i1 %.not.i105.not, label %bb.ap, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit107

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jh, ptr align 1 %i.hd, i64 %i.he, i1 false)
  %i.jq = load ptr, ptr %i.jk, align 8, !tbaa !135
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.he ; 2 uses
  store ptr %i.jr, ptr %i.jk, align 8, !tbaa !135
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit107

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit107:   ; preds = %bb.an, %bb.ao, %bb.ap
  %i.js = phi ptr [ %.pre244, %bb.an ], [ %i.jr, %bb.ap ], [ %i.jh, %bb.ao ] ; 2 uses
  %.0.i106 = phi ptr [ %i.jp, %bb.an ], [ %.0.i.i103, %bb.ap ], [ %.0.i.i103, %bb.ao ] ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.0.i106, i64 24
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !147
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = ptrtoint ptr %i.js to i64
  %i.jx = sub i64 %i.jv, %i.jw
  %i.jy = icmp ult i64 %i.jx, 27
  br i1 %i.jy, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit107
  %i.jz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i106, ptr noundef nonnull @.str.19, i64 noundef 27) #18 ; 2 uses
  %.phi.trans.insert245 = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  %.pre246 = load ptr, ptr %.phi.trans.insert245, align 8, !tbaa !135
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit110

bb.ar:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit107
  %i.ka = getelementptr inbounds nuw i8, ptr %.0.i106, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.js, ptr noundef nonnull align 1 dereferenceable(27) @.str.19, i64 27, i1 false)
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !135
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 27 ; 2 uses
  store ptr %i.kc, ptr %i.ka, align 8, !tbaa !135
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit110

_ZN4llvm11raw_ostreamlsEPKc.exit110:              ; preds = %bb.aq, %bb.ar
  %i.kd = phi ptr [ %.pre246, %bb.aq ], [ %i.kc, %bb.ar ] ; 3 uses
  %.0.i.i109 = phi ptr [ %i.jz, %bb.aq ], [ %.0.i106, %bb.ar ] ; 5 uses
  %.sroa.028.0.copyload = load ptr, ptr %10, align 8, !tbaa !22 ; 2 uses
  %.sroa.229.0.copyload = load i64, ptr %i.d, align 8, !tbaa !144 ; 5 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.0.i.i109, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !147
  %i.kg = getelementptr inbounds nuw i8, ptr %.0.i.i109, i64 32 ; 2 uses
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = ptrtoint ptr %i.kd to i64
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = icmp ugt i64 %.sroa.229.0.copyload, %i.kj
  br i1 %i.kk, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit110
  %i.kl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i109, ptr noundef %.sroa.028.0.copyload, i64 noundef %.sroa.229.0.copyload) #18 ; 2 uses
  %.phi.trans.insert247 = getelementptr inbounds nuw i8, ptr %i.kl, i64 32
  %.pre248 = load ptr, ptr %.phi.trans.insert247, align 8, !tbaa !135
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit113

bb.at:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit110
  %.not.i111 = icmp eq i64 %.sroa.229.0.copyload, 0
  br i1 %.not.i111, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit113, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kd, ptr align 1 %.sroa.028.0.copyload, i64 %.sroa.229.0.copyload, i1 false)
  %i.km = load ptr, ptr %i.kg, align 8, !tbaa !135
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 %.sroa.229.0.copyload ; 2 uses
  store ptr %i.kn, ptr %i.kg, align 8, !tbaa !135
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit113

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit113:   ; preds = %bb.as, %bb.at, %bb.au
  %i.ko = phi ptr [ %.pre248, %bb.as ], [ %i.kn, %bb.au ], [ %i.kd, %bb.at ] ; 2 uses
  %.0.i112 = phi ptr [ %i.kl, %bb.as ], [ %.0.i.i109, %bb.au ], [ %.0.i.i109, %bb.at ] ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.i112, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !147
  %i.kr = ptrtoint ptr %i.kq to i64
  %i.ks = ptrtoint ptr %i.ko to i64
  %i.kt = sub i64 %i.kr, %i.ks
  %i.ku = icmp ult i64 %i.kt, 2
  br i1 %i.ku, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit113
  %i.kv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i112, ptr noundef nonnull @.str.17, i64 noundef 2) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit116

bb.aw:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit113
  %i.kw = getelementptr inbounds nuw i8, ptr %.0.i112, i64 32 ; 2 uses
  store i16 2599, ptr %i.ko, align 1
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !135
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 2
  store ptr %i.ky, ptr %i.kw, align 8, !tbaa !135
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit116

_ZN4llvm11raw_ostreamlsEPKc.exit116:              ; preds = %bb.av, %bb.aw
end_hunk_0
begin_hunk_1_@llvm.usub.sat.i64
!399 = !{!"p1 _ZTSN4llvm9MCSectionE", !14, i64 0}
!400 = !{!"_ZTSSt5arrayIPN4llvm9MCSectionELm11EE", !8, i64 0}
!401 = !{!"_ZTSN4llvm16MCObjectFileInfoE", !52, i64 8, !52, i64 9, !9, i64 12, !9, i64 16, !398, i64 20, !399, i64 24, !399, i64 32, !399, i64 40, !399, i64 48, !399, i64 56, !399, i64 64, !399, i64 72, !399, i64 80, !399, i64 88, !399, i64 96, !399, i64 104, !399, i64 112, !399, i64 120, !399, i64 128, !399, i64 136, !399, i64 144, !399, i64 152, !399, i64 160, !399, i64 168, !399, i64 176, !399, i64 184, !399, i64 192, !399, i64 200, !399, i64 208, !399, i64 216, !399, i64 224, !399, i64 232, !399, i64 240, !399, i64 248, !399, i64 256, !399, i64 264, !399, i64 272, !399, i64 280, !399, i64 288, !399, i64 296, !399, i64 304, !399, i64 312, !399, i64 320, !399, i64 328, !399, i64 336, !399, i64 344, !399, i64 352, !399, i64 360, !399, i64 368, !399, i64 376, !399, i64 384, !399, i64 392, !399, i64 400, !399, i64 408, !399, i64 416, !399, i64 424, !399, i64 432, !399, i64 440, !399, i64 448, !399, i64 456, !399, i64 464, !399, i64 472, !399, i64 480, !399, i64 488, !399, i64 496, !399, i64 504, !399, i64 512, !399, i64 520, !399, i64 528, !399, i64 536, !399, i64 544, !399, i64 552, !399, i64 560, !399, i64 568, !399, i64 576, !399, i64 584, !399, i64 592, !399, i64 600, !399, i64 608, !399, i64 616, !399, i64 624, !399, i64 632, !399, i64 640, !399, i64 648, !399, i64 656, !399, i64 664, !399, i64 672, !399, i64 680, !399, i64 688, !399, i64 696, !399, i64 704, !399, i64 712, !399, i64 720, !399, i64 728, !399, i64 736, !399, i64 744, !399, i64 752, !399, i64 760, !399, i64 768, !399, i64 776, !399, i64 784, !399, i64 792, !399, i64 800, !399, i64 808, !400, i64 816, !52, i64 904, !57, i64 912}
!402 = !{!401, !9, i64 16}
!403 = !{!401, !57, i64 912}
!404 = !{!"_ZTSN4llvm9MCContext11EnvironmentE", !8, i64 0}
!405 = !{!"p1 _ZTSN4llvm9SourceMgrE", !14, i64 0}
!406 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm9SourceMgrELb0EE", !405, i64 0}
!407 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm9SourceMgrESt14default_deleteIS1_EEE", !406, i64 0}
!408 = !{!"_ZTSSt5tupleIJPN4llvm9SourceMgrESt14default_deleteIS1_EEE", !407, i64 0}
!409 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm9SourceMgrESt14default_deleteIS1_EE", !408, i64 0}
!410 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm9SourceMgrESt14default_deleteIS1_ELb1ELb1EE", !409, i64 0}
!411 = !{!"_ZTSSt10unique_ptrIN4llvm9SourceMgrESt14default_deleteIS1_EE", !410, i64 0}
!412 = !{!"p2 _ZTSN4llvm6MDNodeE", !27, i64 0}
!413 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm6MDNodeESaIS3_EE17_Vector_impl_dataE", !412, i64 0, !412, i64 8, !412, i64 16}
!414 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm6MDNodeESaIS3_EE12_Vector_implE", !413, i64 0}
!415 = !{!"_ZTSSt12_Vector_baseIPKN4llvm6MDNodeESaIS3_EE", !414, i64 0}
!416 = !{!"_ZTSSt6vectorIPKN4llvm6MDNodeESaIS3_EE", !415, i64 0}
!417 = !{!"_ZTSSt14_Function_base", !8, i64 0, !14, i64 16}
!418 = !{!"_ZTSSt8functionIFvRKN4llvm12SMDiagnosticEbRKNS0_9SourceMgrERSt6vectorIPKNS0_6MDNodeESaISA_EEEE", !417, i64 0, !14, i64 24}
!419 = !{!"p1 _ZTSN4llvm16MCObjectFileInfoE", !14, i64 0}
!420 = !{!"p1 _ZTSN4llvm15CodeViewContextE", !14, i64 0}
!421 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm15CodeViewContextELb0EE", !420, i64 0}
!422 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm15CodeViewContextESt14default_deleteIS1_EEE", !421, i64 0}
!423 = !{!"_ZTSSt5tupleIJPN4llvm15CodeViewContextESt14default_deleteIS1_EEE", !422, i64 0}
!424 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm15CodeViewContextESt14default_deleteIS1_EE", !423, i64 0}
!425 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm15CodeViewContextESt14default_deleteIS1_ELb1ELb1EE", !424, i64 0}
!426 = !{!"_ZTSSt10unique_ptrIN4llvm15CodeViewContextESt14default_deleteIS1_EE", !425, i64 0}
!427 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPvvEE", !54, i64 0}
!428 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPvLb1EEE", !427, i64 0}
!429 = !{!"_ZTSN4llvm15SmallVectorImplIPvEE", !428, i64 0}
!430 = !{!"_ZTSN4llvm18SmallVectorStorageIPvLj4EEE", !8, i64 0}
!431 = !{!"_ZTSN4llvm11SmallVectorIPvLj4EEE", !429, i64 0, !430, i64 16}
!432 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPvmEvEE", !54, i64 0}
!433 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EEE", !432, i64 0}
!434 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPvmEEE", !433, i64 0}
!435 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPvmELj0EEE", !434, i64 0}
!436 = !{!"_ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !17, i64 0, !19, i64 8, !431, i64 16, !435, i64 64}
!437 = !{!"_ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EEE", !17, i64 0, !19, i64 8, !431, i64 16, !435, i64 64}
!438 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_13MCSectionCOFFEEE", !437, i64 0}
!439 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_20MCSectionDXContainerEEE", !437, i64 0}
!440 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_12MCSectionELFEEE", !437, i64 0}
!441 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_14MCSectionMachOEEE", !437, i64 0}
!442 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_13MCSectionGOFFEEE", !437, i64 0}
!443 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_14MCSectionSPIRVEEE", !437, i64 0}
!444 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_13MCSectionWasmEEE", !437, i64 0}
!445 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_14MCSectionXCOFFEEE", !437, i64 0}
!446 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_6MCInstEEE", !437, i64 0}
!447 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_4wasm13WasmSignatureEEE", !437, i64 0}
!448 = !{!"p1 _ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !14, i64 0}
!449 = !{!"_ZTSN4llvm6detail15AllocatorHolderIRNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEE", !448, i64 0}
!450 = !{!"_ZTSN4llvm9StringMapINS_18MCSymbolTableValueERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEE", !29, i64 0, !449, i64 24}
!451 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairISt4pairIjjEPNS_8MCSymbolEEE", !14, i64 0}
!452 = !{!"p1 int", !14, i64 0}
!453 = !{!"_ZTSN4llvm8DenseMapISt4pairIjjEPNS_8MCSymbolENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEE", !451, i64 0, !452, i64 8, !9, i64 16, !9, i64 20}
!454 = !{!"_ZTSN4llvm9StringMapIPNS_8MCSymbolERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEE", !29, i64 0, !449, i64 24}
!455 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjPNS_7MCLabelEEE", !14, i64 0}
!456 = !{!"_ZTSN4llvm8DenseMapIjPNS_7MCLabelENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEE", !455, i64 0, !452, i64 8, !9, i64 16, !9, i64 20}
!457 = !{!"p1 _ZTSN4llvm14raw_fd_ostreamE", !14, i64 0}
!458 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm14raw_fd_ostreamELb0EE", !457, i64 0}
!459 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm14raw_fd_ostreamESt14default_deleteIS1_EEE", !458, i64 0}
!460 = !{!"_ZTSSt5tupleIJPN4llvm14raw_fd_ostreamESt14default_deleteIS1_EEE", !459, i64 0}
!461 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EE", !460, i64 0}
!462 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm14raw_fd_ostreamESt14default_deleteIS1_ELb1ELb1EE", !461, i64 0}
!463 = !{!"_ZTSSt10unique_ptrIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EE", !462, i64 0}
!464 = !{!"_ZTSN4llvm18SmallVectorStorageIcLj128EEE", !8, i64 0}
!465 = !{!"_ZTSN4llvm11SmallVectorIcLj128EEE", !61, i64 0, !464, i64 24}
!466 = !{!"_ZTSN4llvm11SmallStringILj128EEE", !465, i64 0}
!467 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EvEE", !54, i64 0}
!468 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELb0EEE", !467, i64 0}
!469 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE", !468, i64 0}
!470 = !{!"_ZTSN4llvm11SmallVectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELj0EEE", !469, i64 0}
!471 = !{!"_ZTSSt4lessIjE"}
!472 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIjEE", !471, i64 0}
!473 = !{!"_ZTSSt14_Rb_tree_color", !8, i64 0}
!474 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !14, i64 0}
!475 = !{!"_ZTSSt18_Rb_tree_node_base", !473, i64 0, !474, i64 8, !474, i64 16, !474, i64 24}
!476 = !{!"_ZTSSt15_Rb_tree_header", !475, i64 0, !19, i64 32}
!477 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjN4llvm16MCDwarfLineTableEESt10_Select1stIS4_ESt4lessIjESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !472, i64 0, !476, i64 8}
!478 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjN4llvm16MCDwarfLineTableEESt10_Select1stIS4_ESt4lessIjESaIS4_EE", !477, i64 0}
!479 = !{!"_ZTSSt3mapIjN4llvm16MCDwarfLineTableESt4lessIjESaISt4pairIKjS1_EEE", !478, i64 0}
!480 = !{!"short", !8, i64 0}
!481 = !{!"_ZTSN4llvm10MCDwarfLocE", !9, i64 0, !9, i64 4, !480, i64 8, !8, i64 10, !8, i64 11, !9, i64 12}
!482 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairIPNS_9MCSectionEEE", !14, i64 0}
!483 = !{!"_ZTSN4llvm8DenseMapIPNS_9MCSectionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEE", !482, i64 0, !452, i64 8, !9, i64 16, !9, i64 20}
!484 = !{!"_ZTSN4llvm6detail12DenseSetImplIPNS_9MCSectionENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEEE", !483, i64 0}
!485 = !{!"_ZTSN4llvm8DenseSetIPNS_9MCSectionENS_12DenseMapInfoIS2_vEEEE", !484, i64 0}
!486 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_9MCSectionEvEE", !54, i64 0}
!487 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_9MCSectionELb1EEE", !486, i64 0}
!488 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_9MCSectionEEE", !487, i64 0}
!489 = !{!"_ZTSN4llvm11SmallVectorIPNS_9MCSectionELj0EEE", !488, i64 0}
!490 = !{!"_ZTSN4llvm9SetVectorIPNS_9MCSectionENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEE", !485, i64 0, !489, i64 24}
!491 = !{!"p1 _ZTSN4llvm20MCGenDwarfLabelEntryE", !14, i64 0}
!492 = !{!"_ZTSNSt12_Vector_baseIN4llvm20MCGenDwarfLabelEntryESaIS1_EE17_Vector_impl_dataE", !491, i64 0, !491, i64 8, !491, i64 16}
!493 = !{!"_ZTSNSt12_Vector_baseIN4llvm20MCGenDwarfLabelEntryESaIS1_EE12_Vector_implE", !492, i64 0}
!494 = !{!"_ZTSSt12_Vector_baseIN4llvm20MCGenDwarfLabelEntryESaIS1_EE", !493, i64 0}
!495 = !{!"_ZTSSt6vectorIN4llvm20MCGenDwarfLabelEntryESaIS1_EE", !494, i64 0}
!496 = !{!"_ZTSN4llvm5dwarf11DwarfFormatE", !8, i64 0}
!497 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !27, i64 0}
!498 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !14, i64 0}
!499 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !498, i64 0}
!500 = !{!"float", !8, i64 0}
!501 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !500, i64 0, !19, i64 8}
!502 = !{!"_ZTSSt10_HashtableIPN4llvm8MCSymbolESt4pairIKS2_NS0_23MCPseudoProbeInlineTreeEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE", !497, i64 0, !19, i64 8, !499, i64 16, !19, i64 24, !501, i64 32, !498, i64 48}
!503 = !{!"_ZTSSt13unordered_mapIPN4llvm8MCSymbolENS0_23MCPseudoProbeInlineTreeESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEE", !502, i64 0}
!504 = !{!"_ZTSN4llvm21MCPseudoProbeSectionsE", !503, i64 0}
!505 = !{!"_ZTSN4llvm18MCPseudoProbeTableE", !504, i64 0}
!506 = !{!"_ZTSN4llvm9StringMapIPNS_14MCSectionMachOENS_15MallocAllocatorEEE", !29, i64 0}
!507 = !{!"_ZTSSt4lessIN4llvm9MCContext14COFFSectionKeyEE"}
!508 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4llvm9MCContext14COFFSectionKeyEEE", !507, i64 0}
!509 = !{!"_ZTSNSt8_Rb_treeIN4llvm9MCContext14COFFSectionKeyESt4pairIKS2_PNS0_13MCSectionCOFFEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !508, i64 0, !476, i64 8}
!510 = !{!"_ZTSSt8_Rb_treeIN4llvm9MCContext14COFFSectionKeyESt4pairIKS2_PNS0_13MCSectionCOFFEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE", !509, i64 0}
!511 = !{!"_ZTSSt3mapIN4llvm9MCContext14COFFSectionKeyEPNS0_13MCSectionCOFFESt4lessIS2_ESaISt4pairIKS2_S4_EEE", !510, i64 0}
!512 = !{!"_ZTSN4llvm9StringMapIPNS_12MCSectionELFENS_15MallocAllocatorEEE", !29, i64 0}
!513 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!514 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !513, i64 0}
!515 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4llvm13MCSectionGOFFEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE13_Rb_tree_implISF_Lb1EEE", !514, i64 0, !476, i64 8}
!516 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4llvm13MCSectionGOFFEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE", !515, i64 0}
!517 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4llvm13MCSectionGOFFESt4lessIS5_ESaISt4pairIKS5_S8_EEE", !516, i64 0}
!518 = !{!"_ZTSSt4lessIN4llvm9MCContext14WasmSectionKeyEE"}
!519 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4llvm9MCContext14WasmSectionKeyEEE", !518, i64 0}
!520 = !{!"_ZTSNSt8_Rb_treeIN4llvm9MCContext14WasmSectionKeyESt4pairIKS2_PNS0_13MCSectionWasmEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !519, i64 0, !476, i64 8}
!521 = !{!"_ZTSSt8_Rb_treeIN4llvm9MCContext14WasmSectionKeyESt4pairIKS2_PNS0_13MCSectionWasmEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE", !520, i64 0}
!522 = !{!"_ZTSSt3mapIN4llvm9MCContext14WasmSectionKeyEPNS0_13MCSectionWasmESt4lessIS2_ESaISt4pairIKS2_S4_EEE", !521, i64 0}
!523 = !{!"_ZTSSt4lessIN4llvm9MCContext15XCOFFSectionKeyEE"}
!524 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4llvm9MCContext15XCOFFSectionKeyEEE", !523, i64 0}
!525 = !{!"_ZTSNSt8_Rb_treeIN4llvm9MCContext15XCOFFSectionKeyESt4pairIKS2_PNS0_14MCSectionXCOFFEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !524, i64 0, !476, i64 8}
!526 = !{!"_ZTSSt8_Rb_treeIN4llvm9MCContext15XCOFFSectionKeyESt4pairIKS2_PNS0_14MCSectionXCOFFEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE", !525, i64 0}
!527 = !{!"_ZTSSt3mapIN4llvm9MCContext15XCOFFSectionKeyEPNS0_14MCSectionXCOFFESt4lessIS2_ESaISt4pairIKS2_S4_EEE", !526, i64 0}
!528 = !{!"_ZTSN4llvm9StringMapIPNS_20MCSectionDXContainerENS_15MallocAllocatorEEE", !29, i64 0}
!529 = !{!"_ZTSN4llvm9StringMapIbNS_15MallocAllocatorEEE", !29, i64 0}
!530 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_15MCSubtargetInfoEEE", !437, i64 0}
!531 = !{!"_ZTSN4llvm9StringMapINS_10MCAsmMacroENS_15MallocAllocatorEEE", !29, i64 0}
!532 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairISt5tupleIJNS_9StringRefEjjEEjEE", !14, i64 0}
!533 = !{!"_ZTSN4llvm8DenseMapISt5tupleIJNS_9StringRefEjjEEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEE", !532, i64 0, !452, i64 8, !9, i64 16, !9, i64 20}
!534 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairINS_9StringRefEEE", !14, i64 0}
!535 = !{!"_ZTSN4llvm8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEEE", !534, i64 0, !452, i64 8, !9, i64 16, !9, i64 20}
!536 = !{!"_ZTSN4llvm6detail12DenseSetImplINS_9StringRefENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEEE", !535, i64 0}
!537 = !{!"_ZTSN4llvm8DenseSetINS_9StringRefENS_12DenseMapInfoIS1_vEEEE", !536, i64 0}
!538 = !{!"_ZTSN4llvm9MCContextE", !404, i64 0, !58, i64 8, !326, i64 24, !405, i64 80, !411, i64 88, !416, i64 96, !418, i64 120, !285, i64 152, !287, i64 160, !419, i64 168, !289, i64 176, !426, i64 184, !436, i64 192, !436, i64 272, !438, i64 352, !439, i64 432, !440, i64 512, !441, i64 592, !442, i64 672, !443, i64 752, !444, i64 832, !445, i64 912, !446, i64 992, !447, i64 1072, !450, i64 1152, !453, i64 1184, !454, i64 1208, !456, i64 1240, !8, i64 1264, !20, i64 1272, !463, i64 1304, !52, i64 1312, !466, i64 1320, !470, i64 1472, !20, i64 1488, !479, i64 1520, !481, i64 1568, !52, i64 1584, !52, i64 1585, !9, i64 1588, !490, i64 1592, !495, i64 1632, !58, i64 1656, !58, i64 1672, !480, i64 1688, !496, i64 1690, !52, i64 1691, !52, i64 1692, !9, i64 1696, !505, i64 1704, !506, i64 1760, !511, i64 1784, !512, i64 1832, !517, i64 1856, !522, i64 1904, !527, i64 1952, !528, i64 2000, !529, i64 2024, !530, i64 2048, !52, i64 2128, !52, i64 2129, !531, i64 2136, !533, i64 2160, !537, i64 2184}
!539 = !{!538, !419, i64 168}
!540 = !{!62, !62, i64 0}
!541 = !{!53, !14, i64 0}
!542 = !{!53, !19, i64 8}
!543 = !{!53, !19, i64 16}
!544 = !{!118, !52, i64 104}
!545 = !{!393, !14, i64 136}
!546 = !{!342, !342, i64 0}
!547 = !{!"_ZTSN4llvm9MCAsmInfo20AsmCharLiteralSyntaxE", !8, i64 0}
!548 = !{!"_ZTSN4llvm5LCOMM9LCOMMTypeE", !8, i64 0}
!549 = !{!"_ZTSN4llvm12MCSymbolAttrE", !8, i64 0}
!550 = !{!"_ZTSN4llvm5WinEH12EncodingTypeE", !8, i64 0}
!551 = !{!"p1 _ZTSN4llvm16MCCFIInstructionE", !14, i64 0}
!552 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE17_Vector_impl_dataE", !551, i64 0, !551, i64 8, !551, i64 16}
!553 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE12_Vector_implE", !552, i64 0}
!554 = !{!"_ZTSSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE", !553, i64 0}
!555 = !{!"_ZTSSt6vectorIN4llvm16MCCFIInstructionESaIS1_EE", !554, i64 0}
!556 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjNS_9StringRefEEE", !14, i64 0}
!557 = !{!"_ZTSN4llvm8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEEE", !556, i64 0, !452, i64 8, !9, i64 16, !9, i64 20}
!558 = !{!"_ZTSN4llvm9StringMapIjNS_15MallocAllocatorEEE", !29, i64 0}
!559 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairINS_19CachedHashStringRefEEE", !14, i64 0}
!560 = !{!"_ZTSN4llvm8DenseMapINS_19CachedHashStringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEEE", !559, i64 0, !452, i64 8, !9, i64 16, !9, i64 20}
!561 = !{!"_ZTSN4llvm6detail12DenseSetImplINS_19CachedHashStringRefENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEEE", !560, i64 0}
!562 = !{!"_ZTSN4llvm8DenseSetINS_19CachedHashStringRefENS_12DenseMapInfoIS1_vEEEE", !561, i64 0}
!563 = !{!"p1 _ZTSN4llvm15MCTargetOptionsE", !14, i64 0}
!564 = !{!"_ZTSN4llvm9MCAsmInfoE", !9, i64 8, !9, i64 12, !52, i64 16, !52, i64 17, !52, i64 18, !52, i64 19, !52, i64 20, !52, i64 21, !52, i64 22, !9, i64 24, !9, i64 28, !52, i64 32, !17, i64 40, !58, i64 48, !52, i64 64, !17, i64 72, !52, i64 80, !52, i64 81, !52, i64 82, !58, i64 88, !58, i64 104, !17, i64 120, !17, i64 128, !9, i64 136, !52, i64 140, !52, i64 141, !52, i64 142, !52, i64 143, !52, i64 144, !52, i64 145, !52, i64 146, !52, i64 147, !17, i64 152, !17, i64 160, !17, i64 168, !547, i64 176, !17, i64 184, !17, i64 192, !17, i64 200, !17, i64 208, !52, i64 216, !52, i64 217, !52, i64 218, !52, i64 219, !52, i64 220, !9, i64 224, !17, i64 232, !52, i64 240, !52, i64 241, !548, i64 244, !52, i64 248, !52, i64 249, !52, i64 250, !52, i64 251, !52, i64 252, !52, i64 253, !17, i64 256, !17, i64 264, !52, i64 272, !52, i64 273, !549, i64 276, !549, i64 280, !549, i64 284, !549, i64 288, !52, i64 292, !375, i64 296, !52, i64 300, !550, i64 304, !52, i64 308, !52, i64 309, !52, i64 310, !52, i64 311, !52, i64 312, !52, i64 313, !52, i64 314, !555, i64 320, !361, i64 344, !52, i64 352, !52, i64 353, !52, i64 354, !9, i64 356, !52, i64 360, !52, i64 361, !557, i64 368, !558, i64 392, !562, i64 416, !563, i64 440}
!565 = !{!564, !9, i64 136}
!566 = !{!393, !14, i64 192}
!567 = !{!63, !63, i64 0}
!568 = !{!191, !189}
!569 = !{!193}
!570 = !{!197, !195}
!571 = !{!199}
!572 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_8AsmTokenEvEE", !54, i64 0}
!573 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EEE", !572, i64 0}
!574 = !{!"_ZTSN4llvm15SmallVectorImplINS_8AsmTokenEEE", !573, i64 0}
!575 = !{!"_ZTSN4llvm18SmallVectorStorageINS_8AsmTokenELj1EEE", !8, i64 0}
!576 = !{!"_ZTSN4llvm11SmallVectorINS_8AsmTokenELj1EEE", !574, i64 0, !575, i64 16}
!577 = !{!"_ZTSN4llvm5SMLocE", !17, i64 0}
!578 = !{!"p1 _ZTSN4llvm18AsmCommentConsumerE", !14, i64 0}
!579 = !{!"_ZTSN4llvm8AsmLexerE", !576, i64 0, !17, i64 56, !58, i64 64, !577, i64 80, !20, i64 88, !285, i64 120, !52, i64 128, !52, i64 129, !52, i64 130, !52, i64 131, !17, i64 136, !52, i64 144, !52, i64 145, !52, i64 146, !52, i64 147, !52, i64 148, !52, i64 149, !52, i64 150, !52, i64 151, !52, i64 152, !9, i64 156, !52, i64 160, !52, i64 161, !578, i64 168}
!580 = !{!579, !578, i64 168}
!581 = !{!393, !14, i64 112}
!582 = !{!204, !202}
!583 = !{!206}
!584 = !{!210, !208}
!585 = !{!212}
!586 = !{!214}
!587 = !{!216}
!588 = !{!220, !218}
!589 = !{!222}
!590 = !{!14, !14, i64 0}
!591 = distinct !{!591, !137}
!592 = distinct !{!592, !137}
!593 = distinct !{!593, !137}
!594 = !{!24, !23, i64 0}
!595 = distinct !{!595, !"_ZSt19__relocate_object_aIN4llvm10MCRegisterES1_SaIS1_EEvPT_PT0_RT1_"}
!596 = distinct !{!596, !595, !"_ZSt19__relocate_object_aIN4llvm10MCRegisterES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!597 = distinct !{!597, !595, !"_ZSt19__relocate_object_aIN4llvm10MCRegisterES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!598 = distinct !{!598, !137, !151, !152}
!599 = distinct !{!599, !137, !152, !151}
!600 = distinct !{!600, !"_ZNK4llvm9StringRef3strB5cxx11Ev"}
!601 = distinct !{!601, !600, !"_ZNK4llvm9StringRef3strB5cxx11Ev: argument 0"}
!602 = !{!103, !62, i64 312}
!603 = !{!596}
!604 = !{!597}
!605 = !{!601}
!606 = !{!"_ZTSN4llvm8exegesis11MemoryValueE", !145, i64 0, !19, i64 16, !19, i64 24}
!607 = !{!606, !19, i64 16}
!608 = !{!606, !19, i64 24}
!609 = !{!"long long", !8, i64 0}
!610 = !{!609, !609, i64 0}
!611 = !{!"_ZTSNSt12_Vector_baseIN4llvm10MCRegisterESaIS1_EE12_Vector_implE", !128, i64 0}
!612 = !{!"_ZTSSt12_Vector_baseIN4llvm10MCRegisterESaIS1_EE", !611, i64 0}
!613 = !{!"_ZTSSt6vectorIN4llvm10MCRegisterESaIS1_EE", !612, i64 0}
!614 = !{!"_ZTSN4llvm8exegesis13BenchmarkCodeE", !50, i64 0, !613, i64 144, !20, i64 168}
!615 = !{!614, !19, i64 128}
!616 = distinct !{!616, !137}
!617 = distinct !{!617, !137}
!618 = distinct !{!618, !"_ZSt19__relocate_object_aIN4llvm8exegesis13MemoryMappingES2_SaIS2_EEvPT_PT0_RT1_"}
!619 = distinct !{!619, !618, !"_ZSt19__relocate_object_aIN4llvm8exegesis13MemoryMappingES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!620 = distinct !{!620, !618, !"_ZSt19__relocate_object_aIN4llvm8exegesis13MemoryMappingES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!621 = distinct !{!621, !137}
!622 = distinct !{!622, !"_ZSt19__relocate_object_aIN4llvm8exegesis13MemoryMappingES2_SaIS2_EEvPT_PT0_RT1_"}
!623 = distinct !{!623, !622, !"_ZSt19__relocate_object_aIN4llvm8exegesis13MemoryMappingES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!624 = distinct !{!624, !622, !"_ZSt19__relocate_object_aIN4llvm8exegesis13MemoryMappingES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!625 = !{!619}
!626 = !{!620}
!627 = !{!619, !620}
!628 = !{!623}
!629 = !{!624}
!630 = !{!623, !624}
!631 = !{i8 0, i8 2}
!632 = !{!118, !17, i64 64}
!633 = distinct !{!633, !137}
!634 = distinct !{!634, !137, !151, !152}
!635 = distinct !{!635, !137, !151}
!636 = distinct !{!636, !137}
!637 = distinct !{!637, !137}
!638 = distinct !{!638, !137}
!639 = distinct !{!639, !137}
!640 = distinct !{!640, !137}
end_hunk_1
