Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/genconf?download=true
inline.NumInlined: 333
inline.NumDeleted: 157
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_Z11gmx_genconfiPPc:bb.a
  store i64 2, ptr %i.ad, align 8, !tbaa !58
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  store i32 11, ptr %i.af, align 8, !tbaa !55
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr @.str.15, ptr %i.ag, align 16, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr @.str.16, ptr %i.ah, align 8, !tbaa !57
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 4, ptr %i.ai, align 16, !tbaa !58
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.ak, align 16, !tbaa !55
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 120
  store ptr @.str.17, ptr %i.al, align 8, !tbaa !56
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 128
  store ptr null, ptr %i.am, align 16, !tbaa !57
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i64 10, ptr %i.an, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.q, ptr noundef nonnull align 4 dereferenceable(12) @__const._Z11gmx_genconfiPPc.nrbox, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #18
  store i32 0, ptr %i.r, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #18
  store i8 0, ptr %i.s, align 1, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #18
  store i8 1, ptr %i.t, align 1, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.u, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.v, ptr noundef nonnull align 4 dereferenceable(12) @__const._Z11gmx_genconfiPPc.max_rot, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr @.str.18, ptr %3, align 16, !tbaa !62
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.ap, align 8, !tbaa !63
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 6, ptr %i.aq, align 4, !tbaa !64
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.q, ptr %i.ar, align 16, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @.str.19, ptr %i.as, align 8, !tbaa !65
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr @.str.20, ptr %i.at, align 16, !tbaa !62
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.au, align 8, !tbaa !63
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 6, ptr %i.av, align 4, !tbaa !64
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.u, ptr %i.aw, align 16, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr @.str.21, ptr %i.ax, align 8, !tbaa !65
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr @.str.22, ptr %i.ay, align 16, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i8 0, ptr %i.az, align 8, !tbaa !63
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 76
  store i32 0, ptr %i.ba, align 4, !tbaa !64
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %i.r, ptr %i.bb, align 16, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr @.str.23, ptr %i.bc, align 8, !tbaa !65
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 96
  store ptr @.str.24, ptr %i.bd, align 16, !tbaa !62
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i8 0, ptr %i.be, align 8, !tbaa !63
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 108
  store i32 5, ptr %i.bf, align 4, !tbaa !64
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 112
  store ptr %i.s, ptr %i.bg, align 16, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 120
  store ptr @.str.25, ptr %i.bh, align 8, !tbaa !65
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 128
  store ptr @.str.26, ptr %i.bi, align 16, !tbaa !62
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i8 0, ptr %i.bj, align 8, !tbaa !63
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 140
  store i32 6, ptr %i.bk, align 4, !tbaa !64
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 144
  store ptr %i.v, ptr %i.bl, align 16, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 152
  store ptr @.str.27, ptr %i.bm, align 8, !tbaa !65
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 160
  store ptr @.str.28, ptr %i.bn, align 16, !tbaa !62
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i8 0, ptr %i.bo, align 8, !tbaa !63
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 172
  store i32 5, ptr %i.bp, align 4, !tbaa !64
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 176
  store ptr %i.t, ptr %i.bq, align 16, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 184
  store ptr @.str.29, ptr %i.br, align 8, !tbaa !65
  %i.bs = invoke noundef zeroext i1 @_Z17parse_common_argsPiPPcmiP8t_filenmiP7t_pargsiPPKciS8_PP16gmx_output_env_t(ptr noundef nonnull %i.i, ptr noundef %1, i64 noundef 0, i32 noundef 3, ptr noundef nonnull %2, i32 noundef 6, ptr noundef nonnull %3, i32 noundef 12, ptr noundef nonnull %i.j, i32 noundef 1, ptr noundef nonnull %i.k, ptr noundef nonnull %i.p)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.bs, label %bb.d, label %bb.cd

bb.c:                                             ; preds = %bb.e, %bb.a
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.d:                                             ; preds = %bb.b
  %i.bu = load i32, ptr %i.r, align 4, !tbaa !9   ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.bw = invoke noundef i64 @_ZN3gmx14makeRandomSeedEv()
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.bx = trunc i64 %i.bw to i32                  ; 2 uses
  store i32 %i.bx, ptr %i.r, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.by = phi i32 [ %i.bx, %bb.f ], [ %i.bu, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.bz = sext i32 %i.by to i64
  store i64 %i.bz, ptr %4, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !13
  invoke void @_ZN3gmx8internal14highBitCounter9incrementImLm2ELj7EEEvPSt5arrayIT_XT0_EES4_(ptr noundef nonnull align 8 dereferenceable(52) %4, i64 noundef 63)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  %i.cb = load i64, ptr %4, align 8, !tbaa !14    ; 4 uses
  %i.cc = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !14 ; 6 uses
  %i.cd = xor i64 %i.cb, %i.cc
  %i.ce = xor i64 %i.cd, 2004413935125273122      ; 2 uses
  %i.cf = add i64 %i.cc, %i.cb                    ; 2 uses
  %i.cg = call i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 16)
  %i.ch = xor i64 %i.cg, %i.cf                    ; 3 uses
  %i.ci = add i64 %i.ch, %i.cf                    ; 2 uses
  %i.cj = call i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 42)
  %i.ck = xor i64 %i.cj, %i.ci                    ; 3 uses
  %i.cl = add i64 %i.ck, %i.ci                    ; 2 uses
  %i.cm = call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 12)
  %i.cn = xor i64 %i.cm, %i.cl                    ; 3 uses
  %i.co = add i64 %i.cn, %i.cl                    ; 2 uses
  %i.cp = call i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 31)
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = add i64 %i.co, %i.cc
  %i.cs = add i64 %i.ce, 1
  %i.ct = add i64 %i.cs, %i.cq                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.ct                    ; 2 uses
  %i.cv = call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 16)
  %i.cw = xor i64 %i.cv, %i.cu                    ; 3 uses
  %i.cx = add i64 %i.cw, %i.cu                    ; 2 uses
  %i.cy = call i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 32)
  %i.cz = xor i64 %i.cy, %i.cx                    ; 3 uses
  %i.da = add i64 %i.cz, %i.cx                    ; 2 uses
  %i.db = call i64 @llvm.fshl.i64(i64 %i.cz, i64 %i.cz, i64 24)
  %i.dc = xor i64 %i.db, %i.da                    ; 3 uses
  %i.dd = add i64 %i.dc, %i.da                    ; 2 uses
  %i.de = call i64 @llvm.fshl.i64(i64 %i.dc, i64 %i.dc, i64 21)
  %i.df = xor i64 %i.de, %i.dd
  %i.dg = add i64 %i.dd, %i.ce
  %i.dh = add i64 %i.cb, 2
  %i.di = add i64 %i.dh, %i.df                    ; 3 uses
  %i.dj = add i64 %i.dg, %i.di                    ; 2 uses
  %i.dk = call i64 @llvm.fshl.i64(i64 %i.di, i64 %i.di, i64 16)
  %i.dl = xor i64 %i.dk, %i.dj                    ; 3 uses
  %i.dm = add i64 %i.dl, %i.dj                    ; 2 uses
  %i.dn = call i64 @llvm.fshl.i64(i64 %i.dl, i64 %i.dl, i64 42)
  %i.do = xor i64 %i.dn, %i.dm                    ; 3 uses
  %i.dp = add i64 %i.do, %i.dm                    ; 2 uses
  %i.dq = call i64 @llvm.fshl.i64(i64 %i.do, i64 %i.do, i64 12)
  %i.dr = xor i64 %i.dq, %i.dp                    ; 3 uses
  %i.ds = add i64 %i.dr, %i.dp                    ; 2 uses
  %i.dt = call i64 @llvm.fshl.i64(i64 %i.dr, i64 %i.dr, i64 31)
  %i.du = xor i64 %i.dt, %i.ds
  %i.dv = add i64 %i.ds, %i.cb
  %i.dw = add i64 %i.cc, 3
  %i.dx = add i64 %i.dw, %i.du                    ; 3 uses
  %i.dy = add i64 %i.dv, %i.dx                    ; 2 uses
  %i.dz = call i64 @llvm.fshl.i64(i64 %i.dx, i64 %i.dx, i64 16)
  %i.ea = xor i64 %i.dz, %i.dy
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.dy, ptr %i.eb, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %i.ea, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !13
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 0, ptr %i.ec, align 8, !tbaa !17
  %i.ed = invoke noundef zeroext i1 @_Z8ftp2bSetiiPK8t_filenm(i32 noundef 1, i32 noundef 3, ptr noundef nonnull %2)
          to label %bb.i unwind label %bb.m       ; 3 uses

bb.i:                                             ; preds = %bb.h
  %i.ee = load <3 x float>, ptr %i.q, align 16, !tbaa !67
  %i.ef = call <3 x float> @llvm.rint.v3f32(<3 x float> %i.ee)
  %i.eg = fptosi <3 x float> %i.ef to <3 x i32>   ; 5 uses
  %i.eh = extractelement <3 x i32> %i.eg, i64 2   ; 5 uses
  %i.ei = shufflevector <3 x i32> %i.eg, <3 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.ej = icmp slt <2 x i32> %i.ei, splat (i32 1) ; 2 uses
  %14 = extractelement <2 x i1> %i.ej, i64 0
  %15 = extractelement <2 x i1> %i.ej, i64 1
  %or.cond = or i1 %14, %15
  %i.ek = icmp slt i32 %i.eh, 1
  %or.cond3 = or i1 %or.cond, %i.ek
  br i1 %or.cond3, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA70_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(70) @.str.30, i8 noundef zeroext 2)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 187, ptr noundef nonnull @.str.31) #19
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.g, %bb.h
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.n:                                             ; preds = %bb.j
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn182 = phi { ptr, i32 } [ %i.en, %bb.o ], [ %i.em, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.cc

bb.q:                                             ; preds = %bb.i
  %i.eo = extractelement <3 x i32> %i.eg, i64 0   ; 3 uses
  %i.ep = extractelement <3 x i32> %i.eg, i64 1   ; 3 uses
  %i.eq = mul nuw nsw i32 %i.ep, %i.eo
  %i.er = mul nuw nsw i32 %i.eq, %i.eh            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZN10gmx_mtop_tC1Ev(ptr noundef nonnull align 8 dereferenceable(768) %6)
          to label %bb.r unwind label %bb.aj

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #18
  store i8 0, ptr %i.w, align 1, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #18
  %i.es = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.13, i32 noundef 3, ptr noundef nonnull %2)
          to label %bb.s unwind label %bb.ak

bb.s:                                             ; preds = %bb.r
  store ptr %i.es, ptr %i.x, align 8, !tbaa !18
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.x, i8 noundef zeroext 2)
          to label %bb.t unwind label %bb.ak

bb.t:                                             ; preds = %bb.s
  invoke void @_Z19readConfAndTopologyRKNSt10filesystem7__cxx114pathEPbP10gmx_mtop_tP7PbcTypePPA3_fSB_SA_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %i.w, ptr noundef nonnull %6, ptr noundef nonnull %i.n, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.o)
          to label %bb.u unwind label %bb.al

bb.u:                                             ; preds = %bb.t
  %i.et = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef nonnull %i.eu) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.v, %bb.u
  %i.ev = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ex = icmp eq ptr %i.ev, %i.ew
  br i1 %i.ex, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.ey = load i64, ptr %i.ew, align 8, !tbaa !13
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ez) #20
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_Z21gmx_mtop_global_atomsRK10gmx_mtop_t(ptr dead_on_unwind nonnull writable sret(%struct.t_atoms) align 8 %8, ptr noundef nonnull align 8 dereferenceable(768) %6)
          to label %bb.w unwind label %bb.an

bb.w:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.fa = load i32, ptr %8, align 8, !tbaa !75    ; 11 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !76 ; 6 uses
  %i.fd = add nsw i32 %i.er, -1                   ; 2 uses
  %i.fe = mul nsw i32 %i.fa, %i.fd
  %i.ff = mul nsw i32 %i.fc, %i.fd
  invoke void @_Z11add_t_atomsP7t_atomsii(ptr noundef nonnull %8, i32 noundef %i.fe, i32 noundef %i.ff)
          to label %bb.x unwind label %bb.an

bb.x:                                             ; preds = %bb.w
  %i.fg = mul nsw i32 %i.fa, %i.er
  %i.fh = sext i32 %i.fg to i64                   ; 2 uses
  %i.fi = load ptr, ptr %i.l, align 8, !tbaa !78
  %i.fj = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef 200, ptr noundef %i.fi, i64 noundef range(i64 -2147483648, 2147483648) %i.fh, i64 noundef 12)
          to label %bb.y unwind label %bb.an

bb.y:                                             ; preds = %bb.x
  store ptr %i.fj, ptr %i.l, align 8, !tbaa !78
  %i.fk = load ptr, ptr %i.m, align 8, !tbaa !78
  %i.fl = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.30, i32 noundef 201, ptr noundef %i.fk, i64 noundef range(i64 -2147483648, 2147483648) %i.fh, i64 noundef 12)
          to label %bb.z unwind label %bb.an

bb.z:                                             ; preds = %bb.y
  store ptr %i.fl, ptr %i.m, align 8, !tbaa !78
  %i.fm = sext i32 %i.fa to i64                   ; 3 uses
  %i.fn = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.30, i32 noundef 202, i64 noundef range(i64 -2147483648, 2147483648) %i.fm, i64 noundef 16)
          to label %_ZL13gmx_snew_implIA4_fEvPKcS2_iRPT_m.exit unwind label %bb.an ; 3 uses

_ZL13gmx_snew_implIA4_fEvPKcS2_iRPT_m.exit:       ; preds = %bb.z
  %i.fo = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.30, i32 noundef 203, i64 noundef range(i64 -2147483648, 2147483648) %i.fm, i64 noundef 16)
          to label %_ZL13gmx_snew_implIA4_fEvPKcS2_iRPT_m.exit190 unwind label %bb.an ; 3 uses

_ZL13gmx_snew_implIA4_fEvPKcS2_iRPT_m.exit190:    ; preds = %_ZL13gmx_snew_implIA4_fEvPKcS2_iRPT_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  br i1 %i.ed, label %bb.aa, label %bb.av

bb.aa:                                            ; preds = %_ZL13gmx_snew_implIA4_fEvPKcS2_iRPT_m.exit190
  %i.fp = load ptr, ptr %i.p, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #18
  %i.fq = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 1, i32 noundef 3, ptr noundef nonnull %2)
          to label %bb.ab unwind label %bb.ao

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.fq, ptr %i.z, align 8, !tbaa !18
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.z, i8 noundef zeroext 2)
          to label %bb.ac unwind label %bb.ao

bb.ac:                                            ; preds = %bb.ab
  %i.fr = invoke noundef zeroext i1 @_Z16read_first_framePK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEP10t_trxframei(ptr noundef %i.fp, ptr noundef nonnull %i.y, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull %9, i32 noundef 2)
          to label %bb.ad unwind label %bb.ap

bb.ad:                                            ; preds = %bb.ac
  %i.fs = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i191 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i191, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i192, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, ptr noundef nonnull %i.ft) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i192

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i192: ; preds = %bb.ae, %bb.ad
  %i.fu = load ptr, ptr %10, align 8, !tbaa !23   ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i193: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i192
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !13
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #20
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit195

_ZNSt10filesystem7__cxx114pathD2Ev.exit195:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br i1 %i.fr, label %bb.au, label %bb.af

bb.af:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit195
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA70_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 1 dereferenceable(70) @.str.30, i8 noundef zeroext 2)
          to label %bb.ag unwind label %bb.ar

bb.ag:                                            ; preds = %bb.af
  %i.fz = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 1, i32 noundef 3, ptr noundef nonnull %2)
          to label %bb.ah unwind label %bb.as

bb.ah:                                            ; preds = %bb.ag
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef 213, ptr noundef nonnull @.str.36, ptr noundef %i.fz) #19
          to label %bb.ai unwind label %bb.as

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %bb.q
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ak:                                            ; preds = %bb.s, %bb.r
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.t
  %i.gc = landingpad { ptr, i32 }
          cleanup
end_hunk_0
